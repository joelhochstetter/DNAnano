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
	<36.308952, 52.707031, 50.626614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.278885, 52.769257, 50.232628>,  <36.260845, 52.806591, 49.996239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.278885, 52.769257, 50.232628>,  <36.308952, 52.707031, 50.626614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.278885, 52.769257, 50.232628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937343, 0.325969, 0.123012,
		0.340203, 0.932494, 0.121312,
		-0.075164, 0.155560, -0.984963,
		36.256336, 52.815926, 49.937138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082253, 53.372894, 50.504894>,  <36.308952, 52.707031, 50.626614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082253, 53.372894, 50.504894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.948109, 53.142670, 50.206566>,  <35.867622, 53.004536, 50.027569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.948109, 53.142670, 50.206566>,  <36.082253, 53.372894, 50.504894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948109, 53.142670, 50.206566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936942, 0.286409, 0.200274,
		0.098340, 0.765959, -0.635323,
		-0.335364, -0.575566, -0.745825,
		35.847500, 52.970001, 49.982819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.696499, 53.543644, 50.978008>,  <36.082253, 53.372894, 50.504894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.696499, 53.543644, 50.978008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.047085, 53.631145, 50.806446>,  <37.257435, 53.683647, 50.703510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.047085, 53.631145, 50.806446>,  <36.696499, 53.543644, 50.978008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.047085, 53.631145, 50.806446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340688, 0.347685, 0.873526,
		0.340209, -0.911736, 0.230207,
		0.876465, 0.218753, -0.428902,
		37.310024, 53.696774, 50.677776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348034, 53.141033, 51.185360>,  <36.696499, 53.543644, 50.978008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348034, 53.141033, 51.185360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.411240, 53.525990, 51.096962>,  <37.449162, 53.756962, 51.043922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.411240, 53.525990, 51.096962>,  <37.348034, 53.141033, 51.185360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.411240, 53.525990, 51.096962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404767, 0.141008, 0.903482,
		0.900664, -0.232211, -0.367263,
		0.158011, 0.962390, -0.220992,
		37.458645, 53.814705, 51.030663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043514, 53.303322, 51.436764>,  <37.348034, 53.141033, 51.185360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043514, 53.303322, 51.436764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.837822, 53.646320, 51.430279>,  <37.714405, 53.852119, 51.426388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.837822, 53.646320, 51.430279>,  <38.043514, 53.303322, 51.436764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.837822, 53.646320, 51.430279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441584, 0.280926, 0.852106,
		0.735233, 0.431022, -0.523118,
		-0.514234, 0.857497, -0.016213,
		37.683552, 53.903568, 51.425415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601784, 53.812920, 51.509506>,  <38.043514, 53.303322, 51.436764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.601784, 53.812920, 51.509506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.603798, 53.958412, 51.882103>,  <38.605007, 54.045708, 52.105659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.603798, 53.958412, 51.882103>,  <38.601784, 53.812920, 51.509506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.603798, 53.958412, 51.882103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940724, 0.314187, -0.127770,
		-0.339136, 0.876917, -0.340593,
		0.005034, 0.363735, 0.931489,
		38.605309, 54.067532, 52.161549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963009, 54.434856, 51.602722>,  <38.601784, 53.812920, 51.509506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.963009, 54.434856, 51.602722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.982018, 54.229027, 51.945175>,  <38.993423, 54.105530, 52.150646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.982018, 54.229027, 51.945175>,  <38.963009, 54.434856, 51.602722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.982018, 54.229027, 51.945175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998783, 0.013175, -0.047526,
		0.013175, 0.857345, 0.514573,
		0.047526, -0.514573, 0.856129,
		38.996277, 54.074654, 52.202015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.337975, 54.759464, 52.242008>,  <38.963009, 54.434856, 51.602722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.337975, 54.759464, 52.242008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.385464, 54.363941, 52.205872>,  <39.413956, 54.126625, 52.184189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.385464, 54.363941, 52.205872>,  <39.337975, 54.759464, 52.242008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385464, 54.363941, 52.205872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896462, 0.145861, -0.418427,
		0.426921, -0.031310, 0.903747,
		0.118720, -0.988810, -0.090340,
		39.421082, 54.067299, 52.178768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.978123, 54.531258, 52.541740>,  <39.337975, 54.759464, 52.242008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.978123, 54.531258, 52.541740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.851631, 54.292534, 52.246765>,  <39.775738, 54.149300, 52.069778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.851631, 54.292534, 52.246765>,  <39.978123, 54.531258, 52.541740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.851631, 54.292534, 52.246765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868709, 0.130214, -0.477901,
		0.381242, -0.791744, 0.477280,
		-0.316226, -0.596813, -0.737438,
		39.756763, 54.113491, 52.025536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.330582, 53.785763, 52.351463>,  <39.978123, 54.531258, 52.541740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.330582, 53.785763, 52.351463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.201138, 53.986191, 52.030415>,  <40.123470, 54.106449, 51.837784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.201138, 53.986191, 52.030415>,  <40.330582, 53.785763, 52.351463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.201138, 53.986191, 52.030415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929753, 0.010962, -0.368021,
		-0.175607, -0.865335, -0.469423,
		-0.323608, 0.501075, -0.802622,
		40.104053, 54.136513, 51.789627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.776894, 53.546513, 51.896965>,  <40.330582, 53.785763, 52.351463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.776894, 53.546513, 51.896965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.578110, 53.795265, 51.654877>,  <40.458839, 53.944515, 51.509624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.578110, 53.795265, 51.654877>,  <40.776894, 53.546513, 51.896965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.578110, 53.795265, 51.654877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790831, 0.037449, -0.610888,
		-0.357235, -0.782215, -0.510414,
		-0.496960, 0.621882, -0.605222,
		40.429020, 53.981831, 51.473309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.562714, 53.461815, 51.673210>,  <40.776894, 53.546513, 51.896965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.562714, 53.461815, 51.673210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.774437, 53.122467, 51.677151>,  <41.901470, 52.918858, 51.679516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.774437, 53.122467, 51.677151>,  <41.562714, 53.461815, 51.673210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.774437, 53.122467, 51.677151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309664, -0.203990, -0.928707,
		0.789898, 0.488523, -0.370684,
		0.529310, -0.848371, 0.009853,
		41.933231, 52.867954, 51.680107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.732052, 53.919773, 52.198578>,  <41.562714, 53.461815, 51.673210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.732052, 53.919773, 52.198578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.935860, 53.909767, 52.542618>,  <42.058144, 53.903763, 52.749043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.935860, 53.909767, 52.542618>,  <41.732052, 53.919773, 52.198578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.935860, 53.909767, 52.542618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578829, -0.749569, 0.321095,
		0.636671, -0.661453, -0.396396,
		0.509516, -0.025014, 0.860097,
		42.088715, 53.902264, 52.800648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.098080, 53.283379, 52.378445>,  <41.732052, 53.919773, 52.198578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.098080, 53.283379, 52.378445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.962746, 53.482227, 52.698044>,  <41.881546, 53.601536, 52.889805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.962746, 53.482227, 52.698044>,  <42.098080, 53.283379, 52.378445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.962746, 53.482227, 52.698044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536817, -0.799325, 0.270013,
		0.772890, -0.337562, 0.537301,
		-0.338332, 0.497123, 0.799000,
		41.861248, 53.631363, 52.937744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.252792, 52.842026, 52.978558>,  <42.098080, 53.283379, 52.378445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.252792, 52.842026, 52.978558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.972179, 53.100941, 53.097809>,  <41.803814, 53.256290, 53.169361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.972179, 53.100941, 53.097809>,  <42.252792, 52.842026, 52.978558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.972179, 53.100941, 53.097809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480993, -0.738750, 0.472116,
		0.525837, 0.187805, 0.829593,
		-0.701528, 0.647285, 0.298129,
		41.761723, 53.295128, 53.187248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.785896, 52.832481, 53.483334>,  <42.252792, 52.842026, 52.978558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.785896, 52.832481, 53.483334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.670464, 52.522118, 53.707718>,  <41.601204, 52.335899, 53.842350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.670464, 52.522118, 53.707718>,  <41.785896, 52.832481, 53.483334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.670464, 52.522118, 53.707718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504252, 0.621217, 0.599850,
		-0.813911, -0.109761, -0.570527,
		-0.288581, -0.775914, 0.560963,
		41.583889, 52.289345, 53.876007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.041138, 52.807606, 53.573792>,  <41.785896, 52.832481, 53.483334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.041138, 52.807606, 53.573792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.238091, 52.639503, 53.878670>,  <41.356262, 52.538643, 54.061596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.238091, 52.639503, 53.878670>,  <41.041138, 52.807606, 53.573792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.238091, 52.639503, 53.878670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346490, 0.708680, 0.614587,
		-0.798439, -0.566705, 0.203326,
		0.492382, -0.420260, 0.762196,
		41.385807, 52.513424, 54.107327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.417740, 53.563927, 53.676075>,  <41.041138, 52.807606, 53.573792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.417740, 53.563927, 53.676075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.641636, 53.628117, 54.001266>,  <41.775974, 53.666630, 54.196381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.641636, 53.628117, 54.001266>,  <41.417740, 53.563927, 53.676075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.641636, 53.628117, 54.001266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767638, 0.269120, -0.581641,
		-0.312128, 0.949643, 0.027451,
		0.559739, 0.160474, 0.812982,
		41.809559, 53.676258, 54.245163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.583439, 54.306839, 53.768402>,  <41.417740, 53.563927, 53.676075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.583439, 54.306839, 53.768402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.868515, 54.083717, 53.938545>,  <42.039562, 53.949844, 54.040630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.868515, 54.083717, 53.938545>,  <41.583439, 54.306839, 53.768402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.868515, 54.083717, 53.938545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643650, 0.278905, -0.712690,
		0.278905, 0.781710, 0.557801,
		0.712690, -0.557801, 0.425360,
		42.082321, 53.916378, 54.066154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.156021, 54.700680, 53.860394>,  <41.583439, 54.306839, 53.768402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.156021, 54.700680, 53.860394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.231823, 54.314465, 53.789040>,  <42.277302, 54.082733, 53.746227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.231823, 54.314465, 53.789040>,  <42.156021, 54.700680, 53.860394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.231823, 54.314465, 53.789040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541404, 0.254315, -0.801377,
		0.819128, 0.055285, 0.570940,
		0.189503, -0.965540, -0.178385,
		42.288673, 54.024803, 53.735523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.836769, 54.544235, 53.950733>,  <42.156021, 54.700680, 53.860394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.836769, 54.544235, 53.950733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.656094, 54.329586, 53.665634>,  <42.547688, 54.200798, 53.494576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.656094, 54.329586, 53.665634>,  <42.836769, 54.544235, 53.950733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.656094, 54.329586, 53.665634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609653, 0.397628, -0.685722,
		0.651385, -0.744262, 0.147551,
		-0.451687, -0.536624, -0.712751,
		42.520588, 54.168598, 53.451809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.329266, 54.367043, 53.496929>,  <42.836769, 54.544235, 53.950733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.329266, 54.367043, 53.496929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.992046, 54.355202, 53.282120>,  <42.789715, 54.348099, 53.153233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.992046, 54.355202, 53.282120>,  <43.329266, 54.367043, 53.496929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.992046, 54.355202, 53.282120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498359, 0.332489, -0.800681,
		0.202255, -0.942643, -0.265552,
		-0.843049, -0.029601, -0.537022,
		42.739132, 54.346321, 53.121014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.978592, 54.439178, 53.134846>,  <43.329266, 54.367043, 53.496929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.978592, 54.439178, 53.134846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.258583, 54.163620, 53.210159>,  <44.426579, 53.998283, 53.255348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.258583, 54.163620, 53.210159>,  <43.978592, 54.439178, 53.134846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.258583, 54.163620, 53.210159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284202, -0.026828, 0.958389,
		-0.655183, -0.724360, -0.214565,
		0.699975, -0.688900, 0.188287,
		44.468575, 53.956951, 53.266647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.606201, 54.460403, 52.892292>,  <43.978592, 54.439178, 53.134846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.606201, 54.460403, 52.892292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.903488, 54.553730, 52.641472>,  <45.081860, 54.609726, 52.490978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.903488, 54.553730, 52.641472>,  <44.606201, 54.460403, 52.892292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.903488, 54.553730, 52.641472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580169, -0.691522, 0.430349,
		-0.333213, -0.683639, -0.649312,
		0.743217, 0.233313, -0.627051,
		45.126453, 54.623722, 52.453358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.010895, 53.875813, 52.409748>,  <44.606201, 54.460403, 52.892292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.010895, 53.875813, 52.409748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.237213, 54.186401, 52.520721>,  <45.373005, 54.372753, 52.587303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.237213, 54.186401, 52.520721>,  <45.010895, 53.875813, 52.409748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.237213, 54.186401, 52.520721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645342, -0.626438, 0.437160,
		0.513235, -0.068306, -0.855526,
		0.565795, 0.776472, 0.277429,
		45.406952, 54.419342, 52.603951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.651638, 53.666332, 52.447334>,  <45.010895, 53.875813, 52.409748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.651638, 53.666332, 52.447334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.684891, 53.995556, 52.672070>,  <45.704842, 54.193089, 52.806911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.684891, 53.995556, 52.672070>,  <45.651638, 53.666332, 52.447334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.684891, 53.995556, 52.672070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627677, -0.481149, 0.611978,
		0.774022, 0.301783, -0.556612,
		0.083128, 0.823057, 0.561842,
		45.709827, 54.242474, 52.840622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.389366, 53.775368, 52.702168>,  <45.651638, 53.666332, 52.447334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.389366, 53.775368, 52.702168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.187874, 53.924629, 53.013809>,  <46.066978, 54.014187, 53.200794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.187874, 53.924629, 53.013809>,  <46.389366, 53.775368, 52.702168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.187874, 53.924629, 53.013809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753473, -0.251346, 0.607538,
		0.422533, 0.893073, -0.154553,
		-0.503729, 0.373157, 0.779109,
		46.036755, 54.036575, 53.247543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.861076, 54.276592, 53.164623>,  <46.389366, 53.775368, 52.702168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.861076, 54.276592, 53.164623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.553349, 54.155220, 53.389503>,  <46.368710, 54.082397, 53.524433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.553349, 54.155220, 53.389503>,  <46.861076, 54.276592, 53.164623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.553349, 54.155220, 53.389503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590810, -0.003082, 0.806805,
		-0.243078, 0.952848, 0.181642,
		-0.769322, -0.303432, 0.562203,
		46.322552, 54.064190, 53.558163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.600876, 54.699860, 53.652588>,  <46.861076, 54.276592, 53.164623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.600876, 54.699860, 53.652588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.533974, 54.327744, 53.783184>,  <46.493832, 54.104473, 53.861542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.533974, 54.327744, 53.783184>,  <46.600876, 54.699860, 53.652588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.533974, 54.327744, 53.783184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638019, 0.150332, 0.755203,
		-0.751636, 0.334618, 0.568396,
		-0.167257, -0.930285, 0.326488,
		46.483795, 54.048656, 53.881130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.592964, 54.863609, 54.331345>,  <46.600876, 54.699860, 53.652588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.592964, 54.863609, 54.331345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.652088, 54.476875, 54.248035>,  <46.687561, 54.244835, 54.198048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.652088, 54.476875, 54.248035>,  <46.592964, 54.863609, 54.331345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.652088, 54.476875, 54.248035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784887, -0.013457, 0.619493,
		-0.601752, -0.255040, 0.756868,
		0.147811, -0.966837, -0.208275,
		46.696430, 54.186825, 54.185555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.896778, 54.523560, 54.943874>,  <46.592964, 54.863609, 54.331345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.896778, 54.523560, 54.943874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.012680, 54.267029, 54.659691>,  <47.082222, 54.113110, 54.489182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.012680, 54.267029, 54.659691>,  <46.896778, 54.523560, 54.943874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.012680, 54.267029, 54.659691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839682, -0.185904, 0.510269,
		-0.459324, -0.744409, 0.484641,
		0.289752, -0.641322, -0.710457,
		47.099606, 54.074631, 54.446552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.929123, 53.788685, 55.200195>,  <46.896778, 54.523560, 54.943874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.929123, 53.788685, 55.200195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.203785, 53.878525, 54.923630>,  <47.368584, 53.932430, 54.757690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.203785, 53.878525, 54.923630>,  <46.929123, 53.788685, 55.200195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.203785, 53.878525, 54.923630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711038, -0.405590, 0.574389,
		-0.151425, -0.886032, -0.438199,
		0.686656, 0.224599, -0.691418,
		47.409782, 53.945904, 54.716206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.325684, 53.289841, 55.077316>,  <46.929123, 53.788685, 55.200195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.325684, 53.289841, 55.077316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.565594, 53.593719, 54.976822>,  <47.709541, 53.776047, 54.916523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.565594, 53.593719, 54.976822>,  <47.325684, 53.289841, 55.077316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.565594, 53.593719, 54.976822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792680, -0.521275, 0.316119,
		0.109192, -0.388753, -0.914849,
		0.599780, 0.759700, -0.251238,
		47.745529, 53.821629, 54.901451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.860847, 52.980618, 54.725426>,  <47.325684, 53.289841, 55.077316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.860847, 52.980618, 54.725426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.954498, 53.316460, 54.921486>,  <48.010689, 53.517967, 55.039120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.954498, 53.316460, 54.921486>,  <47.860847, 52.980618, 54.725426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.954498, 53.316460, 54.921486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810941, -0.446739, 0.377887,
		0.536244, 0.309005, -0.785467,
		0.234129, 0.839607, 0.490146,
		48.024738, 53.568340, 55.068531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.537079, 53.106091, 54.341927>,  <47.860847, 52.980618, 54.725426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.537079, 53.106091, 54.341927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.467400, 53.362900, 54.640579>,  <48.425594, 53.516987, 54.819771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.467400, 53.362900, 54.640579>,  <48.537079, 53.106091, 54.341927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.467400, 53.362900, 54.640579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932872, -0.135176, 0.333882,
		0.315287, 0.754676, -0.575378,
		-0.174195, 0.642022, 0.746635,
		48.415142, 53.555508, 54.864571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.795212, 53.773899, 54.207432>,  <48.537079, 53.106091, 54.341927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.795212, 53.773899, 54.207432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.793991, 53.642555, 54.585251>,  <48.793259, 53.563751, 54.811943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.793991, 53.642555, 54.585251>,  <48.795212, 53.773899, 54.207432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.793991, 53.642555, 54.585251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995454, -0.090914, -0.028384,
		0.095193, 0.940169, 0.327140,
		-0.003056, -0.328355, 0.944549,
		48.793076, 53.544048, 54.868614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.220001, 54.235332, 54.584400>,  <48.795212, 53.773899, 54.207432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.220001, 54.235332, 54.584400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.199520, 53.848450, 54.683907>,  <49.187229, 53.616318, 54.743610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.199520, 53.848450, 54.683907>,  <49.220001, 54.235332, 54.584400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.199520, 53.848450, 54.683907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954500, -0.120673, -0.272706,
		0.293783, 0.223483, 0.929380,
		-0.051205, -0.967209, 0.248766,
		49.184158, 53.558289, 54.758537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.664986, 54.073841, 55.039391>,  <49.220001, 54.235332, 54.584400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.664986, 54.073841, 55.039391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.575665, 53.742054, 54.834599>,  <49.522072, 53.542980, 54.711723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.575665, 53.742054, 54.834599>,  <49.664986, 54.073841, 55.039391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.575665, 53.742054, 54.834599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965737, -0.117011, -0.231646,
		0.132236, -0.546161, 0.827177,
		-0.223305, -0.829467, -0.511975,
		49.508675, 53.493214, 54.681007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.254734, 53.692352, 55.206966>,  <49.664986, 54.073841, 55.039391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.254734, 53.692352, 55.206966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.068203, 53.503937, 54.907459>,  <49.956284, 53.390888, 54.727753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.068203, 53.503937, 54.907459>,  <50.254734, 53.692352, 55.206966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.068203, 53.503937, 54.907459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851225, -0.469283, -0.234922,
		-0.240728, -0.746925, 0.619801,
		-0.466332, -0.471038, -0.748771,
		49.928303, 53.362625, 54.682827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.475677, 53.005844, 55.299973>,  <50.254734, 53.692352, 55.206966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.475677, 53.005844, 55.299973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.390965, 53.117939, 54.925461>,  <50.340137, 53.185196, 54.700756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.390965, 53.117939, 54.925461>,  <50.475677, 53.005844, 55.299973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.390965, 53.117939, 54.925461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889078, -0.342553, -0.303639,
		-0.405816, -0.896729, -0.176605,
		-0.211786, 0.280238, -0.936276,
		50.327427, 53.202011, 54.644577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.623100, 52.552414, 54.686459>,  <50.475677, 53.005844, 55.299973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.623100, 52.552414, 54.686459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.683411, 52.932659, 54.577938>,  <50.719597, 53.160805, 54.512825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.683411, 52.932659, 54.577938>,  <50.623100, 52.552414, 54.686459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.683411, 52.932659, 54.577938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932858, -0.227644, -0.279203,
		-0.327174, -0.210988, -0.921109,
		0.150777, 0.950612, -0.271300,
		50.728645, 53.217842, 54.496548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.747761, 52.542023, 53.955269>,  <50.623100, 52.552414, 54.686459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.747761, 52.542023, 53.955269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.944469, 52.832336, 54.147682>,  <51.062496, 53.006523, 54.263130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.944469, 52.832336, 54.147682>,  <50.747761, 52.542023, 53.955269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.944469, 52.832336, 54.147682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870670, -0.415900, -0.262603,
		0.009470, 0.547965, -0.836448,
		0.491776, 0.725783, 0.481035,
		51.092003, 53.050072, 54.291992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.137966, 52.890980, 53.434219>,  <50.747761, 52.542023, 53.955269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.137966, 52.890980, 53.434219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.316368, 52.932667, 53.789795>,  <51.423409, 52.957680, 54.003143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.316368, 52.932667, 53.789795>,  <51.137966, 52.890980, 53.434219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.316368, 52.932667, 53.789795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858942, -0.329034, -0.392372,
		0.251599, 0.938549, -0.236269,
		0.446001, 0.104221, 0.888944,
		51.450169, 52.963932, 54.056477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.744503, 53.264885, 53.459663>,  <51.137966, 52.890980, 53.434219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.744503, 53.264885, 53.459663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.774647, 53.021255, 53.775475>,  <51.792732, 52.875076, 53.964962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.774647, 53.021255, 53.775475>,  <51.744503, 53.264885, 53.459663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.774647, 53.021255, 53.775475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891170, -0.314086, -0.327362,
		0.447367, 0.728272, 0.519118,
		0.075361, -0.609073, 0.789526,
		51.797256, 52.838535, 54.012333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.316998, 53.380432, 53.897137>,  <51.744503, 53.264885, 53.459663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.316998, 53.380432, 53.897137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.215889, 52.995689, 53.938972>,  <52.155224, 52.764843, 53.964073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.215889, 52.995689, 53.938972>,  <52.316998, 53.380432, 53.897137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.215889, 52.995689, 53.938972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922360, -0.272202, -0.274151,
		0.292165, 0.027176, 0.955982,
		-0.252770, -0.961856, 0.104594,
		52.140057, 52.707134, 53.970352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.883995, 53.234970, 54.337055>,  <52.316998, 53.380432, 53.897137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.883995, 53.234970, 54.337055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.728901, 52.947788, 54.105812>,  <52.635845, 52.775478, 53.967068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.728901, 52.947788, 54.105812>,  <52.883995, 53.234970, 54.337055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.728901, 52.947788, 54.105812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921757, -0.298407, -0.247622,
		0.005269, -0.628887, 0.777478,
		-0.387731, -0.717951, -0.578109,
		52.612583, 52.732403, 53.932381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.115852, 52.509605, 54.497803>,  <52.883995, 53.234970, 54.337055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.115852, 52.509605, 54.497803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.024609, 52.589737, 54.116684>,  <52.969860, 52.637817, 53.888012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.024609, 52.589737, 54.116684>,  <53.115852, 52.509605, 54.497803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.024609, 52.589737, 54.116684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951558, -0.161337, -0.261739,
		-0.206157, -0.966352, -0.153826,
		-0.228114, 0.200334, -0.952801,
		52.956173, 52.649837, 53.830845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.666470, 52.126991, 54.243057>,  <53.115852, 52.509605, 54.497803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.666470, 52.126991, 54.243057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.510929, 52.405819, 54.002098>,  <53.417603, 52.573116, 53.857521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.510929, 52.405819, 54.002098>,  <53.666470, 52.126991, 54.243057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.510929, 52.405819, 54.002098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917849, 0.236574, -0.318726,
		-0.079661, -0.676852, -0.731796,
		-0.388855, 0.697068, -0.602402,
		53.394272, 52.614941, 53.821377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.308273, 52.301056, 54.014465>,  <53.666470, 52.126991, 54.243057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.308273, 52.301056, 54.014465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.084457, 52.588959, 53.850090>,  <53.950169, 52.761700, 53.751465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.084457, 52.588959, 53.850090>,  <54.308273, 52.301056, 54.014465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.084457, 52.588959, 53.850090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824768, 0.532417, -0.190497,
		0.081681, -0.445521, -0.891538,
		-0.559540, 0.719752, -0.410939,
		53.916595, 52.804886, 53.726807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.361839, 52.330364, 53.286140>,  <54.308273, 52.301056, 54.014465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.361839, 52.330364, 53.286140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.284157, 52.686920, 53.449951>,  <54.237549, 52.900852, 53.548237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.284157, 52.686920, 53.449951>,  <54.361839, 52.330364, 53.286140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.284157, 52.686920, 53.449951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842374, 0.365468, -0.396029,
		-0.502684, 0.268063, -0.821858,
		-0.194202, 0.891390, 0.409524,
		54.225895, 52.954338, 53.572807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.245903, 52.845741, 52.774761>,  <54.361839, 52.330364, 53.286140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.245903, 52.845741, 52.774761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.404808, 52.973640, 53.118839>,  <54.500153, 53.050381, 53.325287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.404808, 52.973640, 53.118839>,  <54.245903, 52.845741, 52.774761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.404808, 52.973640, 53.118839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884953, 0.114698, -0.451334,
		-0.242976, 0.940535, -0.237397,
		0.397266, 0.319748, 0.860198,
		54.523987, 53.069565, 53.376900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.457088, 53.567848, 52.717548>,  <54.245903, 52.845741, 52.774761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.457088, 53.567848, 52.717548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.671249, 53.318989, 52.946030>,  <54.799747, 53.169674, 53.083118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.671249, 53.318989, 52.946030>,  <54.457088, 53.567848, 52.717548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.671249, 53.318989, 52.946030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796150, 0.146008, -0.587220,
		0.281936, 0.769165, 0.573496,
		0.535404, -0.622147, 0.571205,
		54.831871, 53.132343, 53.117390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.061569, 53.601303, 52.357830>,  <54.457088, 53.567848, 52.717548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.061569, 53.601303, 52.357830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.112740, 53.283478, 52.595249>,  <55.143440, 53.092781, 52.737701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.112740, 53.283478, 52.595249>,  <55.061569, 53.601303, 52.357830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.112740, 53.283478, 52.595249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849571, -0.221000, -0.478946,
		0.511728, 0.565530, 0.646769,
		0.127923, -0.794566, 0.593550,
		55.151115, 53.045109, 52.773315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.808060, 53.586639, 52.569172>,  <55.061569, 53.601303, 52.357830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.808060, 53.586639, 52.569172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.647667, 53.223717, 52.619789>,  <55.551434, 53.005962, 52.650162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.647667, 53.223717, 52.619789>,  <55.808060, 53.586639, 52.569172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.647667, 53.223717, 52.619789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770844, -0.408809, -0.488543,
		0.494991, -0.098346, 0.863314,
		-0.400977, -0.907305, 0.126548,
		55.527374, 52.951527, 52.657753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.287128, 53.132046, 52.679363>,  <55.808060, 53.586639, 52.569172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.287128, 53.132046, 52.679363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.006149, 52.884029, 52.539585>,  <55.837563, 52.735218, 52.455719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.006149, 52.884029, 52.539585>,  <56.287128, 53.132046, 52.679363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.006149, 52.884029, 52.539585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694759, -0.490786, -0.525775,
		0.154502, -0.612109, 0.775533,
		-0.702453, -0.620042, -0.349441,
		55.795414, 52.698017, 52.434753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.509541, 52.452225, 52.677536>,  <56.287128, 53.132046, 52.679363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.509541, 52.452225, 52.677536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.249901, 52.472660, 52.373940>,  <56.094116, 52.484921, 52.191784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.249901, 52.472660, 52.373940>,  <56.509541, 52.452225, 52.677536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.249901, 52.472660, 52.373940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591575, -0.593360, -0.545859,
		-0.478239, -0.803314, 0.354928,
		-0.649097, 0.051085, -0.758989,
		56.055172, 52.487984, 52.146244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.144009, 52.748192, 52.887783>,  <56.509541, 52.452225, 52.677536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.144009, 52.748192, 52.887783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.492416, 52.553711, 52.859680>,  <57.701462, 52.437023, 52.842819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.492416, 52.553711, 52.859680>,  <57.144009, 52.748192, 52.887783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.492416, 52.553711, 52.859680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162882, 0.150910, 0.975036,
		-0.463464, -0.860716, 0.210639,
		0.871017, -0.486203, -0.070253,
		57.753723, 52.407848, 52.838604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.196613, 52.299427, 53.495686>,  <57.144009, 52.748192, 52.887783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.196613, 52.299427, 53.495686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.561592, 52.364006, 53.345284>,  <57.780579, 52.402756, 53.255043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.561592, 52.364006, 53.345284>,  <57.196613, 52.299427, 53.495686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.561592, 52.364006, 53.345284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376426, 0.029148, 0.925988,
		0.160461, -0.986450, -0.034178,
		0.912445, 0.161450, -0.376002,
		57.835327, 52.412441, 53.232483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.815529, 51.799202, 53.616558>,  <57.196613, 52.299427, 53.495686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.815529, 51.799202, 53.616558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.936462, 52.178146, 53.574425>,  <58.009022, 52.405514, 53.549145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.936462, 52.178146, 53.574425>,  <57.815529, 51.799202, 53.616558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.936462, 52.178146, 53.574425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334786, -0.002074, 0.942292,
		0.892476, -0.320149, -0.317791,
		0.302333, 0.947365, -0.105330,
		58.027161, 52.462357, 53.542824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.629738, 51.971050, 53.573029>,  <57.815529, 51.799202, 53.616558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.629738, 51.971050, 53.573029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.401894, 52.253891, 53.740623>,  <58.265186, 52.423595, 53.841179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.401894, 52.253891, 53.740623>,  <58.629738, 51.971050, 53.573029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.401894, 52.253891, 53.740623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608744, 0.020433, 0.793104,
		0.552241, 0.706820, -0.442081,
		-0.569614, 0.707098, 0.418988,
		58.231010, 52.466019, 53.866322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.024799, 52.464409, 53.939304>,  <58.629738, 51.971050, 53.573029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.024799, 52.464409, 53.939304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.665855, 52.490097, 54.113945>,  <58.450489, 52.505508, 54.218731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.665855, 52.490097, 54.113945>,  <59.024799, 52.464409, 53.939304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.665855, 52.490097, 54.113945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440498, 0.189944, 0.877429,
		-0.026582, 0.979692, -0.198737,
		-0.897360, 0.064219, 0.436602,
		58.396648, 52.509361, 54.244926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.112957, 53.109009, 54.411545>,  <59.024799, 52.464409, 53.939304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.112957, 53.109009, 54.411545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.858284, 52.816460, 54.509304>,  <58.705482, 52.640930, 54.567959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.858284, 52.816460, 54.509304>,  <59.112957, 53.109009, 54.411545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.858284, 52.816460, 54.509304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398088, -0.040294, 0.916462,
		-0.660428, 0.680785, 0.316806,
		-0.636679, -0.731374, 0.244401,
		58.667282, 52.597046, 54.582626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.832554, 53.239780, 55.039726>,  <59.112957, 53.109009, 54.411545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.832554, 53.239780, 55.039726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.788376, 52.843231, 55.011490>,  <58.761871, 52.605301, 54.994549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.788376, 52.843231, 55.011490>,  <58.832554, 53.239780, 55.039726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.788376, 52.843231, 55.011490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153936, -0.087230, 0.984223,
		-0.981889, 0.097833, 0.162242,
		-0.110442, -0.991373, -0.070591,
		58.755245, 52.545818, 54.990314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.228065, 52.875118, 55.442169>,  <58.832554, 53.239780, 55.039726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.228065, 52.875118, 55.442169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.563179, 52.660107, 55.480507>,  <58.764248, 52.531101, 55.503510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.563179, 52.660107, 55.480507>,  <58.228065, 52.875118, 55.442169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.563179, 52.660107, 55.480507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080313, 0.052318, 0.995396,
		-0.540064, -0.841624, 0.000661,
		0.837783, -0.537524, 0.095848,
		58.814514, 52.498848, 55.509262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.173634, 52.308407, 55.967220>,  <58.228065, 52.875118, 55.442169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.173634, 52.308407, 55.967220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.550560, 52.440216, 55.943733>,  <58.776718, 52.519302, 55.929642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.550560, 52.440216, 55.943733>,  <58.173634, 52.308407, 55.967220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.550560, 52.440216, 55.943733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008102, 0.197824, 0.980204,
		0.334615, -0.923191, 0.189083,
		0.942320, 0.329523, -0.058715,
		58.833256, 52.539074, 55.926117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.504898, 52.267197, 56.600677>,  <58.173634, 52.308407, 55.967220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.504898, 52.267197, 56.600677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.662605, 52.589222, 56.423393>,  <58.757229, 52.782436, 56.317024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.662605, 52.589222, 56.423393>,  <58.504898, 52.267197, 56.600677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.662605, 52.589222, 56.423393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158349, 0.415548, 0.895682,
		0.905252, -0.423316, 0.036355,
		0.394263, 0.805061, -0.443207,
		58.780884, 52.830742, 56.290432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.033340, 52.398216, 57.038879>,  <58.504898, 52.267197, 56.600677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.033340, 52.398216, 57.038879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.900009, 52.738277, 56.875839>,  <58.820011, 52.942314, 56.778015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.900009, 52.738277, 56.875839>,  <59.033340, 52.398216, 57.038879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.900009, 52.738277, 56.875839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020669, 0.438810, 0.898342,
		0.942583, 0.291020, -0.163841,
		-0.333331, 0.850149, -0.407600,
		58.800011, 52.993320, 56.753559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.536846, 52.911026, 57.150604>,  <59.033340, 52.398216, 57.038879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.536846, 52.911026, 57.150604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.198944, 53.120445, 57.106262>,  <58.996204, 53.246098, 57.079659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.198944, 53.120445, 57.106262>,  <59.536846, 52.911026, 57.150604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.198944, 53.120445, 57.106262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154999, 0.437622, 0.885699,
		0.512218, 0.731015, -0.450832,
		-0.844753, 0.523550, -0.110851,
		58.945518, 53.277512, 57.073006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.652634, 53.724579, 57.192471>,  <59.536846, 52.911026, 57.150604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.652634, 53.724579, 57.192471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.302261, 53.627007, 57.358955>,  <59.092037, 53.568462, 57.458847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.302261, 53.627007, 57.358955>,  <59.652634, 53.724579, 57.192471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.302261, 53.627007, 57.358955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354179, 0.260628, 0.898126,
		-0.327560, 0.934114, -0.141897,
		-0.875935, -0.243933, 0.416215,
		59.039482, 53.553825, 57.483818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.306179, 53.564671, 57.354675>,  <59.652634, 53.724579, 57.192471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.306179, 53.564671, 57.354675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.639046, 53.680313, 57.165398>,  <60.838764, 53.749699, 57.051830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.639046, 53.680313, 57.165398>,  <60.306179, 53.564671, 57.354675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.639046, 53.680313, 57.165398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178793, 0.947650, 0.264560,
		0.524909, -0.135555, 0.840295,
		0.832168, 0.289109, -0.473194,
		60.888695, 53.767044, 57.023438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.684910, 53.975250, 57.888237>,  <60.306179, 53.564671, 57.354675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.684910, 53.975250, 57.888237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.751503, 54.080811, 57.508209>,  <60.791458, 54.144146, 57.280193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.751503, 54.080811, 57.508209>,  <60.684910, 53.975250, 57.888237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.751503, 54.080811, 57.508209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219052, 0.949342, 0.225314,
		0.961404, 0.170603, 0.215862,
		0.166488, 0.263903, -0.950072,
		60.801449, 54.159981, 57.223186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.439411, 54.021683, 57.730659>,  <60.684910, 53.975250, 57.888237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.439411, 54.021683, 57.730659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.690010, 54.332542, 57.706848>,  <61.840370, 54.519058, 57.692562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.690010, 54.332542, 57.706848>,  <61.439411, 54.021683, 57.730659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.690010, 54.332542, 57.706848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006474, -0.081562, -0.996647,
		-0.779394, 0.624014, -0.056130,
		0.626500, 0.777145, -0.059529,
		61.877960, 54.565685, 57.688988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.198830, 54.566959, 57.256287>,  <61.439411, 54.021683, 57.730659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.198830, 54.566959, 57.256287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.595619, 54.521305, 57.278053>,  <61.833694, 54.493912, 57.291111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.595619, 54.521305, 57.278053>,  <61.198830, 54.566959, 57.256287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.595619, 54.521305, 57.278053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039304, -0.130690, -0.990644,
		0.120180, 0.984831, -0.125155,
		0.991974, -0.114137, 0.054414,
		61.893211, 54.487064, 57.294376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.572365, 55.059689, 56.911903>,  <61.198830, 54.566959, 57.256287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.572365, 55.059689, 56.911903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.773911, 54.714546, 56.895882>,  <61.894836, 54.507462, 56.886269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.773911, 54.714546, 56.895882>,  <61.572365, 55.059689, 56.911903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.773911, 54.714546, 56.895882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005767, 0.049727, -0.998746,
		0.863766, 0.502998, 0.030031,
		0.503860, -0.862856, -0.040051,
		61.925068, 54.455688, 56.883865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.961967, 55.065578, 56.306026>,  <61.572365, 55.059689, 56.911903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.961967, 55.065578, 56.306026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.940453, 54.674244, 56.385986>,  <61.927544, 54.439442, 56.433964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.940453, 54.674244, 56.385986>,  <61.961967, 55.065578, 56.306026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.940453, 54.674244, 56.385986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159201, -0.189225, -0.968942,
		0.985780, -0.083944, -0.145574,
		-0.053791, -0.978339, 0.199898,
		61.924316, 54.380741, 56.445957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.609795, 55.375477, 56.633148>,  <61.961967, 55.065578, 56.306026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.609795, 55.375477, 56.633148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.805504, 55.622910, 56.387230>,  <62.922928, 55.771370, 56.239677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.805504, 55.622910, 56.387230>,  <62.609795, 55.375477, 56.633148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.805504, 55.622910, 56.387230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433696, 0.439026, 0.786869,
		0.756653, -0.651627, -0.053473,
		0.489269, 0.618578, -0.614799,
		62.952286, 55.808483, 56.202789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.316853, 55.273415, 56.809879>,  <62.609795, 55.375477, 56.633148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.316853, 55.273415, 56.809879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.214439, 55.635529, 56.674286>,  <63.152992, 55.852798, 56.592930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.214439, 55.635529, 56.674286>,  <63.316853, 55.273415, 56.809879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.214439, 55.635529, 56.674286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463585, 0.422701, 0.778725,
		0.848256, 0.042230, -0.527900,
		-0.256029, 0.905285, -0.338981,
		63.137630, 55.907116, 56.572590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.899559, 55.688740, 56.779751>,  <63.316853, 55.273415, 56.809879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.899559, 55.688740, 56.779751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.597748, 55.941128, 56.851929>,  <63.416660, 56.092560, 56.895233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.597748, 55.941128, 56.851929>,  <63.899559, 55.688740, 56.779751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.597748, 55.941128, 56.851929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547328, 0.453319, 0.703515,
		0.362101, 0.629584, -0.687391,
		-0.754529, 0.630972, 0.180442,
		63.371387, 56.130421, 56.906063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.240601, 55.159950, 56.558456>,  <63.899559, 55.688740, 56.779751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.240601, 55.159950, 56.558456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.593048, 55.000381, 56.456886>,  <64.804520, 54.904640, 56.395947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.593048, 55.000381, 56.456886>,  <64.240601, 55.159950, 56.558456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.593048, 55.000381, 56.456886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143662, 0.737413, -0.659988,
		0.450531, 0.545053, 0.707064,
		0.881126, -0.398922, -0.253924,
		64.857384, 54.880703, 56.380711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.856262, 55.564060, 56.618397>,  <64.240601, 55.159950, 56.558456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.856262, 55.564060, 56.618397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.867355, 55.307922, 56.311363>,  <64.874016, 55.154240, 56.127144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.867355, 55.307922, 56.311363>,  <64.856262, 55.564060, 56.618397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.867355, 55.307922, 56.311363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042657, 0.766426, -0.640915,
		0.998705, 0.050522, -0.006056,
		0.027739, -0.640343, -0.767588,
		64.875679, 55.115818, 56.081085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.908234, 55.083893, 57.240463>,  <64.856262, 55.564060, 56.618397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.908234, 55.083893, 57.240463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.235298, 54.864868, 57.169350>,  <65.431534, 54.733452, 57.126682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.235298, 54.864868, 57.169350>,  <64.908234, 55.083893, 57.240463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.235298, 54.864868, 57.169350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555638, 0.669776, 0.492611,
		-0.150662, -0.501571, 0.851897,
		0.817659, -0.547564, -0.177782,
		65.480598, 54.700600, 57.116016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.371063, 55.077267, 57.883671>,  <64.908234, 55.083893, 57.240463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.371063, 55.077267, 57.883671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.669678, 54.964355, 57.642670>,  <65.848846, 54.896610, 57.498070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.669678, 54.964355, 57.642670>,  <65.371063, 55.077267, 57.883671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.669678, 54.964355, 57.642670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648837, 0.509365, 0.565294,
		0.147326, -0.812937, 0.563408,
		0.746529, -0.282277, -0.602507,
		65.893639, 54.879673, 57.461918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.059700, 54.774490, 58.162342>,  <65.371063, 55.077267, 57.883671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.059700, 54.774490, 58.162342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.135612, 54.947433, 57.809738>,  <66.181160, 55.051197, 57.598175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.135612, 54.947433, 57.809738>,  <66.059700, 54.774490, 58.162342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.135612, 54.947433, 57.809738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687747, 0.582217, 0.433620,
		0.700707, -0.688543, -0.186863,
		0.189772, 0.432355, -0.881507,
		66.192543, 55.077141, 57.545284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.633881, 54.600273, 57.940815>,  <66.059700, 54.774490, 58.162342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.633881, 54.600273, 57.940815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.557816, 54.975060, 57.823555>,  <66.512177, 55.199932, 57.753197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.557816, 54.975060, 57.823555>,  <66.633881, 54.600273, 57.940815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.557816, 54.975060, 57.823555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821973, 0.315224, 0.474336,
		0.536845, -0.150766, -0.830101,
		-0.190153, 0.936965, -0.293152,
		66.500771, 55.256149, 57.735611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.958237, 54.936638, 57.443550>,  <66.633881, 54.600273, 57.940815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.958237, 54.936638, 57.443550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.832077, 55.167313, 57.745003>,  <66.756386, 55.305717, 57.925873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.832077, 55.167313, 57.745003>,  <66.958237, 54.936638, 57.443550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.832077, 55.167313, 57.745003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939622, 0.078639, 0.333057,
		0.132805, 0.813172, -0.566669,
		-0.315395, 0.576686, 0.753630,
		66.737457, 55.340317, 57.971092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.392677, 55.614872, 57.459087>,  <66.958237, 54.936638, 57.443550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.392677, 55.614872, 57.459087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.255798, 55.496796, 57.815910>,  <67.173676, 55.425949, 58.030003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.255798, 55.496796, 57.815910>,  <67.392677, 55.614872, 57.459087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.255798, 55.496796, 57.815910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921705, 0.079099, 0.379742,
		-0.182657, 0.952159, 0.245011,
		-0.342194, -0.295190, 0.892057,
		67.153137, 55.408237, 58.083527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.745674, 56.099720, 57.908260>,  <67.392677, 55.614872, 57.459087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.745674, 56.099720, 57.908260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.635277, 55.745605, 58.057976>,  <67.569038, 55.533138, 58.147804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.635277, 55.745605, 58.057976>,  <67.745674, 56.099720, 57.908260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.635277, 55.745605, 58.057976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936626, -0.160307, 0.311503,
		-0.215769, 0.436542, 0.873427,
		-0.276000, -0.885287, 0.374288,
		67.552475, 55.480019, 58.170261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.533058, 56.069210, 57.938618>,  <67.745674, 56.099720, 57.908260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.533058, 56.069210, 57.938618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.898727, 55.948483, 57.830399>,  <69.118126, 55.876045, 57.765465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.898727, 55.948483, 57.830399>,  <68.533058, 56.069210, 57.938618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.898727, 55.948483, 57.830399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405167, 0.661665, 0.630904,
		-0.011403, -0.686372, 0.727161,
		0.914172, -0.301816, -0.270550,
		69.172981, 55.857937, 57.749233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.952347, 55.868065, 58.467476>,  <68.533058, 56.069210, 57.938618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.952347, 55.868065, 58.467476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.204674, 55.988701, 58.181503>,  <69.356071, 56.061081, 58.009922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.204674, 55.988701, 58.181503>,  <68.952347, 55.868065, 58.467476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.204674, 55.988701, 58.181503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493228, 0.555427, 0.669497,
		0.599003, -0.774949, 0.201617,
		0.630810, 0.301588, -0.714930,
		69.393913, 56.079178, 57.967026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.415977, 56.076065, 58.773083>,  <68.952347, 55.868065, 58.467476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.415977, 56.076065, 58.773083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.516342, 56.265251, 58.435242>,  <69.576561, 56.378765, 58.232536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.516342, 56.265251, 58.435242>,  <69.415977, 56.076065, 58.773083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.516342, 56.265251, 58.435242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562958, 0.638493, 0.524790,
		0.787480, -0.607146, -0.106061,
		0.250905, 0.472970, -0.844598,
		69.591614, 56.407143, 58.181862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.248604, 56.115017, 59.487644>,  <69.415977, 56.076065, 58.773083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.248604, 56.115017, 59.487644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.859650, 56.071213, 59.405205>,  <68.626274, 56.044930, 59.355740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.859650, 56.071213, 59.405205>,  <69.248604, 56.115017, 59.487644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.859650, 56.071213, 59.405205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035241, 0.804055, -0.593509,
		0.230709, -0.584382, -0.777991,
		-0.972384, -0.109511, -0.206097,
		68.567932, 56.038361, 59.343376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.388237, 56.829121, 59.327339>,  <69.248604, 56.115017, 59.487644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.388237, 56.829121, 59.327339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.641014, 56.525475, 59.389824>,  <69.792679, 56.343288, 59.427315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.641014, 56.525475, 59.389824>,  <69.388237, 56.829121, 59.327339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.641014, 56.525475, 59.389824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501035, 0.246371, -0.829618,
		0.591287, 0.602535, 0.536033,
		0.631937, -0.759113, 0.156215,
		69.830597, 56.297741, 59.436687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.188408, 56.859005, 59.238750>,  <69.388237, 56.829121, 59.327339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.188408, 56.859005, 59.238750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.066086, 56.503387, 59.102463>,  <69.992691, 56.290016, 59.020691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.066086, 56.503387, 59.102463>,  <70.188408, 56.859005, 59.238750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.066086, 56.503387, 59.102463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265420, 0.264076, -0.927263,
		0.914351, -0.373992, 0.155214,
		-0.305801, -0.889041, -0.340723,
		69.974342, 56.236675, 59.000244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.728264, 56.412544, 58.970398>,  <70.188408, 56.859005, 59.238750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.728264, 56.412544, 58.970398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.385185, 56.377071, 58.767822>,  <70.179337, 56.355785, 58.646278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.385185, 56.377071, 58.767822>,  <70.728264, 56.412544, 58.970398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.385185, 56.377071, 58.767822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483488, 0.195911, -0.853146,
		0.174867, -0.976604, -0.125162,
		-0.857707, -0.088673, -0.506435,
		70.127876, 56.350468, 58.615891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.373085, 56.010910, 58.896839>,  <70.728264, 56.412544, 58.970398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.373085, 56.010910, 58.896839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.329414, 56.375538, 58.738289>,  <71.303207, 56.594315, 58.643158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.329414, 56.375538, 58.738289>,  <71.373085, 56.010910, 58.896839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.329414, 56.375538, 58.738289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805137, 0.314957, 0.502550,
		0.582952, -0.264263, -0.768330,
		-0.109186, 0.911574, -0.396373,
		71.296661, 56.649010, 58.619377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.030258, 56.319218, 58.720192>,  <71.373085, 56.010910, 58.896839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.030258, 56.319218, 58.720192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.776764, 56.615314, 58.809998>,  <71.624664, 56.792973, 58.863884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.776764, 56.615314, 58.809998>,  <72.030258, 56.319218, 58.720192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.776764, 56.615314, 58.809998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682539, 0.398527, 0.612631,
		0.364020, 0.541493, -0.757809,
		-0.633743, 0.740244, 0.224519,
		71.586639, 56.837387, 58.877354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.365654, 56.949734, 58.508007>,  <72.030258, 56.319218, 58.720192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.365654, 56.949734, 58.508007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.115837, 56.973286, 58.819519>,  <71.965950, 56.987415, 59.006424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.115837, 56.973286, 58.819519>,  <72.365654, 56.949734, 58.508007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.115837, 56.973286, 58.819519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766159, 0.239646, 0.596297,
		-0.151524, 0.969073, -0.194775,
		-0.624533, 0.058876, 0.778776,
		71.928474, 56.990948, 59.053150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.347626, 57.602360, 58.928864>,  <72.365654, 56.949734, 58.508007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.347626, 57.602360, 58.928864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.187134, 57.352837, 59.197159>,  <72.090843, 57.203125, 59.358135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.187134, 57.352837, 59.197159>,  <72.347626, 57.602360, 58.928864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.187134, 57.352837, 59.197159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708818, 0.252355, 0.658706,
		-0.580167, 0.739719, 0.340914,
		-0.401226, -0.623806, 0.670734,
		72.066765, 57.165695, 59.398380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.319214, 57.960293, 59.583904>,  <72.347626, 57.602360, 58.928864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.319214, 57.960293, 59.583904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.322212, 57.563839, 59.636971>,  <72.324013, 57.325966, 59.668812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.322212, 57.563839, 59.636971>,  <72.319214, 57.960293, 59.583904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.322212, 57.563839, 59.636971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731241, 0.095932, 0.675340,
		-0.682079, 0.091948, 0.725475,
		0.007500, -0.991132, 0.132669,
		72.324463, 57.266499, 59.676773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.996536, 58.079262, 60.044090>,  <72.319214, 57.960293, 59.583904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.996536, 58.079262, 60.044090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.834938, 57.713459, 60.035393>,  <72.737984, 57.493977, 60.030174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.834938, 57.713459, 60.035393>,  <72.996536, 58.079262, 60.044090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.834938, 57.713459, 60.035393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686193, -0.318680, 0.653897,
		-0.604923, 0.249243, 0.756271,
		-0.403988, -0.914506, -0.021748,
		72.713745, 57.439106, 60.028870>
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
