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
	location <18.5, 18.5, 82.5562>
	look_at <18.5, 18.5, 18.5>
	direction <0, 0, -64.0562>
	angle 67.0682
}


# declare cpy_camera_pos = <18.5, 18.5, 82.5562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 29.6
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
	<23.316713, 17.585226, -2.258321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.145180, 17.293442, -2.471483>,  <23.042259, 17.118372, -2.599380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.145180, 17.293442, -2.471483>,  <23.316713, 17.585226, -2.258321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.145180, 17.293442, -2.471483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406505, 0.682619, -0.607277,
		0.806756, -0.043792, -0.589259,
		-0.428834, -0.729461, -0.532906,
		23.016529, 17.074604, -2.631354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.562643, 18.059982, -1.787436>,  <23.316713, 17.585226, -2.258321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.562643, 18.059982, -1.787436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.188725, 18.199348, -1.815045>,  <22.964373, 18.282969, -1.831610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.188725, 18.199348, -1.815045>,  <23.562643, 18.059982, -1.787436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.188725, 18.199348, -1.815045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261056, 0.805733, 0.531642,
		0.240845, 0.478958, -0.844152,
		-0.934796, 0.348415, -0.069022,
		22.908285, 18.303873, -1.835752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.506762, 18.770109, -1.937603>,  <23.562643, 18.059982, -1.787436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.506762, 18.770109, -1.937603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.189934, 18.684837, -1.708803>,  <22.999838, 18.633675, -1.571523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.189934, 18.684837, -1.708803>,  <23.506762, 18.770109, -1.937603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.189934, 18.684837, -1.708803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349597, 0.609735, 0.711341,
		-0.500410, 0.763399, -0.408425,
		-0.792068, -0.213178, 0.571999,
		22.952312, 18.620884, -1.537203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.761793, 19.393393, -1.477661>,  <23.506762, 18.770109, -1.937603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.761793, 19.393393, -1.477661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.785526, 19.438549, -1.874395>,  <23.799767, 19.465643, -2.112435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.785526, 19.438549, -1.874395>,  <23.761793, 19.393393, -1.477661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.785526, 19.438549, -1.874395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530997, 0.837784, 0.127124,
		0.845294, -0.534204, -0.010236,
		0.059335, 0.112892, -0.991834,
		23.803328, 19.472416, -2.171945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.799162, 19.477184, -0.791991>,  <23.761793, 19.393393, -1.477661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.799162, 19.477184, -0.791991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.466194, 19.324001, -0.952202>,  <23.266413, 19.232092, -1.048328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.466194, 19.324001, -0.952202>,  <23.799162, 19.477184, -0.791991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.466194, 19.324001, -0.952202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489704, 0.170078, 0.855139,
		-0.259361, 0.907974, -0.329113,
		-0.832419, -0.382958, -0.400527,
		23.216469, 19.209114, -1.072360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.152592, 19.983189, -0.710626>,  <23.799162, 19.477184, -0.791991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.152592, 19.983189, -0.710626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.057724, 19.594810, -0.697877>,  <23.000803, 19.361784, -0.690228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.057724, 19.594810, -0.697877>,  <23.152592, 19.983189, -0.710626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.057724, 19.594810, -0.697877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491304, 0.148185, 0.858290,
		-0.838075, 0.187901, -0.512174,
		-0.237170, -0.970945, 0.031873,
		22.986572, 19.303528, -0.688315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.391108, 19.790777, -0.549849>,  <23.152592, 19.983189, -0.710626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.391108, 19.790777, -0.549849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.598400, 19.494350, -0.379081>,  <22.722775, 19.316494, -0.276620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.598400, 19.494350, -0.379081>,  <22.391108, 19.790777, -0.549849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.598400, 19.494350, -0.379081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527626, 0.115833, 0.841542,
		-0.673089, -0.661366, -0.330977,
		0.518230, -0.741065, 0.426920,
		22.753870, 19.272032, -0.251005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.986692, 19.356745, -0.163453>,  <22.391108, 19.790777, -0.549849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.986692, 19.356745, -0.163453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.337059, 19.265129, 0.006400>,  <22.547279, 19.210159, 0.108312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.337059, 19.265129, 0.006400>,  <21.986692, 19.356745, -0.163453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.337059, 19.265129, 0.006400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471059, -0.215751, 0.855310,
		-0.104282, -0.949207, -0.296870,
		0.875916, -0.229036, 0.424634,
		22.599834, 19.196417, 0.133790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.106497, 19.101015, 0.459878>,  <21.986692, 19.356745, -0.163453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.106497, 19.101015, 0.459878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.806404, 19.188007, 0.709632>,  <21.626348, 19.240204, 0.859484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.806404, 19.188007, 0.709632>,  <22.106497, 19.101015, 0.459878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.806404, 19.188007, 0.709632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543009, -0.741453, -0.394194,
		0.377222, -0.634783, 0.674355,
		-0.750230, 0.217482, 0.624385,
		21.581335, 19.253252, 0.896948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.838398, 18.426516, 0.474392>,  <22.106497, 19.101015, 0.459878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.838398, 18.426516, 0.474392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.643143, 18.775288, 0.489665>,  <21.525990, 18.984550, 0.498829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.643143, 18.775288, 0.489665>,  <21.838398, 18.426516, 0.474392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.643143, 18.775288, 0.489665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573295, -0.353325, 0.739252,
		0.658067, 0.338969, 0.672345,
		-0.488140, 0.871930, 0.038183,
		21.496700, 19.036867, 0.501120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.953756, 18.735729, 1.126280>,  <21.838398, 18.426516, 0.474392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.953756, 18.735729, 1.126280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.601189, 18.766953, 0.939945>,  <21.389648, 18.785686, 0.828144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.601189, 18.766953, 0.939945>,  <21.953756, 18.735729, 1.126280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.601189, 18.766953, 0.939945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471883, -0.188541, 0.861266,
		-0.020602, 0.978958, 0.203018,
		-0.881420, 0.078057, -0.465838,
		21.336763, 18.790369, 0.800193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.467413, 19.111610, 1.551540>,  <21.953756, 18.735729, 1.126280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.467413, 19.111610, 1.551540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.246212, 18.884686, 1.307460>,  <21.113491, 18.748531, 1.161012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.246212, 18.884686, 1.307460>,  <21.467413, 19.111610, 1.551540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.246212, 18.884686, 1.307460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660289, -0.148255, 0.736233,
		-0.508139, 0.810048, -0.292604,
		-0.553004, -0.567312, -0.610200,
		21.080311, 18.714493, 1.124400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.787409, 19.357384, 1.514768>,  <21.467413, 19.111610, 1.551540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.787409, 19.357384, 1.514768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.857700, 18.964050, 1.496110>,  <20.899876, 18.728050, 1.484915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.857700, 18.964050, 1.496110>,  <20.787409, 19.357384, 1.514768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.857700, 18.964050, 1.496110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715699, -0.160148, 0.679799,
		-0.675940, -0.086075, -0.731913,
		0.175728, -0.983333, -0.046647,
		20.910419, 18.669050, 1.482116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.172174, 18.921940, 1.168782>,  <20.787409, 19.357384, 1.514768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.172174, 18.921940, 1.168782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.387283, 18.724796, 1.442393>,  <20.516350, 18.606510, 1.606559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.387283, 18.724796, 1.442393>,  <20.172174, 18.921940, 1.168782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.387283, 18.724796, 1.442393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838614, -0.229219, 0.494151,
		-0.086755, -0.839375, -0.536585,
		0.537773, -0.492857, 0.684026,
		20.548615, 18.576939, 1.647601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.738113, 18.327845, 1.355734>,  <20.172174, 18.921940, 1.168782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.738113, 18.327845, 1.355734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.027725, 18.363266, 1.629358>,  <20.201492, 18.384518, 1.793533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.027725, 18.363266, 1.629358>,  <19.738113, 18.327845, 1.355734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.027725, 18.363266, 1.629358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606655, -0.390200, 0.692613,
		0.328253, -0.916462, -0.228796,
		0.724030, 0.088552, 0.684061,
		20.244934, 18.389832, 1.834576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.865623, 17.764240, 1.854777>,  <19.738113, 18.327845, 1.355734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.865623, 17.764240, 1.854777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.998718, 18.096706, 2.032967>,  <20.078575, 18.296186, 2.139880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.998718, 18.096706, 2.032967>,  <19.865623, 17.764240, 1.854777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.998718, 18.096706, 2.032967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339538, -0.335115, 0.878870,
		0.879773, -0.443688, 0.170708,
		0.332737, 0.831167, 0.445474,
		20.098539, 18.346056, 2.166609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.313892, 17.742767, 2.571949>,  <19.865623, 17.764240, 1.854777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.313892, 17.742767, 2.571949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.131077, 18.098385, 2.561229>,  <20.021387, 18.311754, 2.554797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.131077, 18.098385, 2.561229>,  <20.313892, 17.742767, 2.571949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.131077, 18.098385, 2.561229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262044, -0.105797, 0.959239,
		0.849968, 0.445434, 0.281322,
		-0.457041, 0.889042, -0.026800,
		19.993965, 18.365097, 2.553189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.548817, 18.126072, 3.106746>,  <20.313892, 17.742767, 2.571949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.548817, 18.126072, 3.106746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.216671, 18.327709, 3.011766>,  <20.017384, 18.448692, 2.954779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.216671, 18.327709, 3.011766>,  <20.548817, 18.126072, 3.106746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.216671, 18.327709, 3.011766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331903, -0.105156, 0.937434,
		0.447585, 0.857224, 0.254628,
		-0.830366, 0.504093, -0.237449,
		19.967562, 18.478937, 2.940532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.445917, 18.684155, 3.631370>,  <20.548817, 18.126072, 3.106746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.445917, 18.684155, 3.631370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.101807, 18.543278, 3.483917>,  <19.895340, 18.458752, 3.395446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.101807, 18.543278, 3.483917>,  <20.445917, 18.684155, 3.631370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.101807, 18.543278, 3.483917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279756, -0.278373, 0.918828,
		-0.426222, 0.893571, 0.140949,
		-0.860274, -0.352193, -0.368631,
		19.843725, 18.437620, 3.373328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.770948, 19.021763, 3.861004>,  <20.445917, 18.684155, 3.631370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.770948, 19.021763, 3.861004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.712265, 18.636791, 3.769608>,  <19.677055, 18.405807, 3.714770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.712265, 18.636791, 3.769608>,  <19.770948, 19.021763, 3.861004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.712265, 18.636791, 3.769608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101816, -0.215071, 0.971276,
		-0.983926, 0.165758, -0.066438,
		-0.146708, -0.962429, -0.228491,
		19.668253, 18.348063, 3.701061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.839479, 19.150204, 4.580427>,  <19.770948, 19.021763, 3.861004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.839479, 19.150204, 4.580427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.973652, 19.041492, 4.941231>,  <20.054155, 18.976265, 5.157713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.973652, 19.041492, 4.941231>,  <19.839479, 19.150204, 4.580427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.973652, 19.041492, 4.941231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642908, -0.765899, 0.008311,
		0.688589, -0.582696, -0.431637,
		0.335433, -0.271780, 0.902009,
		20.074282, 18.959959, 5.211833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.078033, 18.518034, 4.450349>,  <19.839479, 19.150204, 4.580427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.078033, 18.518034, 4.450349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.899868, 18.595459, 4.800009>,  <19.792969, 18.641914, 5.009805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.899868, 18.595459, 4.800009>,  <20.078033, 18.518034, 4.450349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.899868, 18.595459, 4.800009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721436, -0.655800, -0.222387,
		0.530222, -0.729698, 0.431747,
		-0.445415, 0.193563, 0.874150,
		19.766243, 18.653528, 5.062254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.077627, 17.877462, 4.807774>,  <20.078033, 18.518034, 4.450349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.077627, 17.877462, 4.807774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.774803, 18.127773, 4.882888>,  <19.593109, 18.277960, 4.927957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.774803, 18.127773, 4.882888>,  <20.077627, 17.877462, 4.807774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.774803, 18.127773, 4.882888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644627, -0.668644, -0.370635,
		-0.106373, -0.401645, 0.909597,
		-0.757061, 0.625776, 0.187785,
		19.547686, 18.315506, 4.939224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.555983, 17.459536, 4.780179>,  <20.077627, 17.877462, 4.807774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.555983, 17.459536, 4.780179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.369350, 17.812550, 4.756738>,  <19.257372, 18.024359, 4.742673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.369350, 17.812550, 4.756738>,  <19.555983, 17.459536, 4.780179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.369350, 17.812550, 4.756738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794699, -0.447382, -0.410247,
		-0.388275, -0.144843, 0.910090,
		-0.466579, 0.882536, -0.058600,
		19.229378, 18.077311, 4.739157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.889978, 17.612251, 5.229091>,  <19.555983, 17.459536, 4.780179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.889978, 17.612251, 5.229091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.876732, 17.803421, 4.877981>,  <18.868784, 17.918123, 4.667315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.876732, 17.803421, 4.877981>,  <18.889978, 17.612251, 5.229091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.876732, 17.803421, 4.877981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860792, -0.459932, -0.217943,
		-0.507878, 0.748365, 0.426625,
		-0.033118, 0.477924, -0.877777,
		18.866796, 17.946798, 4.614648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.519899, 18.248104, 5.455449>,  <18.889978, 17.612251, 5.229091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.519899, 18.248104, 5.455449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.622334, 18.048840, 5.786811>,  <18.683794, 17.929281, 5.985628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.622334, 18.048840, 5.786811>,  <18.519899, 18.248104, 5.455449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.622334, 18.048840, 5.786811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889312, 0.457301, 0.000085,
		-0.378873, 0.736689, 0.560130,
		0.256085, -0.498162, 0.828405,
		18.699160, 17.899391, 6.035332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.783495, 18.547510, 5.860381>,  <18.519899, 18.248104, 5.455449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.783495, 18.547510, 5.860381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.946831, 18.250957, 6.073403>,  <19.044832, 18.073027, 6.201217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.946831, 18.250957, 6.073403>,  <18.783495, 18.547510, 5.860381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.946831, 18.250957, 6.073403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807337, 0.565576, 0.168321,
		-0.425990, 0.361219, 0.829489,
		0.408338, -0.741380, 0.532555,
		19.069332, 18.028543, 6.233170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.794264, 18.699146, 6.652014>,  <18.783495, 18.547510, 5.860381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.794264, 18.699146, 6.652014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.090736, 18.490444, 6.483054>,  <19.268620, 18.365223, 6.381679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.090736, 18.490444, 6.483054>,  <18.794264, 18.699146, 6.652014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.090736, 18.490444, 6.483054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642406, 0.733897, 0.220701,
		0.194845, -0.434931, 0.879130,
		0.741181, -0.521756, -0.422399,
		19.313091, 18.333918, 6.356335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.325821, 18.829683, 7.146036>,  <18.794264, 18.699146, 6.652014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.325821, 18.829683, 7.146036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.463936, 18.707638, 6.791030>,  <19.546804, 18.634411, 6.578026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.463936, 18.707638, 6.791030>,  <19.325821, 18.829683, 7.146036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.463936, 18.707638, 6.791030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675938, 0.736895, 0.009643,
		0.651063, -0.603234, 0.460679,
		0.345289, -0.305113, -0.887514,
		19.567522, 18.616104, 6.524776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.084747, 18.709766, 7.049843>,  <19.325821, 18.829683, 7.146036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.084747, 18.709766, 7.049843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.996143, 18.790184, 6.668159>,  <19.942982, 18.838434, 6.439149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.996143, 18.790184, 6.668159>,  <20.084747, 18.709766, 7.049843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.996143, 18.790184, 6.668159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850293, 0.518891, -0.088058,
		0.477427, -0.830862, -0.285887,
		-0.221508, 0.201046, -0.954209,
		19.929691, 18.850498, 6.381897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.672318, 18.522076, 6.692425>,  <20.084747, 18.709766, 7.049843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.672318, 18.522076, 6.692425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.454582, 18.796558, 6.499422>,  <20.323940, 18.961248, 6.383620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.454582, 18.796558, 6.499422>,  <20.672318, 18.522076, 6.692425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.454582, 18.796558, 6.499422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804850, 0.589357, -0.069821,
		0.236458, -0.426353, -0.873104,
		-0.544339, 0.686208, -0.482508,
		20.291281, 19.002420, 6.354670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.058319, 18.764154, 6.074543>,  <20.672318, 18.522076, 6.692425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.058319, 18.764154, 6.074543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.814266, 19.039917, 6.230725>,  <20.667833, 19.205374, 6.324434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.814266, 19.039917, 6.230725>,  <21.058319, 18.764154, 6.074543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.814266, 19.039917, 6.230725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790467, 0.563155, 0.240869,
		-0.053830, 0.455604, -0.888554,
		-0.610135, 0.689406, 0.390455,
		20.631226, 19.246738, 6.347862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.269070, 19.339373, 5.781108>,  <21.058319, 18.764154, 6.074543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.269070, 19.339373, 5.781108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.139126, 19.359745, 6.158864>,  <21.061159, 19.371967, 6.385518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.139126, 19.359745, 6.158864>,  <21.269070, 19.339373, 5.781108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.139126, 19.359745, 6.158864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732670, 0.644979, 0.217247,
		-0.598048, 0.762501, -0.246841,
		-0.324858, 0.050929, 0.944390,
		21.041668, 19.375025, 6.442181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.911161, 19.104321, 6.072692>,  <21.269070, 19.339373, 5.781108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.911161, 19.104321, 6.072692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.838573, 19.497635, 6.066845>,  <21.795021, 19.733624, 6.063336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.838573, 19.497635, 6.066845>,  <21.911161, 19.104321, 6.072692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.838573, 19.497635, 6.066845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184288, -0.019401, 0.982681,
		0.965975, 0.181019, 0.184729,
		-0.181468, 0.983288, -0.014618,
		21.784134, 19.792622, 6.062459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.278223, 19.374414, 6.618224>,  <21.911161, 19.104321, 6.072692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.278223, 19.374414, 6.618224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.967010, 19.606850, 6.522720>,  <21.780283, 19.746311, 6.465418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.967010, 19.606850, 6.522720>,  <22.278223, 19.374414, 6.618224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.967010, 19.606850, 6.522720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308768, -0.022723, 0.950866,
		0.547110, 0.813525, 0.197100,
		-0.778032, 0.581086, -0.238758,
		21.733601, 19.781176, 6.451093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.023970, 19.345684, 7.260527>,  <22.278223, 19.374414, 6.618224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.023970, 19.345684, 7.260527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.825401, 19.626171, 7.055840>,  <21.706261, 19.794464, 6.933027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.825401, 19.626171, 7.055840>,  <22.023970, 19.345684, 7.260527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.825401, 19.626171, 7.055840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433220, 0.310705, 0.846040,
		0.752253, 0.641680, 0.149542,
		-0.496423, 0.701220, -0.511717,
		21.676474, 19.836536, 6.902324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.075169, 19.969820, 7.620924>,  <22.023970, 19.345684, 7.260527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.075169, 19.969820, 7.620924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.742573, 20.028481, 7.406591>,  <21.543015, 20.063677, 7.277992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.742573, 20.028481, 7.406591>,  <22.075169, 19.969820, 7.620924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.742573, 20.028481, 7.406591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443389, 0.405935, 0.799139,
		0.334706, 0.902059, -0.272509,
		-0.831491, 0.146649, -0.535832,
		21.493126, 20.072475, 7.245842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.799477, 20.693626, 7.799281>,  <22.075169, 19.969820, 7.620924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.799477, 20.693626, 7.799281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.510204, 20.457920, 7.655187>,  <21.336641, 20.316496, 7.568730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.510204, 20.457920, 7.655187>,  <21.799477, 20.693626, 7.799281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.510204, 20.457920, 7.655187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538708, 0.154872, 0.828135,
		-0.432203, 0.792955, -0.429444,
		-0.723183, -0.589268, -0.360235,
		21.293249, 20.281139, 7.547116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.170902, 20.907032, 8.189713>,  <21.799477, 20.693626, 7.799281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.170902, 20.907032, 8.189713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.067268, 20.560192, 8.019530>,  <21.005089, 20.352089, 7.917420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.067268, 20.560192, 8.019530>,  <21.170902, 20.907032, 8.189713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.067268, 20.560192, 8.019530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656630, -0.164917, 0.735962,
		-0.708317, 0.470043, -0.526636,
		-0.259083, -0.867100, -0.425458,
		20.989544, 20.300062, 7.891893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.468121, 21.016602, 8.128237>,  <21.170902, 20.907032, 8.189713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.468121, 21.016602, 8.128237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.521919, 20.621468, 8.097015>,  <20.554199, 20.384388, 8.078282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.521919, 20.621468, 8.097015>,  <20.468121, 21.016602, 8.128237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.521919, 20.621468, 8.097015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827604, -0.155302, 0.539401,
		-0.544961, -0.007951, -0.838424,
		0.134498, -0.987835, -0.078053,
		20.562269, 20.325117, 8.073600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.864153, 20.818417, 7.987282>,  <20.468121, 21.016602, 8.128237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.864153, 20.818417, 7.987282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.043182, 20.485275, 8.117534>,  <20.150600, 20.285391, 8.195684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.043182, 20.485275, 8.117534>,  <19.864153, 20.818417, 7.987282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.043182, 20.485275, 8.117534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722362, -0.122073, 0.680655,
		-0.527136, -0.539864, -0.656258,
		0.447572, -0.832853, 0.325629,
		20.177454, 20.235420, 8.215222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.265980, 20.324120, 8.131940>,  <19.864153, 20.818417, 7.987282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.265980, 20.324120, 8.131940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.595413, 20.208916, 8.327391>,  <19.793074, 20.139793, 8.444661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.595413, 20.208916, 8.327391>,  <19.265980, 20.324120, 8.131940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.595413, 20.208916, 8.327391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538520, -0.126623, 0.833044,
		-0.178060, -0.949217, -0.259388,
		0.823584, -0.288017, 0.488626,
		19.842489, 20.122513, 8.473979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.120895, 19.637253, 8.565523>,  <19.265980, 20.324120, 8.131940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.120895, 19.637253, 8.565523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.440208, 19.817162, 8.725748>,  <19.631796, 19.925106, 8.821883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.440208, 19.817162, 8.725748>,  <19.120895, 19.637253, 8.565523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.440208, 19.817162, 8.725748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360382, -0.176170, 0.916018,
		0.482567, -0.875597, 0.021457,
		0.798282, 0.449772, 0.400563,
		19.679693, 19.952093, 8.845917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.169224, 19.191914, 9.089366>,  <19.120895, 19.637253, 8.565523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.169224, 19.191914, 9.089366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.366943, 19.531689, 9.163261>,  <19.485575, 19.735554, 9.207599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.366943, 19.531689, 9.163261>,  <19.169224, 19.191914, 9.089366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.366943, 19.531689, 9.163261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312296, -0.024808, 0.949661,
		0.811259, -0.527109, 0.253013,
		0.494298, 0.849436, 0.184739,
		19.515232, 19.786520, 9.218683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.520023, 18.963478, 9.570597>,  <19.169224, 19.191914, 9.089366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.520023, 18.963478, 9.570597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.493256, 19.360104, 9.614998>,  <19.477196, 19.598080, 9.641639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.493256, 19.360104, 9.614998>,  <19.520023, 18.963478, 9.570597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.493256, 19.360104, 9.614998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378716, -0.128170, 0.916595,
		0.923090, 0.019298, 0.384099,
		-0.066918, 0.991565, 0.111004,
		19.473181, 19.657574, 9.648299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.725552, 19.142168, 10.229425>,  <19.520023, 18.963478, 9.570597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.725552, 19.142168, 10.229425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.566391, 19.500458, 10.150078>,  <19.470896, 19.715431, 10.102469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.566391, 19.500458, 10.150078>,  <19.725552, 19.142168, 10.229425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.566391, 19.500458, 10.150078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433243, 0.007135, 0.901249,
		0.808687, 0.444549, 0.385228,
		-0.397901, 0.895726, -0.198368,
		19.447021, 19.769176, 10.090568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.850222, 19.493118, 10.832061>,  <19.725552, 19.142168, 10.229425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.850222, 19.493118, 10.832061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.565571, 19.694489, 10.636040>,  <19.394781, 19.815311, 10.518427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.565571, 19.694489, 10.636040>,  <19.850222, 19.493118, 10.832061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.565571, 19.694489, 10.636040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504287, 0.119645, 0.855207,
		0.489167, 0.855714, 0.168729,
		-0.711625, 0.503427, -0.490052,
		19.352083, 19.845516, 10.489024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.716213, 20.149839, 11.180391>,  <19.850222, 19.493118, 10.832061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.716213, 20.149839, 11.180391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.389088, 20.052143, 10.971957>,  <19.192812, 19.993525, 10.846897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.389088, 20.052143, 10.971957>,  <19.716213, 20.149839, 11.180391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.389088, 20.052143, 10.971957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549504, 0.062419, 0.833156,
		-0.170965, 0.967704, -0.185259,
		-0.817812, -0.244241, -0.521085,
		19.143744, 19.978870, 10.815632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.208244, 20.648499, 11.146074>,  <19.716213, 20.149839, 11.180391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.208244, 20.648499, 11.146074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.017384, 20.302189, 11.085727>,  <18.902868, 20.094402, 11.049518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.017384, 20.302189, 11.085727>,  <19.208244, 20.648499, 11.146074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.017384, 20.302189, 11.085727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575473, 0.178064, 0.798200,
		-0.664197, 0.467684, -0.583193,
		-0.477151, -0.865774, -0.150870,
		18.874239, 20.042456, 11.040466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.499256, 20.810572, 11.331363>,  <19.208244, 20.648499, 11.146074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.499256, 20.810572, 11.331363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.583363, 20.423412, 11.386444>,  <18.633827, 20.191116, 11.419493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.583363, 20.423412, 11.386444>,  <18.499256, 20.810572, 11.331363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.583363, 20.423412, 11.386444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478425, 0.020962, 0.877878,
		-0.852583, -0.250470, -0.458658,
		0.210268, -0.967898, 0.137703,
		18.646442, 20.133043, 11.427755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.821836, 20.490576, 11.461021>,  <18.499256, 20.810572, 11.331363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.821836, 20.490576, 11.461021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.112255, 20.255928, 11.604543>,  <18.286507, 20.115139, 11.690656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.112255, 20.255928, 11.604543>,  <17.821836, 20.490576, 11.461021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.112255, 20.255928, 11.604543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488221, -0.072301, 0.869720,
		-0.484251, -0.806630, -0.338893,
		0.726044, -0.586618, 0.358802,
		18.330069, 20.079943, 11.712183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.458549, 20.007673, 11.836499>,  <17.821836, 20.490576, 11.461021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.458549, 20.007673, 11.836499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.834858, 19.988846, 11.970804>,  <18.060642, 19.977549, 12.051388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.834858, 19.988846, 11.970804>,  <17.458549, 20.007673, 11.836499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.834858, 19.988846, 11.970804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338725, -0.173623, 0.924727,
		0.014772, -0.983687, -0.179282,
		0.940770, -0.047067, 0.335764,
		18.117088, 19.974726, 12.071533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.404772, 19.667850, 12.432859>,  <17.458549, 20.007673, 11.836499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.404772, 19.667850, 12.432859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.774483, 19.811489, 12.484641>,  <17.996309, 19.897673, 12.515710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.774483, 19.811489, 12.484641>,  <17.404772, 19.667850, 12.432859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.774483, 19.811489, 12.484641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149074, 0.027368, 0.988447,
		0.351408, -0.932898, 0.078828,
		0.924278, 0.359099, 0.129453,
		18.051765, 19.919218, 12.523478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.563505, 19.340942, 13.043492>,  <17.404772, 19.667850, 12.432859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.563505, 19.340942, 13.043492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.776501, 19.673462, 12.979750>,  <17.904299, 19.872974, 12.941504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.776501, 19.673462, 12.979750>,  <17.563505, 19.340942, 13.043492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.776501, 19.673462, 12.979750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145516, 0.275372, 0.950261,
		0.833834, -0.482816, 0.267600,
		0.532490, 0.831300, -0.159357,
		17.936249, 19.922852, 12.931943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.844643, 19.471865, 13.700317>,  <17.563505, 19.340942, 13.043492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.844643, 19.471865, 13.700317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.945339, 19.824879, 13.541441>,  <18.005756, 20.036686, 13.446115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.945339, 19.824879, 13.541441>,  <17.844643, 19.471865, 13.700317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.945339, 19.824879, 13.541441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082670, 0.428517, 0.899744,
		0.964257, -0.193667, 0.180834,
		0.251741, 0.882534, -0.397190,
		18.020863, 20.089640, 13.422284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.467339, 19.611719, 14.018377>,  <17.844643, 19.471865, 13.700317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.467339, 19.611719, 14.018377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.305168, 19.947716, 13.874132>,  <18.207867, 20.149313, 13.787585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.305168, 19.947716, 13.874132>,  <18.467339, 19.611719, 14.018377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.305168, 19.947716, 13.874132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010843, 0.390043, 0.920733,
		0.914063, 0.377200, -0.149026,
		-0.405427, 0.839992, -0.360614,
		18.183540, 20.199713, 13.765948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.926203, 20.185946, 14.316229>,  <18.467339, 19.611719, 14.018377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.926203, 20.185946, 14.316229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.569164, 20.341770, 14.225441>,  <18.354940, 20.435265, 14.170968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.569164, 20.341770, 14.225441>,  <18.926203, 20.185946, 14.316229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.569164, 20.341770, 14.225441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060202, 0.395930, 0.916305,
		0.446820, 0.831554, -0.329953,
		-0.892596, 0.389560, -0.226971,
		18.301386, 20.458639, 14.157350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.878523, 20.826639, 14.658193>,  <18.926203, 20.185946, 14.316229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.878523, 20.826639, 14.658193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.491505, 20.768719, 14.575354>,  <18.259295, 20.733967, 14.525650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.491505, 20.768719, 14.575354>,  <18.878523, 20.826639, 14.658193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.491505, 20.768719, 14.575354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248560, 0.397638, 0.883234,
		-0.045544, 0.906045, -0.420724,
		-0.967545, -0.144801, -0.207097,
		18.201241, 20.725279, 14.513225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.576874, 21.434090, 14.846787>,  <18.878523, 20.826639, 14.658193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.576874, 21.434090, 14.846787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.285637, 21.159912, 14.849457>,  <18.110895, 20.995405, 14.851058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.285637, 21.159912, 14.849457>,  <18.576874, 21.434090, 14.846787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.285637, 21.159912, 14.849457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328668, 0.357626, 0.874117,
		-0.601546, 0.634245, -0.485670,
		-0.728093, -0.685446, 0.006673,
		18.067209, 20.954279, 14.851459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.930880, 21.771641, 15.130904>,  <18.576874, 21.434090, 14.846787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.930880, 21.771641, 15.130904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.886848, 21.376640, 15.176031>,  <17.860430, 21.139641, 15.203107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.886848, 21.376640, 15.176031>,  <17.930880, 21.771641, 15.130904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.886848, 21.376640, 15.176031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393436, 0.147527, 0.907438,
		-0.912738, 0.055502, -0.404758,
		-0.110077, -0.987500, 0.112817,
		17.853825, 21.080391, 15.209876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.294052, 21.672287, 15.364280>,  <17.930880, 21.771641, 15.130904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.294052, 21.672287, 15.364280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.469742, 21.327312, 15.464903>,  <17.575155, 21.120327, 15.525277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.469742, 21.327312, 15.464903>,  <17.294052, 21.672287, 15.364280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.469742, 21.327312, 15.464903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214543, 0.171216, 0.961591,
		-0.872383, -0.476325, -0.109828,
		0.439225, -0.862438, 0.251558,
		17.601509, 21.068581, 15.540370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.835440, 21.424364, 15.854585>,  <17.294052, 21.672287, 15.364280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.835440, 21.424364, 15.854585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.164463, 21.205273, 15.915760>,  <17.361877, 21.073818, 15.952465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.164463, 21.205273, 15.915760>,  <16.835440, 21.424364, 15.854585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.164463, 21.205273, 15.915760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155105, 0.042654, 0.986977,
		-0.547118, -0.835568, -0.049870,
		0.822559, -0.547728, 0.152938,
		17.411230, 21.040955, 15.961641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.648380, 20.956629, 16.404434>,  <16.835440, 21.424364, 15.854585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.648380, 20.956629, 16.404434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.047291, 20.983330, 16.391893>,  <17.286636, 20.999352, 16.384369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.047291, 20.983330, 16.391893>,  <16.648380, 20.956629, 16.404434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.047291, 20.983330, 16.391893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012242, 0.269346, 0.962966,
		0.072724, -0.960727, 0.267795,
		0.997277, 0.066753, -0.031350,
		17.346474, 21.003355, 16.382488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.901922, 20.701534, 17.045944>,  <16.648380, 20.956629, 16.404434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.901922, 20.701534, 17.045944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.235958, 20.890507, 16.933210>,  <17.436380, 21.003891, 16.865570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.235958, 20.890507, 16.933210>,  <16.901922, 20.701534, 17.045944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.235958, 20.890507, 16.933210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291437, 0.054578, 0.955032,
		0.466570, -0.879676, -0.092106,
		0.835091, 0.472432, -0.281834,
		17.486485, 21.032236, 16.848660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.517021, 20.340187, 17.287600>,  <16.901922, 20.701534, 17.045944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.517021, 20.340187, 17.287600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.660610, 20.709522, 17.233067>,  <17.746763, 20.931124, 17.200346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.660610, 20.709522, 17.233067>,  <17.517021, 20.340187, 17.287600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.660610, 20.709522, 17.233067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284561, 0.030845, 0.958162,
		0.888911, -0.382750, -0.251674,
		0.358973, 0.923337, -0.136334,
		17.768303, 20.986523, 17.192167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.177038, 20.411545, 17.654556>,  <17.517021, 20.340187, 17.287600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.177038, 20.411545, 17.654556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.030045, 20.781605, 17.616505>,  <17.941849, 21.003641, 17.593674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.030045, 20.781605, 17.616505>,  <18.177038, 20.411545, 17.654556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.030045, 20.781605, 17.616505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239005, 0.192793, 0.951687,
		0.898794, 0.326994, -0.291964,
		-0.367485, 0.925152, -0.095128,
		17.919800, 21.059151, 17.587967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.582829, 20.816494, 18.072643>,  <18.177038, 20.411545, 17.654556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.582829, 20.816494, 18.072643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.271301, 21.062145, 18.021585>,  <18.084385, 21.209536, 17.990952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.271301, 21.062145, 18.021585>,  <18.582829, 20.816494, 18.072643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.271301, 21.062145, 18.021585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144896, 0.374136, 0.915984,
		0.610286, 0.694889, -0.380368,
		-0.778817, 0.614127, -0.127643,
		18.037657, 21.246384, 17.983292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.794247, 21.376141, 18.544750>,  <18.582829, 20.816494, 18.072643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.794247, 21.376141, 18.544750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.405331, 21.417824, 18.461046>,  <18.171980, 21.442833, 18.410824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.405331, 21.417824, 18.461046>,  <18.794247, 21.376141, 18.544750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.405331, 21.417824, 18.461046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164384, 0.331698, 0.928953,
		0.166215, 0.937613, -0.305377,
		-0.972292, 0.104207, -0.209261,
		18.113644, 21.449085, 18.398268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.509586, 21.995787, 18.913273>,  <18.794247, 21.376141, 18.544750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.509586, 21.995787, 18.913273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.204124, 21.747295, 18.842951>,  <18.020847, 21.598200, 18.800758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.204124, 21.747295, 18.842951>,  <18.509586, 21.995787, 18.913273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.204124, 21.747295, 18.842951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371854, 0.200616, 0.906354,
		-0.527784, 0.757515, -0.384208,
		-0.763655, -0.621228, -0.175803,
		17.975027, 21.560926, 18.790211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.908567, 22.381077, 19.125463>,  <18.509586, 21.995787, 18.913273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.908567, 22.381077, 19.125463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.793415, 21.998798, 19.100901>,  <17.724323, 21.769432, 19.086163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.793415, 21.998798, 19.100901>,  <17.908567, 22.381077, 19.125463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.793415, 21.998798, 19.100901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479282, 0.088267, 0.873211,
		-0.829104, 0.280811, -0.483458,
		-0.287881, -0.955695, -0.061405,
		17.707050, 21.712090, 19.082479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.239748, 22.443008, 19.154413>,  <17.908567, 22.381077, 19.125463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.239748, 22.443008, 19.154413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.341148, 22.072651, 19.266453>,  <17.401989, 21.850435, 19.333675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.341148, 22.072651, 19.266453>,  <17.239748, 22.443008, 19.154413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.341148, 22.072651, 19.266453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338314, 0.186410, 0.922386,
		-0.906246, -0.328585, -0.265989,
		0.253499, -0.925896, 0.280098,
		17.417198, 21.794882, 19.350483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.688276, 22.154858, 19.671719>,  <17.239748, 22.443008, 19.154413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.688276, 22.154858, 19.671719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.016060, 21.942051, 19.756989>,  <17.212730, 21.814367, 19.808151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.016060, 21.942051, 19.756989>,  <16.688276, 22.154858, 19.671719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.016060, 21.942051, 19.756989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198952, 0.084769, 0.976336,
		-0.537498, -0.842480, -0.036382,
		0.819460, -0.532017, 0.213176,
		17.261898, 21.782446, 19.820942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.509617, 21.779287, 20.300985>,  <16.688276, 22.154858, 19.671719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.509617, 21.779287, 20.300985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.906162, 21.736027, 20.271322>,  <17.144091, 21.710070, 20.253525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.906162, 21.736027, 20.271322>,  <16.509617, 21.779287, 20.300985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.906162, 21.736027, 20.271322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091396, 0.164308, 0.982166,
		-0.094039, -0.980462, 0.172774,
		0.991365, -0.108152, -0.074159,
		17.203571, 21.703581, 20.249075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.594994, 21.317549, 20.791100>,  <16.509617, 21.779287, 20.300985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.594994, 21.317549, 20.791100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.946274, 21.502651, 20.742739>,  <17.157042, 21.613712, 20.713722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.946274, 21.502651, 20.742739>,  <16.594994, 21.317549, 20.791100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.946274, 21.502651, 20.742739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035250, 0.189471, 0.981254,
		0.476989, -0.866001, 0.150081,
		0.878202, 0.462757, -0.120902,
		17.209734, 21.641478, 20.706469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.906017, 21.204218, 21.304804>,  <16.594994, 21.317549, 20.791100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.906017, 21.204218, 21.304804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.120571, 21.524254, 21.197363>,  <17.249304, 21.716276, 21.132898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.120571, 21.524254, 21.197363>,  <16.906017, 21.204218, 21.304804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.120571, 21.524254, 21.197363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008219, 0.313293, 0.949621,
		0.843934, -0.511570, 0.161470,
		0.536385, 0.800090, -0.268603,
		17.281487, 21.764280, 21.116781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.421432, 21.232307, 21.718107>,  <16.906017, 21.204218, 21.304804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.421432, 21.232307, 21.718107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.397533, 21.609554, 21.587290>,  <17.383194, 21.835903, 21.508799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.397533, 21.609554, 21.587290>,  <17.421432, 21.232307, 21.718107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.397533, 21.609554, 21.587290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007989, 0.327168, 0.944932,
		0.998182, 0.059072, -0.012013,
		-0.059749, 0.943118, -0.327045,
		17.379608, 21.892490, 21.489176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.712679, 21.612566, 22.248837>,  <17.421432, 21.232307, 21.718107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.712679, 21.612566, 22.248837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.564342, 21.917332, 22.036436>,  <17.475340, 22.100191, 21.908997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.564342, 21.917332, 22.036436>,  <17.712679, 21.612566, 22.248837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.564342, 21.917332, 22.036436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063033, 0.591102, 0.804131,
		0.926555, 0.264734, -0.267230,
		-0.370841, 0.761915, -0.531001,
		17.453091, 22.145906, 21.877136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.055542, 22.312355, 22.254000>,  <17.712679, 21.612566, 22.248837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.055542, 22.312355, 22.254000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.660549, 22.365063, 22.219324>,  <17.423553, 22.396687, 22.198519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.660549, 22.365063, 22.219324>,  <18.055542, 22.312355, 22.254000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.660549, 22.365063, 22.219324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001237, 0.543118, 0.839655,
		0.157720, 0.829252, -0.536157,
		-0.987483, 0.131767, -0.086687,
		17.364304, 22.404593, 22.193317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.068367, 22.997316, 22.394926>,  <18.055542, 22.312355, 22.254000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.068367, 22.997316, 22.394926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.697441, 22.851833, 22.430252>,  <17.474886, 22.764544, 22.451448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.697441, 22.851833, 22.430252>,  <18.068367, 22.997316, 22.394926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.697441, 22.851833, 22.430252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088170, 0.441606, 0.892866,
		-0.363744, 0.820183, -0.441577,
		-0.927317, -0.363708, 0.088316,
		17.419247, 22.742722, 22.456747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.475372, 23.660322, 22.543745>,  <18.068367, 22.997316, 22.394926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.475372, 23.660322, 22.543745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.185852, 23.439442, 22.709244>,  <18.012140, 23.306913, 22.808542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.185852, 23.439442, 22.709244>,  <18.475372, 23.660322, 22.543745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.185852, 23.439442, 22.709244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679028, 0.676580, -0.284887,
		-0.122619, -0.487147, -0.864669,
		-0.723800, -0.552202, 0.413748,
		17.968712, 23.273781, 22.833368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.866722, 23.575844, 22.040934>,  <18.475372, 23.660322, 22.543745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.866722, 23.575844, 22.040934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.800644, 23.590260, 22.435175>,  <17.760998, 23.598909, 22.671719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.800644, 23.590260, 22.435175>,  <17.866722, 23.575844, 22.040934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.800644, 23.590260, 22.435175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755668, 0.637554, -0.149970,
		-0.633779, -0.769562, -0.078087,
		-0.165196, 0.036040, 0.985602,
		17.751085, 23.601072, 22.730856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.107553, 23.442677, 22.297646>,  <17.866722, 23.575844, 22.040934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.107553, 23.442677, 22.297646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.303520, 23.699078, 22.533983>,  <17.421101, 23.852919, 22.675785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.303520, 23.699078, 22.533983>,  <17.107553, 23.442677, 22.297646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.303520, 23.699078, 22.533983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691525, 0.698438, -0.184331,
		-0.530824, -0.318275, 0.785447,
		0.489918, 0.641003, 0.590843,
		17.450495, 23.891378, 22.711237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.624378, 23.743319, 22.695877>,  <17.107553, 23.442677, 22.297646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.624378, 23.743319, 22.695877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.937717, 23.988419, 22.654110>,  <17.125721, 24.135479, 22.629049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.937717, 23.988419, 22.654110>,  <16.624378, 23.743319, 22.695877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.937717, 23.988419, 22.654110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618958, 0.753526, -0.221562,
		-0.057082, 0.238189, 0.969540,
		0.783347, 0.612752, -0.104416,
		17.172722, 24.172245, 22.622786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.216795, 23.877705, 22.115751>,  <16.624378, 23.743319, 22.695877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.216795, 23.877705, 22.115751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.838357, 23.980602, 22.194473>,  <15.611295, 24.042341, 22.241707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.838357, 23.980602, 22.194473>,  <16.216795, 23.877705, 22.115751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.838357, 23.980602, 22.194473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193718, 0.037556, -0.980338,
		-0.259575, -0.965617, 0.014301,
		-0.946094, 0.257242, 0.196806,
		15.554529, 24.057775, 22.253515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.612701, 23.447676, 21.846003>,  <16.216795, 23.877705, 22.115751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.612701, 23.447676, 21.846003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.500945, 23.831341, 21.863634>,  <15.433891, 24.061541, 21.874212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.500945, 23.831341, 21.863634>,  <15.612701, 23.447676, 21.846003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.500945, 23.831341, 21.863634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164597, -0.002618, -0.986358,
		-0.945964, -0.282835, 0.158607,
		-0.279392, 0.959165, 0.044078,
		15.417128, 24.119091, 21.876858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.958817, 23.549517, 21.529472>,  <15.612701, 23.447676, 21.846003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.958817, 23.549517, 21.529472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.181144, 23.882011, 21.533794>,  <15.314540, 24.081509, 21.536388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.181144, 23.882011, 21.533794>,  <14.958817, 23.549517, 21.529472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.181144, 23.882011, 21.533794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073687, -0.036316, -0.996620,
		-0.828033, 0.554735, -0.081436,
		0.555817, 0.831234, 0.010806,
		15.347889, 24.131382, 21.537037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.850899, 24.079174, 20.929686>,  <14.958817, 23.549517, 21.529472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.850899, 24.079174, 20.929686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.223956, 24.135735, 21.062460>,  <15.447791, 24.169670, 21.142124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.223956, 24.135735, 21.062460>,  <14.850899, 24.079174, 20.929686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.223956, 24.135735, 21.062460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327557, 0.053870, -0.943295,
		-0.151264, 0.988485, 0.003924,
		0.932644, 0.141402, 0.331934,
		15.503750, 24.178156, 21.162041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.058564, 24.834972, 20.770039>,  <14.850899, 24.079174, 20.929686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.058564, 24.834972, 20.770039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.338239, 24.549599, 20.788574>,  <15.506043, 24.378374, 20.799696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.338239, 24.549599, 20.788574>,  <15.058564, 24.834972, 20.770039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.338239, 24.549599, 20.788574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160577, 0.093546, -0.982580,
		0.696673, 0.694448, 0.179968,
		0.699186, -0.713436, 0.046341,
		15.547995, 24.335567, 20.802477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.642190, 25.055925, 20.465366>,  <15.058564, 24.834972, 20.770039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.642190, 25.055925, 20.465366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.707904, 24.661362, 20.464546>,  <15.747332, 24.424623, 20.464054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.707904, 24.661362, 20.464546>,  <15.642190, 25.055925, 20.465366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.707904, 24.661362, 20.464546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083404, 0.015964, -0.996388,
		0.982881, 0.163520, 0.084893,
		0.164284, -0.986411, -0.002052,
		15.757189, 24.365438, 20.463930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.267515, 24.965487, 20.152084>,  <15.642190, 25.055925, 20.465366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.267515, 24.965487, 20.152084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.098473, 24.603439, 20.133469>,  <15.997046, 24.386211, 20.122299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.098473, 24.603439, 20.133469>,  <16.267515, 24.965487, 20.152084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.098473, 24.603439, 20.133469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310375, -0.096288, -0.945725,
		0.851511, -0.414116, 0.321617,
		-0.422607, -0.905117, -0.046541,
		15.971690, 24.331903, 20.119507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.790184, 24.462029, 19.903303>,  <16.267515, 24.965487, 20.152084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.790184, 24.462029, 19.903303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.431961, 24.299953, 19.829765>,  <16.217028, 24.202709, 19.785643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.431961, 24.299953, 19.829765>,  <16.790184, 24.462029, 19.903303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.431961, 24.299953, 19.829765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341916, -0.362290, -0.867087,
		0.284727, -0.839386, 0.462991,
		-0.895558, -0.405187, -0.183846,
		16.163294, 24.178398, 19.774612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.935360, 23.801304, 19.611305>,  <16.790184, 24.462029, 19.903303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.935360, 23.801304, 19.611305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.563141, 23.886662, 19.492277>,  <16.339809, 23.937876, 19.420860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.563141, 23.886662, 19.492277>,  <16.935360, 23.801304, 19.611305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.563141, 23.886662, 19.492277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221249, -0.319872, -0.921266,
		-0.291763, -0.923120, 0.250447,
		-0.930550, 0.213381, -0.297566,
		16.283978, 23.950680, 19.403006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.795221, 23.380344, 19.024006>,  <16.935360, 23.801304, 19.611305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.795221, 23.380344, 19.024006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.497517, 23.640507, 18.963278>,  <16.318893, 23.796604, 18.926842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.497517, 23.640507, 18.963278>,  <16.795221, 23.380344, 19.024006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.497517, 23.640507, 18.963278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146656, -0.062616, -0.987204,
		-0.651588, -0.757003, -0.048783,
		-0.744261, 0.650404, -0.151819,
		16.274239, 23.835629, 18.917732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.377567, 23.158529, 18.449068>,  <16.795221, 23.380344, 19.024006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.377567, 23.158529, 18.449068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.272953, 23.544430, 18.460732>,  <16.210184, 23.775970, 18.467730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.272953, 23.544430, 18.460732>,  <16.377567, 23.158529, 18.449068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.272953, 23.544430, 18.460732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037730, 0.040406, -0.998471,
		-0.964456, -0.260037, -0.046968,
		-0.261537, 0.964753, 0.029159,
		16.194492, 23.833857, 18.469479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.889380, 23.267073, 17.903051>,  <16.377567, 23.158529, 18.449068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.889380, 23.267073, 17.903051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.010368, 23.641621, 17.974291>,  <16.082962, 23.866350, 18.017035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.010368, 23.641621, 17.974291>,  <15.889380, 23.267073, 17.903051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.010368, 23.641621, 17.974291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227352, 0.110583, -0.967514,
		-0.925647, 0.333137, -0.179437,
		0.302472, 0.936371, 0.178100,
		16.101110, 23.922531, 18.027721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.589461, 23.641508, 17.372528>,  <15.889380, 23.267073, 17.903051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.589461, 23.641508, 17.372528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.911790, 23.826450, 17.520517>,  <16.105186, 23.937416, 17.609310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.911790, 23.826450, 17.520517>,  <15.589461, 23.641508, 17.372528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.911790, 23.826450, 17.520517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327376, 0.172776, -0.928964,
		-0.493435, 0.869698, -0.012138,
		0.805820, 0.462357, 0.369972,
		16.153536, 23.965157, 17.631510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.666262, 24.314850, 17.112993>,  <15.589461, 23.641508, 17.372528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.666262, 24.314850, 17.112993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.037060, 24.234352, 17.239597>,  <16.259539, 24.186054, 17.315559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.037060, 24.234352, 17.239597>,  <15.666262, 24.314850, 17.112993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.037060, 24.234352, 17.239597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347275, 0.141702, -0.926995,
		0.141702, 0.969237, 0.201245,
		0.926995, -0.201245, 0.316512,
		16.315159, 24.173979, 17.334551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.045500, 24.818756, 16.846544>,  <15.666262, 24.314850, 17.112993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.045500, 24.818756, 16.846544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.324104, 24.549301, 16.945408>,  <16.491266, 24.387629, 17.004726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.324104, 24.549301, 16.945408>,  <16.045500, 24.818756, 16.846544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.324104, 24.549301, 16.945408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492647, 0.198501, -0.847287,
		0.521701, 0.711908, 0.470123,
		0.696510, -0.673635, 0.247161,
		16.533058, 24.347210, 17.019556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.718561, 25.205790, 16.658672>,  <16.045500, 24.818756, 16.846544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.718561, 25.205790, 16.658672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.815372, 24.817707, 16.654167>,  <16.873459, 24.584858, 16.651464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.815372, 24.817707, 16.654167>,  <16.718561, 25.205790, 16.658672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.815372, 24.817707, 16.654167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505223, 0.135927, -0.852217,
		0.828355, 0.200569, 0.523068,
		0.242027, -0.970204, -0.011264,
		16.887981, 24.526646, 16.650787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.446983, 25.134834, 16.495996>,  <16.718561, 25.205790, 16.658672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.446983, 25.134834, 16.495996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.277355, 24.785290, 16.400894>,  <17.175577, 24.575563, 16.343834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.277355, 24.785290, 16.400894>,  <17.446983, 25.134834, 16.495996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.277355, 24.785290, 16.400894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487706, 0.000845, -0.873007,
		0.763090, -0.486171, 0.425830,
		-0.424071, -0.873863, -0.237754,
		17.150133, 24.523130, 16.329569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.903763, 24.921284, 15.966400>,  <17.446983, 25.134834, 16.495996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.903763, 24.921284, 15.966400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.602398, 24.663406, 15.914648>,  <17.421579, 24.508680, 15.883596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.602398, 24.663406, 15.914648>,  <17.903763, 24.921284, 15.966400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.602398, 24.663406, 15.914648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389923, -0.279601, -0.877373,
		0.529462, -0.711472, 0.462036,
		-0.753412, -0.644694, -0.129381,
		17.376375, 24.469997, 15.875834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.169756, 24.368673, 15.801979>,  <17.903763, 24.921284, 15.966400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.169756, 24.368673, 15.801979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.793530, 24.298004, 15.685961>,  <17.567795, 24.255602, 15.616350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.793530, 24.298004, 15.685961>,  <18.169756, 24.368673, 15.801979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.793530, 24.298004, 15.685961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328225, -0.253537, -0.909938,
		0.087224, -0.951055, 0.296456,
		-0.940564, -0.176673, -0.290045,
		17.511360, 24.245003, 15.598948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.174049, 23.771664, 15.403154>,  <18.169756, 24.368673, 15.801979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.174049, 23.771664, 15.403154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.836666, 23.957584, 15.295420>,  <17.634237, 24.069136, 15.230779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.836666, 23.957584, 15.295420>,  <18.174049, 23.771664, 15.403154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.836666, 23.957584, 15.295420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126736, -0.315051, -0.940575,
		-0.522035, -0.827468, 0.206825,
		-0.843456, 0.464801, -0.269338,
		17.583630, 24.097025, 15.214619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.879107, 23.297983, 14.980416>,  <18.174049, 23.771664, 15.403154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.879107, 23.297983, 14.980416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.697262, 23.643467, 14.893393>,  <17.588156, 23.850758, 14.841178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.697262, 23.643467, 14.893393>,  <17.879107, 23.297983, 14.980416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.697262, 23.643467, 14.893393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250927, -0.110173, -0.961716,
		-0.854614, -0.491797, -0.166643,
		-0.454610, 0.863711, -0.217560,
		17.560879, 23.902580, 14.828124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.321264, 23.124063, 14.428212>,  <17.879107, 23.297983, 14.980416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.321264, 23.124063, 14.428212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.425064, 23.510311, 14.422064>,  <17.487343, 23.742060, 14.418375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.425064, 23.510311, 14.422064>,  <17.321264, 23.124063, 14.428212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.425064, 23.510311, 14.422064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239202, -0.079687, -0.967695,
		-0.935651, 0.247438, -0.251657,
		0.259498, 0.965621, -0.015372,
		17.502914, 23.799997, 14.417452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.996590, 23.353329, 13.851055>,  <17.321264, 23.124063, 14.428212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.996590, 23.353329, 13.851055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.267651, 23.638557, 13.922964>,  <17.430286, 23.809694, 13.966109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.267651, 23.638557, 13.922964>,  <16.996590, 23.353329, 13.851055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.267651, 23.638557, 13.922964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302091, -0.047046, -0.952118,
		-0.670471, 0.699510, -0.247293,
		0.677650, 0.713072, 0.179772,
		17.470945, 23.852480, 13.976896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.905243, 23.978016, 13.328279>,  <16.996590, 23.353329, 13.851055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.905243, 23.978016, 13.328279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.290268, 23.990971, 13.435926>,  <17.521282, 23.998743, 13.500515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.290268, 23.990971, 13.435926>,  <16.905243, 23.978016, 13.328279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.290268, 23.990971, 13.435926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270265, -0.038700, -0.962008,
		-0.020741, 0.998726, -0.046004,
		0.962563, 0.032386, 0.269117,
		17.579037, 24.000687, 13.516662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.249647, 24.388407, 12.770769>,  <16.905243, 23.978016, 13.328279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.249647, 24.388407, 12.770769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.553093, 24.247124, 12.989765>,  <17.735161, 24.162354, 13.121162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.553093, 24.247124, 12.989765>,  <17.249647, 24.388407, 12.770769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.553093, 24.247124, 12.989765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605666, 0.072577, -0.792403,
		0.240147, 0.932725, 0.268984,
		0.758616, -0.353208, 0.547490,
		17.780678, 24.141161, 13.154013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.903669, 24.914232, 12.626070>,  <17.249647, 24.388407, 12.770769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.903669, 24.914232, 12.626070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.020226, 24.546043, 12.730239>,  <18.090160, 24.325130, 12.792740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.020226, 24.546043, 12.730239>,  <17.903669, 24.914232, 12.626070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.020226, 24.546043, 12.730239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561650, -0.055750, -0.825494,
		0.774364, 0.386808, 0.500739,
		0.291392, -0.920473, 0.260422,
		18.107643, 24.269901, 12.808366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.763750, 24.792139, 12.540413>,  <17.903669, 24.914232, 12.626070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.763750, 24.792139, 12.540413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.602528, 24.426537, 12.521928>,  <18.505795, 24.207174, 12.510837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.602528, 24.426537, 12.521928>,  <18.763750, 24.792139, 12.540413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.602528, 24.426537, 12.521928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447179, -0.152637, -0.881325,
		0.798484, -0.375889, 0.470246,
		-0.403057, -0.914008, -0.046212,
		18.481611, 24.152334, 12.508064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.322514, 24.395494, 12.468776>,  <18.763750, 24.792139, 12.540413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.322514, 24.395494, 12.468776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.008110, 24.198647, 12.319104>,  <18.819468, 24.080538, 12.229301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.008110, 24.198647, 12.319104>,  <19.322514, 24.395494, 12.468776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.008110, 24.198647, 12.319104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567632, -0.334708, -0.752174,
		0.244919, -0.803610, 0.542426,
		-0.786008, -0.492119, -0.374178,
		18.772308, 24.051010, 12.206851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.651031, 23.832989, 12.141350>,  <19.322514, 24.395494, 12.468776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.651031, 23.832989, 12.141350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.280296, 23.782093, 12.000051>,  <19.057856, 23.751556, 11.915271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.280296, 23.782093, 12.000051>,  <19.651031, 23.832989, 12.141350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.280296, 23.782093, 12.000051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374792, -0.257259, -0.890701,
		0.022454, -0.957929, 0.286125,
		-0.926837, -0.127237, -0.353248,
		19.002245, 23.743921, 11.894076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.610170, 23.221920, 11.744049>,  <19.651031, 23.832989, 12.141350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.610170, 23.221920, 11.744049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.319576, 23.459438, 11.605700>,  <19.145220, 23.601950, 11.522691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.319576, 23.459438, 11.605700>,  <19.610170, 23.221920, 11.744049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.319576, 23.459438, 11.605700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335277, -0.133063, -0.932675,
		-0.599840, -0.793538, -0.102417,
		-0.726485, 0.593795, -0.345872,
		19.101631, 23.637577, 11.501939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.430672, 22.854544, 11.120721>,  <19.610170, 23.221920, 11.744049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.430672, 22.854544, 11.120721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.319969, 23.238010, 11.094305>,  <19.253548, 23.468090, 11.078456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.319969, 23.238010, 11.094305>,  <19.430672, 22.854544, 11.120721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.319969, 23.238010, 11.094305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271190, 0.011989, -0.962451,
		-0.921879, -0.284275, -0.263300,
		-0.276758, 0.958668, -0.066040,
		19.236942, 23.525610, 11.074493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.088724, 22.871284, 10.527023>,  <19.430672, 22.854544, 11.120721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.088724, 22.871284, 10.527023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.141174, 23.265427, 10.570631>,  <19.172644, 23.501911, 10.596796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.141174, 23.265427, 10.570631>,  <19.088724, 22.871284, 10.527023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.141174, 23.265427, 10.570631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352624, 0.056419, -0.934063,
		-0.926533, 0.160922, -0.340061,
		0.131125, 0.985353, 0.109019,
		19.180511, 23.561033, 10.603336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.580704, 23.193979, 9.982122>,  <19.088724, 22.871284, 10.527023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.580704, 23.193979, 9.982122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.887444, 23.411335, 10.118751>,  <19.071487, 23.541748, 10.200727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.887444, 23.411335, 10.118751>,  <18.580704, 23.193979, 9.982122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.887444, 23.411335, 10.118751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354477, 0.085087, -0.931185,
		-0.535061, 0.835156, -0.127370,
		0.766848, 0.543391, 0.341571,
		19.117498, 23.574352, 10.221222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.625118, 23.686586, 9.557493>,  <18.580704, 23.193979, 9.982122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.625118, 23.686586, 9.557493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.990490, 23.670795, 9.719526>,  <19.209713, 23.661322, 9.816746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.990490, 23.670795, 9.719526>,  <18.625118, 23.686586, 9.557493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.990490, 23.670795, 9.719526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406760, 0.054335, -0.911918,
		0.013989, 0.997742, 0.065688,
		0.913428, -0.039476, 0.405082,
		19.264519, 23.658953, 9.841051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.110104, 24.185522, 9.242437>,  <18.625118, 23.686586, 9.557493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.110104, 24.185522, 9.242437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.329498, 23.884384, 9.387979>,  <19.461136, 23.703701, 9.475304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.329498, 23.884384, 9.387979>,  <19.110104, 24.185522, 9.242437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.329498, 23.884384, 9.387979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465109, -0.086923, -0.880976,
		0.694864, 0.652435, 0.302478,
		0.548487, -0.752843, 0.363853,
		19.494045, 23.658531, 9.497134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.643839, 24.234661, 8.783126>,  <19.110104, 24.185522, 9.242437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.643839, 24.234661, 8.783126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.766731, 23.896301, 8.957512>,  <19.840467, 23.693285, 9.062143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.766731, 23.896301, 8.957512>,  <19.643839, 24.234661, 8.783126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.766731, 23.896301, 8.957512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559097, -0.210273, -0.801995,
		0.770077, 0.490146, 0.408336,
		0.307232, -0.845897, 0.435965,
		19.858900, 23.642532, 9.088302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.395239, 24.124016, 8.658341>,  <19.643839, 24.234661, 8.783126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.395239, 24.124016, 8.658341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.235283, 23.765320, 8.734184>,  <20.139309, 23.550102, 8.779690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.235283, 23.765320, 8.734184>,  <20.395239, 24.124016, 8.658341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.235283, 23.765320, 8.734184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549959, -0.400242, -0.733043,
		0.733236, -0.188859, 0.653221,
		-0.399888, -0.896738, 0.189607,
		20.115316, 23.496298, 8.791066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.924932, 23.643953, 8.498998>,  <20.395239, 24.124016, 8.658341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.924932, 23.643953, 8.498998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.589748, 23.426270, 8.482728>,  <20.388638, 23.295660, 8.472966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.589748, 23.426270, 8.482728>,  <20.924932, 23.643953, 8.498998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.589748, 23.426270, 8.482728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310468, -0.414101, -0.855646,
		0.448808, -0.729627, 0.515961,
		-0.837962, -0.544210, -0.040674,
		20.338360, 23.263006, 8.470526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.150711, 23.014868, 8.275862>,  <20.924932, 23.643953, 8.498998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.150711, 23.014868, 8.275862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.760937, 22.987988, 8.190108>,  <20.527073, 22.971859, 8.138657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.760937, 22.987988, 8.190108>,  <21.150711, 23.014868, 8.275862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.760937, 22.987988, 8.190108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207825, -0.632111, -0.746488,
		-0.085350, -0.771958, 0.629918,
		-0.974435, -0.067200, -0.214383,
		20.468607, 22.967827, 8.125793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.101439, 22.401152, 8.127748>,  <21.150711, 23.014868, 8.275862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.101439, 22.401152, 8.127748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.791946, 22.572380, 7.940943>,  <20.606251, 22.675117, 7.828860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.791946, 22.572380, 7.940943>,  <21.101439, 22.401152, 8.127748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.791946, 22.572380, 7.940943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166390, -0.573980, -0.801786,
		-0.611276, -0.698071, 0.372878,
		-0.773729, 0.428069, -0.467012,
		20.559828, 22.700802, 7.800839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.491739, 21.946051, 8.054525>,  <21.101439, 22.401152, 8.127748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.491739, 21.946051, 8.054525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.408978, 22.212063, 7.767492>,  <20.359322, 22.371670, 7.595272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.408978, 22.212063, 7.767492>,  <20.491739, 21.946051, 8.054525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.408978, 22.212063, 7.767492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018825, -0.736025, -0.676693,
		-0.978180, -0.126501, 0.164805,
		-0.206903, 0.665030, -0.717584,
		20.346907, 22.411572, 7.552217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.950865, 21.630402, 7.702629>,  <20.491739, 21.946051, 8.054525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.950865, 21.630402, 7.702629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.065510, 21.909290, 7.439803>,  <20.134296, 22.076624, 7.282108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.065510, 21.909290, 7.439803>,  <19.950865, 21.630402, 7.702629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.065510, 21.909290, 7.439803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349425, -0.562516, -0.749318,
		-0.892050, 0.444360, 0.082402,
		0.286615, 0.697223, -0.657063,
		20.151495, 22.118458, 7.242684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.426989, 21.677437, 7.143806>,  <19.950865, 21.630402, 7.702629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.426989, 21.677437, 7.143806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.757385, 21.836296, 6.983800>,  <19.955624, 21.931612, 6.887796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.757385, 21.836296, 6.983800>,  <19.426989, 21.677437, 7.143806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.757385, 21.836296, 6.983800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235154, -0.402166, -0.884853,
		-0.512289, 0.824947, -0.238795,
		0.825992, 0.397147, -0.400014,
		20.005182, 21.955441, 6.863796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.206066, 22.142427, 6.638751>,  <19.426989, 21.677437, 7.143806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.206066, 22.142427, 6.638751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.562763, 21.976273, 6.566924>,  <19.776781, 21.876579, 6.523828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.562763, 21.976273, 6.566924>,  <19.206066, 22.142427, 6.638751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.562763, 21.976273, 6.566924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352360, -0.388354, -0.851483,
		0.283961, 0.822577, -0.492679,
		0.891744, -0.415388, -0.179566,
		19.830286, 21.851656, 6.513054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.958258, 21.681475, 6.154889>,  <19.206066, 22.142427, 6.638751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.958258, 21.681475, 6.154889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.786251, 21.320915, 6.134633>,  <18.683048, 21.104580, 6.122479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.786251, 21.320915, 6.134633>,  <18.958258, 21.681475, 6.154889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.786251, 21.320915, 6.134633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675634, 0.284093, 0.680301,
		-0.598838, 0.326753, -0.731181,
		-0.430014, -0.901401, -0.050639,
		18.657248, 21.050495, 6.119441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.411020, 21.863138, 6.395788>,  <18.958258, 21.681475, 6.154889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.411020, 21.863138, 6.395788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.368523, 21.465416, 6.399153>,  <18.343023, 21.226784, 6.401172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.368523, 21.465416, 6.399153>,  <18.411020, 21.863138, 6.395788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.368523, 21.465416, 6.399153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706951, 0.081484, 0.702553,
		-0.699237, 0.068695, -0.711582,
		-0.106245, -0.994304, 0.008413,
		18.336649, 21.167124, 6.401677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.658083, 21.724453, 6.340479>,  <18.411020, 21.863138, 6.395788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.658083, 21.724453, 6.340479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.822021, 21.397858, 6.503142>,  <17.920383, 21.201900, 6.600740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.822021, 21.397858, 6.503142>,  <17.658083, 21.724453, 6.340479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.822021, 21.397858, 6.503142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725090, -0.021138, 0.688330,
		-0.553418, -0.576973, -0.600692,
		0.409845, -0.816490, 0.406659,
		17.944975, 21.152910, 6.625140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.160469, 21.226080, 6.350624>,  <17.658083, 21.724453, 6.340479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.160469, 21.226080, 6.350624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.420773, 21.117565, 6.634290>,  <17.576956, 21.052456, 6.804489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.420773, 21.117565, 6.634290>,  <17.160469, 21.226080, 6.350624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.420773, 21.117565, 6.634290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752225, -0.103292, 0.650760,
		-0.103292, -0.956940, -0.271287,
		-0.650760, 0.271287, -0.709165,
		17.616001, 21.036179, 6.847039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.785025, 20.840754, 6.843168>,  <17.160469, 21.226080, 6.350624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.785025, 20.840754, 6.843168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.115204, 20.910160, 7.058026>,  <17.313313, 20.951805, 7.186941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.115204, 20.910160, 7.058026>,  <16.785025, 20.840754, 6.843168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.115204, 20.910160, 7.058026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535924, -0.057906, 0.842278,
		0.177256, -0.983127, 0.045195,
		0.825449, 0.173520, 0.537146,
		17.362839, 20.962215, 7.219170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.821695, 20.288574, 7.307980>,  <16.785025, 20.840754, 6.843168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.821695, 20.288574, 7.307980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.013420, 20.604374, 7.461317>,  <17.128454, 20.793854, 7.553319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.013420, 20.604374, 7.461317>,  <16.821695, 20.288574, 7.307980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.013420, 20.604374, 7.461317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512890, -0.102465, 0.852317,
		0.712183, -0.605138, 0.355814,
		0.479311, 0.789500, 0.383343,
		17.157213, 20.841225, 7.576320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.962753, 20.173510, 8.045139>,  <16.821695, 20.288574, 7.307980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.962753, 20.173510, 8.045139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.041977, 20.564587, 8.017169>,  <17.089512, 20.799232, 8.000387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.041977, 20.564587, 8.017169>,  <16.962753, 20.173510, 8.045139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.041977, 20.564587, 8.017169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473062, 0.157825, 0.866777,
		0.858478, -0.138595, 0.493768,
		0.198061, 0.977692, -0.069925,
		17.101395, 20.857895, 7.996192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.146992, 20.399054, 8.778050>,  <16.962753, 20.173510, 8.045139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.146992, 20.399054, 8.778050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.027016, 20.710957, 8.558226>,  <16.955030, 20.898098, 8.426331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.027016, 20.710957, 8.558226>,  <17.146992, 20.399054, 8.778050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.027016, 20.710957, 8.558226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507635, 0.357285, 0.783999,
		0.807677, 0.514130, 0.288666,
		-0.299941, 0.779755, -0.549561,
		16.937033, 20.944883, 8.393357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.273060, 20.950542, 9.005349>,  <17.146992, 20.399054, 8.778050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.273060, 20.950542, 9.005349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.966957, 21.075069, 8.779974>,  <16.783295, 21.149786, 8.644749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.966957, 21.075069, 8.779974>,  <17.273060, 20.950542, 9.005349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.966957, 21.075069, 8.779974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403502, 0.450001, 0.796672,
		0.501563, 0.837008, -0.218751,
		-0.765259, 0.311315, -0.563438,
		16.737379, 21.168465, 8.610943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.155293, 21.615520, 9.256196>,  <17.273060, 20.950542, 9.005349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.155293, 21.615520, 9.256196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.818329, 21.502853, 9.072453>,  <16.616150, 21.435253, 8.962207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.818329, 21.502853, 9.072453>,  <17.155293, 21.615520, 9.256196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.818329, 21.502853, 9.072453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511678, 0.150923, 0.845818,
		-0.168910, 0.947569, -0.271261,
		-0.842410, -0.281666, -0.459358,
		16.565605, 21.418354, 8.934646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.742325, 22.093473, 9.482693>,  <17.155293, 21.615520, 9.256196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.742325, 22.093473, 9.482693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.476879, 21.831322, 9.338419>,  <16.317612, 21.674030, 9.251855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.476879, 21.831322, 9.338419>,  <16.742325, 22.093473, 9.482693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.476879, 21.831322, 9.338419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522471, 0.060984, 0.850473,
		-0.535386, 0.752835, -0.382886,
		-0.663616, -0.655378, -0.360684,
		16.277794, 21.634708, 9.230213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.045881, 22.383430, 9.646462>,  <16.742325, 22.093473, 9.482693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.045881, 22.383430, 9.646462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.981090, 21.993317, 9.586349>,  <15.942215, 21.759249, 9.550280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.981090, 21.993317, 9.586349>,  <16.045881, 22.383430, 9.646462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.981090, 21.993317, 9.586349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479246, -0.055382, 0.875931,
		-0.862604, 0.213905, -0.458430,
		-0.161977, -0.975283, -0.150286,
		15.932496, 21.700731, 9.541263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.317201, 22.197233, 9.543079>,  <16.045881, 22.383430, 9.646462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.317201, 22.197233, 9.543079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.536551, 21.906670, 9.708785>,  <15.668162, 21.732332, 9.808208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.536551, 21.906670, 9.708785>,  <15.317201, 22.197233, 9.543079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.536551, 21.906670, 9.708785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585994, 0.019604, 0.810078,
		-0.596568, -0.686985, -0.414920,
		0.548377, -0.726407, 0.414264,
		15.701065, 21.688747, 9.833064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.829938, 21.819639, 9.941948>,  <15.317201, 22.197233, 9.543079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.829938, 21.819639, 9.941948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.192222, 21.737625, 10.090353>,  <15.409592, 21.688416, 10.179396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.192222, 21.737625, 10.090353>,  <14.829938, 21.819639, 9.941948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.192222, 21.737625, 10.090353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371750, 0.036383, 0.927620,
		-0.203694, -0.978078, -0.043269,
		0.905710, -0.205036, 0.371012,
		15.463935, 21.676115, 10.201656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.696527, 21.296589, 10.481855>,  <14.829938, 21.819639, 9.941948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.696527, 21.296589, 10.481855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.047706, 21.474827, 10.551889>,  <15.258413, 21.581770, 10.593910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.047706, 21.474827, 10.551889>,  <14.696527, 21.296589, 10.481855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.047706, 21.474827, 10.551889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260238, 0.137205, 0.955746,
		0.401852, -0.884659, 0.236419,
		0.877947, 0.445594, 0.175086,
		15.311090, 21.608505, 10.604415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.965634, 21.007576, 11.112138>,  <14.696527, 21.296589, 10.481855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.965634, 21.007576, 11.112138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.169515, 21.351501, 11.099969>,  <15.291842, 21.557858, 11.092668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.169515, 21.351501, 11.099969>,  <14.965634, 21.007576, 11.112138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.169515, 21.351501, 11.099969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019383, 0.023874, 0.999527,
		0.860133, -0.510049, -0.004497,
		0.509701, 0.859813, -0.030422,
		15.322425, 21.609446, 11.090842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.434633, 20.921484, 11.615673>,  <14.965634, 21.007576, 11.112138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.434633, 20.921484, 11.615673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.415238, 21.316204, 11.553869>,  <15.403602, 21.553036, 11.516787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.415238, 21.316204, 11.553869>,  <15.434633, 20.921484, 11.615673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.415238, 21.316204, 11.553869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076226, 0.157896, 0.984509,
		0.995911, 0.035959, -0.082875,
		-0.048488, 0.986801, -0.154510,
		15.400692, 21.612244, 11.507517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.972239, 21.256098, 12.004379>,  <15.434633, 20.921484, 11.615673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.972239, 21.256098, 12.004379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.763738, 21.584980, 11.912922>,  <15.638638, 21.782309, 11.858047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.763738, 21.584980, 11.912922>,  <15.972239, 21.256098, 12.004379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.763738, 21.584980, 11.912922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068251, 0.307224, 0.949186,
		0.850669, 0.479160, -0.216257,
		-0.521252, 0.822204, -0.228643,
		15.607362, 21.831640, 11.844329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.317572, 21.827255, 12.507239>,  <15.972239, 21.256098, 12.004379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.317572, 21.827255, 12.507239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.976680, 22.002834, 12.393379>,  <15.772144, 22.108181, 12.325063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.976680, 22.002834, 12.393379>,  <16.317572, 21.827255, 12.507239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.976680, 22.002834, 12.393379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089620, 0.413562, 0.906054,
		0.515431, 0.797679, -0.313112,
		-0.852232, 0.438947, -0.284651,
		15.721010, 22.134518, 12.307984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.341961, 22.533932, 12.630469>,  <16.317572, 21.827255, 12.507239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.341961, 22.533932, 12.630469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.954032, 22.436523, 12.625651>,  <15.721275, 22.378078, 12.622761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.954032, 22.436523, 12.625651>,  <16.341961, 22.533932, 12.630469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.954032, 22.436523, 12.625651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101713, 0.359184, 0.927708,
		-0.221591, 0.900935, -0.373113,
		-0.969820, -0.243523, -0.012045,
		15.663086, 22.363466, 12.622038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.017487, 23.206692, 12.876828>,  <16.341961, 22.533932, 12.630469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.017487, 23.206692, 12.876828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.743178, 22.922012, 12.937757>,  <15.578593, 22.751205, 12.974315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.743178, 22.922012, 12.937757>,  <16.017487, 23.206692, 12.876828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.743178, 22.922012, 12.937757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138243, 0.332848, 0.932792,
		-0.714568, 0.618624, -0.326645,
		-0.685771, -0.711699, 0.152322,
		15.537447, 22.708502, 12.983454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.377297, 23.525646, 13.193830>,  <16.017487, 23.206692, 12.876828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.377297, 23.525646, 13.193830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.395211, 23.140366, 13.299839>,  <15.405959, 22.909197, 13.363444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.395211, 23.140366, 13.299839>,  <15.377297, 23.525646, 13.193830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.395211, 23.140366, 13.299839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154172, 0.255447, 0.954452,
		-0.987028, -0.083603, -0.137059,
		0.044784, -0.963202, 0.265022,
		15.408647, 22.851404, 13.379346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.052162, 23.564167, 13.794423>,  <15.377297, 23.525646, 13.193830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.052162, 23.564167, 13.794423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.245194, 23.214371, 13.813932>,  <15.361013, 23.004492, 13.825638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.245194, 23.214371, 13.813932>,  <15.052162, 23.564167, 13.794423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.245194, 23.214371, 13.813932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090452, 0.005629, 0.995885,
		-0.871169, -0.485006, -0.076383,
		0.482580, -0.874493, 0.048774,
		15.389969, 22.952023, 13.828565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.606411, 23.123234, 14.294386>,  <15.052162, 23.564167, 13.794423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.606411, 23.123234, 14.294386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.963296, 22.944645, 14.267193>,  <15.177427, 22.837492, 14.250877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.963296, 22.944645, 14.267193>,  <14.606411, 23.123234, 14.294386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.963296, 22.944645, 14.267193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115839, -0.371740, 0.921081,
		-0.436511, -0.813923, -0.383389,
		0.892211, -0.446473, -0.067984,
		15.230960, 22.810703, 14.246799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.534091, 22.483662, 14.601506>,  <14.606411, 23.123234, 14.294386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.534091, 22.483662, 14.601506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.921933, 22.580421, 14.616196>,  <15.154638, 22.638477, 14.625010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.921933, 22.580421, 14.616196>,  <14.534091, 22.483662, 14.601506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.921933, 22.580421, 14.616196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047054, -0.331653, 0.942227,
		0.240105, -0.911861, -0.332955,
		0.969606, 0.241900, 0.036725,
		15.212815, 22.652992, 14.627213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.800301, 21.980932, 14.912623>,  <14.534091, 22.483662, 14.601506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.800301, 21.980932, 14.912623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.073382, 22.268803, 14.963192>,  <15.237232, 22.441525, 14.993533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.073382, 22.268803, 14.963192>,  <14.800301, 21.980932, 14.912623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.073382, 22.268803, 14.963192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103693, -0.266686, 0.958189,
		0.723299, -0.641052, -0.256693,
		0.682706, 0.719674, 0.126421,
		15.278194, 22.484705, 15.001119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.423320, 21.701443, 15.227549>,  <14.800301, 21.980932, 14.912623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.423320, 21.701443, 15.227549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.415235, 22.092346, 15.311983>,  <15.410383, 22.326889, 15.362644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.415235, 22.092346, 15.311983>,  <15.423320, 21.701443, 15.227549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.415235, 22.092346, 15.311983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026384, -0.210534, 0.977231,
		0.999448, 0.025321, -0.021528,
		-0.020212, 0.977259, 0.211086,
		15.409171, 22.385523, 15.375309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.890486, 21.705399, 15.708257>,  <15.423320, 21.701443, 15.227549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.890486, 21.705399, 15.708257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.636220, 22.012779, 15.737680>,  <15.483661, 22.197208, 15.755335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.636220, 22.012779, 15.737680>,  <15.890486, 21.705399, 15.708257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.636220, 22.012779, 15.737680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198831, -0.255054, 0.946263,
		0.745920, 0.586881, 0.314921,
		-0.635665, 0.768452, 0.073560,
		15.445520, 22.243315, 15.759748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.965660, 21.844584, 16.341663>,  <15.890486, 21.705399, 15.708257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.965660, 21.844584, 16.341663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.637639, 22.058800, 16.260954>,  <15.440826, 22.187328, 16.212528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.637639, 22.058800, 16.260954>,  <15.965660, 21.844584, 16.341663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.637639, 22.058800, 16.260954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357731, -0.204486, 0.911161,
		0.446703, 0.819380, 0.359268,
		-0.820052, 0.535539, -0.201773,
		15.391623, 22.219461, 16.200422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.875757, 22.359350, 16.897047>,  <15.965660, 21.844584, 16.341663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.875757, 22.359350, 16.897047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.505479, 22.329628, 16.748688>,  <15.283312, 22.311794, 16.659672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.505479, 22.329628, 16.748688>,  <15.875757, 22.359350, 16.897047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.505479, 22.329628, 16.748688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325787, -0.341642, 0.881557,
		-0.192219, 0.936888, 0.292049,
		-0.925697, -0.074306, -0.370897,
		15.227770, 22.307337, 16.637419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.423056, 22.887739, 17.251602>,  <15.875757, 22.359350, 16.897047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.423056, 22.887739, 17.251602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.191096, 22.592361, 17.113955>,  <15.051921, 22.415134, 17.031366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.191096, 22.592361, 17.113955>,  <15.423056, 22.887739, 17.251602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.191096, 22.592361, 17.113955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453903, -0.057907, 0.889168,
		-0.676527, 0.671824, -0.301601,
		-0.579899, -0.738444, -0.344118,
		15.017126, 22.370829, 17.010719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.815315, 23.038252, 17.524250>,  <15.423056, 22.887739, 17.251602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.815315, 23.038252, 17.524250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.773416, 22.658257, 17.406576>,  <14.748276, 22.430260, 17.335972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.773416, 22.658257, 17.406576>,  <14.815315, 23.038252, 17.524250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.773416, 22.658257, 17.406576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517027, -0.200674, 0.832114,
		-0.849536, 0.239266, -0.470150,
		-0.104750, -0.949991, -0.294187,
		14.741991, 22.373259, 17.318319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.176538, 22.848080, 17.836956>,  <14.815315, 23.038252, 17.524250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.176538, 22.848080, 17.836956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.293405, 22.478676, 17.737545>,  <14.363524, 22.257032, 17.677898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.293405, 22.478676, 17.737545>,  <14.176538, 22.848080, 17.836956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.293405, 22.478676, 17.737545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442711, -0.360945, 0.820808,
		-0.847730, -0.129787, -0.514305,
		0.292166, -0.923512, -0.248525,
		14.381055, 22.201622, 17.662987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.585950, 22.381641, 17.919643>,  <14.176538, 22.848080, 17.836956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.585950, 22.381641, 17.919643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.918923, 22.161308, 17.943771>,  <14.118708, 22.029108, 17.958248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.918923, 22.161308, 17.943771>,  <13.585950, 22.381641, 17.919643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.918923, 22.161308, 17.943771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357624, -0.450900, 0.817798,
		-0.423264, -0.702339, -0.572335,
		0.832438, -0.550825, 0.060324,
		14.168653, 21.996059, 17.961866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.474462, 21.632252, 17.901688>,  <13.585950, 22.381641, 17.919643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.474462, 21.632252, 17.901688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.804175, 21.714737, 18.112602>,  <14.002004, 21.764229, 18.239151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.804175, 21.714737, 18.112602>,  <13.474462, 21.632252, 17.901688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.804175, 21.714737, 18.112602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418628, -0.405042, 0.812829,
		0.381190, -0.890739, -0.247543,
		0.824284, 0.206214, 0.527287,
		14.051461, 21.776602, 18.270788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.407206, 21.186489, 18.521435>,  <13.474462, 21.632252, 17.901688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.407206, 21.186489, 18.521435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.726663, 21.398842, 18.634809>,  <13.918337, 21.526253, 18.702833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.726663, 21.398842, 18.634809>,  <13.407206, 21.186489, 18.521435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.726663, 21.398842, 18.634809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207669, -0.198932, 0.957757,
		0.564839, -0.823767, -0.048628,
		0.798643, 0.530880, 0.283436,
		13.966255, 21.558105, 18.719841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.938187, 20.715288, 19.093580>,  <13.407206, 21.186489, 18.521435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.938187, 20.715288, 19.093580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.999152, 21.107624, 19.142115>,  <14.035731, 21.343025, 19.171236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.999152, 21.107624, 19.142115>,  <13.938187, 20.715288, 19.093580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.999152, 21.107624, 19.142115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009050, -0.121382, 0.992564,
		0.988275, -0.152378, -0.009623,
		0.152413, 0.980840, 0.121338,
		14.044876, 21.401876, 19.178516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.536912, 20.983204, 19.600891>,  <13.938187, 20.715288, 19.093580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.536912, 20.983204, 19.600891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.263553, 21.275105, 19.592590>,  <14.099537, 21.450245, 19.587610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.263553, 21.275105, 19.592590>,  <14.536912, 20.983204, 19.600891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.263553, 21.275105, 19.592590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049115, 0.074317, 0.996024,
		0.728391, 0.679663, -0.086630,
		-0.683399, 0.729750, -0.020750,
		14.058533, 21.494030, 19.586365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.666850, 20.305929, 20.089722>,  <14.536912, 20.983204, 19.600891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.666850, 20.305929, 20.089722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.688155, 19.923744, 20.205830>,  <14.700938, 19.694433, 20.275494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.688155, 19.923744, 20.205830>,  <14.666850, 20.305929, 20.089722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.688155, 19.923744, 20.205830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386635, -0.248278, -0.888184,
		0.920693, 0.159536, 0.356191,
		0.053263, -0.955461, 0.290270,
		14.704134, 19.637106, 20.292910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.236083, 20.044882, 19.743675>,  <14.666850, 20.305929, 20.089722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.236083, 20.044882, 19.743675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.023135, 19.720467, 19.840672>,  <14.895367, 19.525818, 19.898869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.023135, 19.720467, 19.840672>,  <15.236083, 20.044882, 19.743675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.023135, 19.720467, 19.840672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201850, -0.399817, -0.894093,
		0.822095, -0.427041, 0.376558,
		-0.532369, -0.811038, 0.242490,
		14.863424, 19.477156, 19.913418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.636600, 19.480293, 19.495266>,  <15.236083, 20.044882, 19.743675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.636600, 19.480293, 19.495266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.275134, 19.315895, 19.543388>,  <15.058254, 19.217257, 19.572262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.275134, 19.315895, 19.543388>,  <15.636600, 19.480293, 19.495266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.275134, 19.315895, 19.543388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002549, -0.286085, -0.958201,
		0.428232, -0.865586, 0.259573,
		-0.903665, -0.410994, 0.120304,
		15.004034, 19.192596, 19.579479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.692796, 18.832237, 19.074482>,  <15.636600, 19.480293, 19.495266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.692796, 18.832237, 19.074482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.299605, 18.891895, 19.117399>,  <15.063691, 18.927691, 19.143150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.299605, 18.891895, 19.117399>,  <15.692796, 18.832237, 19.074482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.299605, 18.891895, 19.117399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131322, -0.161929, -0.978025,
		-0.128491, -0.975467, 0.178758,
		-0.982978, 0.149142, 0.107294,
		15.004712, 18.936640, 19.149588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.420392, 18.196766, 18.832136>,  <15.692796, 18.832237, 19.074482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.420392, 18.196766, 18.832136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.139928, 18.480289, 18.801247>,  <14.971649, 18.650404, 18.782713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.139928, 18.480289, 18.801247>,  <15.420392, 18.196766, 18.832136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.139928, 18.480289, 18.801247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102772, -0.207645, -0.972791,
		-0.705559, -0.674145, 0.218438,
		-0.701160, 0.708810, -0.077222,
		14.929580, 18.692932, 18.778080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.844232, 17.927179, 18.498568>,  <15.420392, 18.196766, 18.832136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.844232, 17.927179, 18.498568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.815419, 18.322266, 18.443104>,  <14.798132, 18.559319, 18.409824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.815419, 18.322266, 18.443104>,  <14.844232, 17.927179, 18.498568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.815419, 18.322266, 18.443104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323704, -0.154647, -0.933434,
		-0.943413, -0.022350, 0.330867,
		-0.072030, 0.987717, -0.138661,
		14.793810, 18.618580, 18.401506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.390784, 18.020329, 17.837137>,  <14.844232, 17.927179, 18.498568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.390784, 18.020329, 17.837137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.536084, 18.387741, 17.899551>,  <14.623264, 18.608189, 17.937000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.536084, 18.387741, 17.899551>,  <14.390784, 18.020329, 17.837137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.536084, 18.387741, 17.899551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081350, 0.135565, -0.987423,
		-0.928133, 0.371375, -0.025479,
		0.363250, 0.918533, 0.156034,
		14.645060, 18.663301, 17.946362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.070574, 18.556141, 17.377010>,  <14.390784, 18.020329, 17.837137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.070574, 18.556141, 17.377010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.417117, 18.727654, 17.479437>,  <14.625043, 18.830561, 17.540892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.417117, 18.727654, 17.479437>,  <14.070574, 18.556141, 17.377010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.417117, 18.727654, 17.479437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188157, 0.194712, -0.962644,
		-0.462622, 0.882176, 0.088012,
		0.866359, 0.428781, 0.256065,
		14.677025, 18.856287, 17.556257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.114284, 19.119297, 17.010101>,  <14.070574, 18.556141, 17.377010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.114284, 19.119297, 17.010101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.496758, 19.057522, 17.109585>,  <14.726243, 19.020456, 17.169275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.496758, 19.057522, 17.109585>,  <14.114284, 19.119297, 17.010101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.496758, 19.057522, 17.109585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275515, 0.187473, -0.942839,
		0.098986, 0.970053, 0.221810,
		0.956187, -0.154440, 0.248707,
		14.783614, 19.011190, 17.184196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.416124, 19.670683, 16.763388>,  <14.114284, 19.119297, 17.010101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.416124, 19.670683, 16.763388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.674518, 19.366879, 16.793982>,  <14.829554, 19.184597, 16.812338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.674518, 19.366879, 16.793982>,  <14.416124, 19.670683, 16.763388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.674518, 19.366879, 16.793982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207123, 0.077955, -0.975204,
		0.734714, 0.645808, 0.207670,
		0.645984, -0.759510, 0.076487,
		14.868313, 19.139025, 16.816927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.952202, 19.893515, 16.449863>,  <14.416124, 19.670683, 16.763388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.952202, 19.893515, 16.449863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.007241, 19.497360, 16.444149>,  <15.040265, 19.259668, 16.440720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.007241, 19.497360, 16.444149>,  <14.952202, 19.893515, 16.449863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.007241, 19.497360, 16.444149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319584, 0.058045, -0.945779,
		0.937514, 0.125572, 0.324498,
		0.137599, -0.990385, -0.014287,
		15.048521, 19.200245, 16.439863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.451408, 19.825344, 16.084173>,  <14.952202, 19.893515, 16.449863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.451408, 19.825344, 16.084173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.326564, 19.445774, 16.065733>,  <15.251657, 19.218031, 16.054668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.326564, 19.445774, 16.065733>,  <15.451408, 19.825344, 16.084173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.326564, 19.445774, 16.065733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216958, -0.023951, -0.975887,
		0.924940, -0.314588, 0.213353,
		-0.312112, -0.948926, -0.046099,
		15.232930, 19.161097, 16.051903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.944133, 19.251749, 15.800834>,  <15.451408, 19.825344, 16.084173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.944133, 19.251749, 15.800834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.573943, 19.133770, 15.705753>,  <15.351830, 19.062983, 15.648705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.573943, 19.133770, 15.705753>,  <15.944133, 19.251749, 15.800834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.573943, 19.133770, 15.705753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281992, -0.117438, -0.952202,
		0.252937, -0.948268, 0.191859,
		-0.925474, -0.294950, -0.237700,
		15.296301, 19.045284, 15.634443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.060535, 18.635485, 15.295041>,  <15.944133, 19.251749, 15.800834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.060535, 18.635485, 15.295041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.704150, 18.812935, 15.256294>,  <15.490319, 18.919405, 15.233047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.704150, 18.812935, 15.256294>,  <16.060535, 18.635485, 15.295041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.704150, 18.812935, 15.256294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119998, 0.024291, -0.992477,
		-0.437935, -0.895883, -0.074877,
		-0.890962, 0.443625, -0.096866,
		15.436861, 18.946022, 15.227234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.742754, 18.328077, 14.696248>,  <16.060535, 18.635485, 15.295041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.742754, 18.328077, 14.696248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.548715, 18.672592, 14.756733>,  <15.432291, 18.879301, 14.793024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.548715, 18.672592, 14.756733>,  <15.742754, 18.328077, 14.696248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.548715, 18.672592, 14.756733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139830, 0.247097, -0.958849,
		-0.863208, -0.443991, -0.240299,
		-0.485097, 0.861287, 0.151213,
		15.403185, 18.930979, 14.802096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.325401, 18.262676, 14.101810>,  <15.742754, 18.328077, 14.696248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.325401, 18.262676, 14.101810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.315579, 18.650463, 14.199408>,  <15.309687, 18.883135, 14.257966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.315579, 18.650463, 14.199408>,  <15.325401, 18.262676, 14.101810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.315579, 18.650463, 14.199408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038073, 0.244797, -0.968827,
		-0.998973, -0.014499, -0.042921,
		-0.024554, 0.969466, 0.243993,
		15.308213, 18.941303, 14.272606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.776374, 18.567474, 13.789828>,  <15.325401, 18.262676, 14.101810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.776374, 18.567474, 13.789828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.017097, 18.880714, 13.852547>,  <15.161530, 19.068659, 13.890178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.017097, 18.880714, 13.852547>,  <14.776374, 18.567474, 13.789828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.017097, 18.880714, 13.852547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026965, 0.216140, -0.975990,
		-0.798186, 0.583130, 0.151191,
		0.601807, 0.783098, 0.156796,
		15.197639, 19.115644, 13.899586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.544033, 19.177584, 13.492244>,  <14.776374, 18.567474, 13.789828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.544033, 19.177584, 13.492244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.924348, 19.286484, 13.551418>,  <15.152536, 19.351824, 13.586924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.924348, 19.286484, 13.551418>,  <14.544033, 19.177584, 13.492244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.924348, 19.286484, 13.551418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090091, 0.213918, -0.972688,
		-0.296462, 0.938146, 0.178863,
		0.950786, 0.272251, 0.147937,
		15.209583, 19.368158, 13.595799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.610636, 19.962708, 13.305758>,  <14.544033, 19.177584, 13.492244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.610636, 19.962708, 13.305758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.945746, 19.746517, 13.274738>,  <15.146813, 19.616802, 13.256126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.945746, 19.746517, 13.274738>,  <14.610636, 19.962708, 13.305758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.945746, 19.746517, 13.274738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186163, 0.416265, -0.889981,
		0.513296, 0.731169, 0.449355,
		0.837777, -0.540477, -0.077551,
		15.197080, 19.584373, 13.251473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.054638, 20.330139, 12.913610>,  <14.610636, 19.962708, 13.305758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.054638, 20.330139, 12.913610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.251193, 19.983925, 12.874858>,  <15.369126, 19.776196, 12.851606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.251193, 19.983925, 12.874858>,  <15.054638, 20.330139, 12.913610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.251193, 19.983925, 12.874858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373547, 0.309934, -0.874302,
		0.786767, 0.393431, 0.475616,
		0.491387, -0.865536, -0.096881,
		15.398609, 19.724264, 12.845794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.574815, 20.466311, 12.371349>,  <15.054638, 20.330139, 12.913610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.574815, 20.466311, 12.371349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.577086, 20.067661, 12.404120>,  <15.578449, 19.828472, 12.423783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.577086, 20.067661, 12.404120>,  <15.574815, 20.466311, 12.371349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.577086, 20.067661, 12.404120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440062, -0.071078, -0.895150,
		0.897950, 0.041138, 0.438172,
		0.005680, -0.996622, 0.081927,
		15.578791, 19.768675, 12.428699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.230450, 20.313467, 12.295934>,  <15.574815, 20.466311, 12.371349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.230450, 20.313467, 12.295934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.027252, 19.985287, 12.191014>,  <15.905334, 19.788378, 12.128062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.027252, 19.985287, 12.191014>,  <16.230450, 20.313467, 12.295934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.027252, 19.985287, 12.191014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422596, 0.027955, -0.905887,
		0.750569, -0.571032, 0.332519,
		-0.507995, -0.820452, -0.262298,
		15.874854, 19.739151, 12.112325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.610769, 20.085182, 11.770117>,  <16.230450, 20.313467, 12.295934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.610769, 20.085182, 11.770117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.297638, 19.839996, 11.727302>,  <16.109758, 19.692884, 11.701612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.297638, 19.839996, 11.727302>,  <16.610769, 20.085182, 11.770117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.297638, 19.839996, 11.727302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166402, -0.040470, -0.985227,
		0.599576, -0.789075, 0.133679,
		-0.782828, -0.612963, -0.107038,
		16.062790, 19.656107, 11.695190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.874636, 19.479076, 11.469116>,  <16.610769, 20.085182, 11.770117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.874636, 19.479076, 11.469116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.483154, 19.498581, 11.389358>,  <16.248264, 19.510284, 11.341502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.483154, 19.498581, 11.389358>,  <16.874636, 19.479076, 11.469116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.483154, 19.498581, 11.389358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182302, -0.240021, -0.953497,
		-0.094352, -0.969542, 0.226021,
		-0.978705, 0.048760, -0.199396,
		16.189543, 19.513208, 11.329538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.754900, 18.818466, 11.141821>,  <16.874636, 19.479076, 11.469116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.754900, 18.818466, 11.141821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.457451, 19.067436, 11.044159>,  <16.278980, 19.216818, 10.985562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.457451, 19.067436, 11.044159>,  <16.754900, 18.818466, 11.141821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.457451, 19.067436, 11.044159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073927, -0.286390, -0.955257,
		-0.664498, -0.728402, 0.166953,
		-0.743625, 0.622424, -0.244154,
		16.234364, 19.254164, 10.970913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.218353, 18.371872, 10.786078>,  <16.754900, 18.818466, 11.141821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.218353, 18.371872, 10.786078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.180737, 18.761497, 10.703757>,  <16.158167, 18.995274, 10.654365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.180737, 18.761497, 10.703757>,  <16.218353, 18.371872, 10.786078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.180737, 18.761497, 10.703757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256275, -0.223438, -0.940425,
		-0.962018, -0.035697, 0.270641,
		-0.094042, 0.974064, -0.205803,
		16.152523, 19.053717, 10.642016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.500193, 18.558424, 10.671732>,  <16.218353, 18.371872, 10.786078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.500193, 18.558424, 10.671732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.745202, 18.813755, 10.485249>,  <15.892208, 18.966953, 10.373359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.745202, 18.813755, 10.485249>,  <15.500193, 18.558424, 10.671732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.745202, 18.813755, 10.485249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308704, -0.349783, -0.884507,
		-0.727679, 0.685702, -0.017196,
		0.612524, 0.638329, -0.466209,
		15.928959, 19.005253, 10.345386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.175583, 18.810875, 10.222645>,  <15.500193, 18.558424, 10.671732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.175583, 18.810875, 10.222645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.540351, 18.915836, 10.096440>,  <15.759212, 18.978813, 10.020718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.540351, 18.915836, 10.096440>,  <15.175583, 18.810875, 10.222645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.540351, 18.915836, 10.096440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225667, -0.321496, -0.919627,
		-0.342750, 0.909826, -0.233963,
		0.911919, 0.262405, -0.315510,
		15.813927, 18.994558, 10.001787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.007373, 19.162390, 9.542177>,  <15.175583, 18.810875, 10.222645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.007373, 19.162390, 9.542177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.392859, 19.055931, 9.550367>,  <15.624151, 18.992056, 9.555282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.392859, 19.055931, 9.550367>,  <15.007373, 19.162390, 9.542177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.392859, 19.055931, 9.550367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026706, -0.172452, -0.984656,
		0.265592, 0.948382, -0.173302,
		0.963716, -0.266145, 0.020475,
		15.681974, 18.976088, 9.556510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.342452, 19.548431, 8.926526>,  <15.007373, 19.162390, 9.542177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.342452, 19.548431, 8.926526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.543736, 19.223778, 9.045207>,  <15.664507, 19.028986, 9.116415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.543736, 19.223778, 9.045207>,  <15.342452, 19.548431, 8.926526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.543736, 19.223778, 9.045207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101011, -0.396230, -0.912578,
		0.858240, 0.429249, -0.281371,
		0.503211, -0.811632, 0.296701,
		15.694700, 18.980288, 9.134217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.777255, 19.442320, 8.401713>,  <15.342452, 19.548431, 8.926526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.777255, 19.442320, 8.401713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.791043, 19.096310, 8.601932>,  <15.799316, 18.888704, 8.722062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.791043, 19.096310, 8.601932>,  <15.777255, 19.442320, 8.401713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.791043, 19.096310, 8.601932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003162, -0.500747, -0.865588,
		0.999401, 0.031420, -0.014526,
		0.034470, -0.865024, 0.500546,
		15.801384, 18.836803, 8.752095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.458351, 19.172115, 8.209970>,  <15.777255, 19.442320, 8.401713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.458351, 19.172115, 8.209970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.209942, 18.885265, 8.336502>,  <16.060896, 18.713156, 8.412421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.209942, 18.885265, 8.336502>,  <16.458351, 19.172115, 8.209970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.209942, 18.885265, 8.336502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122705, -0.487562, -0.864423,
		0.774130, -0.498010, 0.390781,
		-0.621021, -0.717126, 0.316328,
		16.023636, 18.670128, 8.431400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.766428, 18.539740, 8.079509>,  <16.458351, 19.172115, 8.209970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.766428, 18.539740, 8.079509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.390194, 18.414368, 8.131756>,  <16.164454, 18.339144, 8.163104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.390194, 18.414368, 8.131756>,  <16.766428, 18.539740, 8.079509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.390194, 18.414368, 8.131756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104194, -0.632527, -0.767498,
		0.323176, -0.708288, 0.627603,
		-0.940585, -0.313429, 0.130618,
		16.108019, 18.320339, 8.170941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.729326, 17.782385, 7.992010>,  <16.766428, 18.539740, 8.079509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.729326, 17.782385, 7.992010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.354458, 17.909931, 7.935394>,  <16.129536, 17.986458, 7.901425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.354458, 17.909931, 7.935394>,  <16.729326, 17.782385, 7.992010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.354458, 17.909931, 7.935394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047580, -0.518744, -0.853604,
		-0.345605, -0.793240, 0.501325,
		-0.937173, 0.318863, -0.141538,
		16.073307, 18.005590, 7.892932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.452135, 17.211151, 7.807825>,  <16.729326, 17.782385, 7.992010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.452135, 17.211151, 7.807825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.184311, 17.489479, 7.703886>,  <16.023617, 17.656477, 7.641523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.184311, 17.489479, 7.703886>,  <16.452135, 17.211151, 7.807825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.184311, 17.489479, 7.703886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248302, -0.539402, -0.804606,
		-0.700024, -0.474213, 0.533937,
		-0.669562, 0.695821, -0.259846,
		15.983442, 17.698225, 7.625932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.900019, 16.837397, 7.629256>,  <16.452135, 17.211151, 7.807825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.900019, 16.837397, 7.629256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.871799, 17.181488, 7.427255>,  <15.854867, 17.387943, 7.306054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.871799, 17.181488, 7.427255>,  <15.900019, 16.837397, 7.629256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.871799, 17.181488, 7.427255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056079, -0.502045, -0.863021,
		-0.995931, -0.089205, -0.012822,
		-0.070549, 0.860229, -0.505004,
		15.850634, 17.439556, 7.275753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.335852, 16.663506, 7.077529>,  <15.900019, 16.837397, 7.629256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.335852, 16.663506, 7.077529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.501237, 17.011948, 6.971533>,  <15.600468, 17.221014, 6.907935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.501237, 17.011948, 6.971533>,  <15.335852, 16.663506, 7.077529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.501237, 17.011948, 6.971533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170008, -0.212056, -0.962356,
		-0.894508, 0.442950, 0.060418,
		0.413463, 0.871107, -0.264991,
		15.625276, 17.273279, 6.892035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.832986, 17.032301, 6.536660>,  <15.335852, 16.663506, 7.077529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.832986, 17.032301, 6.536660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.207477, 17.164497, 6.488905>,  <15.432171, 17.243816, 6.460252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.207477, 17.164497, 6.488905>,  <14.832986, 17.032301, 6.536660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.207477, 17.164497, 6.488905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038205, -0.242007, -0.969522,
		-0.349313, 0.912254, -0.213947,
		0.936227, 0.330493, -0.119389,
		15.488344, 17.263645, 6.453088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.776328, 17.261475, 5.922371>,  <14.832986, 17.032301, 6.536660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.776328, 17.261475, 5.922371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.171937, 17.245689, 5.979329>,  <15.409303, 17.236217, 6.013504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.171937, 17.245689, 5.979329>,  <14.776328, 17.261475, 5.922371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.171937, 17.245689, 5.979329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123112, -0.312831, -0.941796,
		0.081713, 0.948988, -0.304538,
		0.989023, -0.039465, 0.142394,
		15.468644, 17.233850, 6.022048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.076676, 17.674088, 5.467837>,  <14.776328, 17.261475, 5.922371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.076676, 17.674088, 5.467837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.352530, 17.400574, 5.563205>,  <15.518043, 17.236465, 5.620425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.352530, 17.400574, 5.563205>,  <15.076676, 17.674088, 5.467837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.352530, 17.400574, 5.563205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078675, -0.256540, -0.963326,
		0.719870, 0.683101, -0.123123,
		0.689635, -0.683783, 0.238418,
		15.559422, 17.195438, 5.634730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.792920, 17.664360, 5.317313>,  <15.076676, 17.674088, 5.467837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.792920, 17.664360, 5.317313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.688357, 17.278580, 5.301823>,  <15.625620, 17.047112, 5.292529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.688357, 17.278580, 5.301823>,  <15.792920, 17.664360, 5.317313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.688357, 17.278580, 5.301823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151711, -0.001432, -0.988424,
		0.953232, -0.264255, 0.146692,
		-0.261406, -0.964451, -0.038726,
		15.609936, 16.989244, 5.290205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.259901, 17.279819, 5.084384>,  <15.792920, 17.664360, 5.317313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.259901, 17.279819, 5.084384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.887414, 17.147938, 5.022253>,  <15.663921, 17.068810, 4.984974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.887414, 17.147938, 5.022253>,  <16.259901, 17.279819, 5.084384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.887414, 17.147938, 5.022253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048593, 0.310064, -0.949473,
		0.361207, -0.891715, -0.272716,
		-0.931219, -0.329705, -0.155328,
		15.608048, 17.049026, 4.975655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.186949, 17.048502, 4.409268>,  <16.259901, 17.279819, 5.084384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.186949, 17.048502, 4.409268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.797494, 17.124199, 4.460213>,  <15.563822, 17.169617, 4.490779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.797494, 17.124199, 4.460213>,  <16.186949, 17.048502, 4.409268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.797494, 17.124199, 4.460213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079790, 0.240521, -0.967359,
		-0.213699, -0.952017, -0.219080,
		-0.973635, 0.189244, 0.127361,
		15.505404, 17.180971, 4.498421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.889209, 16.803003, 3.811201>,  <16.186949, 17.048502, 4.409268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.889209, 16.803003, 3.811201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.679803, 17.102722, 3.973429>,  <15.554159, 17.282553, 4.070765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.679803, 17.102722, 3.973429>,  <15.889209, 16.803003, 3.811201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.679803, 17.102722, 3.973429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019196, 0.486264, -0.873601,
		-0.851801, -0.449556, -0.268950,
		-0.523514, 0.749297, 0.405571,
		15.522749, 17.327511, 4.095100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.188437, 16.996157, 3.435242>,  <15.889209, 16.803003, 3.811201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.188437, 16.996157, 3.435242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.328294, 17.320457, 3.623041>,  <15.412208, 17.515038, 3.735721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.328294, 17.320457, 3.623041>,  <15.188437, 16.996157, 3.435242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.328294, 17.320457, 3.623041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295391, 0.570965, -0.765991,
		-0.889098, 0.129137, 0.439122,
		0.349641, 0.810754, 0.469498,
		15.433187, 17.563684, 3.763891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.732051, 17.466467, 3.427554>,  <15.188437, 16.996157, 3.435242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.732051, 17.466467, 3.427554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.072686, 17.675705, 3.441219>,  <15.277067, 17.801249, 3.449418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.072686, 17.675705, 3.441219>,  <14.732051, 17.466467, 3.427554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.072686, 17.675705, 3.441219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352926, 0.620301, -0.700479,
		-0.387609, 0.584463, 0.712855,
		0.851588, 0.523097, 0.034163,
		15.328163, 17.832634, 3.451468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.603409, 18.151878, 3.539992>,  <14.732051, 17.466467, 3.427554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.603409, 18.151878, 3.539992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.941113, 18.105625, 3.330668>,  <15.143736, 18.077873, 3.205074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.941113, 18.105625, 3.330668>,  <14.603409, 18.151878, 3.539992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.941113, 18.105625, 3.330668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401824, 0.509543, -0.760857,
		0.354628, 0.852640, 0.383723,
		0.844261, -0.115632, -0.523310,
		15.194391, 18.070936, 3.173675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.947050, 18.829472, 3.341546>,  <14.603409, 18.151878, 3.539992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.947050, 18.829472, 3.341546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.016379, 18.529636, 3.086022>,  <15.057977, 18.349735, 2.932708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.016379, 18.529636, 3.086022>,  <14.947050, 18.829472, 3.341546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.016379, 18.529636, 3.086022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366617, 0.552905, -0.748257,
		0.914085, 0.363889, -0.178980,
		0.173323, -0.749587, -0.638810,
		15.068377, 18.304760, 2.894380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.157727, 19.119175, 2.735575>,  <14.947050, 18.829472, 3.341546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.157727, 19.119175, 2.735575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.060164, 18.742928, 2.641132>,  <15.001627, 18.517179, 2.584467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.060164, 18.742928, 2.641132>,  <15.157727, 19.119175, 2.735575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.060164, 18.742928, 2.641132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448673, 0.325285, -0.832395,
		0.859768, -0.097093, -0.501370,
		-0.243908, -0.940618, -0.236106,
		14.986992, 18.460743, 2.570301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.329466, 19.103630, 2.048557>,  <15.157727, 19.119175, 2.735575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.329466, 19.103630, 2.048557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.068875, 18.819618, 2.155469>,  <14.912521, 18.649212, 2.219616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.068875, 18.819618, 2.155469>,  <15.329466, 19.103630, 2.048557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.068875, 18.819618, 2.155469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519202, 0.160378, -0.839469,
		0.553181, -0.685666, -0.473131,
		-0.651475, -0.710028, 0.267281,
		14.873432, 18.606609, 2.235653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.206041, 18.585196, 1.573344>,  <15.329466, 19.103630, 2.048557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.206041, 18.585196, 1.573344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.864444, 18.589565, 1.781412>,  <14.659486, 18.592188, 1.906252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.864444, 18.589565, 1.781412>,  <15.206041, 18.585196, 1.573344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.864444, 18.589565, 1.781412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520282, -0.015323, -0.853857,
		-0.001346, -0.999823, 0.018762,
		-0.853993, 0.010911, 0.520169,
		14.608246, 18.592842, 1.937462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.720710, 18.125074, 1.212888>,  <15.206041, 18.585196, 1.573344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.720710, 18.125074, 1.212888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.488879, 18.364433, 1.434162>,  <14.349781, 18.508049, 1.566927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.488879, 18.364433, 1.434162>,  <14.720710, 18.125074, 1.212888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.488879, 18.364433, 1.434162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623390, 0.111645, -0.773899,
		-0.524859, -0.793384, 0.308327,
		-0.579576, 0.598396, 0.553186,
		14.315006, 18.543953, 1.600118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.044433, 17.837467, 1.368793>,  <14.720710, 18.125074, 1.212888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.044433, 17.837467, 1.368793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.056354, 18.236629, 1.345831>,  <14.063506, 18.476128, 1.332055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.056354, 18.236629, 1.345831>,  <14.044433, 17.837467, 1.368793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.056354, 18.236629, 1.345831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682833, -0.021614, -0.730255,
		-0.729966, 0.060960, 0.680759,
		0.029802, 0.997906, -0.057403,
		14.065294, 18.536001, 1.328610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.356174, 18.085592, 1.466216>,  <14.044433, 17.837467, 1.368793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.356174, 18.085592, 1.466216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.554395, 18.379299, 1.280625>,  <13.673327, 18.555523, 1.169271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.554395, 18.379299, 1.280625>,  <13.356174, 18.085592, 1.466216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.554395, 18.379299, 1.280625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776852, 0.135759, -0.614875,
		-0.388495, 0.665145, 0.637694,
		0.495553, 0.734269, -0.463978,
		13.703061, 18.599581, 1.141432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.899933, 18.778389, 1.560223>,  <13.356174, 18.085592, 1.466216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.899933, 18.778389, 1.560223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.134648, 18.750637, 1.237518>,  <13.275477, 18.733986, 1.043895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.134648, 18.750637, 1.237518>,  <12.899933, 18.778389, 1.560223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.134648, 18.750637, 1.237518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758695, 0.301041, -0.577717,
		0.282951, 0.951084, 0.124009,
		0.586789, -0.069381, -0.806762,
		13.310685, 18.729822, 0.995489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.691184, 19.341286, 1.204333>,  <12.899933, 18.778389, 1.560223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.691184, 19.341286, 1.204333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.836841, 19.055759, 0.965044>,  <12.924234, 18.884443, 0.821472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.836841, 19.055759, 0.965044>,  <12.691184, 19.341286, 1.204333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.836841, 19.055759, 0.965044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747464, 0.159197, -0.644945,
		0.555607, 0.682000, -0.475581,
		0.364142, -0.713816, -0.598221,
		12.946083, 18.841614, 0.785578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.548219, 19.506945, 0.493351>,  <12.691184, 19.341286, 1.204333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.548219, 19.506945, 0.493351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.587665, 19.110504, 0.529106>,  <12.611332, 18.872639, 0.550558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.587665, 19.110504, 0.529106>,  <12.548219, 19.506945, 0.493351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.587665, 19.110504, 0.529106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794235, -0.132506, -0.592987,
		0.599556, -0.012517, -0.800235,
		0.098614, -0.991103, 0.089386,
		12.617249, 18.813173, 0.555921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.817159, 19.146179, -0.160258>,  <12.548219, 19.506945, 0.493351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.817159, 19.146179, -0.160258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.553260, 18.966442, 0.080682>,  <12.394920, 18.858601, 0.225246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.553260, 18.966442, 0.080682>,  <12.817159, 19.146179, -0.160258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.553260, 18.966442, 0.080682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716183, 0.133162, -0.685091,
		0.227630, -0.883379, -0.409665,
		-0.659747, -0.449343, 0.602350,
		12.355335, 18.831640, 0.261387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.407727, 19.571293, -0.442455>,  <12.817159, 19.146179, -0.160258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.407727, 19.571293, -0.442455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.358619, 19.758938, -0.092629>,  <13.329154, 19.871525, 0.117266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.358619, 19.758938, -0.092629>,  <13.407727, 19.571293, -0.442455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.358619, 19.758938, -0.092629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900440, 0.423188, -0.100592,
		-0.417294, 0.775143, -0.474361,
		-0.122771, 0.469111, 0.874564,
		13.321788, 19.899672, 0.169740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.866261, 19.026731, -0.366703>,  <13.407727, 19.571293, -0.442455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.866261, 19.026731, -0.366703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.037957, 18.837933, -0.058684>,  <14.140975, 18.724653, 0.126127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.037957, 18.837933, -0.058684>,  <13.866261, 19.026731, -0.366703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.037957, 18.837933, -0.058684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902790, 0.198873, -0.381339,
		0.026850, 0.858876, 0.511479,
		0.429242, -0.471997, 0.770046,
		14.166730, 18.696333, 0.172329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.668988, 19.136263, -0.554289>,  <13.866261, 19.026731, -0.366703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.668988, 19.136263, -0.554289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.599412, 18.894165, -0.243569>,  <14.557667, 18.748905, -0.057136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.599412, 18.894165, -0.243569>,  <14.668988, 19.136263, -0.554289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.599412, 18.894165, -0.243569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981827, -0.167388, 0.089428,
		0.075902, 0.778240, 0.623363,
		-0.173940, -0.605247, 0.776802,
		14.547230, 18.712591, -0.010528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.105450, 19.395958, -0.013546>,  <14.668988, 19.136263, -0.554289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.105450, 19.395958, -0.013546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.070104, 19.001007, 0.039026>,  <15.048896, 18.764036, 0.070569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.070104, 19.001007, 0.039026>,  <15.105450, 19.395958, -0.013546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.070104, 19.001007, 0.039026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991998, -0.075288, 0.101347,
		-0.090173, 0.139335, 0.986131,
		-0.088365, -0.987379, 0.131431,
		15.043594, 18.704794, 0.078455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.461717, 19.310015, 0.430729>,  <15.105450, 19.395958, -0.013546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.461717, 19.310015, 0.430729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.432496, 18.949619, 0.259669>,  <15.414964, 18.733383, 0.157032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.432496, 18.949619, 0.259669>,  <15.461717, 19.310015, 0.430729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.432496, 18.949619, 0.259669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992363, -0.108401, 0.058866,
		-0.099395, -0.420085, 0.902025,
		-0.073052, -0.900987, -0.427652,
		15.410581, 18.679323, 0.131373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.635305, 18.672102, 0.761010>,  <15.461717, 19.310015, 0.430729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.635305, 18.672102, 0.761010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.694278, 18.690121, 0.365791>,  <15.729661, 18.700932, 0.128660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.694278, 18.690121, 0.365791>,  <15.635305, 18.672102, 0.761010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.694278, 18.690121, 0.365791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982055, -0.125450, 0.140817,
		-0.117606, -0.991077, -0.062735,
		0.147430, 0.045048, -0.988046,
		15.738507, 18.703634, 0.069377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.993046, 18.015406, 0.356493>,  <15.635305, 18.672102, 0.761010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.993046, 18.015406, 0.356493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.079788, 18.338753, 0.137581>,  <16.131834, 18.532761, 0.006234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.079788, 18.338753, 0.137581>,  <15.993046, 18.015406, 0.356493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.079788, 18.338753, 0.137581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973060, -0.223949, 0.054781,
		-0.078280, -0.544415, -0.835155,
		0.216856, 0.808368, -0.547280,
		16.144844, 18.581263, -0.026603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.691603, 17.853334, -0.006447>,  <15.993046, 18.015406, 0.356493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.691603, 17.853334, -0.006447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.649883, 18.250935, -0.019636>,  <16.624851, 18.489494, -0.027550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.649883, 18.250935, -0.019636>,  <16.691603, 17.853334, -0.006447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.649883, 18.250935, -0.019636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992442, 0.101865, -0.068433,
		-0.064664, -0.039862, -0.997111,
		-0.104299, 0.993999, -0.032974,
		16.618593, 18.549135, -0.029529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.051189, 18.233387, -0.636998>,  <16.691603, 17.853334, -0.006447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.051189, 18.233387, -0.636998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.003063, 18.458328, -0.309760>,  <16.974188, 18.593294, -0.113417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.003063, 18.458328, -0.309760>,  <17.051189, 18.233387, -0.636998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.003063, 18.458328, -0.309760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932769, 0.346113, -0.100737,
		-0.339804, 0.750974, -0.566190,
		-0.120315, 0.562355, 0.818096,
		16.966969, 18.627035, -0.064331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.138599, 18.954008, -0.750950>,  <17.051189, 18.233387, -0.636998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.138599, 18.954008, -0.750950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.304489, 18.807056, -0.417954>,  <17.404022, 18.718885, -0.218157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.304489, 18.807056, -0.417954>,  <17.138599, 18.954008, -0.750950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.304489, 18.807056, -0.417954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900433, 0.297642, -0.317223,
		-0.131242, 0.881159, 0.454240,
		0.414725, -0.367379, 0.832488,
		17.428907, 18.696842, -0.168208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.745115, 19.338943, -0.743145>,  <17.138599, 18.954008, -0.750950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.745115, 19.338943, -0.743145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.821270, 19.016869, -0.518494>,  <17.866962, 18.823624, -0.383703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.821270, 19.016869, -0.518494>,  <17.745115, 19.338943, -0.743145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.821270, 19.016869, -0.518494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957394, 0.025745, -0.287634,
		0.217140, 0.592461, 0.775784,
		0.190385, -0.805188, 0.561628,
		17.878386, 18.775312, -0.350005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.108789, 19.369282, -0.131096>,  <17.745115, 19.338943, -0.743145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.108789, 19.369282, -0.131096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.197632, 19.005798, -0.272469>,  <18.250938, 18.787708, -0.357292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.197632, 19.005798, -0.272469>,  <18.108789, 19.369282, -0.131096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.197632, 19.005798, -0.272469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907318, 0.325347, -0.266315,
		0.356991, -0.261524, 0.896751,
		0.222107, -0.908710, -0.353432,
		18.264263, 18.733185, -0.378498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.385944, 19.891520, 0.342503>,  <18.108789, 19.369282, -0.131096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.385944, 19.891520, 0.342503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.553104, 20.231632, 0.470490>,  <18.653400, 20.435699, 0.547283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.553104, 20.231632, 0.470490>,  <18.385944, 19.891520, 0.342503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.553104, 20.231632, 0.470490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591178, -0.521942, 0.614886,
		0.689831, -0.067803, -0.720788,
		0.417900, 0.850282, 0.319968,
		18.678474, 20.486717, 0.566481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.097902, 20.020130, 0.419867>,  <18.385944, 19.891520, 0.342503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.097902, 20.020130, 0.419867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.965244, 20.273666, 0.699369>,  <18.885649, 20.425787, 0.867071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.965244, 20.273666, 0.699369>,  <19.097902, 20.020130, 0.419867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.965244, 20.273666, 0.699369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677740, -0.355164, 0.643838,
		0.656263, 0.687100, -0.311790,
		-0.331644, 0.633839, 0.698756,
		18.865751, 20.463818, 0.908996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.501043, 19.989904, -0.175800>,  <19.097902, 20.020130, 0.419867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.501043, 19.989904, -0.175800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.223850, 20.265488, -0.260759>,  <19.057533, 20.430838, -0.311734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.223850, 20.265488, -0.260759>,  <19.501043, 19.989904, -0.175800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.223850, 20.265488, -0.260759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338962, -0.571364, -0.747427,
		-0.636303, -0.445959, 0.629476,
		-0.692981, 0.688959, -0.212397,
		19.015955, 20.472176, -0.324477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.214933, 19.724813, -0.758373>,  <19.501043, 19.989904, -0.175800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.214933, 19.724813, -0.758373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.055046, 19.499702, -1.047789>,  <18.959114, 19.364635, -1.221438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.055046, 19.499702, -1.047789>,  <19.214933, 19.724813, -0.758373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.055046, 19.499702, -1.047789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916603, -0.252350, -0.310093,
		-0.008072, -0.787148, 0.616711,
		-0.399716, -0.562777, -0.723539,
		18.935131, 19.330870, -1.264850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.289728, 18.976276, -0.635749>,  <19.214933, 19.724813, -0.758373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.289728, 18.976276, -0.635749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.318504, 19.154362, -0.992761>,  <19.335770, 19.261213, -1.206968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.318504, 19.154362, -0.992761>,  <19.289728, 18.976276, -0.635749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.318504, 19.154362, -0.992761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955407, -0.287705, -0.066503,
		-0.286393, -0.847945, -0.446058,
		0.071943, 0.445213, -0.892530,
		19.340088, 19.287926, -1.260520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<18.146320, 16.826616, 14.998141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.243973, 17.214470, 15.003902>,  <18.302565, 17.447182, 15.007360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.243973, 17.214470, 15.003902>,  <18.146320, 16.826616, 14.998141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.243973, 17.214470, 15.003902> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103444, 0.040807, -0.993798,
		-0.964210, 0.241125, 0.110265,
		0.244129, 0.969636, 0.014404,
		18.317211, 17.505362, 15.008224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.848061, 17.107677, 14.322832>,  <18.146320, 16.826616, 14.998141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.848061, 17.107677, 14.322832> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.029602, 17.439842, 14.452095>,  <18.138527, 17.639141, 14.529653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.029602, 17.439842, 14.452095>,  <17.848061, 17.107677, 14.322832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.029602, 17.439842, 14.452095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077427, 0.324538, -0.942698,
		-0.887705, 0.452871, 0.082997,
		0.453856, 0.830412, 0.323159,
		18.165758, 17.688965, 14.549043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.543022, 17.692495, 13.993834>,  <17.848061, 17.107677, 14.322832>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.543022, 17.692495, 13.993834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.917290, 17.800175, 14.085096>,  <18.141851, 17.864782, 14.139853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.917290, 17.800175, 14.085096>,  <17.543022, 17.692495, 13.993834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.917290, 17.800175, 14.085096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100782, 0.415765, -0.903871,
		-0.338177, 0.868719, 0.361888,
		0.935670, 0.269197, 0.228154,
		18.197990, 17.880934, 14.153543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.644732, 18.282358, 13.683689>,  <17.543022, 17.692495, 13.993834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.644732, 18.282358, 13.683689> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.018158, 18.156399, 13.752148>,  <18.242214, 18.080824, 13.793223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.018158, 18.156399, 13.752148>,  <17.644732, 18.282358, 13.683689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.018158, 18.156399, 13.752148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252931, 0.240538, -0.937106,
		0.253924, 0.918140, 0.304206,
		0.933568, -0.314897, 0.171147,
		18.298229, 18.061930, 13.803492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.055643, 18.789494, 13.352511>,  <17.644732, 18.282358, 13.683689>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.055643, 18.789494, 13.352511> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.242981, 18.436096, 13.356377>,  <18.355385, 18.224058, 13.358696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.242981, 18.436096, 13.356377>,  <18.055643, 18.789494, 13.352511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.242981, 18.436096, 13.356377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243531, 0.118568, -0.962618,
		0.849320, 0.453192, 0.270689,
		0.468346, -0.883493, 0.009664,
		18.383484, 18.171049, 13.359276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.829021, 18.910759, 13.163541>,  <18.055643, 18.789494, 13.352511>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.829021, 18.910759, 13.163541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.736774, 18.530487, 13.080568>,  <18.681427, 18.302324, 13.030785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.736774, 18.530487, 13.080568>,  <18.829021, 18.910759, 13.163541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.736774, 18.530487, 13.080568> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500574, 0.066893, -0.863105,
		0.834410, -0.302882, 0.460458,
		-0.230618, -0.950677, -0.207431,
		18.667589, 18.245283, 13.018339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.367334, 18.689314, 12.836178>,  <18.829021, 18.910759, 13.163541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.367334, 18.689314, 12.836178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.117374, 18.393833, 12.735128>,  <18.967398, 18.216545, 12.674499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.117374, 18.393833, 12.735128>,  <19.367334, 18.689314, 12.836178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.117374, 18.393833, 12.735128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430639, -0.056248, -0.900770,
		0.651191, -0.671681, 0.353263,
		-0.624900, -0.738702, -0.252624,
		18.929905, 18.172222, 12.659341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.713783, 18.360636, 12.303311>,  <19.367334, 18.689314, 12.836178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.713783, 18.360636, 12.303311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.349133, 18.199284, 12.271757>,  <19.130342, 18.102472, 12.252825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.349133, 18.199284, 12.271757>,  <19.713783, 18.360636, 12.303311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.349133, 18.199284, 12.271757> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196405, -0.258923, -0.945719,
		0.361060, -0.877634, 0.315267,
		-0.911625, -0.403381, -0.078885,
		19.075645, 18.078270, 12.248092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.706295, 17.700333, 11.978076>,  <19.713783, 18.360636, 12.303311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.706295, 17.700333, 11.978076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.329578, 17.823582, 11.924285>,  <19.103548, 17.897532, 11.892011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.329578, 17.823582, 11.924285>,  <19.706295, 17.700333, 11.978076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.329578, 17.823582, 11.924285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067535, -0.218454, -0.973507,
		-0.329339, -0.925925, 0.184930,
		-0.941793, 0.308125, -0.134478,
		19.047041, 17.916019, 11.883942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.387320, 17.130167, 11.680413>,  <19.706295, 17.700333, 11.978076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.387320, 17.130167, 11.680413> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.142632, 17.428310, 11.574405>,  <18.995819, 17.607197, 11.510799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.142632, 17.428310, 11.574405>,  <19.387320, 17.130167, 11.680413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.142632, 17.428310, 11.574405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046720, -0.368469, -0.928465,
		-0.789692, -0.555581, 0.260224,
		-0.611722, 0.745360, -0.265021,
		18.959114, 17.651918, 11.494899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.766787, 16.894112, 11.310313>,  <19.387320, 17.130167, 11.680413>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.766787, 16.894112, 11.310313> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.763645, 17.269112, 11.171154>,  <18.761761, 17.494112, 11.087659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.763645, 17.269112, 11.171154>,  <18.766787, 16.894112, 11.310313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.763645, 17.269112, 11.171154> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042281, -0.347286, -0.936805,
		-0.999075, -0.022067, -0.036911,
		-0.007853, 0.937499, -0.347898,
		18.761290, 17.550362, 11.066785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.229742, 16.916212, 10.766651>,  <18.766787, 16.894112, 11.310313>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.229742, 16.916212, 10.766651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.439793, 17.252995, 10.717092>,  <18.565823, 17.455065, 10.687356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.439793, 17.252995, 10.717092>,  <18.229742, 16.916212, 10.766651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.439793, 17.252995, 10.717092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027903, -0.128475, -0.991320,
		-0.850567, 0.524025, -0.043973,
		0.525126, 0.841957, -0.123899,
		18.597330, 17.505581, 10.679922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.843067, 17.322489, 10.383568>,  <18.229742, 16.916212, 10.766651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.843067, 17.322489, 10.383568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.221638, 17.435829, 10.321617>,  <18.448780, 17.503834, 10.284447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.221638, 17.435829, 10.321617>,  <17.843067, 17.322489, 10.383568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.221638, 17.435829, 10.321617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162471, 0.003353, -0.986708,
		-0.279066, 0.959010, 0.049210,
		0.946428, 0.283352, -0.154876,
		18.505566, 17.520834, 10.275154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.883389, 17.967157, 10.004625>,  <17.843067, 17.322489, 10.383568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.883389, 17.967157, 10.004625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.234604, 17.788803, 9.935075>,  <18.445333, 17.681789, 9.893344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.234604, 17.788803, 9.935075>,  <17.883389, 17.967157, 10.004625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.234604, 17.788803, 9.935075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109014, 0.167427, -0.979839,
		0.466010, 0.879291, 0.098399,
		0.878038, -0.445888, -0.173877,
		18.498014, 17.655037, 9.882912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.122686, 18.416315, 9.541581>,  <17.883389, 17.967157, 10.004625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.122686, 18.416315, 9.541581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.379784, 18.113213, 9.496529>,  <18.534042, 17.931351, 9.469497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.379784, 18.113213, 9.496529>,  <18.122686, 18.416315, 9.541581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.379784, 18.113213, 9.496529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055263, 0.100778, -0.993373,
		0.764085, 0.644709, 0.022899,
		0.642745, -0.757756, -0.112632,
		18.572607, 17.885885, 9.462739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.601309, 18.643932, 9.007327>,  <18.122686, 18.416315, 9.541581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.601309, 18.643932, 9.007327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.636906, 18.245522, 9.008425>,  <18.658264, 18.006475, 9.009084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.636906, 18.245522, 9.008425>,  <18.601309, 18.643932, 9.007327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.636906, 18.245522, 9.008425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135777, -0.014861, -0.990628,
		0.986735, 0.087783, -0.136560,
		0.088990, -0.996029, 0.002745,
		18.663603, 17.946712, 9.009248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.019005, 18.460388, 8.379321>,  <18.601309, 18.643932, 9.007327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.019005, 18.460388, 8.379321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.877544, 18.099850, 8.479326>,  <18.792669, 17.883526, 8.539330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.877544, 18.099850, 8.479326>,  <19.019005, 18.460388, 8.379321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.877544, 18.099850, 8.479326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079763, -0.237253, -0.968168,
		0.931971, -0.362334, 0.012011,
		-0.353650, -0.901346, 0.250014,
		18.771450, 17.829447, 8.554331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.440186, 17.935276, 7.963625>,  <19.019005, 18.460388, 8.379321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.440186, 17.935276, 7.963625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.079269, 17.783089, 8.044733>,  <18.862720, 17.691776, 8.093397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.079269, 17.783089, 8.044733>,  <19.440186, 17.935276, 7.963625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.079269, 17.783089, 8.044733> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097833, -0.277360, -0.955772,
		0.419884, -0.882221, 0.213036,
		-0.902290, -0.380471, 0.202769,
		18.808582, 17.668947, 8.105564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.268660, 17.442020, 7.445988>,  <19.440186, 17.935276, 7.963625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.268660, 17.442020, 7.445988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.900635, 17.488079, 7.595777>,  <18.679819, 17.515715, 7.685649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.900635, 17.488079, 7.595777>,  <19.268660, 17.442020, 7.445988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.900635, 17.488079, 7.595777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391153, -0.323773, -0.861493,
		0.022047, -0.939102, 0.342930,
		-0.920061, 0.115145, 0.374471,
		18.624617, 17.522623, 7.708118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.866041, 16.930044, 7.191719>,  <19.268660, 17.442020, 7.445988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.866041, 16.930044, 7.191719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.580509, 17.188618, 7.299476>,  <18.409189, 17.343761, 7.364130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.580509, 17.188618, 7.299476>,  <18.866041, 16.930044, 7.191719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.580509, 17.188618, 7.299476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583484, -0.336248, -0.739245,
		-0.387293, -0.684878, 0.617208,
		-0.713828, 0.646436, 0.269389,
		18.366360, 17.382547, 7.380293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.160828, 16.578543, 7.177510>,  <18.866041, 16.930044, 7.191719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.160828, 16.578543, 7.177510> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.081043, 16.970379, 7.167603>,  <18.033173, 17.205481, 7.161660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.081043, 16.970379, 7.167603>,  <18.160828, 16.578543, 7.177510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.081043, 16.970379, 7.167603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699113, -0.159970, -0.696887,
		-0.686626, -0.121689, 0.716754,
		-0.199463, 0.979592, -0.024766,
		18.021204, 17.264257, 7.160174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.437674, 16.606543, 7.248172>,  <18.160828, 16.578543, 7.177510>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.437674, 16.606543, 7.248172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.568344, 16.937820, 7.066019>,  <17.646746, 17.136587, 6.956727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.568344, 16.937820, 7.066019>,  <17.437674, 16.606543, 7.248172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.568344, 16.937820, 7.066019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852496, 0.050160, -0.520322,
		-0.408087, 0.558189, 0.722420,
		0.326675, 0.828196, -0.455384,
		17.666348, 17.186279, 6.929404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.962961, 16.107471, 7.665864>,  <17.437674, 16.606543, 7.248172>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.962961, 16.107471, 7.665864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.653015, 15.865494, 7.592514>,  <17.467049, 15.720307, 7.548504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.653015, 15.865494, 7.592514>,  <17.962961, 16.107471, 7.665864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.653015, 15.865494, 7.592514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352365, 0.172514, 0.919825,
		-0.524809, 0.777355, -0.346836,
		-0.774864, -0.604945, -0.183376,
		17.420555, 15.684011, 7.537501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.347754, 16.342585, 7.971505>,  <17.962961, 16.107471, 7.665864>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.347754, 16.342585, 7.971505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.211884, 15.971851, 7.907501>,  <17.130362, 15.749412, 7.869099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.211884, 15.971851, 7.907501>,  <17.347754, 16.342585, 7.971505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.211884, 15.971851, 7.907501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352674, -0.032201, 0.935192,
		-0.871918, 0.374093, -0.315932,
		-0.339675, -0.926832, -0.160010,
		17.109982, 15.693802, 7.859498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.744539, 16.408075, 8.303956>,  <17.347754, 16.342585, 7.971505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.744539, 16.408075, 8.303956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.863342, 16.026134, 8.301382>,  <16.934624, 15.796969, 8.299837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.863342, 16.026134, 8.301382>,  <16.744539, 16.408075, 8.303956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.863342, 16.026134, 8.301382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353814, -0.116309, 0.928056,
		-0.886907, -0.273362, -0.372385,
		0.297007, -0.954854, -0.006436,
		16.952444, 15.739678, 8.299452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.165369, 15.963158, 8.519301>,  <16.744539, 16.408075, 8.303956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.165369, 15.963158, 8.519301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.495258, 15.750515, 8.596477>,  <16.693192, 15.622930, 8.642782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.495258, 15.750515, 8.596477>,  <16.165369, 15.963158, 8.519301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.495258, 15.750515, 8.596477> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309294, -0.138365, 0.940847,
		-0.473466, -0.835612, -0.278536,
		0.824723, -0.531608, 0.192939,
		16.742676, 15.591033, 8.654358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.923716, 15.307705, 8.847487>,  <16.165369, 15.963158, 8.519301>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.923716, 15.307705, 8.847487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.308495, 15.333382, 8.953723>,  <16.539362, 15.348788, 9.017465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.308495, 15.333382, 8.953723>,  <15.923716, 15.307705, 8.847487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.308495, 15.333382, 8.953723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240616, -0.261563, 0.934713,
		0.129471, -0.963049, -0.236164,
		0.961947, 0.064193, 0.265590,
		16.597078, 15.352639, 9.033400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.998156, 14.687950, 9.214746>,  <15.923716, 15.307705, 8.847487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.998156, 14.687950, 9.214746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.322151, 14.894871, 9.325249>,  <16.516548, 15.019023, 9.391550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.322151, 14.894871, 9.325249>,  <15.998156, 14.687950, 9.214746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.322151, 14.894871, 9.325249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097004, -0.346399, 0.933059,
		0.578367, -0.782565, -0.230399,
		0.809988, 0.517301, 0.276258,
		16.565147, 15.050061, 9.408126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.417038, 14.304472, 9.744377>,  <15.998156, 14.687950, 9.214746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.417038, 14.304472, 9.744377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.528004, 14.688133, 9.766529>,  <16.594584, 14.918330, 9.779820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.528004, 14.688133, 9.766529>,  <16.417038, 14.304472, 9.744377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.528004, 14.688133, 9.766529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139587, -0.016792, 0.990067,
		0.950556, -0.282391, 0.129227,
		0.277416, 0.959153, 0.055380,
		16.611229, 14.975879, 9.783143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.866140, 14.341876, 10.295906>,  <16.417038, 14.304472, 9.744377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.866140, 14.341876, 10.295906> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.741573, 14.719067, 10.248890>,  <16.666832, 14.945381, 10.220680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.741573, 14.719067, 10.248890>,  <16.866140, 14.341876, 10.295906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.741573, 14.719067, 10.248890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191371, 0.058923, 0.979748,
		0.930804, 0.327606, 0.162109,
		-0.311419, 0.942975, -0.117540,
		16.648148, 15.001959, 10.213628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.194468, 14.673620, 10.860168>,  <16.866140, 14.341876, 10.295906>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.194468, 14.673620, 10.860168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.929543, 14.947334, 10.738124>,  <16.770588, 15.111563, 10.664897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.929543, 14.947334, 10.738124>,  <17.194468, 14.673620, 10.860168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.929543, 14.947334, 10.738124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200141, 0.230849, 0.952183,
		0.722000, 0.691710, -0.015941,
		-0.662314, 0.684285, -0.305112,
		16.730848, 15.152620, 10.646590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.341442, 15.318478, 11.202512>,  <17.194468, 14.673620, 10.860168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.341442, 15.318478, 11.202512> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.949646, 15.302006, 11.123618>,  <16.714569, 15.292123, 11.076282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.949646, 15.302006, 11.123618>,  <17.341442, 15.318478, 11.202512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.949646, 15.302006, 11.123618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200728, 0.114531, 0.972929,
		-0.017476, 0.992566, -0.120448,
		-0.979491, -0.041181, -0.197235,
		16.655798, 15.289652, 11.064447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.012877, 15.700236, 11.751881>,  <17.341442, 15.318478, 11.202512>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.012877, 15.700236, 11.751881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.697193, 15.496956, 11.613963>,  <16.507784, 15.374988, 11.531213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.697193, 15.496956, 11.613963>,  <17.012877, 15.700236, 11.751881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.697193, 15.496956, 11.613963> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411844, 0.021492, 0.911001,
		-0.455562, 0.860970, -0.226261,
		-0.789207, -0.508202, -0.344794,
		16.460430, 15.344496, 11.510525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.332375, 16.043659, 12.051938>,  <17.012877, 15.700236, 11.751881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.332375, 16.043659, 12.051938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.228943, 15.680935, 11.918773>,  <16.166883, 15.463301, 11.838874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.228943, 15.680935, 11.918773>,  <16.332375, 16.043659, 12.051938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.228943, 15.680935, 11.918773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569532, -0.135248, 0.810766,
		-0.780236, 0.399253, -0.481485,
		-0.258581, -0.906810, -0.332913,
		16.151369, 15.408892, 11.818899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.663010, 16.035204, 12.087838>,  <16.332375, 16.043659, 12.051938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.663010, 16.035204, 12.087838> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.812251, 15.666515, 12.130221>,  <15.901796, 15.445303, 12.155651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.812251, 15.666515, 12.130221>,  <15.663010, 16.035204, 12.087838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.812251, 15.666515, 12.130221> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406153, -0.059583, 0.911860,
		-0.834166, -0.383254, -0.396590,
		0.373104, -0.921719, 0.105957,
		15.924182, 15.389999, 12.162008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.163799, 15.735255, 12.539665>,  <15.663010, 16.035204, 12.087838>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.163799, 15.735255, 12.539665> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.477551, 15.487152, 12.537478>,  <15.665803, 15.338290, 12.536166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.477551, 15.487152, 12.537478>,  <15.163799, 15.735255, 12.539665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.477551, 15.487152, 12.537478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087132, -0.118905, 0.989075,
		-0.614131, -0.775334, -0.147310,
		0.784379, -0.620257, -0.005467,
		15.712866, 15.301075, 12.535838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.955946, 15.228213, 12.996659>,  <15.163799, 15.735255, 12.539665>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.955946, 15.228213, 12.996659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.355380, 15.228397, 12.975386>,  <15.595040, 15.228508, 12.962622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.355380, 15.228397, 12.975386>,  <14.955946, 15.228213, 12.996659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.355380, 15.228397, 12.975386> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053171, 0.015146, 0.998471,
		0.001244, -0.999885, 0.015101,
		0.998584, 0.000439, -0.053183,
		15.654956, 15.228536, 12.959431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.180084, 14.734053, 13.450253>,  <14.955946, 15.228213, 12.996659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.180084, 14.734053, 13.450253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.500377, 14.968014, 13.398529>,  <15.692552, 15.108390, 13.367495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.500377, 14.968014, 13.398529>,  <15.180084, 14.734053, 13.450253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.500377, 14.968014, 13.398529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148125, 0.015832, 0.988842,
		0.580423, -0.810950, -0.073962,
		0.800730, 0.584902, -0.129311,
		15.740596, 15.143484, 13.359735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.618297, 14.500840, 13.994090>,  <15.180084, 14.734053, 13.450253>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.618297, 14.500840, 13.994090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.819011, 14.824856, 13.872732>,  <15.939440, 15.019265, 13.799917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.819011, 14.824856, 13.872732>,  <15.618297, 14.500840, 13.994090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.819011, 14.824856, 13.872732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302206, 0.164472, 0.938946,
		0.810483, -0.562838, -0.162269,
		0.501786, 0.810038, -0.303395,
		15.969546, 15.067867, 13.781713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.350149, 14.479535, 14.142453>,  <15.618297, 14.500840, 13.994090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.350149, 14.479535, 14.142453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.294506, 14.874676, 14.114748>,  <16.261120, 15.111760, 14.098125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.294506, 14.874676, 14.114748>,  <16.350149, 14.479535, 14.142453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.294506, 14.874676, 14.114748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457457, 0.126137, 0.880240,
		0.878283, 0.090765, -0.469446,
		-0.139109, 0.987852, -0.069264,
		16.252773, 15.171031, 14.093969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<16.980400, 14.880477, 14.580981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.679184, 15.142654, 14.557926>,  <16.498453, 15.299961, 14.544093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.679184, 15.142654, 14.557926>,  <16.980400, 14.880477, 14.580981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.679184, 15.142654, 14.557926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208969, 0.321308, 0.923630,
		0.623907, 0.683488, -0.378925,
		-0.753042, 0.655443, -0.057639,
		16.453272, 15.339288, 14.540634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.278412, 15.525142, 14.892215>,  <16.980400, 14.880477, 14.580981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.278412, 15.525142, 14.892215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.880005, 15.560482, 14.887354>,  <16.640961, 15.581686, 14.884438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.880005, 15.560482, 14.887354>,  <17.278412, 15.525142, 14.892215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.880005, 15.560482, 14.887354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028010, 0.439265, 0.897921,
		0.084669, 0.894002, -0.439990,
		-0.996015, 0.088350, -0.012151,
		16.581200, 15.586987, 14.883709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.144135, 16.174988, 15.174584>,  <17.278412, 15.525142, 14.892215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.144135, 16.174988, 15.174584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.787296, 16.004383, 15.234255>,  <16.573195, 15.902020, 15.270058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.787296, 16.004383, 15.234255>,  <17.144135, 16.174988, 15.174584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.787296, 16.004383, 15.234255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006696, 0.317633, 0.948190,
		-0.451800, 0.846874, -0.280503,
		-0.892094, -0.426514, 0.149177,
		16.519669, 15.876429, 15.279008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.721996, 16.713587, 15.503481>,  <17.144135, 16.174988, 15.174584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.721996, 16.713587, 15.503481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.541050, 16.365635, 15.582144>,  <16.432482, 16.156864, 15.629342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.541050, 16.365635, 15.582144>,  <16.721996, 16.713587, 15.503481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.541050, 16.365635, 15.582144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022013, 0.231333, 0.972626,
		-0.891562, 0.435652, -0.123796,
		-0.452364, -0.869881, 0.196658,
		16.405340, 16.104671, 15.641141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.003267, 16.875391, 15.811038>,  <16.721996, 16.713587, 15.503481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.003267, 16.875391, 15.811038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.103916, 16.507854, 15.932638>,  <16.164305, 16.287333, 16.005598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.103916, 16.507854, 15.932638>,  <16.003267, 16.875391, 15.811038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.103916, 16.507854, 15.932638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213244, 0.253753, 0.943470,
		-0.944041, -0.302224, -0.132088,
		0.251621, -0.918842, 0.304001,
		16.179403, 16.232203, 16.023838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.515596, 16.726181, 16.371637>,  <16.003267, 16.875391, 15.811038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.515596, 16.726181, 16.371637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.815673, 16.466423, 16.421438>,  <15.995719, 16.310568, 16.451319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.815673, 16.466423, 16.421438>,  <15.515596, 16.726181, 16.371637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.815673, 16.466423, 16.421438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077991, 0.100077, 0.991918,
		-0.656605, -0.753839, 0.024430,
		0.750192, -0.649393, 0.124504,
		16.040730, 16.271605, 16.458790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.335958, 16.301443, 16.872223>,  <15.515596, 16.726181, 16.371637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.335958, 16.301443, 16.872223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.731853, 16.244446, 16.867947>,  <15.969390, 16.210247, 16.865381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.731853, 16.244446, 16.867947>,  <15.335958, 16.301443, 16.872223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.731853, 16.244446, 16.867947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025017, 0.099136, 0.994759,
		-0.140688, -0.984819, 0.101684,
		0.989738, -0.142494, -0.010690,
		16.028774, 16.201698, 16.864740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.474319, 15.907769, 17.448446>,  <15.335958, 16.301443, 16.872223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.474319, 15.907769, 17.448446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.825097, 16.081089, 17.365294>,  <16.035564, 16.185081, 17.315403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.825097, 16.081089, 17.365294>,  <15.474319, 15.907769, 17.448446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.825097, 16.081089, 17.365294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118708, 0.223855, 0.967366,
		0.465695, -0.873006, 0.144873,
		0.876948, 0.433300, -0.207881,
		16.088181, 16.211079, 17.302929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.010332, 15.616428, 17.830215>,  <15.474319, 15.907769, 17.448446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.010332, 15.616428, 17.830215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.167145, 15.977695, 17.760242>,  <16.261232, 16.194456, 17.718260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.167145, 15.977695, 17.760242>,  <16.010332, 15.616428, 17.830215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.167145, 15.977695, 17.760242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165314, 0.117894, 0.979169,
		0.904976, -0.412784, -0.103088,
		0.392032, 0.903167, -0.174930,
		16.284754, 16.248646, 17.707764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.365429, 15.701859, 18.448025>,  <16.010332, 15.616428, 17.830215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.365429, 15.701859, 18.448025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.350452, 16.059139, 18.268787>,  <16.341467, 16.273508, 18.161245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.350452, 16.059139, 18.268787>,  <16.365429, 15.701859, 18.448025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.350452, 16.059139, 18.268787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056058, 0.449581, 0.891479,
		0.997725, 0.008258, -0.066904,
		-0.037441, 0.893202, -0.448095,
		16.339220, 16.327099, 18.134359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.956802, 15.989225, 18.641029>,  <16.365429, 15.701859, 18.448025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.956802, 15.989225, 18.641029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.722435, 16.298294, 18.543314>,  <16.581814, 16.483736, 18.484684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.722435, 16.298294, 18.543314>,  <16.956802, 15.989225, 18.641029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.722435, 16.298294, 18.543314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113215, 0.376546, 0.919454,
		0.802423, 0.511067, -0.308103,
		-0.585918, 0.772673, -0.244289,
		16.546659, 16.530096, 18.470028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.309931, 16.515842, 18.789379>,  <16.956802, 15.989225, 18.641029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.309931, 16.515842, 18.789379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.927792, 16.634014, 18.787207>,  <16.698507, 16.704918, 18.785902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.927792, 16.634014, 18.787207>,  <17.309931, 16.515842, 18.789379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.927792, 16.634014, 18.787207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111264, 0.376708, 0.919626,
		0.273732, 0.877959, -0.392758,
		-0.955349, 0.295431, -0.005432,
		16.641188, 16.722643, 18.785578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.435131, 16.978060, 19.184561>,  <17.309931, 16.515842, 18.789379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.435131, 16.978060, 19.184561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.038704, 16.936035, 19.151716>,  <16.800848, 16.910820, 19.132010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.038704, 16.936035, 19.151716>,  <17.435131, 16.978060, 19.184561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.038704, 16.936035, 19.151716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124616, 0.510628, 0.850723,
		-0.047450, 0.853359, -0.519160,
		-0.991070, -0.105062, -0.082113,
		16.741383, 16.904516, 19.127083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.159676, 17.642046, 19.241442>,  <17.435131, 16.978060, 19.184561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.159676, 17.642046, 19.241442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.860119, 17.394669, 19.336683>,  <16.680386, 17.246243, 19.393827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.860119, 17.394669, 19.336683>,  <17.159676, 17.642046, 19.241442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.860119, 17.394669, 19.336683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164975, 0.521966, 0.836860,
		-0.641831, 0.587435, -0.492922,
		-0.748890, -0.618443, 0.238102,
		16.635452, 17.209135, 19.408113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.569649, 18.016628, 19.457636>,  <17.159676, 17.642046, 19.241442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.569649, 18.016628, 19.457636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.482235, 17.660130, 19.616594>,  <16.429787, 17.446230, 19.711969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.482235, 17.660130, 19.616594>,  <16.569649, 18.016628, 19.457636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.482235, 17.660130, 19.616594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135638, 0.431029, 0.892086,
		-0.966357, 0.141048, -0.215080,
		-0.218532, -0.891246, 0.397396,
		16.416676, 17.392756, 19.735813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.968473, 18.096004, 19.932735>,  <16.569649, 18.016628, 19.457636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.968473, 18.096004, 19.932735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.168236, 17.763016, 20.028723>,  <16.288094, 17.563223, 20.086315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.168236, 17.763016, 20.028723>,  <15.968473, 18.096004, 19.932735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.168236, 17.763016, 20.028723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082374, 0.230099, 0.969675,
		-0.862443, -0.504028, 0.046339,
		0.499406, -0.832472, 0.239966,
		16.318058, 17.513273, 20.100712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.511314, 17.877453, 20.415249>,  <15.968473, 18.096004, 19.932735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.511314, 17.877453, 20.415249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.859935, 17.687283, 20.463196>,  <16.069107, 17.573179, 20.491964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.859935, 17.687283, 20.463196>,  <15.511314, 17.877453, 20.415249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.859935, 17.687283, 20.463196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025997, 0.199321, 0.979589,
		-0.489615, -0.856878, 0.161359,
		0.871551, -0.475427, 0.119866,
		16.121401, 17.544655, 20.499155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.463490, 17.460875, 21.015985>,  <15.511314, 17.877453, 20.415249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.463490, 17.460875, 21.015985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.856755, 17.509495, 20.961409>,  <16.092714, 17.538668, 20.928661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.856755, 17.509495, 20.961409>,  <15.463490, 17.460875, 21.015985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.856755, 17.509495, 20.961409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084614, 0.358981, 0.929501,
		0.161962, -0.925396, 0.342652,
		0.983163, 0.121550, -0.136443,
		16.151705, 17.545959, 20.920475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.904515, 17.135824, 21.506569>,  <15.463490, 17.460875, 21.015985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.904515, 17.135824, 21.506569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.134068, 17.431240, 21.365023>,  <16.271799, 17.608490, 21.280094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.134068, 17.431240, 21.365023>,  <15.904515, 17.135824, 21.506569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.134068, 17.431240, 21.365023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030929, 0.412250, 0.910546,
		0.818356, -0.533488, 0.213739,
		0.573879, 0.738540, -0.353868,
		16.306231, 17.652802, 21.258862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.415501, 17.253599, 22.011627>,  <15.904515, 17.135824, 21.506569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.415501, 17.253599, 22.011627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.456860, 17.587563, 21.795391>,  <16.481674, 17.787941, 21.665649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.456860, 17.587563, 21.795391>,  <16.415501, 17.253599, 22.011627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.456860, 17.587563, 21.795391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270191, 0.499489, 0.823108,
		0.957239, -0.231169, -0.173939,
		0.103397, 0.834908, -0.540590,
		16.487879, 17.838036, 21.633215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.994728, 17.586502, 22.255629>,  <16.415501, 17.253599, 22.011627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.994728, 17.586502, 22.255629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.792240, 17.870720, 22.060131>,  <16.670748, 18.041250, 21.942833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.792240, 17.870720, 22.060131>,  <16.994728, 17.586502, 22.255629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.792240, 17.870720, 22.060131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189330, 0.644461, 0.740827,
		0.841366, 0.282486, -0.460765,
		-0.506218, 0.710544, -0.488744,
		16.640375, 18.083883, 21.913507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.420502, 18.168755, 22.387318>,  <16.994728, 17.586502, 22.255629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.420502, 18.168755, 22.387318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.049179, 18.286049, 22.295877>,  <16.826385, 18.356426, 22.241013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.049179, 18.286049, 22.295877>,  <17.420502, 18.168755, 22.387318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.049179, 18.286049, 22.295877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016626, 0.581471, 0.813397,
		0.371441, 0.758883, -0.534908,
		-0.928308, 0.293236, -0.228600,
		16.770687, 18.374020, 22.227297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.392040, 18.820732, 22.267162>,  <17.420502, 18.168755, 22.387318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.392040, 18.820732, 22.267162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.030701, 18.733456, 22.414865>,  <16.813896, 18.681089, 22.503487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.030701, 18.733456, 22.414865>,  <17.392040, 18.820732, 22.267162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.030701, 18.733456, 22.414865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104612, 0.722845, 0.683046,
		-0.415951, 0.655658, -0.630157,
		-0.903350, -0.218192, 0.369258,
		16.759695, 18.667997, 22.525642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.285564, 19.189106, 22.802420>,  <17.392040, 18.820732, 22.267162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.285564, 19.189106, 22.802420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.937626, 19.006268, 22.876642>,  <16.728863, 18.896564, 22.921175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.937626, 19.006268, 22.876642>,  <17.285564, 19.189106, 22.802420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.937626, 19.006268, 22.876642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145632, 0.597302, 0.788684,
		-0.471336, 0.659012, -0.586129,
		-0.869847, -0.457094, 0.185556,
		16.676672, 18.869139, 22.932308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.055216, 19.359150, 22.975246>,  <17.285564, 19.189106, 22.802420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.055216, 19.359150, 22.975246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.257713, 19.682552, 22.855223>,  <18.379211, 19.876595, 22.783209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.257713, 19.682552, 22.855223>,  <18.055216, 19.359150, 22.975246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.257713, 19.682552, 22.855223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397447, -0.090054, -0.913196,
		-0.765346, 0.581556, 0.275750,
		0.506242, 0.808507, -0.300060,
		18.409586, 19.925104, 22.765205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.583309, 19.805132, 22.525566>,  <18.055216, 19.359150, 22.975246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.583309, 19.805132, 22.525566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.950699, 19.934967, 22.435194>,  <18.171133, 20.012867, 22.380970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.950699, 19.934967, 22.435194>,  <17.583309, 19.805132, 22.525566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.950699, 19.934967, 22.435194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248364, 0.028838, -0.968237,
		-0.307761, 0.945417, 0.107102,
		0.918476, 0.324586, -0.225932,
		18.226242, 20.032343, 22.367414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.514715, 20.280766, 21.931349>,  <17.583309, 19.805132, 22.525566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.514715, 20.280766, 21.931349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.894604, 20.155598, 21.927135>,  <18.122538, 20.080496, 21.924606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.894604, 20.155598, 21.927135>,  <17.514715, 20.280766, 21.931349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.894604, 20.155598, 21.927135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066285, -0.168064, -0.983545,
		0.306001, 0.934791, -0.180356,
		0.949721, -0.312921, -0.010535,
		18.179520, 20.061722, 21.923975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.792873, 20.583771, 21.441534>,  <17.514715, 20.280766, 21.931349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.792873, 20.583771, 21.441534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.030178, 20.264442, 21.482958>,  <18.172562, 20.072845, 21.507812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.030178, 20.264442, 21.482958>,  <17.792873, 20.583771, 21.441534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.030178, 20.264442, 21.482958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168790, -0.249141, -0.953645,
		0.787115, 0.548282, -0.282555,
		0.593262, -0.798320, 0.103559,
		18.208157, 20.024946, 21.514025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.419502, 20.601555, 20.833235>,  <17.792873, 20.583771, 21.441534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.419502, 20.601555, 20.833235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.369125, 20.229717, 20.971796>,  <18.338900, 20.006615, 21.054932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.369125, 20.229717, 20.971796>,  <18.419502, 20.601555, 20.833235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.369125, 20.229717, 20.971796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127260, -0.361436, -0.923672,
		0.983841, -0.072245, 0.163819,
		-0.125941, -0.929594, 0.346402,
		18.331343, 19.950840, 21.075716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.901455, 20.195955, 20.387150>,  <18.419502, 20.601555, 20.833235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.901455, 20.195955, 20.387150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.660656, 19.935917, 20.572611>,  <18.516176, 19.779894, 20.683887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.660656, 19.935917, 20.572611>,  <18.901455, 20.195955, 20.387150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.660656, 19.935917, 20.572611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061360, -0.541280, -0.838601,
		0.796136, -0.533286, 0.285960,
		-0.601998, -0.650094, 0.463655,
		18.480057, 19.740889, 20.711708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.202929, 19.656166, 20.219439>,  <18.901455, 20.195955, 20.387150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.202929, 19.656166, 20.219439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.824833, 19.569977, 20.317497>,  <18.597977, 19.518263, 20.376333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.824833, 19.569977, 20.317497>,  <19.202929, 19.656166, 20.219439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.824833, 19.569977, 20.317497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110118, -0.496525, -0.861009,
		0.307248, -0.840853, 0.445606,
		-0.945237, -0.215474, 0.245149,
		18.541262, 19.505335, 20.391043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.141756, 18.918310, 20.100950>,  <19.202929, 19.656166, 20.219439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.141756, 18.918310, 20.100950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.772705, 19.070522, 20.075783>,  <18.551275, 19.161850, 20.060682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.772705, 19.070522, 20.075783>,  <19.141756, 18.918310, 20.100950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.772705, 19.070522, 20.075783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127214, -0.454239, -0.881750,
		-0.364113, -0.805521, 0.467502,
		-0.922626, 0.380529, -0.062921,
		18.495916, 19.184681, 20.056906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.795591, 18.421133, 19.862829>,  <19.141756, 18.918310, 20.100950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.795591, 18.421133, 19.862829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.543823, 18.723877, 19.792408>,  <18.392763, 18.905523, 19.750154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.543823, 18.723877, 19.792408>,  <18.795591, 18.421133, 19.862829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.543823, 18.723877, 19.792408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216935, -0.388699, -0.895462,
		-0.746171, -0.525428, 0.408844,
		-0.629418, 0.756861, -0.176053,
		18.354998, 18.950935, 19.739592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.190346, 18.100883, 19.480000>,  <18.795591, 18.421133, 19.862829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.190346, 18.100883, 19.480000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.173306, 18.494789, 19.412558>,  <18.163080, 18.731133, 19.372093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.173306, 18.494789, 19.412558>,  <18.190346, 18.100883, 19.480000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.173306, 18.494789, 19.412558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329855, -0.173157, -0.928015,
		-0.943070, 0.016079, 0.332206,
		-0.042602, 0.984763, -0.168603,
		18.160524, 18.790218, 19.361977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.449738, 18.290737, 19.289484>,  <18.190346, 18.100883, 19.480000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.449738, 18.290737, 19.289484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.724930, 18.541962, 19.144035>,  <17.890045, 18.692696, 19.056767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.724930, 18.541962, 19.144035>,  <17.449738, 18.290737, 19.289484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.724930, 18.541962, 19.144035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157143, -0.360238, -0.919530,
		-0.708512, 0.689759, -0.149141,
		0.687980, 0.628062, -0.363624,
		17.931324, 18.730381, 19.034948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.156469, 18.452682, 18.685238>,  <17.449738, 18.290737, 19.289484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.156469, 18.452682, 18.685238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.544674, 18.545822, 18.660292>,  <17.777597, 18.601706, 18.645323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.544674, 18.545822, 18.660292>,  <17.156469, 18.452682, 18.685238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.544674, 18.545822, 18.660292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000105, -0.259134, -0.965841,
		-0.241055, 0.937354, -0.251517,
		0.970511, 0.232847, -0.062367,
		17.835827, 18.615677, 18.641581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.191982, 18.692373, 18.054760>,  <17.156469, 18.452682, 18.685238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.191982, 18.692373, 18.054760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.582619, 18.630657, 18.114710>,  <17.817001, 18.593628, 18.150679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.582619, 18.630657, 18.114710>,  <17.191982, 18.692373, 18.054760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.582619, 18.630657, 18.114710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138162, -0.084071, -0.986835,
		0.164857, 0.984443, -0.060786,
		0.976593, -0.154288, 0.149873,
		17.875597, 18.584372, 18.159672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.475592, 18.988995, 17.562197>,  <17.191982, 18.692373, 18.054760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.475592, 18.988995, 17.562197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.797165, 18.778996, 17.673958>,  <17.990108, 18.652996, 17.741014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.797165, 18.778996, 17.673958>,  <17.475592, 18.988995, 17.562197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.797165, 18.778996, 17.673958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218468, -0.176257, -0.959794,
		0.553139, 0.832652, -0.027003,
		0.803934, -0.525000, 0.279402,
		18.038345, 18.621496, 17.757778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.023911, 19.126255, 17.044804>,  <17.475592, 18.988995, 17.562197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.023911, 19.126255, 17.044804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.096638, 18.772820, 17.217415>,  <18.140274, 18.560759, 17.320982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.096638, 18.772820, 17.217415>,  <18.023911, 19.126255, 17.044804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.096638, 18.772820, 17.217415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161949, -0.405941, -0.899436,
		0.969904, 0.233420, 0.069288,
		0.181819, -0.883588, 0.431526,
		18.151184, 18.507744, 17.346872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.585510, 18.975983, 16.693092>,  <18.023911, 19.126255, 17.044804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.585510, 18.975983, 16.693092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.436478, 18.639126, 16.849030>,  <18.347059, 18.437012, 16.942593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.436478, 18.639126, 16.849030>,  <18.585510, 18.975983, 16.693092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.436478, 18.639126, 16.849030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159409, -0.471924, -0.867108,
		0.914206, -0.260923, 0.310075,
		-0.372580, -0.842144, 0.389843,
		18.324703, 18.386482, 16.965982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.078453, 18.510225, 16.503548>,  <18.585510, 18.975983, 16.693092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.078453, 18.510225, 16.503548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.753757, 18.286846, 16.571918>,  <18.558941, 18.152819, 16.612940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.753757, 18.286846, 16.571918>,  <19.078453, 18.510225, 16.503548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.753757, 18.286846, 16.571918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182819, -0.520936, -0.833788,
		0.554670, -0.645569, 0.524959,
		-0.811738, -0.558450, 0.170926,
		18.510237, 18.119310, 16.623196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.304348, 18.044806, 16.041004>,  <19.078453, 18.510225, 16.503548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.304348, 18.044806, 16.041004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.918877, 17.959217, 16.104931>,  <18.687593, 17.907864, 16.143288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.918877, 17.959217, 16.104931>,  <19.304348, 18.044806, 16.041004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.918877, 17.959217, 16.104931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107350, -0.237595, -0.965414,
		0.244545, -0.947504, 0.205994,
		-0.963677, -0.213974, 0.159817,
		18.629774, 17.895025, 16.152876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.157976, 17.500029, 15.705041>,  <19.304348, 18.044806, 16.041004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.157976, 17.500029, 15.705041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.790756, 17.652199, 15.749695>,  <18.570425, 17.743502, 15.776487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.790756, 17.652199, 15.749695>,  <19.157976, 17.500029, 15.705041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.790756, 17.652199, 15.749695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192543, -0.181668, -0.964326,
		-0.346574, -0.906792, 0.240028,
		-0.918049, 0.380426, 0.111635,
		18.515341, 17.766327, 15.783185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.730822, 16.989529, 15.466300>,  <19.157976, 17.500029, 15.705041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.730822, 16.989529, 15.466300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.536003, 17.337929, 15.440554>,  <18.419113, 17.546968, 15.425106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.536003, 17.337929, 15.440554>,  <18.730822, 16.989529, 15.466300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.536003, 17.337929, 15.440554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226156, -0.196959, -0.953971,
		-0.843588, -0.450070, 0.292910,
		-0.487045, 0.871002, -0.064366,
		18.389889, 17.599230, 15.421244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<15.730905, 14.228384, 11.644154> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.868524, 14.601864, 11.683821>,  <15.951096, 14.825952, 11.707621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.868524, 14.601864, 11.683821>,  <15.730905, 14.228384, 11.644154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.868524, 14.601864, 11.683821> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222931, 0.021366, -0.974600,
		-0.912103, 0.357417, -0.200799,
		0.344048, 0.933701, 0.099167,
		15.971738, 14.881974, 11.713571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.461270, 14.692796, 11.036533>,  <15.730905, 14.228384, 11.644154>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.461270, 14.692796, 11.036533> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.765037, 14.903221, 11.189657>,  <15.947296, 15.029476, 11.281531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.765037, 14.903221, 11.189657>,  <15.461270, 14.692796, 11.036533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.765037, 14.903221, 11.189657> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327476, 0.199348, -0.923591,
		-0.562181, 0.826751, -0.020886,
		0.759416, 0.526064, 0.382811,
		15.992862, 15.061041, 11.304501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.437374, 15.315580, 10.684592>,  <15.461270, 14.692796, 11.036533>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.437374, 15.315580, 10.684592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.815732, 15.310097, 10.814264>,  <16.042747, 15.306807, 10.892068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.815732, 15.310097, 10.814264>,  <15.437374, 15.315580, 10.684592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.815732, 15.310097, 10.814264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315202, 0.275921, -0.908028,
		-0.077000, 0.961083, 0.265314,
		0.945896, -0.013709, 0.324181,
		16.099501, 15.305984, 10.911518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.735655, 15.855305, 10.371431>,  <15.437374, 15.315580, 10.684592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.735655, 15.855305, 10.371431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.060036, 15.635765, 10.452546>,  <16.254663, 15.504042, 10.501215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.060036, 15.635765, 10.452546>,  <15.735655, 15.855305, 10.371431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.060036, 15.635765, 10.452546> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352263, 0.181238, -0.918185,
		0.467192, 0.816038, 0.340314,
		0.810952, -0.548849, 0.202787,
		16.303322, 15.471110, 10.513382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.274939, 16.220856, 10.125428>,  <15.735655, 15.855305, 10.371431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.274939, 16.220856, 10.125428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.383026, 15.836555, 10.150526>,  <16.447878, 15.605975, 10.165585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.383026, 15.836555, 10.150526>,  <16.274939, 16.220856, 10.125428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.383026, 15.836555, 10.150526> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376716, 0.045531, -0.925209,
		0.886040, 0.273646, 0.374234,
		0.270219, -0.960752, 0.062745,
		16.464092, 15.548329, 10.169350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.065935, 16.162277, 10.018583>,  <16.274939, 16.220856, 10.125428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.065935, 16.162277, 10.018583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.899120, 15.807606, 9.938701>,  <16.799030, 15.594804, 9.890771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.899120, 15.807606, 9.938701>,  <17.065935, 16.162277, 10.018583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.899120, 15.807606, 9.938701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446839, -0.008680, -0.894572,
		0.791463, -0.462309, 0.399822,
		-0.417039, -0.886677, -0.199708,
		16.774008, 15.541603, 9.878788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.595161, 15.795190, 9.737518>,  <17.065935, 16.162277, 10.018583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.595161, 15.795190, 9.737518> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.272343, 15.584412, 9.630932>,  <17.078651, 15.457945, 9.566980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.272343, 15.584412, 9.630932>,  <17.595161, 15.795190, 9.737518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.272343, 15.584412, 9.630932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397004, -0.150166, -0.905449,
		0.437108, -0.836528, 0.330390,
		-0.807047, -0.526945, -0.266466,
		17.030228, 15.426328, 9.550992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.933937, 15.347044, 9.278443>,  <17.595161, 15.795190, 9.737518>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.933937, 15.347044, 9.278443> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.544296, 15.370079, 9.190985>,  <17.310511, 15.383900, 9.138510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.544296, 15.370079, 9.190985>,  <17.933937, 15.347044, 9.278443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.544296, 15.370079, 9.190985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214403, -0.071793, -0.974103,
		-0.071793, -0.995756, 0.057587,
		0.974103, -0.057587, 0.218647,
		17.252066, 15.387355, 9.125391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.780773, 14.865170, 8.753514>,  <17.933937, 15.347044, 9.278443>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.780773, 14.865170, 8.753514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.475018, 15.123009, 8.747832>,  <17.291563, 15.277712, 8.744423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.475018, 15.123009, 8.747832>,  <17.780773, 14.865170, 8.753514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.475018, 15.123009, 8.747832> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043977, 0.030142, -0.998578,
		-0.643252, -0.763929, -0.051387,
		-0.764391, 0.644597, -0.014206,
		17.245701, 15.316387, 8.743570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.338766, 14.509103, 8.221958>,  <17.780773, 14.865170, 8.753514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.338766, 14.509103, 8.221958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.216743, 14.889362, 8.244613>,  <17.143530, 15.117518, 8.258205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.216743, 14.889362, 8.244613>,  <17.338766, 14.509103, 8.221958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.216743, 14.889362, 8.244613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033810, 0.048623, -0.998245,
		-0.951734, -0.306435, 0.017309,
		-0.305056, 0.950649, 0.056637,
		17.125227, 15.174557, 8.261603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.677124, 14.509807, 7.802705>,  <17.338766, 14.509103, 8.221958>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.677124, 14.509807, 7.802705> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.843010, 14.873478, 7.817705>,  <16.942541, 15.091681, 7.826705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.843010, 14.873478, 7.817705>,  <16.677124, 14.509807, 7.802705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.843010, 14.873478, 7.817705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112859, -0.010499, -0.993556,
		-0.902926, 0.416274, -0.106962,
		0.414714, 0.909179, 0.037500,
		16.967424, 15.146232, 7.828955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.444315, 14.919275, 7.235100>,  <16.677124, 14.509807, 7.802705>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.444315, 14.919275, 7.235100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.747494, 15.161289, 7.332627>,  <16.929401, 15.306498, 7.391143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.747494, 15.161289, 7.332627>,  <16.444315, 14.919275, 7.235100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.747494, 15.161289, 7.332627> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179724, 0.165614, -0.969676,
		-0.627066, 0.778785, 0.016787,
		0.757949, 0.605034, 0.243817,
		16.974878, 15.342799, 7.405773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.301552, 15.573871, 7.002947>,  <16.444315, 14.919275, 7.235100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.301552, 15.573871, 7.002947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.687729, 15.470726, 7.018072>,  <16.919436, 15.408839, 7.027147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.687729, 15.470726, 7.018072>,  <16.301552, 15.573871, 7.002947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.687729, 15.470726, 7.018072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070006, 0.116834, -0.990681,
		0.251040, 0.959092, 0.130848,
		0.965442, -0.257860, 0.037812,
		16.977362, 15.393368, 7.029416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.729269, 16.104897, 6.647272>,  <16.301552, 15.573871, 7.002947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.729269, 16.104897, 6.647272> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.886635, 15.737289, 6.657293>,  <16.981054, 15.516725, 6.663306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.886635, 15.737289, 6.657293>,  <16.729269, 16.104897, 6.647272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.886635, 15.737289, 6.657293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086148, -0.063981, -0.994226,
		0.915315, 0.388987, -0.104343,
		0.393417, -0.919019, 0.025053,
		17.004660, 15.461584, 6.664809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.464367, 16.398916, 6.012456>,  <16.729269, 16.104897, 6.647272>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.464367, 16.398916, 6.012456> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.191475, 16.657497, 5.875834>,  <16.027740, 16.812645, 5.793860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.191475, 16.657497, 5.875834>,  <16.464367, 16.398916, 6.012456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.191475, 16.657497, 5.875834> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096357, 0.542581, 0.834459,
		0.724760, 0.536382, -0.432455,
		-0.682231, 0.646452, -0.341557,
		15.986806, 16.851433, 5.773366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.746750, 17.074024, 6.180400>,  <16.464367, 16.398916, 6.012456>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.746750, 17.074024, 6.180400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.351223, 17.118671, 6.140846>,  <16.113907, 17.145460, 6.117114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.351223, 17.118671, 6.140846>,  <16.746750, 17.074024, 6.180400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.351223, 17.118671, 6.140846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026123, 0.523205, 0.851806,
		0.146815, 0.844865, -0.514439,
		-0.988819, 0.111620, -0.098885,
		16.054577, 17.152157, 6.111181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.676443, 17.778084, 6.277186>,  <16.746750, 17.074024, 6.180400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.676443, 17.778084, 6.277186> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.312046, 17.621620, 6.329467>,  <16.093407, 17.527742, 6.360835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.312046, 17.621620, 6.329467>,  <16.676443, 17.778084, 6.277186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.312046, 17.621620, 6.329467> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035408, 0.389927, 0.920165,
		-0.410895, 0.833637, -0.369072,
		-0.910995, -0.391159, 0.130702,
		16.038748, 17.504272, 6.368678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.265263, 18.368998, 6.360888>,  <16.676443, 17.778084, 6.277186>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.265263, 18.368998, 6.360888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.071625, 18.057255, 6.520013>,  <15.955442, 17.870209, 6.615488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.071625, 18.057255, 6.520013>,  <16.265263, 18.368998, 6.360888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.071625, 18.057255, 6.520013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004603, 0.456896, 0.889508,
		-0.875004, 0.428775, -0.224768,
		-0.484094, -0.779357, 0.397812,
		15.926396, 17.823448, 6.639357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.783150, 18.650209, 6.806554>,  <16.265263, 18.368998, 6.360888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.783150, 18.650209, 6.806554> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.804896, 18.272495, 6.936394>,  <15.817945, 18.045866, 7.014298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.804896, 18.272495, 6.936394>,  <15.783150, 18.650209, 6.806554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.804896, 18.272495, 6.936394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141722, 0.314493, 0.938621,
		-0.988412, -0.097033, -0.116728,
		0.054367, -0.944288, 0.324600,
		15.821206, 17.989208, 7.033774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.157721, 18.563702, 7.158484>,  <15.783150, 18.650209, 6.806554>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.157721, 18.563702, 7.158484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.427823, 18.305714, 7.301614>,  <15.589885, 18.150921, 7.387492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.427823, 18.305714, 7.301614>,  <15.157721, 18.563702, 7.158484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.427823, 18.305714, 7.301614> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266129, 0.239404, 0.933735,
		-0.687898, -0.725739, -0.009986,
		0.675257, -0.644972, 0.357826,
		15.630401, 18.112223, 7.408962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.814448, 18.220982, 7.719502>,  <15.157721, 18.563702, 7.158484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.814448, 18.220982, 7.719502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.209243, 18.177052, 7.766489>,  <15.446119, 18.150694, 7.794681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.209243, 18.177052, 7.766489>,  <14.814448, 18.220982, 7.719502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.209243, 18.177052, 7.766489> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098628, 0.163548, 0.981593,
		-0.127016, -0.980403, 0.150587,
		0.986985, -0.109826, 0.117468,
		15.505339, 18.144104, 7.801729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.928818, 17.881130, 8.375292>,  <14.814448, 18.220982, 7.719502>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.928818, 17.881130, 8.375292> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.282306, 18.049900, 8.294277>,  <15.494398, 18.151161, 8.245668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.282306, 18.049900, 8.294277>,  <14.928818, 17.881130, 8.375292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.282306, 18.049900, 8.294277> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137077, 0.180436, 0.973988,
		0.447494, -0.888494, 0.101618,
		0.883719, 0.421925, -0.202536,
		15.547421, 18.176477, 8.233517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.453539, 17.549185, 8.757702>,  <14.928818, 17.881130, 8.375292>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.453539, 17.549185, 8.757702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.618178, 17.903625, 8.672462>,  <15.716962, 18.116289, 8.621319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.618178, 17.903625, 8.672462>,  <15.453539, 17.549185, 8.757702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.618178, 17.903625, 8.672462> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078266, 0.198593, 0.976952,
		0.907998, -0.418791, 0.012389,
		0.411599, 0.886101, -0.213099,
		15.741658, 18.169456, 8.608533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.883181, 17.651466, 9.340147>,  <15.453539, 17.549185, 8.757702>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.883181, 17.651466, 9.340147> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.869189, 18.007393, 9.158157>,  <15.860794, 18.220949, 9.048964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.869189, 18.007393, 9.158157>,  <15.883181, 17.651466, 9.340147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.869189, 18.007393, 9.158157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168005, 0.454009, 0.875015,
		0.985165, -0.045831, -0.165375,
		-0.034979, 0.889818, -0.454973,
		15.858695, 18.274338, 9.021666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.494680, 18.039715, 9.412857>,  <15.883181, 17.651466, 9.340147>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.494680, 18.039715, 9.412857> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.242474, 18.334290, 9.314790>,  <16.091150, 18.511034, 9.255950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.242474, 18.334290, 9.314790>,  <16.494680, 18.039715, 9.412857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.242474, 18.334290, 9.314790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371068, 0.563433, 0.738141,
		0.681730, 0.374437, -0.628523,
		-0.630517, 0.736438, -0.245168,
		16.053318, 18.555222, 9.241240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.922457, 18.606792, 9.529094>,  <16.494680, 18.039715, 9.412857>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.922457, 18.606792, 9.529094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.540096, 18.724266, 9.529386>,  <16.310680, 18.794750, 9.529561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.540096, 18.724266, 9.529386>,  <16.922457, 18.606792, 9.529094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.540096, 18.724266, 9.529386> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130617, 0.422911, 0.896708,
		0.263042, 0.857260, -0.442622,
		-0.955902, 0.293685, 0.000729,
		16.253326, 18.812372, 9.529604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.954935, 19.307482, 9.536286>,  <16.922457, 18.606792, 9.529094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.954935, 19.307482, 9.536286> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.605186, 19.184635, 9.686569>,  <16.395338, 19.110928, 9.776739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.605186, 19.184635, 9.686569>,  <16.954935, 19.307482, 9.536286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.605186, 19.184635, 9.686569> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127149, 0.602192, 0.788162,
		-0.468305, 0.736916, -0.487489,
		-0.874370, -0.307116, 0.375708,
		16.342875, 19.092501, 9.799281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.536591, 19.987829, 9.570583>,  <16.954935, 19.307482, 9.536286>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.536591, 19.987829, 9.570583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.400173, 19.695526, 9.807120>,  <16.318323, 19.520145, 9.949042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.400173, 19.695526, 9.807120>,  <16.536591, 19.987829, 9.570583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.400173, 19.695526, 9.807120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051878, 0.613467, 0.788014,
		-0.938616, 0.299423, -0.171308,
		-0.341041, -0.730756, 0.591343,
		16.297861, 19.476299, 9.984524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.851411, 20.441771, 9.350079>,  <16.536591, 19.987829, 9.570583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.851411, 20.441771, 9.350079> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.857017, 20.836029, 9.417377>,  <15.860380, 21.072584, 9.457757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.857017, 20.836029, 9.417377>,  <15.851411, 20.441771, 9.350079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.857017, 20.836029, 9.417377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296605, 0.156592, -0.942075,
		-0.954897, 0.063106, -0.290152,
		0.014015, 0.985645, 0.168247,
		15.861221, 21.131723, 9.467852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.368423, 20.743265, 8.844728>,  <15.851411, 20.441771, 9.350079>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.368423, 20.743265, 8.844728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.650079, 21.006447, 8.951524>,  <15.819072, 21.164356, 9.015601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.650079, 21.006447, 8.951524>,  <15.368423, 20.743265, 8.844728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.650079, 21.006447, 8.951524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220971, 0.154291, -0.962999,
		-0.674804, 0.737081, -0.036746,
		0.704139, 0.657955, 0.266990,
		15.861320, 21.203833, 9.031621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.494287, 21.214516, 8.275745>,  <15.368423, 20.743265, 8.844728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.494287, 21.214516, 8.275745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.827302, 21.283886, 8.486194>,  <16.027111, 21.325508, 8.612463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.827302, 21.283886, 8.486194>,  <15.494287, 21.214516, 8.275745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.827302, 21.283886, 8.486194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522471, 0.069859, -0.849790,
		-0.184130, 0.982366, -0.032449,
		0.832538, 0.173426, 0.526121,
		16.077063, 21.335915, 8.644030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.830400, 21.644157, 7.858898>,  <15.494287, 21.214516, 8.275745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.830400, 21.644157, 7.858898> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.098511, 21.491241, 8.113325>,  <16.259377, 21.399492, 8.265982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.098511, 21.491241, 8.113325>,  <15.830400, 21.644157, 7.858898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.098511, 21.491241, 8.113325> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687460, -0.002966, -0.726216,
		0.279511, 0.924038, 0.260820,
		0.670278, -0.382289, 0.636068,
		16.299595, 21.376554, 8.304146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.466476, 22.039099, 7.757700>,  <15.830400, 21.644157, 7.858898>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.466476, 22.039099, 7.757700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.595257, 21.705563, 7.937059>,  <16.672525, 21.505442, 8.044675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.595257, 21.705563, 7.937059>,  <16.466476, 22.039099, 7.757700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.595257, 21.705563, 7.937059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798093, -0.015756, -0.602329,
		0.509310, 0.551783, 0.660408,
		0.321949, -0.833839, 0.448398,
		16.691841, 21.455410, 8.071579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.187473, 22.108927, 7.816486>,  <16.466476, 22.039099, 7.757700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.187473, 22.108927, 7.816486> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.163235, 21.716679, 7.891015>,  <17.148691, 21.481331, 7.935732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.163235, 21.716679, 7.891015>,  <17.187473, 22.108927, 7.816486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.163235, 21.716679, 7.891015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830449, -0.153092, -0.535647,
		0.553790, 0.122274, 0.823630,
		-0.060596, -0.980618, 0.186323,
		17.145056, 21.422493, 7.946912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.896032, 21.833441, 7.936410>,  <17.187473, 22.108927, 7.816486>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.896032, 21.833441, 7.936410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.672096, 21.516697, 7.838807>,  <17.537735, 21.326651, 7.780245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.672096, 21.516697, 7.838807>,  <17.896032, 21.833441, 7.936410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.672096, 21.516697, 7.838807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727158, -0.328324, -0.602864,
		0.397269, -0.514938, 0.759615,
		-0.559838, -0.791860, -0.244008,
		17.504145, 21.279139, 7.765604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.359039, 21.386961, 7.919738>,  <17.896032, 21.833441, 7.936410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.359039, 21.386961, 7.919738> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.045124, 21.271667, 7.700274>,  <17.856775, 21.202492, 7.568595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.045124, 21.271667, 7.700274>,  <18.359039, 21.386961, 7.919738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.045124, 21.271667, 7.700274> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610961, -0.211108, -0.762994,
		0.104096, -0.933998, 0.341777,
		-0.784787, -0.288236, -0.548661,
		17.809689, 21.185196, 7.535675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.513666, 20.631651, 7.685331>,  <18.359039, 21.386961, 7.919738>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.513666, 20.631651, 7.685331> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.232906, 20.752815, 7.427468>,  <18.064451, 20.825514, 7.272750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.232906, 20.752815, 7.427468>,  <18.513666, 20.631651, 7.685331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.232906, 20.752815, 7.427468> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539940, -0.364008, -0.758922,
		-0.464546, -0.880763, 0.091944,
		-0.701899, 0.302910, -0.644657,
		18.022337, 20.843687, 7.234071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.591972, 20.192802, 7.144960>,  <18.513666, 20.631651, 7.685331>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.591972, 20.192802, 7.144960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.380173, 20.489552, 6.980396>,  <18.253094, 20.667601, 6.881658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.380173, 20.489552, 6.980396>,  <18.591972, 20.192802, 7.144960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.380173, 20.489552, 6.980396> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374012, -0.231135, -0.898160,
		-0.761411, -0.629446, -0.155084,
		-0.529498, 0.741872, -0.411409,
		18.221323, 20.712112, 6.856974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.225111, 19.909760, 6.689721>,  <18.591972, 20.192802, 7.144960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.225111, 19.909760, 6.689721> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.256084, 20.295059, 6.586840>,  <18.274670, 20.526239, 6.525111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.256084, 20.295059, 6.586840>,  <18.225111, 19.909760, 6.689721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.256084, 20.295059, 6.586840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392481, -0.266598, -0.880275,
		-0.916494, -0.032783, -0.398702,
		0.077435, 0.963250, -0.257202,
		18.279314, 20.584034, 6.509679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.006029, 19.981768, 5.997676>,  <18.225111, 19.909760, 6.689721>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.006029, 19.981768, 5.997676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.251263, 20.289558, 6.069271>,  <18.398403, 20.474232, 6.112228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.251263, 20.289558, 6.069271>,  <18.006029, 19.981768, 5.997676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.251263, 20.289558, 6.069271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502515, -0.205010, -0.839911,
		-0.609596, 0.604879, -0.512361,
		0.613084, 0.769475, 0.178987,
		18.435188, 20.520401, 6.122967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<14.668576, 21.804512, 13.288016> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.947249, 22.073437, 13.187916>,  <15.114453, 22.234793, 13.127855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.947249, 22.073437, 13.187916>,  <14.668576, 21.804512, 13.288016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.947249, 22.073437, 13.187916> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039024, -0.383844, -0.922573,
		-0.716316, 0.632976, -0.293654,
		0.696684, 0.672313, -0.250252,
		15.156255, 22.275131, 13.112840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.389322, 22.152081, 12.668586>,  <14.668576, 21.804512, 13.288016>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.389322, 22.152081, 12.668586> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.783849, 22.217293, 12.658770>,  <15.020565, 22.256420, 12.652880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.783849, 22.217293, 12.658770>,  <14.389322, 22.152081, 12.668586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.783849, 22.217293, 12.658770> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034630, 0.059341, -0.997637,
		-0.161189, 0.984835, 0.064174,
		0.986316, 0.163030, -0.024539,
		15.079743, 22.266201, 12.651408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.513128, 22.567316, 12.199635>,  <14.389322, 22.152081, 12.668586>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.513128, 22.567316, 12.199635> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.864692, 22.377369, 12.217608>,  <15.075630, 22.263401, 12.228393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.864692, 22.377369, 12.217608>,  <14.513128, 22.567316, 12.199635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.864692, 22.377369, 12.217608> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055200, 0.007688, -0.998446,
		0.473786, 0.880023, 0.032970,
		0.878908, -0.474870, 0.044935,
		15.128365, 22.234907, 12.231089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.926977, 22.877020, 11.591261>,  <14.513128, 22.567316, 12.199635>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.926977, 22.877020, 11.591261> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.121379, 22.536427, 11.670023>,  <15.238020, 22.332069, 11.717280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.121379, 22.536427, 11.670023>,  <14.926977, 22.877020, 11.591261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.121379, 22.536427, 11.670023> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018641, -0.215152, -0.976403,
		0.873757, 0.478207, -0.088693,
		0.486005, -0.851486, 0.196905,
		15.267180, 22.280981, 11.729095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.469495, 22.887100, 11.271861>,  <14.926977, 22.877020, 11.591261>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.469495, 22.887100, 11.271861> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.441024, 22.495880, 11.350200>,  <15.423942, 22.261148, 11.397202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.441024, 22.495880, 11.350200>,  <15.469495, 22.887100, 11.271861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.441024, 22.495880, 11.350200> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269555, -0.207899, -0.940275,
		0.960351, -0.014135, 0.278436,
		-0.071178, -0.978048, 0.195846,
		15.419670, 22.202465, 11.408954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.997095, 22.687737, 10.911342>,  <15.469495, 22.887100, 11.271861>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.997095, 22.687737, 10.911342> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.786138, 22.356586, 10.987739>,  <15.659563, 22.157896, 11.033577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.786138, 22.356586, 10.987739>,  <15.997095, 22.687737, 10.911342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.786138, 22.356586, 10.987739> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321784, -0.402682, -0.856914,
		0.786327, -0.390473, 0.478770,
		-0.527394, -0.827875, 0.190992,
		15.627919, 22.108223, 11.045036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.477144, 22.142717, 10.815567>,  <15.997095, 22.687737, 10.911342>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.477144, 22.142717, 10.815567> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.115162, 21.978588, 10.770514>,  <15.897972, 21.880110, 10.743482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.115162, 21.978588, 10.770514>,  <16.477144, 22.142717, 10.815567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.115162, 21.978588, 10.770514> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307126, -0.446691, -0.840322,
		0.294491, -0.795049, 0.530257,
		-0.904958, -0.410323, -0.112634,
		15.843675, 21.855492, 10.736723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.612015, 21.379101, 10.628916>,  <16.477144, 22.142717, 10.815567>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.612015, 21.379101, 10.628916> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.252079, 21.482887, 10.488649>,  <16.036118, 21.545158, 10.404490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.252079, 21.482887, 10.488649>,  <16.612015, 21.379101, 10.628916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.252079, 21.482887, 10.488649> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263846, -0.316432, -0.911184,
		-0.347391, -0.912439, 0.216275,
		-0.899836, 0.259473, -0.350669,
		15.982127, 21.560728, 10.383450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.398237, 20.743917, 10.313405>,  <16.612015, 21.379101, 10.628916>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.398237, 20.743917, 10.313405> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.195415, 21.059319, 10.174176>,  <16.073723, 21.248560, 10.090639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.195415, 21.059319, 10.174176>,  <16.398237, 20.743917, 10.313405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.195415, 21.059319, 10.174176> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340863, -0.187468, -0.921232,
		-0.791648, -0.585761, -0.173715,
		-0.507055, 0.788505, -0.348073,
		16.043299, 21.295870, 10.069755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.907943, 20.247692, 10.196546>,  <16.398237, 20.743917, 10.313405>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.907943, 20.247692, 10.196546> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.964284, 19.878998, 10.341081>,  <15.998089, 19.657782, 10.427802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.964284, 19.878998, 10.341081>,  <15.907943, 20.247692, 10.196546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.964284, 19.878998, 10.341081> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335292, 0.298997, 0.893409,
		-0.931526, -0.246992, -0.266936,
		0.140852, -0.921735, 0.361338,
		16.006540, 19.602478, 10.449482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.278742, 20.029243, 10.616978>,  <15.907943, 20.247692, 10.196546>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.278742, 20.029243, 10.616978> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.575597, 19.790695, 10.739337>,  <15.753710, 19.647566, 10.812753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.575597, 19.790695, 10.739337>,  <15.278742, 20.029243, 10.616978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.575597, 19.790695, 10.739337> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375825, 0.007628, 0.926659,
		-0.554966, -0.802673, -0.218470,
		0.742137, -0.596370, 0.305898,
		15.798238, 19.611784, 10.831106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.943041, 19.468658, 10.982684>,  <15.278742, 20.029243, 10.616978>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.943041, 19.468658, 10.982684> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.326802, 19.496868, 11.091914>,  <15.557059, 19.513794, 11.157453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.326802, 19.496868, 11.091914>,  <14.943041, 19.468658, 10.982684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.326802, 19.496868, 11.091914> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271320, -0.033565, 0.961904,
		0.077004, -0.996945, -0.013068,
		0.959404, 0.070525, 0.273076,
		15.614623, 19.518026, 11.173837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.935249, 19.097414, 11.520807>,  <14.943041, 19.468658, 10.982684>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.935249, 19.097414, 11.520807> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.295884, 19.262028, 11.574147>,  <15.512265, 19.360796, 11.606152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.295884, 19.262028, 11.574147>,  <14.935249, 19.097414, 11.520807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.295884, 19.262028, 11.574147> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052491, -0.201906, 0.977997,
		0.429402, -0.888749, -0.160434,
		0.901587, 0.411533, 0.133350,
		15.566360, 19.385489, 11.614152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.415174, 18.550314, 11.832808>,  <14.935249, 19.097414, 11.520807>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.415174, 18.550314, 11.832808> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.524817, 18.925495, 11.917762>,  <15.590604, 19.150604, 11.968734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.524817, 18.925495, 11.917762>,  <15.415174, 18.550314, 11.832808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.524817, 18.925495, 11.917762> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121170, -0.185399, 0.975164,
		0.954034, -0.293036, 0.062832,
		0.274110, 0.937953, 0.212384,
		15.607050, 19.206881, 11.981477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.516332, 18.455303, 12.448951>,  <15.415174, 18.550314, 11.832808>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.516332, 18.455303, 12.448951> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.520919, 18.854603, 12.425755>,  <15.523671, 19.094183, 12.411837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.520919, 18.854603, 12.425755>,  <15.516332, 18.455303, 12.448951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.520919, 18.854603, 12.425755> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115078, 0.058927, 0.991607,
		0.993290, -0.004699, 0.115553,
		0.011468, 0.998251, -0.057991,
		15.524360, 19.154078, 12.408357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.013777, 18.585836, 12.881005>,  <15.516332, 18.455303, 12.448951>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.013777, 18.585836, 12.881005> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.825816, 18.937042, 12.844593>,  <15.713040, 19.147766, 12.822745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.825816, 18.937042, 12.844593>,  <16.013777, 18.585836, 12.881005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.825816, 18.937042, 12.844593> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186949, 0.001797, 0.982368,
		0.862695, 0.478634, 0.163299,
		-0.469901, 0.878013, -0.091030,
		15.684846, 19.200447, 12.817284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.398861, 18.984365, 13.422976>,  <16.013777, 18.585836, 12.881005>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.398861, 18.984365, 13.422976> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.051697, 19.166058, 13.342567>,  <15.843398, 19.275072, 13.294323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.051697, 19.166058, 13.342567>,  <16.398861, 18.984365, 13.422976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.051697, 19.166058, 13.342567> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190251, 0.069848, 0.979248,
		0.458843, 0.888143, 0.025796,
		-0.867910, 0.454228, -0.201020,
		15.791324, 19.302326, 13.282262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.415154, 19.666798, 13.806129>,  <16.398861, 18.984365, 13.422976>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.415154, 19.666798, 13.806129> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.036980, 19.575367, 13.713255>,  <15.810076, 19.520510, 13.657531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.036980, 19.575367, 13.713255>,  <16.415154, 19.666798, 13.806129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.036980, 19.575367, 13.713255> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204679, -0.137790, 0.969082,
		-0.253500, 0.963726, 0.083487,
		-0.945433, -0.228574, -0.232185,
		15.753349, 19.506794, 13.643600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.963842, 20.072405, 14.266580>,  <16.415154, 19.666798, 13.806129>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.963842, 20.072405, 14.266580> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.731687, 19.764469, 14.160376>,  <15.592393, 19.579708, 14.096653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.731687, 19.764469, 14.160376>,  <15.963842, 20.072405, 14.266580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.731687, 19.764469, 14.160376> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416512, 0.000463, 0.909130,
		-0.699762, 0.638237, -0.320917,
		-0.580389, -0.769840, -0.265509,
		15.557570, 19.533518, 14.080723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.271009, 20.210733, 14.492996>,  <15.963842, 20.072405, 14.266580>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.271009, 20.210733, 14.492996> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.273913, 19.817497, 14.419807>,  <15.275656, 19.581554, 14.375895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.273913, 19.817497, 14.419807>,  <15.271009, 20.210733, 14.492996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.273913, 19.817497, 14.419807> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608407, -0.149554, 0.779406,
		-0.793592, 0.105662, -0.599206,
		0.007260, -0.983092, -0.182971,
		15.276092, 19.522570, 14.364916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.662341, 19.982944, 14.644683>,  <15.271009, 20.210733, 14.492996>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.662341, 19.982944, 14.644683> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.912942, 19.677937, 14.709255>,  <15.063303, 19.494932, 14.747998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.912942, 19.677937, 14.709255>,  <14.662341, 19.982944, 14.644683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.912942, 19.677937, 14.709255> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530431, -0.265364, 0.805124,
		-0.571085, -0.590039, -0.570715,
		0.626502, -0.762519, 0.161429,
		15.100893, 19.449181, 14.757684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.220021, 19.546848, 15.068435>,  <14.662341, 19.982944, 14.644683>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.220021, 19.546848, 15.068435> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.572782, 19.367374, 15.126307>,  <14.784438, 19.259689, 15.161030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.572782, 19.367374, 15.126307>,  <14.220021, 19.546848, 15.068435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.572782, 19.367374, 15.126307> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352258, -0.423207, 0.834751,
		-0.313311, -0.787133, -0.531280,
		0.881902, -0.448685, 0.144678,
		14.837352, 19.232769, 15.169710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.056920, 18.850708, 15.183092>,  <14.220021, 19.546848, 15.068435>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.056920, 18.850708, 15.183092> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.415269, 18.917164, 15.347925>,  <14.630278, 18.957037, 15.446825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.415269, 18.917164, 15.347925>,  <14.056920, 18.850708, 15.183092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.415269, 18.917164, 15.347925> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271998, -0.528288, 0.804319,
		0.351329, -0.832651, -0.428088,
		0.895871, 0.166141, 0.412082,
		14.684031, 18.967007, 15.471550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<18.653946, 21.177078, 16.288509> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.258137, 21.126328, 16.316071>,  <18.020651, 21.095877, 16.332607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.258137, 21.126328, 16.316071>,  <18.653946, 21.177078, 16.288509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.258137, 21.126328, 16.316071> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016202, -0.376645, -0.926216,
		0.143467, -0.917628, 0.370643,
		-0.989522, -0.126876, 0.068903,
		17.961281, 21.088264, 16.336742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.587374, 20.502150, 16.136478>,  <18.653946, 21.177078, 16.288509>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.587374, 20.502150, 16.136478> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.216225, 20.638096, 16.075100>,  <17.993536, 20.719664, 16.038273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.216225, 20.638096, 16.075100>,  <18.587374, 20.502150, 16.136478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.216225, 20.638096, 16.075100> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019709, -0.366219, -0.930320,
		-0.372417, -0.866228, 0.333099,
		-0.927856, 0.339902, -0.153459,
		17.937862, 20.740055, 16.029066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.386219, 20.043215, 15.648172>,  <18.587374, 20.502150, 16.136478>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.386219, 20.043215, 15.648172> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.115227, 20.337036, 15.632921>,  <17.952631, 20.513329, 15.623771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.115227, 20.337036, 15.632921>,  <18.386219, 20.043215, 15.648172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.115227, 20.337036, 15.632921> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090338, -0.134538, -0.986782,
		-0.729973, -0.665080, 0.157505,
		-0.677480, 0.734553, -0.038127,
		17.911983, 20.557402, 15.621483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.767271, 19.778393, 15.208412>,  <18.386219, 20.043215, 15.648172>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.767271, 19.778393, 15.208412> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.773533, 20.178123, 15.221678>,  <17.777290, 20.417961, 15.229637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.773533, 20.178123, 15.221678>,  <17.767271, 19.778393, 15.208412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.773533, 20.178123, 15.221678> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117547, 0.034777, -0.992458,
		-0.992944, 0.011637, 0.118013,
		0.015654, 0.999327, 0.033163,
		17.778229, 20.477922, 15.231627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.200087, 19.973328, 14.762571>,  <17.767271, 19.778393, 15.208412>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.200087, 19.973328, 14.762571> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.451309, 20.283562, 14.787928>,  <17.602043, 20.469702, 14.803142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.451309, 20.283562, 14.787928>,  <17.200087, 19.973328, 14.762571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.451309, 20.283562, 14.787928> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015552, 0.068936, -0.997500,
		-0.778014, 0.627470, 0.031233,
		0.628055, 0.775583, 0.063391,
		17.639725, 20.516237, 14.806945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.022995, 20.430174, 14.260741>,  <17.200087, 19.973328, 14.762571>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.022995, 20.430174, 14.260741> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.408543, 20.517563, 14.321707>,  <17.639872, 20.569996, 14.358286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.408543, 20.517563, 14.321707>,  <17.022995, 20.430174, 14.260741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.408543, 20.517563, 14.321707> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113064, 0.182546, -0.976675,
		-0.241198, 0.958617, 0.151249,
		0.963867, 0.218471, 0.152415,
		17.697702, 20.583105, 14.367432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.170666, 20.937727, 13.771171>,  <17.022995, 20.430174, 14.260741>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.170666, 20.937727, 13.771171> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.530132, 20.805473, 13.886467>,  <17.745811, 20.726122, 13.955645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.530132, 20.805473, 13.886467>,  <17.170666, 20.937727, 13.771171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.530132, 20.805473, 13.886467> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284132, -0.061838, -0.956789,
		0.334172, 0.941731, 0.038372,
		0.898665, -0.330634, 0.288240,
		17.799732, 20.706284, 13.972939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.710180, 21.342632, 13.376032>,  <17.170666, 20.937727, 13.771171>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.710180, 21.342632, 13.376032> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.873508, 20.995022, 13.487795>,  <17.971506, 20.786455, 13.554852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.873508, 20.995022, 13.487795>,  <17.710180, 21.342632, 13.376032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.873508, 20.995022, 13.487795> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473338, -0.060154, -0.878825,
		0.780528, 0.491098, 0.386781,
		0.408323, -0.869025, 0.279407,
		17.996006, 20.734314, 13.571617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.200613, 21.294479, 12.840178>,  <17.710180, 21.342632, 13.376032>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.200613, 21.294479, 12.840178> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.200020, 20.935802, 13.017239>,  <18.199665, 20.720596, 13.123475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.200020, 20.935802, 13.017239>,  <18.200613, 21.294479, 12.840178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.200020, 20.935802, 13.017239> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396353, -0.406925, -0.822992,
		0.918097, 0.174228, 0.356009,
		-0.001481, -0.896692, 0.442653,
		18.199575, 20.666796, 13.150035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.778442, 20.953295, 12.768538>,  <18.200613, 21.294479, 12.840178>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.778442, 20.953295, 12.768538> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.517200, 20.652760, 12.806371>,  <18.360456, 20.472439, 12.829070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.517200, 20.652760, 12.806371>,  <18.778442, 20.953295, 12.768538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.517200, 20.652760, 12.806371> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360187, -0.418075, -0.833954,
		0.666124, -0.510591, 0.543669,
		-0.653103, -0.751339, 0.094581,
		18.321270, 20.427359, 12.834745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.219116, 20.355152, 12.846271>,  <18.778442, 20.953295, 12.768538>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.219116, 20.355152, 12.846271> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.850761, 20.257366, 12.724811>,  <18.629749, 20.198694, 12.651935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.850761, 20.257366, 12.724811>,  <19.219116, 20.355152, 12.846271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.850761, 20.257366, 12.724811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382781, -0.419614, -0.823045,
		0.073793, -0.874162, 0.479995,
		-0.920887, -0.244468, -0.303649,
		18.574495, 20.184027, 12.633716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.362888, 19.827106, 12.442558>,  <19.219116, 20.355152, 12.846271>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.362888, 19.827106, 12.442558> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.976341, 19.857750, 12.344363>,  <18.744413, 19.876135, 12.285446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.976341, 19.857750, 12.344363>,  <19.362888, 19.827106, 12.442558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.976341, 19.857750, 12.344363> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189825, -0.431515, -0.881907,
		-0.173492, -0.898847, 0.402461,
		-0.966368, 0.076606, -0.245488,
		18.686430, 19.880732, 12.270717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.291122, 19.261168, 12.006135>,  <19.362888, 19.827106, 12.442558>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.291122, 19.261168, 12.006135> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.986328, 19.505157, 11.919133>,  <18.803452, 19.651552, 11.866932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.986328, 19.505157, 11.919133>,  <19.291122, 19.261168, 12.006135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.986328, 19.505157, 11.919133> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165491, -0.141302, -0.976036,
		-0.626093, -0.779719, 0.006724,
		-0.761984, 0.609977, -0.217505,
		18.757732, 19.688150, 11.853882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.828428, 18.902836, 11.543613>,  <19.291122, 19.261168, 12.006135>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.828428, 18.902836, 11.543613> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.768288, 19.294914, 11.492056>,  <18.732204, 19.530161, 11.461122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.768288, 19.294914, 11.492056>,  <18.828428, 18.902836, 11.543613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.768288, 19.294914, 11.492056> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053764, -0.122075, -0.991064,
		-0.987170, -0.155935, -0.034345,
		-0.150349, 0.980195, -0.128893,
		18.723183, 19.588972, 11.453388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.186085, 18.598915, 11.186706>,  <18.828428, 18.902836, 11.543613>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.186085, 18.598915, 11.186706> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.443317, 18.308735, 11.284821>,  <18.597656, 18.134626, 11.343690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.443317, 18.308735, 11.284821>,  <18.186085, 18.598915, 11.186706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.443317, 18.308735, 11.284821> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193418, 0.156054, 0.968626,
		-0.740970, -0.670348, -0.039960,
		0.643081, -0.725452, 0.245289,
		18.636242, 18.091099, 11.358407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.864021, 18.387197, 11.708115>,  <18.186085, 18.598915, 11.186706>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.864021, 18.387197, 11.708115> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.219887, 18.208443, 11.745610>,  <18.433407, 18.101189, 11.768107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.219887, 18.208443, 11.745610>,  <17.864021, 18.387197, 11.708115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.219887, 18.208443, 11.745610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173645, -0.141258, 0.974625,
		-0.422308, -0.883366, -0.203273,
		0.889665, -0.446890, 0.093738,
		18.486786, 18.074377, 11.773732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.817417, 17.709435, 12.029801>,  <17.864021, 18.387197, 11.708115>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.817417, 17.709435, 12.029801> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.201321, 17.808578, 12.082616>,  <18.431662, 17.868065, 12.114305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.201321, 17.808578, 12.082616>,  <17.817417, 17.709435, 12.029801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.201321, 17.808578, 12.082616> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097206, -0.147898, 0.984214,
		0.263475, -0.957440, -0.117852,
		0.959756, 0.247860, 0.132036,
		18.489248, 17.882936, 12.122227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.058846, 17.241444, 12.374197>,  <17.817417, 17.709435, 12.029801>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.058846, 17.241444, 12.374197> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.323715, 17.528625, 12.460045>,  <18.482637, 17.700935, 12.511554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.323715, 17.528625, 12.460045>,  <18.058846, 17.241444, 12.374197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.323715, 17.528625, 12.460045> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102317, -0.197098, 0.975030,
		0.742330, -0.667601, -0.057054,
		0.662176, 0.717957, 0.214619,
		18.522367, 17.744013, 12.524430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.525572, 16.931732, 12.830170>,  <18.058846, 17.241444, 12.374197>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.525572, 16.931732, 12.830170> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.570469, 17.324093, 12.893713>,  <18.597408, 17.559509, 12.931839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.570469, 17.324093, 12.893713>,  <18.525572, 16.931732, 12.830170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.570469, 17.324093, 12.893713> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024641, -0.157072, 0.987280,
		0.993375, -0.114730, 0.006540,
		0.112244, 0.980900, 0.158859,
		18.604141, 17.618362, 12.941371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.021671, 17.009901, 13.437327>,  <18.525572, 16.931732, 12.830170>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.021671, 17.009901, 13.437327> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.838787, 17.364967, 13.415377>,  <18.729057, 17.578007, 13.402206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.838787, 17.364967, 13.415377>,  <19.021671, 17.009901, 13.437327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.838787, 17.364967, 13.415377> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022666, 0.050053, 0.998489,
		0.889070, 0.457762, -0.002765,
		-0.457209, 0.887665, -0.054876,
		18.701624, 17.631268, 13.398913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.461363, 17.509247, 13.821871>,  <19.021671, 17.009901, 13.437327>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.461363, 17.509247, 13.821871> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.094376, 17.668312, 13.817621>,  <18.874184, 17.763752, 13.815071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.094376, 17.668312, 13.817621>,  <19.461363, 17.509247, 13.821871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.094376, 17.668312, 13.817621> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071930, 0.192102, 0.978735,
		0.391249, 0.897196, -0.204852,
		-0.917470, 0.397664, -0.010624,
		18.819134, 17.787611, 13.814434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.421764, 17.911079, 14.386293>,  <19.461363, 17.509247, 13.821871>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.421764, 17.911079, 14.386293> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.027596, 17.915970, 14.318417>,  <18.791094, 17.918903, 14.277690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.027596, 17.915970, 14.318417>,  <19.421764, 17.911079, 14.386293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.027596, 17.915970, 14.318417> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162509, 0.227595, 0.960100,
		0.050359, 0.973679, -0.222290,
		-0.985421, 0.012225, -0.169693,
		18.731970, 17.919638, 14.267509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.189102, 18.469885, 14.764782>,  <19.421764, 17.911079, 14.386293>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.189102, 18.469885, 14.764782> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.867352, 18.238079, 14.712412>,  <18.674301, 18.098995, 14.680990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.867352, 18.238079, 14.712412>,  <19.189102, 18.469885, 14.764782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.867352, 18.238079, 14.712412> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215787, 0.079651, 0.973186,
		-0.553549, 0.811059, -0.189121,
		-0.804375, -0.579516, -0.130925,
		18.626040, 18.064224, 14.673134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.508698, 18.807199, 15.001419>,  <19.189102, 18.469885, 14.764782>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.508698, 18.807199, 15.001419> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.449833, 18.411556, 15.000542>,  <18.414515, 18.174170, 15.000015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.449833, 18.411556, 15.000542>,  <18.508698, 18.807199, 15.001419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.449833, 18.411556, 15.000542> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119460, 0.015573, 0.992717,
		-0.981872, 0.146352, -0.120450,
		-0.147162, -0.989110, -0.002193,
		18.405684, 18.114822, 14.999884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.898266, 18.778488, 15.338797>,  <18.508698, 18.807199, 15.001419>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.898266, 18.778488, 15.338797> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.084442, 18.424751, 15.353231>,  <18.196148, 18.212509, 15.361892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.084442, 18.424751, 15.353231>,  <17.898266, 18.778488, 15.338797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.084442, 18.424751, 15.353231> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117023, -0.021075, 0.992906,
		-0.877308, -0.466364, -0.113298,
		0.465443, -0.884342, 0.036087,
		18.224075, 18.159449, 15.364058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.424976, 18.382109, 15.781905>,  <17.898266, 18.778488, 15.338797>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.424976, 18.382109, 15.781905> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.776306, 18.190899, 15.784557>,  <17.987104, 18.076174, 15.786149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.776306, 18.190899, 15.784557>,  <17.424976, 18.382109, 15.781905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.776306, 18.190899, 15.784557> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128275, -0.222287, 0.966506,
		-0.460539, -0.849754, -0.256558,
		0.878322, -0.478024, 0.006631,
		18.039803, 18.047491, 15.786547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.349579, 17.950031, 16.354322>,  <17.424976, 18.382109, 15.781905>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.349579, 17.950031, 16.354322> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.744205, 17.924152, 16.294317>,  <17.980982, 17.908625, 16.258314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.744205, 17.924152, 16.294317>,  <17.349579, 17.950031, 16.354322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.744205, 17.924152, 16.294317> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146818, -0.051597, 0.987817,
		-0.071657, -0.996570, -0.041404,
		0.986565, -0.064705, -0.150011,
		18.040174, 17.904743, 16.249313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.509975, 17.302557, 16.743177>,  <17.349579, 17.950031, 16.354322>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.509975, 17.302557, 16.743177> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.800587, 17.574490, 16.703205>,  <17.974953, 17.737650, 16.679222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.800587, 17.574490, 16.703205>,  <17.509975, 17.302557, 16.743177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.800587, 17.574490, 16.703205> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072583, 0.220546, 0.972672,
		0.683293, -0.699420, 0.209577,
		0.726528, 0.679833, -0.099931,
		18.018545, 17.778439, 16.673225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.245058, 16.711885, 17.073345>,  <17.509975, 17.302557, 16.743177>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.245058, 16.711885, 17.073345> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.877781, 16.579990, 17.161160>,  <16.657415, 16.500854, 17.213848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.877781, 16.579990, 17.161160>,  <17.245058, 16.711885, 17.073345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.877781, 16.579990, 17.161160> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062936, -0.425730, -0.902659,
		0.391103, -0.842632, 0.370150,
		-0.918193, -0.329737, 0.219535,
		16.602324, 16.481070, 17.227020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.268364, 15.900651, 17.032896>,  <17.245058, 16.711885, 17.073345>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.268364, 15.900651, 17.032896> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.895023, 16.023415, 16.958427>,  <16.671019, 16.097073, 16.913746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.895023, 16.023415, 16.958427>,  <17.268364, 15.900651, 17.032896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.895023, 16.023415, 16.958427> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000092, -0.518842, -0.854870,
		-0.358960, -0.797878, 0.484291,
		-0.933353, 0.306909, -0.186170,
		16.615017, 16.115488, 16.902576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.092064, 15.473176, 16.511202>,  <17.268364, 15.900651, 17.032896>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.092064, 15.473176, 16.511202> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.772423, 15.713543, 16.503874>,  <16.580639, 15.857763, 16.499477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.772423, 15.713543, 16.503874>,  <17.092064, 15.473176, 16.511202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.772423, 15.713543, 16.503874> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174911, -0.261536, -0.949213,
		-0.575189, -0.755314, 0.314101,
		-0.799102, 0.600917, -0.018320,
		16.532692, 15.893818, 16.498379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.491850, 15.028384, 16.433317>,  <17.092064, 15.473176, 16.511202>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.491850, 15.028384, 16.433317> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.413864, 15.399540, 16.306189>,  <16.367073, 15.622233, 16.229912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.413864, 15.399540, 16.306189>,  <16.491850, 15.028384, 16.433317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.413864, 15.399540, 16.306189> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185481, -0.353072, -0.917026,
		-0.963113, -0.119837, 0.240942,
		-0.194963, 0.927890, -0.317821,
		16.355375, 15.677907, 16.210842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.878777, 14.957479, 16.004967>,  <16.491850, 15.028384, 16.433317>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.878777, 14.957479, 16.004967> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.017178, 15.315388, 15.892063>,  <16.100218, 15.530132, 15.824322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.017178, 15.315388, 15.892063>,  <15.878777, 14.957479, 16.004967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.017178, 15.315388, 15.892063> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329385, -0.165847, -0.929516,
		-0.878515, 0.414586, 0.237340,
		0.346002, 0.894770, -0.282257,
		16.120977, 15.583818, 15.807386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.414513, 15.278802, 15.458881>,  <15.878777, 14.957479, 16.004967>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.414513, 15.278802, 15.458881> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.762198, 15.469746, 15.407351>,  <15.970810, 15.584311, 15.376432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.762198, 15.469746, 15.407351>,  <15.414513, 15.278802, 15.458881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.762198, 15.469746, 15.407351> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092707, -0.098582, -0.990801,
		-0.485668, 0.873161, -0.041434,
		0.869213, 0.477359, -0.128827,
		16.022963, 15.612953, 15.368703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.340130, 15.663288, 14.961591>,  <15.414513, 15.278802, 15.458881>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.340130, 15.663288, 14.961591> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.739068, 15.639515, 14.944757>,  <15.978431, 15.625251, 14.934657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.739068, 15.639515, 14.944757>,  <15.340130, 15.663288, 14.961591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.739068, 15.639515, 14.944757> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047554, -0.093849, -0.994450,
		0.055154, 0.993811, -0.096426,
		0.997345, -0.059433, -0.042083,
		16.038271, 15.621685, 14.932133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.469394, 16.169188, 14.501533>,  <15.340130, 15.663288, 14.961591>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.469394, 16.169188, 14.501533> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.766097, 15.901237, 14.514593>,  <15.944118, 15.740468, 14.522429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.766097, 15.901237, 14.514593>,  <15.469394, 16.169188, 14.501533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.766097, 15.901237, 14.514593> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018110, -0.028660, -0.999425,
		0.670424, 0.741922, -0.009127,
		0.741757, -0.669873, 0.032651,
		15.988625, 15.700275, 14.524388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.993649, 16.450182, 14.029121>,  <15.469394, 16.169188, 14.501533>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.993649, 16.450182, 14.029121> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.030754, 16.053059, 14.059389>,  <16.053017, 15.814785, 14.077550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.030754, 16.053059, 14.059389>,  <15.993649, 16.450182, 14.029121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.030754, 16.053059, 14.059389> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110651, -0.065246, -0.991715,
		0.989521, 0.100368, 0.103802,
		0.092764, -0.992809, 0.075668,
		16.058584, 15.755216, 14.082089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.305157, 16.257841, 13.352193>,  <15.993649, 16.450182, 14.029121>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.305157, 16.257841, 13.352193> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.205734, 15.901016, 13.503160>,  <16.146080, 15.686921, 13.593741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.205734, 15.901016, 13.503160>,  <16.305157, 16.257841, 13.352193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.205734, 15.901016, 13.503160> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000922, -0.389430, -0.921056,
		0.968617, -0.229284, 0.095974,
		-0.248558, -0.892061, 0.377420,
		16.131166, 15.633398, 13.616386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.849016, 15.775806, 13.210855>,  <16.305157, 16.257841, 13.352193>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.849016, 15.775806, 13.210855> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.500710, 15.581676, 13.242413>,  <16.291725, 15.465199, 13.261347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.500710, 15.581676, 13.242413>,  <16.849016, 15.775806, 13.210855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.500710, 15.581676, 13.242413> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079485, -0.297278, -0.951477,
		0.485228, -0.822244, 0.297436,
		-0.870767, -0.485325, 0.078892,
		16.239479, 15.436079, 13.266080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.985123, 15.178452, 12.841584>,  <16.849016, 15.775806, 13.210855>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.985123, 15.178452, 12.841584> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.586227, 15.195175, 12.866124>,  <16.346889, 15.205209, 12.880848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.586227, 15.195175, 12.866124>,  <16.985123, 15.178452, 12.841584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.586227, 15.195175, 12.866124> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072711, -0.383159, -0.920816,
		-0.014990, -0.922736, 0.385141,
		-0.997240, 0.041807, 0.061349,
		16.287056, 15.207717, 12.884529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.734823, 14.591890, 12.429758>,  <16.985123, 15.178452, 12.841584>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.734823, 14.591890, 12.429758> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.396702, 14.798424, 12.484695>,  <16.193829, 14.922344, 12.517657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.396702, 14.798424, 12.484695>,  <16.734823, 14.591890, 12.429758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.396702, 14.798424, 12.484695> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132934, 0.045724, -0.990070,
		-0.517486, -0.855166, 0.029988,
		-0.845302, 0.516334, 0.137343,
		16.143110, 14.953324, 12.525898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.223417, 14.143479, 12.269960>,  <16.734823, 14.591890, 12.429758>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.223417, 14.143479, 12.269960> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.167118, 14.538204, 12.237985>,  <16.133339, 14.775040, 12.218800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.167118, 14.538204, 12.237985>,  <16.223417, 14.143479, 12.269960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.167118, 14.538204, 12.237985> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125573, -0.097884, -0.987244,
		-0.982050, -0.128914, 0.137694,
		-0.140747, 0.986813, -0.079939,
		16.124893, 14.834249, 12.214003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<14.841838, 17.970976, 15.993135> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.940532, 18.357666, 16.020155>,  <14.999748, 18.589680, 16.036367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.940532, 18.357666, 16.020155>,  <14.841838, 17.970976, 15.993135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.940532, 18.357666, 16.020155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210061, -0.121400, 0.970122,
		0.946043, -0.225174, -0.233025,
		0.246735, 0.966726, 0.067549,
		15.014552, 18.647684, 16.040421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.439335, 17.915916, 16.457832>,  <14.841838, 17.970976, 15.993135>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.439335, 17.915916, 16.457832> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.312915, 18.295284, 16.447954>,  <15.237062, 18.522905, 16.442028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.312915, 18.295284, 16.447954>,  <15.439335, 17.915916, 16.457832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.312915, 18.295284, 16.447954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182162, 0.086206, 0.979482,
		0.931090, 0.305068, -0.200012,
		-0.316051, 0.948421, -0.024694,
		15.218100, 18.579811, 16.440546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.005013, 18.313553, 16.884096>,  <15.439335, 17.915916, 16.457832>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.005013, 18.313553, 16.884096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.656320, 18.509232, 16.872972>,  <15.447104, 18.626638, 16.866299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.656320, 18.509232, 16.872972>,  <16.005013, 18.313553, 16.884096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.656320, 18.509232, 16.872972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029474, 0.109005, 0.993604,
		0.489099, 0.865335, -0.109442,
		-0.871730, 0.489197, -0.027809,
		15.394800, 18.655991, 16.864630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.026731, 18.717743, 17.492697>,  <16.005013, 18.313553, 16.884096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.026731, 18.717743, 17.492697> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.648763, 18.806824, 17.396759>,  <15.421982, 18.860271, 17.339197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.648763, 18.806824, 17.396759>,  <16.026731, 18.717743, 17.492697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.648763, 18.806824, 17.396759> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169561, 0.293706, 0.940737,
		0.279948, 0.929591, -0.239768,
		-0.944922, 0.222703, -0.239845,
		15.365286, 18.873634, 17.324806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.805846, 19.354361, 17.798868>,  <16.026731, 18.717743, 17.492697>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.805846, 19.354361, 17.798868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.473468, 19.145016, 17.723372>,  <15.274041, 19.019409, 17.678074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.473468, 19.145016, 17.723372>,  <15.805846, 19.354361, 17.798868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.473468, 19.145016, 17.723372> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314803, 0.162574, 0.935130,
		-0.458726, 0.836459, -0.299846,
		-0.830945, -0.523361, -0.188742,
		15.224184, 18.988007, 17.666748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.302461, 19.773100, 18.088575>,  <15.805846, 19.354361, 17.798868>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.302461, 19.773100, 18.088575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.107514, 19.424969, 18.060274>,  <14.990546, 19.216091, 18.043293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.107514, 19.424969, 18.060274>,  <15.302461, 19.773100, 18.088575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.107514, 19.424969, 18.060274> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381819, 0.139539, 0.913643,
		-0.785295, 0.472293, -0.400314,
		-0.487367, -0.870326, -0.070752,
		14.961305, 19.163870, 18.039049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.590194, 19.933083, 18.318117>,  <15.302461, 19.773100, 18.088575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.590194, 19.933083, 18.318117> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.656157, 19.539791, 18.349262>,  <14.695736, 19.303816, 18.367950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.656157, 19.539791, 18.349262>,  <14.590194, 19.933083, 18.318117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.656157, 19.539791, 18.349262> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218779, 0.040513, 0.974933,
		-0.961738, -0.177811, -0.208429,
		0.164910, -0.983231, 0.077864,
		14.705630, 19.244822, 18.372622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.020281, 19.586329, 18.775747>,  <14.590194, 19.933083, 18.318117>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.020281, 19.586329, 18.775747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.322719, 19.324917, 18.789730>,  <14.504181, 19.168070, 18.798119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.322719, 19.324917, 18.789730>,  <14.020281, 19.586329, 18.775747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.322719, 19.324917, 18.789730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182962, -0.159792, 0.970047,
		-0.628368, -0.739843, -0.240389,
		0.756095, -0.653529, 0.034955,
		14.549547, 19.128859, 18.800217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.727930, 18.973959, 19.167036>,  <14.020281, 19.586329, 18.775747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.727930, 18.973959, 19.167036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.126801, 18.952106, 19.187639>,  <14.366124, 18.938995, 19.200001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.126801, 18.952106, 19.187639>,  <13.727930, 18.973959, 19.167036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.126801, 18.952106, 19.187639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047452, 0.073110, 0.996194,
		-0.058188, -0.995826, 0.070311,
		0.997177, -0.054630, 0.051508,
		14.425955, 18.935719, 19.203091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.806036, 18.898537, 19.871668>,  <13.727930, 18.973959, 19.167036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.806036, 18.898537, 19.871668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.194066, 18.931854, 19.780437>,  <14.426884, 18.951845, 19.725700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.194066, 18.931854, 19.780437>,  <13.806036, 18.898537, 19.871668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.194066, 18.931854, 19.780437> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222226, 0.073906, 0.972190,
		0.097843, -0.993780, 0.053183,
		0.970074, 0.083303, -0.228075,
		14.485088, 18.956842, 19.712015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.350567, 18.337103, 20.198635>,  <13.806036, 18.898537, 19.871668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.350567, 18.337103, 20.198635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.485267, 18.702782, 20.108440>,  <14.566087, 18.922190, 20.054323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.485267, 18.702782, 20.108440>,  <14.350567, 18.337103, 20.198635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.485267, 18.702782, 20.108440> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252078, 0.143202, 0.957053,
		0.907225, -0.379127, -0.182226,
		0.336749, 0.914197, -0.225486,
		14.586291, 18.977041, 20.040794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.911076, 18.429251, 20.601633>,  <14.350567, 18.337103, 20.198635>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.911076, 18.429251, 20.601633> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.801389, 18.805126, 20.519865>,  <14.735577, 19.030651, 20.470804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.801389, 18.805126, 20.519865>,  <14.911076, 18.429251, 20.601633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.801389, 18.805126, 20.519865> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168939, 0.256333, 0.951710,
		0.946712, 0.226442, -0.229041,
		-0.274218, 0.939690, -0.204419,
		14.719124, 19.087032, 20.458540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.371960, 18.941877, 20.900085>,  <14.911076, 18.429251, 20.601633>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.371960, 18.941877, 20.900085> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.016883, 19.124287, 20.874638>,  <14.803837, 19.233732, 20.859369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.016883, 19.124287, 20.874638>,  <15.371960, 18.941877, 20.900085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.016883, 19.124287, 20.874638> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122833, 0.367707, 0.921794,
		0.443753, 0.810453, -0.382425,
		-0.887691, 0.456023, -0.063621,
		14.750576, 19.261093, 20.855551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.330235, 19.246929, 21.621080>,  <15.371960, 18.941877, 20.900085>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.330235, 19.246929, 21.621080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.008613, 19.030212, 21.719028>,  <14.815639, 18.900183, 21.777798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.008613, 19.030212, 21.719028>,  <15.330235, 19.246929, 21.621080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.008613, 19.030212, 21.719028> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262919, 0.045389, 0.963750,
		-0.533265, 0.839287, 0.105952,
		-0.804054, -0.541790, 0.244869,
		14.767397, 18.867676, 21.792490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.583099, 18.686205, 21.840746>,  <15.330235, 19.246929, 21.621080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.583099, 18.686205, 21.840746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.959460, 18.633461, 21.965528>,  <16.185276, 18.601814, 22.040398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.959460, 18.633461, 21.965528>,  <15.583099, 18.686205, 21.840746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.959460, 18.633461, 21.965528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218623, -0.467021, -0.856794,
		0.258666, 0.874360, -0.410593,
		0.940902, -0.131858, 0.311958,
		16.241732, 18.593903, 22.059116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.016068, 19.086231, 21.406576>,  <15.583099, 18.686205, 21.840746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.016068, 19.086231, 21.406576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.212048, 18.775505, 21.564821>,  <16.329636, 18.589069, 21.659769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.212048, 18.775505, 21.564821>,  <16.016068, 19.086231, 21.406576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.212048, 18.775505, 21.564821> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017062, -0.445183, -0.895277,
		0.871583, 0.445392, -0.204864,
		0.489951, -0.776813, 0.395613,
		16.359034, 18.542461, 21.683506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.582861, 18.934162, 20.960142>,  <16.016068, 19.086231, 21.406576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.582861, 18.934162, 20.960142> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.510006, 18.592270, 21.154570>,  <16.466293, 18.387135, 21.271227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.510006, 18.592270, 21.154570>,  <16.582861, 18.934162, 20.960142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.510006, 18.592270, 21.154570> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143545, -0.512157, -0.846812,
		0.972739, -0.084464, 0.215976,
		-0.182139, -0.854729, 0.486070,
		16.455364, 18.335852, 21.300390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.241535, 18.451601, 20.852301>,  <16.582861, 18.934162, 20.960142>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.241535, 18.451601, 20.852301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.943691, 18.218731, 20.982916>,  <16.764984, 18.079010, 21.061285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.943691, 18.218731, 20.982916>,  <17.241535, 18.451601, 20.852301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.943691, 18.218731, 20.982916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158071, -0.629074, -0.761104,
		0.648512, -0.515111, 0.560441,
		-0.744612, -0.582174, 0.326538,
		16.720308, 18.044079, 21.080877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.461670, 17.727100, 20.714195>,  <17.241535, 18.451601, 20.852301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.461670, 17.727100, 20.714195> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.071098, 17.671654, 20.780373>,  <16.836756, 17.638386, 20.820078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.071098, 17.671654, 20.780373>,  <17.461670, 17.727100, 20.714195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.071098, 17.671654, 20.780373> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028221, -0.677939, -0.734576,
		0.213984, -0.721931, 0.658048,
		-0.976429, -0.138617, 0.165442,
		16.778170, 17.630068, 20.830006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.319300, 17.009428, 20.598200>,  <17.461670, 17.727100, 20.714195>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.319300, 17.009428, 20.598200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.967194, 17.198776, 20.585197>,  <16.755930, 17.312386, 20.577396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.967194, 17.198776, 20.585197>,  <17.319300, 17.009428, 20.598200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.967194, 17.198776, 20.585197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303703, -0.614736, -0.727917,
		-0.364556, -0.630888, 0.684894,
		-0.880263, 0.473371, -0.032503,
		16.703115, 17.340788, 20.575447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.006550, 16.475908, 20.495384>,  <17.319300, 17.009428, 20.598200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.006550, 16.475908, 20.495384> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.782082, 16.782505, 20.370438>,  <16.647400, 16.966463, 20.295469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.782082, 16.782505, 20.370438>,  <17.006550, 16.475908, 20.495384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.782082, 16.782505, 20.370438> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222587, -0.503243, -0.834986,
		-0.797208, -0.399042, 0.453018,
		-0.561172, 0.766493, -0.312368,
		16.613729, 17.012453, 20.276728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.394794, 16.265320, 20.296537>,  <17.006550, 16.475908, 20.495384>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.394794, 16.265320, 20.296537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.394848, 16.620239, 20.112059>,  <16.394880, 16.833191, 20.001371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.394848, 16.620239, 20.112059>,  <16.394794, 16.265320, 20.296537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.394848, 16.620239, 20.112059> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194131, -0.452398, -0.870430,
		-0.980976, 0.089648, 0.172192,
		0.000133, 0.887299, -0.461195,
		16.394888, 16.886429, 19.973700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.784546, 16.307314, 19.774208>,  <16.394794, 16.265320, 20.296537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.784546, 16.307314, 19.774208> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.047504, 16.593838, 19.680628>,  <16.205280, 16.765751, 19.624479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.047504, 16.593838, 19.680628>,  <15.784546, 16.307314, 19.774208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.047504, 16.593838, 19.680628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081602, -0.240967, -0.967097,
		-0.749113, 0.654858, -0.099959,
		0.657398, 0.716307, -0.233949,
		16.244724, 16.808729, 19.610443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.458084, 16.681219, 19.266567>,  <15.784546, 16.307314, 19.774208>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.458084, 16.681219, 19.266567> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.849551, 16.754578, 19.229527>,  <16.084431, 16.798594, 19.207302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.849551, 16.754578, 19.229527>,  <15.458084, 16.681219, 19.266567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.849551, 16.754578, 19.229527> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076949, -0.090703, -0.992901,
		-0.190495, 0.978845, -0.074656,
		0.978668, 0.183398, -0.092600,
		16.143152, 16.809597, 19.201746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.432109, 17.216675, 18.820330>,  <15.458084, 16.681219, 19.266567>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.432109, 17.216675, 18.820330> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.804423, 17.070549, 18.814949>,  <16.027813, 16.982874, 18.811722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.804423, 17.070549, 18.814949>,  <15.432109, 17.216675, 18.820330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.804423, 17.070549, 18.814949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047107, -0.083375, -0.995404,
		0.362514, 0.927143, -0.094814,
		0.930787, -0.365315, -0.013450,
		16.083660, 16.960955, 18.810913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.693649, 17.393135, 18.155140>,  <15.432109, 17.216675, 18.820330>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.693649, 17.393135, 18.155140> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.968305, 17.124401, 18.266254>,  <16.133099, 16.963160, 18.332922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.968305, 17.124401, 18.266254>,  <15.693649, 17.393135, 18.155140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.968305, 17.124401, 18.266254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126105, -0.266239, -0.955622,
		0.715979, 0.691197, -0.098088,
		0.686638, -0.671836, 0.277785,
		16.174295, 16.922850, 18.349590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.371191, 17.614550, 17.875944>,  <15.693649, 17.393135, 18.155140>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.371191, 17.614550, 17.875944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.389584, 17.220200, 17.940363>,  <16.400620, 16.983589, 17.979015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.389584, 17.220200, 17.940363>,  <16.371191, 17.614550, 17.875944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.389584, 17.220200, 17.940363> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200414, -0.148837, -0.968340,
		0.978632, 0.076804, 0.190739,
		0.045983, -0.985875, 0.161049,
		16.403379, 16.924437, 17.988678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.033943, 17.303341, 17.592623>,  <16.371191, 17.614550, 17.875944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.033943, 17.303341, 17.592623> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.768604, 17.004021, 17.594301>,  <16.609400, 16.824429, 17.595308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.768604, 17.004021, 17.594301>,  <17.033943, 17.303341, 17.592623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.768604, 17.004021, 17.594301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299212, -0.270374, -0.915080,
		0.685887, -0.605761, 0.403252,
		-0.663349, -0.748299, 0.004195,
		16.569599, 16.779531, 17.595560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.812189, 17.291948, 17.386332>,  <17.033943, 17.303341, 17.592623>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.812189, 17.291948, 17.386332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.983231, 17.626919, 17.250172>,  <18.085855, 17.827902, 17.168476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.983231, 17.626919, 17.250172>,  <17.812189, 17.291948, 17.386332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.983231, 17.626919, 17.250172> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115910, 0.322663, 0.939390,
		0.896504, -0.441142, 0.040906,
		0.427604, 0.837426, -0.340401,
		18.111511, 17.878147, 17.148050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.333179, 17.345938, 17.866142>,  <17.812189, 17.291948, 17.386332>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.333179, 17.345938, 17.866142> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.267338, 17.701672, 17.695503>,  <18.227833, 17.915112, 17.593119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.267338, 17.701672, 17.695503>,  <18.333179, 17.345938, 17.866142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.267338, 17.701672, 17.695503> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302744, 0.457175, 0.836263,
		0.938750, 0.008501, -0.344494,
		-0.164603, 0.889336, -0.426600,
		18.217957, 17.968472, 17.567524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.964909, 17.718971, 18.145742>,  <18.333179, 17.345938, 17.866142>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.964909, 17.718971, 18.145742> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.682381, 17.973091, 18.020840>,  <18.512863, 18.125563, 17.945898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.682381, 17.973091, 18.020840>,  <18.964909, 17.718971, 18.145742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.682381, 17.973091, 18.020840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059754, 0.493041, 0.867952,
		0.705365, 0.594394, -0.386207,
		-0.706321, 0.635300, -0.312256,
		18.470484, 18.163681, 17.927162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.119274, 18.504152, 18.397245>,  <18.964909, 17.718971, 18.145742>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.119274, 18.504152, 18.397245> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.728973, 18.510677, 18.309940>,  <18.494793, 18.514593, 18.257557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.728973, 18.510677, 18.309940>,  <19.119274, 18.504152, 18.397245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.728973, 18.510677, 18.309940> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180271, 0.505635, 0.843704,
		0.124125, 0.862593, -0.490434,
		-0.975754, 0.016313, -0.218263,
		18.436247, 18.515572, 18.244461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.975971, 19.173887, 18.372417>,  <19.119274, 18.504152, 18.397245>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.975971, 19.173887, 18.372417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.631420, 18.990055, 18.458967>,  <18.424690, 18.879755, 18.510897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.631420, 18.990055, 18.458967>,  <18.975971, 19.173887, 18.372417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.631420, 18.990055, 18.458967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144893, 0.630557, 0.762499,
		-0.486865, 0.625447, -0.609736,
		-0.861376, -0.459580, 0.216373,
		18.373007, 18.852180, 18.523880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.626331, 19.783524, 18.584532>,  <18.975971, 19.173887, 18.372417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.626331, 19.783524, 18.584532> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.434414, 19.461018, 18.722944>,  <18.319263, 19.267515, 18.805992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.434414, 19.461018, 18.722944>,  <18.626331, 19.783524, 18.584532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.434414, 19.461018, 18.722944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214925, 0.490381, 0.844591,
		-0.850650, 0.330858, -0.408567,
		-0.479793, -0.806263, 0.346033,
		18.290476, 19.219139, 18.826754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.977867, 20.028954, 18.978264>,  <18.626331, 19.783524, 18.584532>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.977867, 20.028954, 18.978264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.051498, 19.657967, 19.108442>,  <18.095678, 19.435373, 19.186550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.051498, 19.657967, 19.108442>,  <17.977867, 20.028954, 18.978264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.051498, 19.657967, 19.108442> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364738, 0.243009, 0.898840,
		-0.912732, -0.284162, -0.293550,
		0.184081, -0.927469, 0.325447,
		18.106722, 19.379726, 19.206076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.332024, 20.471090, 19.045181>,  <17.977867, 20.028954, 18.978264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.332024, 20.471090, 19.045181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.433903, 20.857838, 19.052027>,  <17.495029, 21.089886, 19.056133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.433903, 20.857838, 19.052027>,  <17.332024, 20.471090, 19.045181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.433903, 20.857838, 19.052027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146715, -0.021145, -0.988953,
		-0.955826, 0.254395, -0.147239,
		0.254698, 0.966869, 0.017113,
		17.510313, 21.147898, 19.057161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.986681, 20.758366, 18.529049>,  <17.332024, 20.471090, 19.045181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.986681, 20.758366, 18.529049> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.287899, 21.010269, 18.605286>,  <17.468630, 21.161411, 18.651028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.287899, 21.010269, 18.605286>,  <16.986681, 20.758366, 18.529049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.287899, 21.010269, 18.605286> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163715, 0.101221, -0.981301,
		-0.637276, 0.770167, -0.026877,
		0.753045, 0.629759, 0.190594,
		17.513813, 21.199198, 18.662464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.823795, 21.405933, 18.191704>,  <16.986681, 20.758366, 18.529049>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.823795, 21.405933, 18.191704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.221260, 21.413036, 18.236109>,  <17.459738, 21.417299, 18.262751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.221260, 21.413036, 18.236109>,  <16.823795, 21.405933, 18.191704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.221260, 21.413036, 18.236109> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103574, 0.239375, -0.965387,
		-0.043717, 0.970765, 0.236019,
		0.993661, 0.017759, 0.111011,
		17.519358, 21.418364, 18.269411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.076418, 22.039719, 17.798950>,  <16.823795, 21.405933, 18.191704>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.076418, 22.039719, 17.798950> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.385883, 21.792255, 17.853661>,  <17.571562, 21.643778, 17.886486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.385883, 21.792255, 17.853661>,  <17.076418, 22.039719, 17.798950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.385883, 21.792255, 17.853661> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162274, -0.015198, -0.986629,
		0.612464, 0.785514, 0.088634,
		0.773664, -0.618658, 0.136776,
		17.617983, 21.606659, 17.894693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.580671, 22.331158, 17.542168>,  <17.076418, 22.039719, 17.798950>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.580671, 22.331158, 17.542168> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.670521, 21.941380, 17.541367>,  <17.724430, 21.707514, 17.540886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.670521, 21.941380, 17.541367>,  <17.580671, 22.331158, 17.542168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.670521, 21.941380, 17.541367> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112593, 0.027995, -0.993247,
		0.967918, 0.222883, 0.116004,
		0.224625, -0.974443, -0.002002,
		17.737907, 21.649046, 17.540766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.984175, 22.228456, 16.957630>,  <17.580671, 22.331158, 17.542168>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.984175, 22.228456, 16.957630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.900421, 21.844860, 17.034048>,  <17.850168, 21.614702, 17.079899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.900421, 21.844860, 17.034048>,  <17.984175, 22.228456, 16.957630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.900421, 21.844860, 17.034048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050454, -0.205711, -0.977311,
		0.976531, -0.194993, 0.091458,
		-0.209383, -0.958989, 0.191045,
		17.837606, 21.557163, 17.091362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.384985, 21.846071, 16.456678>,  <17.984175, 22.228456, 16.957630>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.384985, 21.846071, 16.456678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.095772, 21.592480, 16.566439>,  <17.922245, 21.440325, 16.632296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.095772, 21.592480, 16.566439>,  <18.384985, 21.846071, 16.456678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.095772, 21.592480, 16.566439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082163, -0.315475, -0.945370,
		0.685912, -0.706078, 0.176008,
		-0.723031, -0.633980, 0.274401,
		17.878862, 21.402287, 16.648760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<13.638320, 22.731247, 19.511272> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.762729, 22.353138, 19.550722>,  <13.837374, 22.126272, 19.574392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.762729, 22.353138, 19.550722>,  <13.638320, 22.731247, 19.511272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.762729, 22.353138, 19.550722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385986, 0.030807, -0.921990,
		0.868493, 0.324827, 0.374443,
		0.311023, -0.945271, 0.098624,
		13.856035, 22.069557, 19.580309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.330698, 22.690123, 19.261482>,  <13.638320, 22.731247, 19.511272>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.330698, 22.690123, 19.261482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.196370, 22.314106, 19.237671>,  <14.115773, 22.088495, 19.223385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.196370, 22.314106, 19.237671>,  <14.330698, 22.690123, 19.261482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.196370, 22.314106, 19.237671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490168, -0.120440, -0.863266,
		0.804338, -0.319081, 0.501225,
		-0.335819, -0.940043, -0.059529,
		14.095624, 22.032093, 19.219812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.910343, 22.220705, 19.284132>,  <14.330698, 22.690123, 19.261482>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.910343, 22.220705, 19.284132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.621943, 22.051041, 19.064953>,  <14.448904, 21.949242, 18.933445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.621943, 22.051041, 19.064953>,  <14.910343, 22.220705, 19.284132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.621943, 22.051041, 19.064953> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613675, -0.023610, -0.789205,
		0.321813, -0.905279, 0.277320,
		-0.720998, -0.424161, -0.547949,
		14.405643, 21.923792, 18.900568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.277803, 21.795212, 18.810078>,  <14.910343, 22.220705, 19.284132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.277803, 21.795212, 18.810078> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.911853, 21.805485, 18.648911>,  <14.692283, 21.811649, 18.552210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.911853, 21.805485, 18.648911>,  <15.277803, 21.795212, 18.810078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.911853, 21.805485, 18.648911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400789, -0.062610, -0.914029,
		-0.048684, -0.997708, 0.046995,
		-0.914876, 0.025663, -0.402918,
		14.637390, 21.813189, 18.528034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.287514, 21.333828, 18.221081>,  <15.277803, 21.795212, 18.810078>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.287514, 21.333828, 18.221081> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.964412, 21.550220, 18.127382>,  <14.770551, 21.680056, 18.071163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.964412, 21.550220, 18.127382>,  <15.287514, 21.333828, 18.221081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.964412, 21.550220, 18.127382> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228833, -0.078464, -0.970298,
		-0.543292, -0.837367, -0.060415,
		-0.807756, 0.540980, -0.234247,
		14.722085, 21.712515, 18.057108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.058279, 21.076441, 17.607010>,  <15.287514, 21.333828, 18.221081>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.058279, 21.076441, 17.607010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.886601, 21.437725, 17.606733>,  <14.783595, 21.654495, 17.606567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.886601, 21.437725, 17.606733>,  <15.058279, 21.076441, 17.607010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.886601, 21.437725, 17.606733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204580, 0.096470, -0.974085,
		-0.879739, -0.418211, -0.226183,
		-0.429193, 0.903213, -0.000689,
		14.757844, 21.708689, 17.606527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.558783, 21.127367, 16.963804>,  <15.058279, 21.076441, 17.607010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.558783, 21.127367, 16.963804> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.624391, 21.504379, 17.080240>,  <14.663755, 21.730587, 17.150103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.624391, 21.504379, 17.080240>,  <14.558783, 21.127367, 16.963804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.624391, 21.504379, 17.080240> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134722, 0.270920, -0.953128,
		-0.977214, 0.195548, -0.082544,
		0.164019, 0.942530, 0.291092,
		14.673596, 21.787138, 17.167568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.162331, 21.470819, 16.574224>,  <14.558783, 21.127367, 16.963804>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.162331, 21.470819, 16.574224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.444453, 21.725838, 16.698210>,  <14.613727, 21.878849, 16.772602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.444453, 21.725838, 16.698210>,  <14.162331, 21.470819, 16.574224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.444453, 21.725838, 16.698210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209862, 0.229866, -0.950326,
		-0.677128, 0.735320, 0.028329,
		0.705306, 0.637547, 0.309964,
		14.656045, 21.917103, 16.791199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.091643, 22.203125, 16.145185>,  <14.162331, 21.470819, 16.574224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.091643, 22.203125, 16.145185> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.458121, 22.215012, 16.305038>,  <14.678008, 22.222143, 16.400949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.458121, 22.215012, 16.305038>,  <14.091643, 22.203125, 16.145185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.458121, 22.215012, 16.305038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388303, 0.180641, -0.903654,
		-0.099045, 0.983100, 0.153963,
		0.916194, 0.029719, 0.399632,
		14.732980, 22.223927, 16.424929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.323629, 22.836418, 15.902594>,  <14.091643, 22.203125, 16.145185>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.323629, 22.836418, 15.902594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.670991, 22.660591, 15.994379>,  <14.879408, 22.555096, 16.049450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.670991, 22.660591, 15.994379>,  <14.323629, 22.836418, 15.902594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.670991, 22.660591, 15.994379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437265, 0.460647, -0.772401,
		0.233819, 0.771094, 0.592235,
		0.868405, -0.439566, 0.229465,
		14.931513, 22.528721, 16.063219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.894538, 23.392548, 15.961020>,  <14.323629, 22.836418, 15.902594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.894538, 23.392548, 15.961020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.033315, 23.026424, 15.879198>,  <15.116581, 22.806751, 15.830105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.033315, 23.026424, 15.879198>,  <14.894538, 23.392548, 15.961020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.033315, 23.026424, 15.879198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383329, 0.337440, -0.859764,
		0.855973, 0.219876, 0.467936,
		0.346942, -0.915308, -0.204554,
		15.137397, 22.751831, 15.817832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.586612, 23.573198, 15.808220>,  <14.894538, 23.392548, 15.961020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.586612, 23.573198, 15.808220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.478103, 23.225819, 15.642229>,  <15.412997, 23.017391, 15.542635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.478103, 23.225819, 15.642229>,  <15.586612, 23.573198, 15.808220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.478103, 23.225819, 15.642229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357896, 0.309216, -0.881076,
		0.893488, -0.387530, 0.226933,
		-0.271272, -0.868450, -0.414977,
		15.396721, 22.965284, 15.517736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.253849, 23.887167, 15.846854>,  <15.586612, 23.573198, 15.808220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.253849, 23.887167, 15.846854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.630177, 24.022728, 15.847244>,  <16.855974, 24.104065, 15.847478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.630177, 24.022728, 15.847244>,  <16.253849, 23.887167, 15.846854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.630177, 24.022728, 15.847244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047574, -0.134915, 0.989714,
		0.335548, -0.931098, -0.143054,
		0.940821, 0.338903, 0.000974,
		16.912422, 24.124399, 15.847536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.788603, 23.308655, 16.090357>,  <16.253849, 23.887167, 15.846854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.788603, 23.308655, 16.090357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.912170, 23.680462, 16.170918>,  <16.986311, 23.903547, 16.219254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.912170, 23.680462, 16.170918>,  <16.788603, 23.308655, 16.090357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.912170, 23.680462, 16.170918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128500, -0.169026, 0.977199,
		0.942368, -0.327755, 0.067228,
		0.308919, 0.929520, 0.201401,
		17.004847, 23.959318, 16.231339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.080887, 23.241962, 16.685198>,  <16.788603, 23.308655, 16.090357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.080887, 23.241962, 16.685198> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.001301, 23.633213, 16.660929>,  <16.953548, 23.867964, 16.646368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.001301, 23.633213, 16.660929>,  <17.080887, 23.241962, 16.685198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.001301, 23.633213, 16.660929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161161, 0.028410, 0.986519,
		0.966664, 0.206063, 0.151983,
		-0.198967, 0.978126, -0.060673,
		16.941610, 23.926651, 16.642727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.412788, 23.457998, 17.344828>,  <17.080887, 23.241962, 16.685198>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.412788, 23.457998, 17.344828> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.153572, 23.744450, 17.241133>,  <16.998043, 23.916321, 17.178915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.153572, 23.744450, 17.241133>,  <17.412788, 23.457998, 17.344828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.153572, 23.744450, 17.241133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356336, 0.015734, 0.934225,
		0.673105, 0.697790, 0.244986,
		-0.648039, 0.716129, -0.259239,
		16.959160, 23.959288, 17.163361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.466087, 23.995066, 17.875786>,  <17.412788, 23.457998, 17.344828>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.466087, 23.995066, 17.875786> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.117519, 24.044659, 17.685940>,  <16.908379, 24.074415, 17.572033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.117519, 24.044659, 17.685940>,  <17.466087, 23.995066, 17.875786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.117519, 24.044659, 17.685940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452469, 0.170569, 0.875316,
		0.189479, 0.977514, -0.092539,
		-0.871418, 0.123983, -0.474614,
		16.856094, 24.081854, 17.543556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.191807, 24.613470, 18.105755>,  <17.466087, 23.995066, 17.875786>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.191807, 24.613470, 18.105755> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.879097, 24.407951, 17.964422>,  <16.691471, 24.284639, 17.879623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.879097, 24.407951, 17.964422>,  <17.191807, 24.613470, 18.105755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.879097, 24.407951, 17.964422> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544696, 0.286859, 0.788047,
		-0.303539, 0.808533, -0.504122,
		-0.781774, -0.513796, -0.353332,
		16.644566, 24.253813, 17.858423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.578730, 25.085274, 18.231480>,  <17.191807, 24.613470, 18.105755>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.578730, 25.085274, 18.231480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.444832, 24.710304, 18.193148>,  <16.364492, 24.485323, 18.170149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.444832, 24.710304, 18.193148>,  <16.578730, 25.085274, 18.231480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.444832, 24.710304, 18.193148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412203, 0.054219, 0.909477,
		-0.847369, 0.343946, -0.404558,
		-0.334746, -0.937423, -0.095832,
		16.344408, 24.429077, 18.164398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.923163, 25.092072, 18.579557>,  <16.578730, 25.085274, 18.231480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.923163, 25.092072, 18.579557> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.000473, 24.701168, 18.544670>,  <16.046860, 24.466625, 18.523737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.000473, 24.701168, 18.544670>,  <15.923163, 25.092072, 18.579557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.000473, 24.701168, 18.544670> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380879, -0.156656, 0.911258,
		-0.904200, -0.142902, -0.402495,
		0.193274, -0.977260, -0.087220,
		16.058455, 24.407990, 18.518503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.322404, 24.716822, 18.824368>,  <15.923163, 25.092072, 18.579557>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.322404, 24.716822, 18.824368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.622573, 24.454639, 18.858414>,  <15.802674, 24.297331, 18.878841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.622573, 24.454639, 18.858414>,  <15.322404, 24.716822, 18.824368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.622573, 24.454639, 18.858414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279838, -0.198404, 0.939322,
		-0.598797, -0.728707, -0.332308,
		0.750422, -0.655456, 0.085116,
		15.847699, 24.258003, 18.883949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.042867, 24.154091, 19.139414>,  <15.322404, 24.716822, 18.824368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.042867, 24.154091, 19.139414> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.423656, 24.081562, 19.238104>,  <15.652128, 24.038046, 19.297318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.423656, 24.081562, 19.238104>,  <15.042867, 24.154091, 19.139414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.423656, 24.081562, 19.238104> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289067, -0.266562, 0.919448,
		-0.100947, -0.946608, -0.306174,
		0.951971, -0.181320, 0.246725,
		15.709247, 24.027166, 19.312120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.077558, 23.561371, 19.506123>,  <15.042867, 24.154091, 19.139414>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.077558, 23.561371, 19.506123> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.419387, 23.747707, 19.597944>,  <15.624484, 23.859510, 19.653038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.419387, 23.747707, 19.597944>,  <15.077558, 23.561371, 19.506123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.419387, 23.747707, 19.597944> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219573, -0.076473, 0.972594,
		0.470632, -0.881556, 0.036935,
		0.854572, 0.465844, 0.229556,
		15.675758, 23.887461, 19.666811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.351023, 23.195681, 20.047224>,  <15.077558, 23.561371, 19.506123>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.351023, 23.195681, 20.047224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.511437, 23.561474, 20.068747>,  <15.607686, 23.780949, 20.081661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.511437, 23.561474, 20.068747>,  <15.351023, 23.195681, 20.047224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.511437, 23.561474, 20.068747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138353, -0.118529, 0.983265,
		0.905554, -0.386880, -0.174056,
		0.401036, 0.914481, 0.053808,
		15.631748, 23.835817, 20.084888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.899157, 23.108271, 20.507584>,  <15.351023, 23.195681, 20.047224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.899157, 23.108271, 20.507584> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.828740, 23.501354, 20.484617>,  <15.786490, 23.737204, 20.470837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.828740, 23.501354, 20.484617>,  <15.899157, 23.108271, 20.507584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.828740, 23.501354, 20.484617> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065297, 0.069856, 0.995418,
		0.982215, 0.171486, -0.076465,
		-0.176042, 0.982707, -0.057416,
		15.775928, 23.796165, 20.467392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.451227, 23.414494, 20.933886>,  <15.899157, 23.108271, 20.507584>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.451227, 23.414494, 20.933886> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.148155, 23.673409, 20.900566>,  <15.966311, 23.828758, 20.880575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.148155, 23.673409, 20.900566>,  <16.451227, 23.414494, 20.933886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.148155, 23.673409, 20.900566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101732, 0.243219, 0.964622,
		0.644647, 0.722402, -0.250132,
		-0.757681, 0.647287, -0.083299,
		15.920851, 23.867594, 20.875576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.752399, 23.003384, 21.276781>,  <16.451227, 23.414494, 20.933886>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.752399, 23.003384, 21.276781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.997799, 22.743900, 21.456913>,  <17.145039, 22.588211, 21.564993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.997799, 22.743900, 21.456913>,  <16.752399, 23.003384, 21.276781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.997799, 22.743900, 21.456913> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320551, -0.316596, -0.892756,
		0.721711, 0.692058, 0.013713,
		0.613498, -0.648708, 0.450331,
		17.181849, 22.549288, 21.592012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.521055, 23.142488, 21.026775>,  <16.752399, 23.003384, 21.276781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.521055, 23.142488, 21.026775> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.457745, 22.776257, 21.174648>,  <17.419758, 22.556519, 21.263372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.457745, 22.776257, 21.174648>,  <17.521055, 23.142488, 21.026775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.457745, 22.776257, 21.174648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259588, -0.399816, -0.879069,
		0.952661, -0.043169, 0.300954,
		-0.158275, -0.915579, 0.369682,
		17.410261, 22.501583, 21.285553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.974541, 22.724863, 20.669807>,  <17.521055, 23.142488, 21.026775>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.974541, 22.724863, 20.669807> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.749928, 22.425797, 20.811609>,  <17.615160, 22.246357, 20.896690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.749928, 22.425797, 20.811609>,  <17.974541, 22.724863, 20.669807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.749928, 22.425797, 20.811609> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142709, -0.509515, -0.848545,
		0.815055, -0.425895, 0.392808,
		-0.561532, -0.747669, 0.354504,
		17.581469, 22.201496, 20.917961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.479250, 22.065304, 20.667803>,  <17.974541, 22.724863, 20.669807>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.479250, 22.065304, 20.667803> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.089390, 21.976761, 20.654802>,  <17.855474, 21.923635, 20.647003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.089390, 21.976761, 20.654802>,  <18.479250, 22.065304, 20.667803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.089390, 21.976761, 20.654802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138429, -0.482524, -0.864874,
		0.175766, -0.847449, 0.500935,
		-0.974650, -0.221359, -0.032500,
		17.796995, 21.910353, 20.645052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.456404, 21.551291, 20.177250>,  <18.479250, 22.065304, 20.667803>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.456404, 21.551291, 20.177250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.059395, 21.591137, 20.205481>,  <17.821190, 21.615044, 20.222420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.059395, 21.591137, 20.205481>,  <18.456404, 21.551291, 20.177250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.059395, 21.591137, 20.205481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106977, -0.431119, -0.895931,
		-0.058820, -0.896780, 0.438550,
		-0.992520, 0.099613, 0.070577,
		17.761639, 21.621021, 20.226654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.139141, 20.881504, 19.985661>,  <18.456404, 21.551291, 20.177250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.139141, 20.881504, 19.985661> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.873604, 21.176655, 19.936914>,  <17.714281, 21.353745, 19.907667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.873604, 21.176655, 19.936914>,  <18.139141, 20.881504, 19.985661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.873604, 21.176655, 19.936914> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187453, -0.321917, -0.928025,
		-0.723997, -0.593220, 0.352020,
		-0.663844, 0.737875, -0.121866,
		17.674450, 21.398018, 19.900354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.675280, 20.553457, 19.715740>,  <18.139141, 20.881504, 19.985661>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.675280, 20.553457, 19.715740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.581940, 20.923267, 19.595205>,  <17.525936, 21.145153, 19.522884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.581940, 20.923267, 19.595205>,  <17.675280, 20.553457, 19.715740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.581940, 20.923267, 19.595205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131811, -0.337105, -0.932194,
		-0.963418, -0.177807, 0.200525,
		-0.233348, 0.924524, -0.301336,
		17.511934, 21.200624, 19.504805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.528557, 19.965202, 19.552893>,  <17.675280, 20.553457, 19.715740>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.528557, 19.965202, 19.552893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.782291, 19.660557, 19.605896>,  <17.934532, 19.477770, 19.637699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.782291, 19.660557, 19.605896>,  <17.528557, 19.965202, 19.552893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.782291, 19.660557, 19.605896> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124953, 0.068142, 0.989820,
		-0.762891, -0.644438, -0.051941,
		0.634338, -0.761614, 0.132510,
		17.972593, 19.432072, 19.645649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.284655, 19.636850, 20.119343>,  <17.528557, 19.965202, 19.552893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.284655, 19.636850, 20.119343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.659538, 19.500168, 20.091408>,  <17.884468, 19.418158, 20.074646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.659538, 19.500168, 20.091408>,  <17.284655, 19.636850, 20.119343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.659538, 19.500168, 20.091408> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116249, 0.117260, 0.986274,
		-0.328828, -0.932462, 0.149620,
		0.937207, -0.341708, -0.069840,
		17.940701, 19.397655, 20.070456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.341133, 19.232693, 20.720499>,  <17.284655, 19.636850, 20.119343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.341133, 19.232693, 20.720499> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.719856, 19.306644, 20.615143>,  <17.947090, 19.351015, 20.551929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.719856, 19.306644, 20.615143>,  <17.341133, 19.232693, 20.720499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.719856, 19.306644, 20.615143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221244, 0.220372, 0.949993,
		0.233685, -0.957733, 0.167744,
		0.946807, 0.184887, -0.263391,
		18.003899, 19.362108, 20.536125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.701473, 18.920364, 21.316801>,  <17.341133, 19.232693, 20.720499>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.701473, 18.920364, 21.316801> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.947205, 19.165226, 21.117657>,  <18.094645, 19.312143, 20.998171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.947205, 19.165226, 21.117657>,  <17.701473, 18.920364, 21.316801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.947205, 19.165226, 21.117657> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465349, 0.228469, 0.855133,
		0.637220, -0.757012, -0.144511,
		0.614330, 0.612156, -0.497859,
		18.131504, 19.348873, 20.968298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.286167, 18.764120, 21.609135>,  <17.701473, 18.920364, 21.316801>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.286167, 18.764120, 21.609135> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.336750, 19.118042, 21.429747>,  <18.367100, 19.330395, 21.322113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.336750, 19.118042, 21.429747>,  <18.286167, 18.764120, 21.609135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.336750, 19.118042, 21.429747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438565, 0.355646, 0.825334,
		0.889758, -0.301055, -0.343070,
		0.126459, 0.884806, -0.448471,
		18.374687, 19.383484, 21.295206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.024134, 18.999392, 21.733038>,  <18.286167, 18.764120, 21.609135>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.024134, 18.999392, 21.733038> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.781895, 19.311287, 21.669468>,  <18.636551, 19.498425, 21.631327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.781895, 19.311287, 21.669468>,  <19.024134, 18.999392, 21.733038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.781895, 19.311287, 21.669468> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424244, 0.485318, 0.764516,
		0.673253, 0.395565, -0.624707,
		-0.605597, 0.779740, -0.158926,
		18.600216, 19.545210, 21.621790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.399904, 19.596947, 21.898010>,  <19.024134, 18.999392, 21.733038>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.399904, 19.596947, 21.898010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.027023, 19.740295, 21.918289>,  <18.803295, 19.826305, 21.930456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.027023, 19.740295, 21.918289>,  <19.399904, 19.596947, 21.898010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.027023, 19.740295, 21.918289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230849, 0.480818, 0.845886,
		0.278765, 0.800240, -0.530949,
		-0.932201, 0.358372, 0.050699,
		18.747362, 19.847807, 21.933498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.437668, 20.325079, 22.016924>,  <19.399904, 19.596947, 21.898010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.437668, 20.325079, 22.016924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.055672, 20.250488, 22.109205>,  <18.826475, 20.205734, 22.164574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.055672, 20.250488, 22.109205>,  <19.437668, 20.325079, 22.016924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.055672, 20.250488, 22.109205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121069, 0.464976, 0.877006,
		-0.270811, 0.865462, -0.421470,
		-0.954989, -0.186476, 0.230701,
		18.769175, 20.194546, 22.178415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.104099, 20.950241, 22.293020>,  <19.437668, 20.325079, 22.016924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.104099, 20.950241, 22.293020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.887253, 20.652935, 22.449823>,  <18.757145, 20.474552, 22.543905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.887253, 20.652935, 22.449823>,  <19.104099, 20.950241, 22.293020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.887253, 20.652935, 22.449823> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244216, 0.307011, 0.919838,
		-0.804034, 0.594392, 0.015082,
		-0.542114, -0.743264, 0.392008,
		18.724619, 20.429956, 22.567427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<18.041824, 18.456205, 6.568213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.905109, 18.095524, 6.674130>,  <17.823080, 17.879116, 6.737681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.905109, 18.095524, 6.674130>,  <18.041824, 18.456205, 6.568213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.905109, 18.095524, 6.674130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489624, 0.069645, 0.869147,
		-0.802153, 0.426713, 0.417691,
		-0.341786, -0.901702, 0.264795,
		17.802574, 17.825014, 6.753569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.762962, 18.525509, 7.226692>,  <18.041824, 18.456205, 6.568213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.762962, 18.525509, 7.226692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.821495, 18.131733, 7.187771>,  <17.856615, 17.895468, 7.164418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.821495, 18.131733, 7.187771>,  <17.762962, 18.525509, 7.226692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.821495, 18.131733, 7.187771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327098, -0.044676, 0.943934,
		-0.933592, -0.169956, 0.315470,
		0.146333, -0.984438, -0.097302,
		17.865395, 17.836401, 7.158580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.493153, 18.230850, 7.785669>,  <17.762962, 18.525509, 7.226692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.493153, 18.230850, 7.785669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.754658, 17.949566, 7.673890>,  <17.911560, 17.780796, 7.606822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.754658, 17.949566, 7.673890>,  <17.493153, 18.230850, 7.785669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.754658, 17.949566, 7.673890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411300, 0.020247, 0.911275,
		-0.635159, -0.710694, 0.302466,
		0.653762, -0.703209, -0.279448,
		17.950787, 17.738604, 7.590055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.435183, 17.681421, 8.222422>,  <17.493153, 18.230850, 7.785669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.435183, 17.681421, 8.222422> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.794941, 17.611092, 8.062336>,  <18.010796, 17.568893, 7.966284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.794941, 17.611092, 8.062336>,  <17.435183, 17.681421, 8.222422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.794941, 17.611092, 8.062336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375818, -0.156595, 0.913367,
		-0.223269, -0.971886, -0.074761,
		0.899395, -0.175830, -0.400215,
		18.064760, 17.558344, 7.942271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.647367, 17.024475, 8.415303>,  <17.435183, 17.681421, 8.222422>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.647367, 17.024475, 8.415303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.980137, 17.232597, 8.338175>,  <18.179798, 17.357471, 8.291898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.980137, 17.232597, 8.338175>,  <17.647367, 17.024475, 8.415303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.980137, 17.232597, 8.338175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301794, -0.132667, 0.944097,
		0.465640, -0.843611, -0.267395,
		0.831925, 0.520308, -0.192822,
		18.229715, 17.388689, 8.280329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.222633, 16.680037, 8.768912>,  <17.647367, 17.024475, 8.415303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.222633, 16.680037, 8.768912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.391262, 17.036900, 8.704006>,  <18.492439, 17.251019, 8.665063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.391262, 17.036900, 8.704006>,  <18.222633, 16.680037, 8.768912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.391262, 17.036900, 8.704006> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408676, -0.027187, 0.912274,
		0.809483, -0.450901, -0.376066,
		0.421569, 0.892160, -0.162265,
		18.517733, 17.304548, 8.655327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.942770, 16.708172, 9.070395>,  <18.222633, 16.680037, 8.768912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.942770, 16.708172, 9.070395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.825306, 17.090408, 9.060533>,  <18.754827, 17.319750, 9.054615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.825306, 17.090408, 9.060533>,  <18.942770, 16.708172, 9.070395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.825306, 17.090408, 9.060533> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390940, 0.143594, 0.909146,
		0.872313, 0.257339, -0.415747,
		-0.293658, 0.955593, -0.024655,
		18.737209, 17.377087, 9.053136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.523634, 16.977327, 9.346585>,  <18.942770, 16.708172, 9.070395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.523634, 16.977327, 9.346585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.232254, 17.249371, 9.379606>,  <19.057426, 17.412596, 9.399419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.232254, 17.249371, 9.379606>,  <19.523634, 16.977327, 9.346585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.232254, 17.249371, 9.379606> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238908, 0.139239, 0.961007,
		0.642094, 0.719768, -0.263912,
		-0.728450, 0.680107, 0.082553,
		19.013720, 17.453403, 9.404372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.797033, 17.391922, 9.859392>,  <19.523634, 16.977327, 9.346585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.797033, 17.391922, 9.859392> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.407623, 17.482986, 9.851211>,  <19.173977, 17.537624, 9.846301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.407623, 17.482986, 9.851211>,  <19.797033, 17.391922, 9.859392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.407623, 17.482986, 9.851211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043393, 0.271933, 0.961337,
		0.224419, 0.934999, -0.274612,
		-0.973526, 0.227659, -0.020455,
		19.115566, 17.551285, 9.845075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.708841, 18.022455, 10.128594>,  <19.797033, 17.391922, 9.859392>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.708841, 18.022455, 10.128594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.346920, 17.856583, 10.167312>,  <19.129766, 17.757059, 10.190542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.346920, 17.856583, 10.167312>,  <19.708841, 18.022455, 10.128594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.346920, 17.856583, 10.167312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013345, 0.254805, 0.966900,
		-0.425618, 0.873564, -0.236083,
		-0.904805, -0.414681, 0.096792,
		19.075480, 17.732178, 10.196349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.340286, 18.494530, 10.362209>,  <19.708841, 18.022455, 10.128594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.340286, 18.494530, 10.362209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.113091, 18.179695, 10.458443>,  <18.976774, 17.990793, 10.516183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.113091, 18.179695, 10.458443>,  <19.340286, 18.494530, 10.362209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.113091, 18.179695, 10.458443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125572, 0.371765, 0.919795,
		-0.813401, 0.492222, -0.309994,
		-0.567988, -0.787089, 0.240584,
		18.942694, 17.943569, 10.530618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.740284, 18.719170, 10.696249>,  <19.340286, 18.494530, 10.362209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.740284, 18.719170, 10.696249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.775620, 18.343166, 10.828053>,  <18.796820, 18.117563, 10.907136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.775620, 18.343166, 10.828053>,  <18.740284, 18.719170, 10.696249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.775620, 18.343166, 10.828053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303863, 0.289606, 0.907632,
		-0.948611, -0.180304, -0.260052,
		0.088337, -0.940010, 0.329511,
		18.802120, 18.061163, 10.926907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.238680, 19.206417, 10.678357>,  <18.740284, 18.719170, 10.696249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.238680, 19.206417, 10.678357> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.370384, 19.572792, 10.770136>,  <18.449408, 19.792618, 10.825203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.370384, 19.572792, 10.770136>,  <18.238680, 19.206417, 10.678357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.370384, 19.572792, 10.770136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596652, -0.013483, -0.802387,
		-0.731842, 0.401095, -0.550936,
		0.329262, 0.915937, 0.229447,
		18.469162, 19.847572, 10.838970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.087757, 19.605202, 10.129689>,  <18.238680, 19.206417, 10.678357>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.087757, 19.605202, 10.129689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.399780, 19.742523, 10.338938>,  <18.586994, 19.824917, 10.464487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.399780, 19.742523, 10.338938>,  <18.087757, 19.605202, 10.129689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.399780, 19.742523, 10.338938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546781, 0.032469, -0.836646,
		-0.304209, 0.938663, -0.162384,
		0.780056, 0.343304, 0.523121,
		18.633797, 19.845514, 10.495874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.284790, 20.284597, 9.910999>,  <18.087757, 19.605202, 10.129689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.284790, 20.284597, 9.910999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.631306, 20.168091, 10.073336>,  <18.839214, 20.098186, 10.170737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.631306, 20.168091, 10.073336>,  <18.284790, 20.284597, 9.910999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.631306, 20.168091, 10.073336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454621, 0.122978, -0.882154,
		0.207031, 0.948705, 0.238949,
		0.866290, -0.291264, 0.405841,
		18.891193, 20.080711, 10.195088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.814640, 20.877522, 9.717092>,  <18.284790, 20.284597, 9.910999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.814640, 20.877522, 9.717092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.007801, 20.542053, 9.817838>,  <19.123697, 20.340773, 9.878285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.007801, 20.542053, 9.817838>,  <18.814640, 20.877522, 9.717092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.007801, 20.542053, 9.817838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606168, 0.112581, -0.787328,
		0.631954, 0.532875, 0.562741,
		0.482901, -0.838672, 0.251866,
		19.152672, 20.290451, 9.893397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.549873, 21.044218, 9.670281>,  <18.814640, 20.877522, 9.717092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.549873, 21.044218, 9.670281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.519100, 20.645500, 9.661466>,  <19.500637, 20.406269, 9.656177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.519100, 20.645500, 9.661466>,  <19.549873, 21.044218, 9.670281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.519100, 20.645500, 9.661466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633773, -0.031827, -0.772864,
		0.769684, -0.073426, 0.634188,
		-0.076933, -0.996793, -0.022039,
		19.496021, 20.346462, 9.654854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.176172, 20.741232, 9.837995>,  <19.549873, 21.044218, 9.670281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.176172, 20.741232, 9.837995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.959454, 20.492065, 9.612276>,  <19.829422, 20.342566, 9.476845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.959454, 20.492065, 9.612276>,  <20.176172, 20.741232, 9.837995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.959454, 20.492065, 9.612276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736724, -0.028783, -0.675581,
		0.404588, -0.781759, 0.474512,
		-0.541799, -0.622916, -0.564295,
		19.796913, 20.305191, 9.442987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.712629, 20.491169, 9.453368>,  <20.176172, 20.741232, 9.837995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.712629, 20.491169, 9.453368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.391533, 20.332859, 9.274944>,  <20.198875, 20.237873, 9.167890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.391533, 20.332859, 9.274944>,  <20.712629, 20.491169, 9.453368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.391533, 20.332859, 9.274944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546910, -0.190468, -0.815237,
		0.237690, -0.898378, 0.369350,
		-0.802741, -0.395775, -0.446060,
		20.150711, 20.214127, 9.141127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.877281, 19.835711, 9.250880>,  <20.712629, 20.491169, 9.453368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.877281, 19.835711, 9.250880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.572819, 19.926102, 9.007709>,  <20.390142, 19.980337, 8.861806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.572819, 19.926102, 9.007709>,  <20.877281, 19.835711, 9.250880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.572819, 19.926102, 9.007709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588374, -0.153779, -0.793832,
		-0.272877, -0.961917, -0.015911,
		-0.761154, 0.225980, -0.607929,
		20.344473, 19.993896, 8.825330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.043829, 19.460388, 8.783238>,  <20.877281, 19.835711, 9.250880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.043829, 19.460388, 8.783238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.742107, 19.657433, 8.609638>,  <20.561073, 19.775660, 8.505478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.742107, 19.657433, 8.609638>,  <21.043829, 19.460388, 8.783238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.742107, 19.657433, 8.609638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399367, -0.180394, -0.898869,
		-0.521085, -0.851346, -0.060661,
		-0.754305, 0.492613, -0.434000,
		20.515816, 19.805216, 8.479438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.838633, 18.948475, 8.252280>,  <21.043829, 19.460388, 8.783238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.838633, 18.948475, 8.252280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.776516, 19.340351, 8.201543>,  <20.739246, 19.575478, 8.171101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.776516, 19.340351, 8.201543>,  <20.838633, 18.948475, 8.252280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.776516, 19.340351, 8.201543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485322, -0.036177, -0.873587,
		-0.860434, -0.197220, -0.469848,
		-0.155291, 0.979692, -0.126843,
		20.729929, 19.634258, 8.163490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.840437, 19.066523, 7.506689>,  <20.838633, 18.948475, 8.252280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.840437, 19.066523, 7.506689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.862095, 19.447140, 7.627771>,  <20.875090, 19.675510, 7.700421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.862095, 19.447140, 7.627771>,  <20.840437, 19.066523, 7.506689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.862095, 19.447140, 7.627771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450548, 0.247256, -0.857829,
		-0.891109, 0.182829, -0.415330,
		0.054143, 0.951545, 0.302705,
		20.878338, 19.732603, 7.718583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.300676, 19.547453, 7.067731>,  <20.840437, 19.066523, 7.506689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.300676, 19.547453, 7.067731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.597900, 19.766869, 7.221078>,  <20.776234, 19.898518, 7.313086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.597900, 19.766869, 7.221078>,  <20.300676, 19.547453, 7.067731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.597900, 19.766869, 7.221078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318124, 0.214467, -0.923472,
		-0.588779, 0.808152, -0.015141,
		0.743059, 0.548537, 0.383367,
		20.820818, 19.931431, 7.336088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.398258, 20.060205, 6.575284>,  <20.300676, 19.547453, 7.067731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.398258, 20.060205, 6.575284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.733341, 20.085915, 6.792212>,  <20.934391, 20.101339, 6.922370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.733341, 20.085915, 6.792212>,  <20.398258, 20.060205, 6.575284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.733341, 20.085915, 6.792212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540467, 0.044917, -0.840165,
		-0.078358, 0.996921, 0.002891,
		0.837708, 0.064271, 0.542323,
		20.984653, 20.105196, 6.954909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.855282, 20.543097, 6.232839>,  <20.398258, 20.060205, 6.575284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.855282, 20.543097, 6.232839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.111385, 20.334667, 6.458600>,  <21.265047, 20.209610, 6.594057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.111385, 20.334667, 6.458600>,  <20.855282, 20.543097, 6.232839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.111385, 20.334667, 6.458600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641733, -0.040996, -0.765831,
		0.422191, 0.852528, 0.308140,
		0.640260, -0.521071, 0.564404,
		21.303463, 20.178347, 6.627921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.222441, 20.816704, 5.877148>,  <20.855282, 20.543097, 6.232839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.222441, 20.816704, 5.877148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.192699, 21.186428, 5.727416>,  <20.174854, 21.408262, 5.637577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.192699, 21.186428, 5.727416>,  <20.222441, 20.816704, 5.877148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.192699, 21.186428, 5.727416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208476, 0.381481, 0.900561,
		0.975197, -0.011080, -0.221060,
		-0.074352, 0.924310, -0.374329,
		20.170395, 21.463720, 5.615117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.812992, 21.203054, 5.888699>,  <20.222441, 20.816704, 5.877148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.812992, 21.203054, 5.888699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.498035, 21.443832, 5.941883>,  <20.309061, 21.588299, 5.973794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.498035, 21.443832, 5.941883>,  <20.812992, 21.203054, 5.888699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.498035, 21.443832, 5.941883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462372, 0.434033, 0.773193,
		0.407709, 0.670283, -0.620076,
		-0.787391, 0.601944, 0.132961,
		20.261818, 21.624416, 5.981771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.048599, 21.893515, 6.048320>,  <20.812992, 21.203054, 5.888699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.048599, 21.893515, 6.048320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.677776, 21.881912, 6.197840>,  <20.455282, 21.874950, 6.287551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.677776, 21.881912, 6.197840>,  <21.048599, 21.893515, 6.048320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.677776, 21.881912, 6.197840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320652, 0.455325, 0.830579,
		-0.194290, 0.889853, -0.412812,
		-0.927056, -0.029004, 0.373798,
		20.399660, 21.873211, 6.309979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.094528, 22.505547, 6.397613>,  <21.048599, 21.893515, 6.048320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.094528, 22.505547, 6.397613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.754810, 22.329262, 6.513867>,  <20.550980, 22.223492, 6.583620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.754810, 22.329262, 6.513867>,  <21.094528, 22.505547, 6.397613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.754810, 22.329262, 6.513867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072093, 0.642197, 0.763142,
		-0.522971, 0.627181, -0.577187,
		-0.849296, -0.440712, 0.290635,
		20.500021, 22.197048, 6.601058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.613737, 23.000124, 6.408701>,  <21.094528, 22.505547, 6.397613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.613737, 23.000124, 6.408701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.445110, 22.728333, 6.648897>,  <20.343933, 22.565258, 6.793015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.445110, 22.728333, 6.648897>,  <20.613737, 23.000124, 6.408701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.445110, 22.728333, 6.648897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110456, 0.695758, 0.709732,
		-0.900044, 0.232873, -0.368362,
		-0.421569, -0.679478, 0.600491,
		20.318640, 22.524488, 6.829044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.962111, 23.352758, 6.742176>,  <20.613737, 23.000124, 6.408701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.962111, 23.352758, 6.742176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.075470, 23.040806, 6.965413>,  <20.143486, 22.853634, 7.099356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.075470, 23.040806, 6.965413>,  <19.962111, 23.352758, 6.742176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.075470, 23.040806, 6.965413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326737, 0.468614, 0.820758,
		-0.901626, -0.414950, -0.122013,
		0.283397, -0.779883, 0.558094,
		20.160490, 22.806841, 7.132841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.467989, 23.194880, 7.179230>,  <19.962111, 23.352758, 6.742176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.467989, 23.194880, 7.179230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.762093, 23.004318, 7.372075>,  <19.938555, 22.889982, 7.487782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.762093, 23.004318, 7.372075>,  <19.467989, 23.194880, 7.179230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.762093, 23.004318, 7.372075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443843, 0.199156, 0.873694,
		-0.512246, -0.856374, -0.065016,
		0.735260, -0.476403, 0.482113,
		19.982670, 22.861397, 7.516709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.190266, 23.046001, 7.937349>,  <19.467989, 23.194880, 7.179230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.190266, 23.046001, 7.937349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.584869, 22.996513, 7.980222>,  <19.821632, 22.966820, 8.005945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.584869, 22.996513, 7.980222>,  <19.190266, 23.046001, 7.937349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.584869, 22.996513, 7.980222> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088559, 0.147285, 0.985122,
		-0.137669, -0.981325, 0.134342,
		0.986512, -0.123724, 0.107182,
		19.880823, 22.959396, 8.012376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.301186, 22.532013, 8.421108>,  <19.190266, 23.046001, 7.937349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.301186, 22.532013, 8.421108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.634743, 22.752758, 8.417714>,  <19.834877, 22.885204, 8.415678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.634743, 22.752758, 8.417714>,  <19.301186, 22.532013, 8.421108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.634743, 22.752758, 8.417714> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046358, 0.085352, 0.995272,
		0.549978, -0.829556, 0.096757,
		0.833892, 0.551863, -0.008485,
		19.884911, 22.918316, 8.415169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.663359, 22.256065, 8.913654>,  <19.301186, 22.532013, 8.421108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.663359, 22.256065, 8.913654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.799717, 22.630852, 8.882964>,  <19.881533, 22.855722, 8.864551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.799717, 22.630852, 8.882964>,  <19.663359, 22.256065, 8.913654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.799717, 22.630852, 8.882964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087400, 0.112847, 0.989761,
		0.936029, -0.330702, 0.120360,
		0.340898, 0.936964, -0.076724,
		19.901987, 22.911942, 8.859947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.989252, 22.401478, 9.538424>,  <19.663359, 22.256065, 8.913654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.989252, 22.401478, 9.538424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.960182, 22.781296, 9.416389>,  <19.942739, 23.009188, 9.343167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.960182, 22.781296, 9.416389>,  <19.989252, 22.401478, 9.538424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.960182, 22.781296, 9.416389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152674, 0.291702, 0.944246,
		0.985601, 0.115203, 0.123771,
		-0.072675, 0.949547, -0.305090,
		19.938379, 23.066160, 9.324862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.416519, 22.902491, 9.940001>,  <19.989252, 22.401478, 9.538424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.416519, 22.902491, 9.940001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.139587, 23.157562, 9.804918>,  <19.973429, 23.310604, 9.723868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.139587, 23.157562, 9.804918>,  <20.416519, 22.902491, 9.940001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.139587, 23.157562, 9.804918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250294, 0.226728, 0.941248,
		0.676780, 0.736181, 0.002636,
		-0.692331, 0.637678, -0.337706,
		19.931889, 23.348866, 9.703607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.480915, 23.610289, 10.296919>,  <20.416519, 22.902491, 9.940001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.480915, 23.610289, 10.296919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.104794, 23.607941, 10.160804>,  <19.879120, 23.606531, 10.079135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.104794, 23.607941, 10.160804>,  <20.480915, 23.610289, 10.296919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.104794, 23.607941, 10.160804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332583, 0.228068, 0.915081,
		0.072236, 0.973627, -0.216405,
		-0.940303, -0.005870, -0.340287,
		19.822702, 23.606180, 10.058718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.261717, 24.183718, 10.698018>,  <20.480915, 23.610289, 10.296919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.261717, 24.183718, 10.698018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.920727, 24.041328, 10.544882>,  <19.716133, 23.955894, 10.453000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.920727, 24.041328, 10.544882>,  <20.261717, 24.183718, 10.698018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.920727, 24.041328, 10.544882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467820, 0.192648, 0.862572,
		-0.233300, 0.914423, -0.330760,
		-0.852476, -0.355974, -0.382841,
		19.664984, 23.934536, 10.430030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.650900, 24.731180, 10.874433>,  <20.261717, 24.183718, 10.698018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.650900, 24.731180, 10.874433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.491203, 24.369564, 10.813347>,  <19.395386, 24.152596, 10.776695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.491203, 24.369564, 10.813347>,  <19.650900, 24.731180, 10.874433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.491203, 24.369564, 10.813347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443873, 0.044841, 0.894967,
		-0.802236, 0.425093, -0.419181,
		-0.399241, -0.904038, -0.152715,
		19.371431, 24.098352, 10.767532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.930561, 24.784618, 10.903851>,  <19.650900, 24.731180, 10.874433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.930561, 24.784618, 10.903851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.007084, 24.398090, 10.972699>,  <19.052998, 24.166174, 11.014009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.007084, 24.398090, 10.972699>,  <18.930561, 24.784618, 10.903851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.007084, 24.398090, 10.972699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555224, 0.038069, 0.830829,
		-0.809400, -0.254508, -0.529242,
		0.191305, -0.966321, 0.172122,
		19.064476, 24.108194, 11.024336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.258890, 24.513798, 11.150082>,  <18.930561, 24.784618, 10.903851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.258890, 24.513798, 11.150082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.527584, 24.232433, 11.243015>,  <18.688801, 24.063614, 11.298776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.527584, 24.232433, 11.243015>,  <18.258890, 24.513798, 11.150082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.527584, 24.232433, 11.243015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467579, -0.159339, 0.869472,
		-0.574578, -0.692691, -0.435936,
		0.671736, -0.703414, 0.232335,
		18.729105, 24.021410, 11.312716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.816528, 23.789915, 11.386667>,  <18.258890, 24.513798, 11.150082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.816528, 23.789915, 11.386667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.181053, 23.769032, 11.550024>,  <18.399769, 23.756502, 11.648038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.181053, 23.769032, 11.550024>,  <17.816528, 23.789915, 11.386667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.181053, 23.769032, 11.550024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411399, -0.154280, 0.898303,
		0.016109, -0.986647, -0.162076,
		0.911313, -0.052207, 0.408391,
		18.454447, 23.753370, 11.672542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.765348, 23.262777, 11.876916>,  <17.816528, 23.789915, 11.386667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.765348, 23.262777, 11.876916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.077076, 23.498070, 11.963309>,  <18.264112, 23.639244, 12.015145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.077076, 23.498070, 11.963309>,  <17.765348, 23.262777, 11.876916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.077076, 23.498070, 11.963309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450284, 0.285990, 0.845845,
		0.435782, -0.756437, 0.487747,
		0.779319, 0.588229, 0.215982,
		18.310871, 23.674538, 12.028104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.964359, 22.946106, 12.468095>,  <17.765348, 23.262777, 11.876916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.964359, 22.946106, 12.468095> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.084274, 23.327244, 12.486910>,  <18.156223, 23.555927, 12.498199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.084274, 23.327244, 12.486910>,  <17.964359, 22.946106, 12.468095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.084274, 23.327244, 12.486910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266859, 0.036419, 0.963047,
		0.915922, -0.301261, 0.265194,
		0.299787, 0.952846, 0.047037,
		18.174210, 23.613098, 12.501021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.452501, 23.004667, 12.998558>,  <17.964359, 22.946106, 12.468095>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.452501, 23.004667, 12.998558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.331890, 23.383320, 12.952999>,  <18.259523, 23.610512, 12.925664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.331890, 23.383320, 12.952999>,  <18.452501, 23.004667, 12.998558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.331890, 23.383320, 12.952999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268491, 0.030321, 0.962805,
		0.914873, 0.320894, 0.245019,
		-0.301529, 0.946630, -0.113897,
		18.241432, 23.667309, 12.918830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.715315, 23.369278, 13.718129>,  <18.452501, 23.004667, 12.998558>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.715315, 23.369278, 13.718129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.444424, 23.601902, 13.537840>,  <18.281889, 23.741476, 13.429667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.444424, 23.601902, 13.537840>,  <18.715315, 23.369278, 13.718129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.444424, 23.601902, 13.537840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239240, 0.405246, 0.882349,
		0.695793, 0.705381, -0.135311,
		-0.677227, 0.581561, -0.450723,
		18.241255, 23.776371, 13.402623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.793608, 24.077389, 14.033630>,  <18.715315, 23.369278, 13.718129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.793608, 24.077389, 14.033630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.431274, 24.041080, 13.868111>,  <18.213875, 24.019297, 13.768799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.431274, 24.041080, 13.868111>,  <18.793608, 24.077389, 14.033630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.431274, 24.041080, 13.868111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418066, 0.349409, 0.838531,
		0.068473, 0.932563, -0.354453,
		-0.905832, -0.090769, -0.413798,
		18.159525, 24.013849, 13.743971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.448877, 24.708418, 14.090973>,  <18.793608, 24.077389, 14.033630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.448877, 24.708418, 14.090973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.148907, 24.444397, 14.073336>,  <17.968925, 24.285984, 14.062753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.148907, 24.444397, 14.073336>,  <18.448877, 24.708418, 14.090973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.148907, 24.444397, 14.073336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373177, 0.367068, 0.852056,
		-0.546216, 0.655433, -0.521590,
		-0.749925, -0.660052, -0.044094,
		17.923929, 24.246382, 14.060107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.847261, 25.057499, 14.369891>,  <18.448877, 24.708418, 14.090973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.847261, 25.057499, 14.369891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.730469, 24.674931, 14.371151>,  <17.660393, 24.445391, 14.371907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.730469, 24.674931, 14.371151>,  <17.847261, 25.057499, 14.369891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.730469, 24.674931, 14.371151> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579861, 0.179640, 0.794664,
		-0.760598, 0.230199, -0.607041,
		-0.291980, -0.956420, 0.003150,
		17.642876, 24.388004, 14.372096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.089109, 24.988394, 14.347947>,  <17.847261, 25.057499, 14.369891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.089109, 24.988394, 14.347947> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.236835, 24.660812, 14.523638>,  <17.325472, 24.464264, 14.629052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.236835, 24.660812, 14.523638>,  <17.089109, 24.988394, 14.347947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.236835, 24.660812, 14.523638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669741, 0.093104, 0.736735,
		-0.644246, -0.566256, -0.514102,
		0.369315, -0.818954, 0.439227,
		17.347630, 24.415127, 14.655406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.507769, 24.630552, 14.729651>,  <17.089109, 24.988394, 14.347947>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.507769, 24.630552, 14.729651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.842747, 24.477230, 14.885479>,  <17.043734, 24.385237, 14.978975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.842747, 24.477230, 14.885479>,  <16.507769, 24.630552, 14.729651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.842747, 24.477230, 14.885479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464829, -0.124653, 0.876582,
		-0.287435, -0.915172, -0.282561,
		0.837445, -0.383303, 0.389569,
		17.093981, 24.362238, 15.002350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.306322, 24.121822, 15.139376>,  <16.507769, 24.630552, 14.729651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.306322, 24.121822, 15.139376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.669064, 24.168301, 15.301418>,  <16.886709, 24.196188, 15.398643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.669064, 24.168301, 15.301418>,  <16.306322, 24.121822, 15.139376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.669064, 24.168301, 15.301418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373895, -0.221713, 0.900581,
		0.194460, -0.968164, -0.157617,
		0.906856, 0.116195, 0.405107,
		16.941120, 24.203159, 15.422950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.054935, 23.486336, 15.175216>,  <16.306322, 24.121822, 15.139376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.054935, 23.486336, 15.175216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.817283, 23.170410, 15.114285>,  <15.674691, 22.980856, 15.077726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.817283, 23.170410, 15.114285>,  <16.054935, 23.486336, 15.175216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.817283, 23.170410, 15.114285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099087, 0.116068, -0.988286,
		0.798241, -0.602266, 0.009301,
		-0.594131, -0.789813, -0.152327,
		15.639043, 22.933466, 15.068586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.379787, 23.195599, 14.680285>,  <16.054935, 23.486336, 15.175216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.379787, 23.195599, 14.680285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.023037, 23.016140, 14.657408>,  <15.808986, 22.908464, 14.643682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.023037, 23.016140, 14.657408>,  <16.379787, 23.195599, 14.680285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.023037, 23.016140, 14.657408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139004, -0.151577, -0.978623,
		0.430385, -0.880763, 0.197551,
		-0.891878, -0.448645, -0.057193,
		15.755473, 22.881546, 14.640250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.456909, 22.480469, 14.334383>,  <16.379787, 23.195599, 14.680285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.456909, 22.480469, 14.334383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.065582, 22.556934, 14.302507>,  <15.830786, 22.602814, 14.283382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.065582, 22.556934, 14.302507>,  <16.456909, 22.480469, 14.334383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.065582, 22.556934, 14.302507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047636, -0.166760, -0.984846,
		-0.201564, -0.967287, 0.154038,
		-0.978316, 0.191172, -0.079690,
		15.772087, 22.614283, 14.278601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.138575, 21.912352, 14.014449>,  <16.456909, 22.480469, 14.334383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.138575, 21.912352, 14.014449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.893443, 22.222050, 13.951218>,  <15.746365, 22.407867, 13.913279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.893443, 22.222050, 13.951218>,  <16.138575, 21.912352, 14.014449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.893443, 22.222050, 13.951218> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228081, -0.364835, -0.902704,
		-0.756586, -0.517147, 0.400171,
		-0.612827, 0.774245, -0.158078,
		15.709595, 22.454323, 13.903794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.483927, 21.622866, 13.820827>,  <16.138575, 21.912352, 14.014449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.483927, 21.622866, 13.820827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.485862, 21.997040, 13.679440>,  <15.487023, 22.221544, 13.594607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.485862, 21.997040, 13.679440>,  <15.483927, 21.622866, 13.820827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.485862, 21.997040, 13.679440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262506, -0.339887, -0.903088,
		-0.964918, 0.097157, 0.243913,
		0.004838, 0.935434, -0.353468,
		15.487313, 22.277670, 13.573400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
