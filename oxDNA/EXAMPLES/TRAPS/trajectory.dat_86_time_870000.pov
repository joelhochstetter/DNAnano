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
	<36.553959, 53.069771, 49.933418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.464161, 52.990856, 49.551701>,  <36.410282, 52.943508, 49.322670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.464161, 52.990856, 49.551701>,  <36.553959, 53.069771, 49.933418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.464161, 52.990856, 49.551701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566053, 0.823534, -0.037093,
		0.793213, 0.531855, -0.296551,
		-0.224492, -0.197286, -0.954297,
		36.396812, 52.931671, 49.265411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822063, 53.543724, 49.301334>,  <36.553959, 53.069771, 49.933418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.822063, 53.543724, 49.301334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.480656, 53.361004, 49.201065>,  <36.275810, 53.251373, 49.140903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.480656, 53.361004, 49.201065>,  <36.822063, 53.543724, 49.301334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480656, 53.361004, 49.201065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405693, 0.884482, -0.230444,
		0.326985, -0.094991, -0.940243,
		-0.853519, -0.456802, -0.250675,
		36.224602, 53.223965, 49.125862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545502, 53.398193, 49.275017>,  <36.822063, 53.543724, 49.301334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.545502, 53.398193, 49.275017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576672, 53.578747, 48.919449>,  <37.595375, 53.687080, 48.706108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576672, 53.578747, 48.919449>,  <37.545502, 53.398193, 49.275017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576672, 53.578747, 48.919449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996947, -0.039721, 0.067228,
		-0.004963, -0.891445, -0.453103,
		0.077928, 0.451386, -0.888920,
		37.600048, 53.714161, 48.652771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.020535, 53.030773, 48.806736>,  <37.545502, 53.398193, 49.275017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.020535, 53.030773, 48.806736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.030567, 53.420349, 48.716568>,  <38.036587, 53.654095, 48.662468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.030567, 53.420349, 48.716568>,  <38.020535, 53.030773, 48.806736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.030567, 53.420349, 48.716568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982234, -0.065956, -0.175686,
		-0.185975, -0.217008, -0.958290,
		0.025079, 0.973939, -0.225419,
		38.038090, 53.712532, 48.648941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313858, 53.186001, 48.164715>,  <38.020535, 53.030773, 48.806736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313858, 53.186001, 48.164715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.357239, 53.508785, 48.396942>,  <38.383266, 53.702454, 48.536278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.357239, 53.508785, 48.396942>,  <38.313858, 53.186001, 48.164715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.357239, 53.508785, 48.396942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994096, -0.086200, -0.065893,
		-0.003127, 0.584286, -0.811542,
		0.108455, 0.806957, 0.580567,
		38.389774, 53.750874, 48.571114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020840, 53.415920, 47.870987>,  <38.313858, 53.186001, 48.164715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.020840, 53.415920, 47.870987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.932468, 53.607826, 48.210640>,  <38.879448, 53.722969, 48.414433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.932468, 53.607826, 48.210640>,  <39.020840, 53.415920, 47.870987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932468, 53.607826, 48.210640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971499, 0.031557, 0.234934,
		0.085917, 0.876830, -0.473062,
		-0.220926, 0.479764, 0.849128,
		38.866192, 53.751755, 48.465378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526817, 54.029392, 47.956821>,  <39.020840, 53.415920, 47.870987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.526817, 54.029392, 47.956821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.385468, 53.855122, 48.287956>,  <39.300659, 53.750557, 48.486637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.385468, 53.855122, 48.287956>,  <39.526817, 54.029392, 47.956821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385468, 53.855122, 48.287956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933475, -0.222180, 0.281532,
		0.061271, 0.872249, 0.485208,
		-0.353370, -0.435680, 0.827836,
		39.279457, 53.724419, 48.536308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.932034, 54.294117, 48.619678>,  <39.526817, 54.029392, 47.956821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.932034, 54.294117, 48.619678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.764160, 53.931591, 48.639511>,  <39.663437, 53.714077, 48.651409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.764160, 53.931591, 48.639511>,  <39.932034, 54.294117, 48.619678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.764160, 53.931591, 48.639511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867174, -0.384229, 0.316825,
		-0.268094, 0.175959, 0.947188,
		-0.419685, -0.906315, 0.049577,
		39.638256, 53.659695, 48.654385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.100792, 53.980640, 49.232834>,  <39.932034, 54.294117, 48.619678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.100792, 53.980640, 49.232834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.019703, 53.719284, 48.941086>,  <39.971050, 53.562469, 48.766037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.019703, 53.719284, 48.941086>,  <40.100792, 53.980640, 49.232834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.019703, 53.719284, 48.941086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835637, -0.503736, 0.219000,
		-0.510504, -0.565092, 0.648118,
		-0.202725, -0.653392, -0.729370,
		39.958885, 53.523266, 48.722275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.441700, 53.414471, 49.341736>,  <40.100792, 53.980640, 49.232834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.441700, 53.414471, 49.341736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.322590, 53.243073, 49.000511>,  <40.251122, 53.140236, 48.795776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.322590, 53.243073, 49.000511>,  <40.441700, 53.414471, 49.341736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.322590, 53.243073, 49.000511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725524, -0.682354, 0.089487,
		-0.620437, -0.592272, 0.514074,
		-0.297780, -0.428494, -0.853065,
		40.233257, 53.114525, 48.744591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.364258, 52.614513, 49.500134>,  <40.441700, 53.414471, 49.341736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.364258, 52.614513, 49.500134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.477318, 52.716805, 49.130333>,  <40.545155, 52.778179, 48.908451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.477318, 52.716805, 49.130333>,  <40.364258, 52.614513, 49.500134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.477318, 52.716805, 49.130333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612502, -0.789852, -0.031218,
		-0.738206, -0.557437, -0.379889,
		0.282655, 0.255728, -0.924505,
		40.562115, 52.793522, 48.852982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.372772, 52.049538, 49.073330>,  <40.364258, 52.614513, 49.500134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.372772, 52.049538, 49.073330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.635262, 52.302170, 48.908176>,  <40.792755, 52.453751, 48.809086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.635262, 52.302170, 48.908176>,  <40.372772, 52.049538, 49.073330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.635262, 52.302170, 48.908176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697326, -0.716653, 0.012061,
		-0.288277, -0.295830, -0.910704,
		0.656226, 0.631580, -0.412884,
		40.832130, 52.491642, 48.784309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.809223, 51.670052, 48.657082>,  <40.372772, 52.049538, 49.073330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.809223, 51.670052, 48.657082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.005424, 52.010914, 48.730011>,  <41.123146, 52.215431, 48.773769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.005424, 52.010914, 48.730011>,  <40.809223, 51.670052, 48.657082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.005424, 52.010914, 48.730011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870379, -0.489382, -0.054271,
		0.042976, 0.185307, -0.981741,
		0.490503, 0.852154, 0.182319,
		41.152576, 52.266560, 48.784706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.418068, 51.350826, 48.551514>,  <40.809223, 51.670052, 48.657082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.418068, 51.350826, 48.551514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.534386, 51.700325, 48.707466>,  <41.604176, 51.910023, 48.801037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.534386, 51.700325, 48.707466>,  <41.418068, 51.350826, 48.551514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.534386, 51.700325, 48.707466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916179, -0.371741, 0.149752,
		0.275781, 0.313658, -0.908605,
		0.290795, 0.873744, 0.389885,
		41.621624, 51.962448, 48.824432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.005516, 51.552956, 48.104420>,  <41.418068, 51.350826, 48.551514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.005516, 51.552956, 48.104420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.002884, 51.702999, 48.475201>,  <42.001305, 51.793026, 48.697670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.002884, 51.702999, 48.475201>,  <42.005516, 51.552956, 48.104420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.002884, 51.702999, 48.475201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903500, -0.395024, 0.166266,
		0.428538, 0.838599, -0.336314,
		-0.006578, 0.375111, 0.926956,
		42.000912, 51.815533, 48.753288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.512264, 52.105110, 48.223164>,  <42.005516, 51.552956, 48.104420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.512264, 52.105110, 48.223164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.430344, 51.915123, 48.565502>,  <42.381191, 51.801132, 48.770905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.430344, 51.915123, 48.565502>,  <42.512264, 52.105110, 48.223164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.430344, 51.915123, 48.565502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943713, -0.327840, 0.043886,
		0.259735, 0.816658, 0.515371,
		-0.204799, -0.474964, 0.855843,
		42.368904, 51.772633, 48.822254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.022949, 52.297321, 48.758156>,  <42.512264, 52.105110, 48.223164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.022949, 52.297321, 48.758156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.869713, 51.944080, 48.866501>,  <42.777771, 51.732136, 48.931507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.869713, 51.944080, 48.866501>,  <43.022949, 52.297321, 48.758156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.869713, 51.944080, 48.866501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922998, -0.354458, 0.149782,
		-0.036265, 0.307383, 0.950895,
		-0.383092, -0.883106, 0.270859,
		42.754784, 51.679150, 48.947758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.403484, 52.021481, 49.259892>,  <43.022949, 52.297321, 48.758156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.403484, 52.021481, 49.259892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.299152, 51.731304, 49.005112>,  <43.236553, 51.557198, 48.852245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.299152, 51.731304, 49.005112>,  <43.403484, 52.021481, 49.259892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.299152, 51.731304, 49.005112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961972, -0.250743, -0.108347,
		-0.081111, -0.640987, 0.763254,
		-0.260829, -0.725441, -0.636949,
		43.220905, 51.513672, 48.814026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.534943, 51.296543, 49.460678>,  <43.403484, 52.021481, 49.259892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.534943, 51.296543, 49.460678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.791824, 51.011528, 49.573723>,  <43.945953, 50.840519, 49.641552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.791824, 51.011528, 49.573723>,  <43.534943, 51.296543, 49.460678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.791824, 51.011528, 49.573723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602776, 0.241665, -0.760434,
		0.473537, 0.658706, 0.584696,
		0.642203, -0.712534, 0.282615,
		43.984486, 50.797768, 49.658508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.232311, 51.528812, 49.471149>,  <43.534943, 51.296543, 49.460678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.232311, 51.528812, 49.471149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.255188, 51.131165, 49.434353>,  <44.268913, 50.892578, 49.412273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.255188, 51.131165, 49.434353>,  <44.232311, 51.528812, 49.471149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.255188, 51.131165, 49.434353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640467, 0.107221, -0.760464,
		0.765853, -0.015424, 0.642830,
		0.057195, -0.994116, -0.091994,
		44.272346, 50.832932, 49.406754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.856815, 51.409328, 49.117123>,  <44.232311, 51.528812, 49.471149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.856815, 51.409328, 49.117123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.729729, 51.032509, 49.160202>,  <44.653477, 50.806416, 49.186050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.729729, 51.032509, 49.160202>,  <44.856815, 51.409328, 49.117123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.729729, 51.032509, 49.160202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773341, -0.323174, -0.545438,
		0.548635, -0.090007, 0.831203,
		-0.317716, -0.942049, 0.107699,
		44.634415, 50.749893, 49.192513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.380486, 51.010231, 49.491314>,  <44.856815, 51.409328, 49.117123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.380486, 51.010231, 49.491314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.176922, 50.805202, 49.214684>,  <45.054783, 50.682186, 49.048706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.176922, 50.805202, 49.214684>,  <45.380486, 51.010231, 49.491314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.176922, 50.805202, 49.214684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859274, -0.350648, -0.372417,
		-0.051608, -0.783780, 0.618890,
		-0.508905, -0.512576, -0.691578,
		45.024250, 50.651428, 49.007210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.601765, 50.228546, 49.490990>,  <45.380486, 51.010231, 49.491314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.601765, 50.228546, 49.490990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.447155, 50.367973, 49.149441>,  <45.354389, 50.451630, 48.944511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.447155, 50.367973, 49.149441>,  <45.601765, 50.228546, 49.490990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.447155, 50.367973, 49.149441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699377, -0.492765, -0.517740,
		-0.601226, -0.797298, -0.053314,
		-0.386522, 0.348565, -0.853875,
		45.331200, 50.472542, 48.893280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.216492, 49.674156, 49.021126>,  <45.601765, 50.228546, 49.490990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.216492, 49.674156, 49.021126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.401249, 49.983616, 48.847637>,  <45.512104, 50.169292, 48.743542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.401249, 49.983616, 48.847637>,  <45.216492, 49.674156, 49.021126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.401249, 49.983616, 48.847637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670074, -0.624766, -0.400835,
		-0.581084, -0.105486, -0.806978,
		0.461890, 0.773654, -0.433725,
		45.539818, 50.215714, 48.717518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.812180, 49.087456, 49.108303>,  <45.216492, 49.674156, 49.021126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.812180, 49.087456, 49.108303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.563187, 48.833782, 49.291748>,  <44.413792, 48.681580, 49.401814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.563187, 48.833782, 49.291748>,  <44.812180, 49.087456, 49.108303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.563187, 48.833782, 49.291748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706984, -0.706999, -0.018055,
		0.335688, 0.312991, 0.888454,
		-0.622485, -0.634184, 0.458611,
		44.376442, 48.643528, 49.429333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.954197, 48.353992, 49.623238>,  <44.812180, 49.087456, 49.108303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.954197, 48.353992, 49.623238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.149284, 48.685459, 49.733109>,  <45.266335, 48.884338, 49.799030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.149284, 48.685459, 49.733109>,  <44.954197, 48.353992, 49.623238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.149284, 48.685459, 49.733109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872494, -0.473425, -0.120929,
		0.029831, 0.298634, -0.953901,
		0.487714, 0.828665, 0.274679,
		45.295597, 48.934059, 49.815514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.566090, 48.262547, 49.242027>,  <44.954197, 48.353992, 49.623238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.566090, 48.262547, 49.242027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.666946, 48.501472, 49.546562>,  <45.727459, 48.644829, 49.729282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.666946, 48.501472, 49.546562>,  <45.566090, 48.262547, 49.242027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.666946, 48.501472, 49.546562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902960, -0.428141, 0.036858,
		0.347977, 0.678166, -0.647304,
		0.252142, 0.597315, 0.761340,
		45.742588, 48.680668, 49.774963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.320892, 48.118130, 49.314316>,  <45.566090, 48.262547, 49.242027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.320892, 48.118130, 49.314316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.360554, 48.345222, 49.641205>,  <46.384350, 48.481476, 49.837337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.360554, 48.345222, 49.641205>,  <46.320892, 48.118130, 49.314316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.360554, 48.345222, 49.641205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994829, -0.038399, -0.094028,
		-0.022002, 0.822319, -0.568601,
		0.099155, 0.567729, 0.817222,
		46.390301, 48.515541, 49.886372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.719872, 48.564487, 49.185719>,  <46.320892, 48.118130, 49.314316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.719872, 48.564487, 49.185719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.765411, 48.532921, 49.581863>,  <46.792736, 48.513981, 49.819550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.765411, 48.532921, 49.581863>,  <46.719872, 48.564487, 49.185719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.765411, 48.532921, 49.581863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993410, 0.022347, -0.112420,
		-0.013260, 0.996631, 0.080937,
		0.113850, -0.078913, 0.990359,
		46.799564, 48.509247, 49.878971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.212399, 49.143856, 49.368206>,  <46.719872, 48.564487, 49.185719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.212399, 49.143856, 49.368206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.229187, 48.834671, 49.621429>,  <47.239258, 48.649158, 49.773365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.229187, 48.834671, 49.621429>,  <47.212399, 49.143856, 49.368206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.229187, 48.834671, 49.621429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969633, 0.184307, 0.160756,
		-0.240936, 0.607090, 0.757227,
		0.041969, -0.772964, 0.633060,
		47.241779, 48.602783, 49.811348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.648968, 49.351822, 50.023918>,  <47.212399, 49.143856, 49.368206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.648968, 49.351822, 50.023918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.676956, 48.952831, 50.019226>,  <47.693748, 48.713436, 50.016411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.676956, 48.952831, 50.019226>,  <47.648968, 49.351822, 50.023918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.676956, 48.952831, 50.019226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925736, 0.060548, 0.373293,
		-0.371642, -0.036973, 0.927639,
		0.069968, -0.997480, -0.011726,
		47.697948, 48.653587, 50.015709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.869717, 49.149677, 50.758152>,  <47.648968, 49.351822, 50.023918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.869717, 49.149677, 50.758152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.973652, 48.925907, 50.443314>,  <48.036011, 48.791645, 50.254410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.973652, 48.925907, 50.443314>,  <47.869717, 49.149677, 50.758152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.973652, 48.925907, 50.443314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958206, 0.048332, 0.281967,
		-0.119698, -0.827469, 0.548605,
		0.259835, -0.559427, -0.787101,
		48.051601, 48.758080, 50.207184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.276321, 48.520554, 50.911259>,  <47.869717, 49.149677, 50.758152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.276321, 48.520554, 50.911259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.359970, 48.709545, 50.568790>,  <48.410160, 48.822941, 50.363308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.359970, 48.709545, 50.568790>,  <48.276321, 48.520554, 50.911259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.359970, 48.709545, 50.568790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957698, 0.078053, 0.276989,
		0.197699, -0.877878, -0.436171,
		0.209118, 0.472480, -0.856173,
		48.422707, 48.851288, 50.311939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.771824, 48.063255, 50.498363>,  <48.276321, 48.520554, 50.911259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.771824, 48.063255, 50.498363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.789238, 48.462254, 50.476036>,  <48.799686, 48.701653, 50.462639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.789238, 48.462254, 50.476036>,  <48.771824, 48.063255, 50.498363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.789238, 48.462254, 50.476036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874642, -0.011054, 0.484643,
		0.482810, -0.069922, -0.872929,
		0.043536, 0.997491, -0.055820,
		48.802299, 48.761501, 50.459290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.412052, 48.267937, 50.237446>,  <48.771824, 48.063255, 50.498363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.412052, 48.267937, 50.237446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.218674, 48.516171, 50.484398>,  <49.102646, 48.665112, 50.632568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.218674, 48.516171, 50.484398>,  <49.412052, 48.267937, 50.237446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.218674, 48.516171, 50.484398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725489, -0.110619, 0.679286,
		0.489846, 0.776301, -0.396747,
		-0.483442, 0.620581, 0.617384,
		49.073643, 48.702343, 50.669613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.877712, 48.806313, 50.405254>,  <49.412052, 48.267937, 50.237446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.877712, 48.806313, 50.405254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.617558, 48.747707, 50.703392>,  <49.461464, 48.712543, 50.882275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.617558, 48.747707, 50.703392>,  <49.877712, 48.806313, 50.405254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.617558, 48.747707, 50.703392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696870, 0.275379, 0.662222,
		-0.302274, 0.950106, -0.077004,
		-0.650386, -0.146511, 0.745340,
		49.422443, 48.703754, 50.926994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.723404, 49.428814, 50.814701>,  <49.877712, 48.806313, 50.405254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.723404, 49.428814, 50.814701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.671181, 49.133907, 51.079849>,  <49.639847, 48.956963, 51.238937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.671181, 49.133907, 51.079849>,  <49.723404, 49.428814, 50.814701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.671181, 49.133907, 51.079849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595862, 0.476023, 0.646801,
		-0.792404, 0.479423, 0.377160,
		-0.130555, -0.737262, 0.662872,
		49.632015, 48.912727, 51.278709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.622894, 49.657310, 51.541737>,  <49.723404, 49.428814, 50.814701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.622894, 49.657310, 51.541737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.810753, 49.304745, 51.521580>,  <49.923470, 49.093204, 51.509487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.810753, 49.304745, 51.521580>,  <49.622894, 49.657310, 51.541737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.810753, 49.304745, 51.521580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759315, 0.374153, 0.532400,
		-0.450412, -0.288301, 0.844992,
		0.469648, -0.881415, -0.050388,
		49.951649, 49.040321, 51.506462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.868950, 49.631226, 52.233444>,  <49.622894, 49.657310, 51.541737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.868950, 49.631226, 52.233444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.077995, 49.366882, 52.017982>,  <50.203423, 49.208275, 51.888706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.077995, 49.366882, 52.017982>,  <49.868950, 49.631226, 52.233444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.077995, 49.366882, 52.017982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839192, 0.287246, 0.461787,
		-0.150451, -0.693365, 0.704705,
		0.522610, -0.660859, -0.538649,
		50.234779, 49.168625, 51.856388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.353580, 49.222633, 52.661915>,  <49.868950, 49.631226, 52.233444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.353580, 49.222633, 52.661915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.508247, 49.254536, 52.294411>,  <50.601048, 49.273678, 52.073906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.508247, 49.254536, 52.294411>,  <50.353580, 49.222633, 52.661915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.508247, 49.254536, 52.294411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900399, 0.182784, 0.394806,
		0.199427, -0.979912, -0.001143,
		0.386666, 0.079764, -0.918764,
		50.624249, 49.278465, 52.018780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.814991, 48.719372, 52.547688>,  <50.353580, 49.222633, 52.661915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.814991, 48.719372, 52.547688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.881725, 49.070999, 52.369068>,  <50.921764, 49.281975, 52.261898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.881725, 49.070999, 52.369068>,  <50.814991, 48.719372, 52.547688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.881725, 49.070999, 52.369068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828437, 0.120609, 0.546942,
		0.534658, -0.461181, -0.708133,
		0.166832, 0.879071, -0.446544,
		50.931774, 49.334721, 52.235104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.454651, 48.726681, 52.140469>,  <50.814991, 48.719372, 52.547688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.454651, 48.726681, 52.140469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.365749, 49.092480, 52.275700>,  <51.312408, 49.311958, 52.356838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.365749, 49.092480, 52.275700>,  <51.454651, 48.726681, 52.140469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.365749, 49.092480, 52.275700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821767, -0.010905, 0.569719,
		0.524694, 0.404442, -0.749081,
		-0.222250, 0.914499, 0.338079,
		51.299076, 49.366829, 52.377125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.946301, 49.278870, 52.050499>,  <51.454651, 48.726681, 52.140469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.946301, 49.278870, 52.050499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.777786, 49.381516, 52.398445>,  <51.676678, 49.443104, 52.607212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.777786, 49.381516, 52.398445>,  <51.946301, 49.278870, 52.050499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.777786, 49.381516, 52.398445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898495, -0.012416, 0.438809,
		0.123404, 0.966435, -0.225334,
		-0.421282, 0.256612, 0.869869,
		51.651402, 49.458500, 52.659405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.047932, 49.981056, 52.299290>,  <51.946301, 49.278870, 52.050499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.047932, 49.981056, 52.299290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.053696, 49.695850, 52.579689>,  <52.057152, 49.524727, 52.747929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.053696, 49.695850, 52.579689>,  <52.047932, 49.981056, 52.299290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.053696, 49.695850, 52.579689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949996, 0.228471, 0.212860,
		-0.311931, 0.662882, 0.680651,
		0.014408, -0.713013, 0.701002,
		52.058018, 49.481945, 52.789989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.351112, 50.351067, 52.845161>,  <52.047932, 49.981056, 52.299290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.351112, 50.351067, 52.845161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.392601, 49.953995, 52.869942>,  <52.417492, 49.715752, 52.884811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.392601, 49.953995, 52.869942>,  <52.351112, 50.351067, 52.845161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.392601, 49.953995, 52.869942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993285, 0.106590, 0.044989,
		-0.051263, 0.056869, 0.997065,
		0.103719, -0.992675, 0.061951,
		52.423717, 49.656193, 52.888527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.460754, 50.112171, 53.549076>,  <52.351112, 50.351067, 52.845161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.460754, 50.112171, 53.549076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.628834, 49.932896, 53.233467>,  <52.729683, 49.825329, 53.044102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.628834, 49.932896, 53.233467>,  <52.460754, 50.112171, 53.549076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.628834, 49.932896, 53.233467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902918, 0.293115, 0.314360,
		0.090380, -0.844516, 0.527849,
		0.420203, -0.448192, -0.789020,
		52.754894, 49.798439, 52.996761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.042789, 49.501778, 53.594555>,  <52.460754, 50.112171, 53.549076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.042789, 49.501778, 53.594555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.119164, 49.745846, 53.286987>,  <53.164989, 49.892288, 53.102448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.119164, 49.745846, 53.286987>,  <53.042789, 49.501778, 53.594555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.119164, 49.745846, 53.286987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814038, 0.339302, 0.471397,
		0.548529, -0.715935, -0.431918,
		0.190939, 0.610173, -0.768915,
		53.176445, 49.928898, 53.056313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.719112, 49.441303, 53.262081>,  <53.042789, 49.501778, 53.594555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.719112, 49.441303, 53.262081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.549137, 49.803364, 53.266533>,  <53.447151, 50.020599, 53.269203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.549137, 49.803364, 53.266533>,  <53.719112, 49.441303, 53.262081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.549137, 49.803364, 53.266533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801795, 0.370652, 0.468765,
		0.420178, 0.208123, -0.883253,
		-0.424941, 0.905153, 0.011132,
		53.421654, 50.074909, 53.269871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.224075, 49.807549, 53.074883>,  <53.719112, 49.441303, 53.262081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.224075, 49.807549, 53.074883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.978249, 50.036079, 53.292469>,  <53.830753, 50.173199, 53.423019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.978249, 50.036079, 53.292469>,  <54.224075, 49.807549, 53.074883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.978249, 50.036079, 53.292469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764706, 0.262126, 0.588654,
		0.193726, 0.777739, -0.597990,
		-0.614569, 0.571324, 0.543962,
		53.793877, 50.207478, 53.455658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.422314, 50.624378, 53.115784>,  <54.224075, 49.807549, 53.074883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.422314, 50.624378, 53.115784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.274620, 50.421124, 53.427029>,  <54.186005, 50.299171, 53.613777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.274620, 50.421124, 53.427029>,  <54.422314, 50.624378, 53.115784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.274620, 50.421124, 53.427029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878672, 0.081792, 0.470367,
		-0.302655, 0.857383, 0.416286,
		-0.369236, -0.508138, 0.778113,
		54.163849, 50.268681, 53.660461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.604958, 50.964680, 53.696194>,  <54.422314, 50.624378, 53.115784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.604958, 50.964680, 53.696194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.560249, 50.571548, 53.754921>,  <54.533424, 50.335670, 53.790157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.560249, 50.571548, 53.754921>,  <54.604958, 50.964680, 53.696194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.560249, 50.571548, 53.754921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969352, -0.075300, 0.233852,
		-0.218780, 0.168459, 0.961123,
		-0.111767, -0.982828, 0.146822,
		54.526718, 50.276699, 53.798969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.596306, 51.720444, 53.882511>,  <54.604958, 50.964680, 53.696194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.596306, 51.720444, 53.882511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.423294, 51.541553, 54.195663>,  <54.319489, 51.434219, 54.383556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.423294, 51.541553, 54.195663>,  <54.596306, 51.720444, 53.882511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.423294, 51.541553, 54.195663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870730, 0.018146, 0.491427,
		-0.233986, 0.894235, 0.381567,
		-0.432527, -0.447229, 0.782883,
		54.293537, 51.407383, 54.430527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.291859, 51.304760, 53.990627>,  <54.596306, 51.720444, 53.882511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.291859, 51.304760, 53.990627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.595299, 51.141129, 54.193478>,  <55.777363, 51.042950, 54.315186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.595299, 51.141129, 54.193478>,  <55.291859, 51.304760, 53.990627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.595299, 51.141129, 54.193478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165224, -0.632105, -0.757063,
		0.630256, 0.658099, -0.411926,
		0.758603, -0.409083, 0.507122,
		55.822880, 51.018402, 54.345615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.955376, 51.471657, 53.590504>,  <55.291859, 51.304760, 53.990627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.955376, 51.471657, 53.590504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.920372, 51.130070, 53.795670>,  <55.899372, 50.925117, 53.918770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.920372, 51.130070, 53.795670>,  <55.955376, 51.471657, 53.590504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.920372, 51.130070, 53.795670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258647, -0.516712, -0.816156,
		0.962000, 0.061247, 0.266091,
		-0.087505, -0.853966, 0.512918,
		55.894119, 50.873878, 53.949547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.399559, 51.873047, 53.348812>,  <55.955376, 51.471657, 53.590504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.399559, 51.873047, 53.348812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.638916, 52.017838, 53.062904>,  <56.782532, 52.104713, 52.891361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.638916, 52.017838, 53.062904>,  <56.399559, 51.873047, 53.348812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.638916, 52.017838, 53.062904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390029, 0.910886, 0.134773,
		0.699857, 0.198132, 0.686254,
		0.598397, 0.361981, -0.714767,
		56.818436, 52.126431, 52.848473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.889397, 52.401886, 53.594955>,  <56.399559, 51.873047, 53.348812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.889397, 52.401886, 53.594955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.797318, 52.433720, 53.207001>,  <56.742069, 52.452820, 52.974228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.797318, 52.433720, 53.207001>,  <56.889397, 52.401886, 53.594955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.797318, 52.433720, 53.207001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431606, 0.884914, 0.175054,
		0.872196, 0.458905, -0.169353,
		-0.230196, 0.079587, -0.969884,
		56.728260, 52.457596, 52.916035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.500805, 52.431046, 54.257019>,  <56.889397, 52.401886, 53.594955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.500805, 52.431046, 54.257019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.865021, 52.320793, 54.133766>,  <57.083549, 52.254642, 54.059814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.865021, 52.320793, 54.133766>,  <56.500805, 52.431046, 54.257019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.865021, 52.320793, 54.133766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407578, 0.723343, 0.557364,
		0.069258, -0.633090, 0.770974,
		0.910540, -0.275630, -0.308130,
		57.138184, 52.238106, 54.041328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.026840, 52.150513, 54.845818>,  <56.500805, 52.431046, 54.257019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.026840, 52.150513, 54.845818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.208015, 52.326427, 54.535606>,  <57.316719, 52.431976, 54.349480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.208015, 52.326427, 54.535606>,  <57.026840, 52.150513, 54.845818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.208015, 52.326427, 54.535606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429072, 0.654976, 0.622016,
		0.781503, -0.614490, 0.107963,
		0.452936, 0.439784, -0.775525,
		57.343895, 52.458363, 54.302948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.863605, 52.285522, 54.780067>,  <57.026840, 52.150513, 54.845818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.863605, 52.285522, 54.780067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.656601, 52.574837, 54.597187>,  <57.532398, 52.748425, 54.487457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.656601, 52.574837, 54.597187>,  <57.863605, 52.285522, 54.780067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.656601, 52.574837, 54.597187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479676, 0.687694, 0.544966,
		0.708583, 0.062717, -0.702835,
		-0.517514, 0.723286, -0.457204,
		57.501347, 52.791824, 54.460026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.354172, 52.792706, 54.493439>,  <57.863605, 52.285522, 54.780067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.354172, 52.792706, 54.493439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.999962, 52.966972, 54.557999>,  <57.787437, 53.071533, 54.596733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.999962, 52.966972, 54.557999>,  <58.354172, 52.792706, 54.493439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.999962, 52.966972, 54.557999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454489, 0.740220, 0.495494,
		0.096396, 0.512125, -0.853484,
		-0.885521, 0.435663, 0.161401,
		57.734306, 53.097672, 54.606419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.142166, 52.896873, 54.272518>,  <58.354172, 52.792706, 54.493439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.142166, 52.896873, 54.272518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.043663, 53.045181, 54.630711>,  <58.984562, 53.134167, 54.845627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.043663, 53.045181, 54.630711>,  <59.142166, 52.896873, 54.272518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.043663, 53.045181, 54.630711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913669, 0.397072, 0.086852,
		-0.323370, 0.839562, -0.436540,
		-0.246255, 0.370768, 0.895483,
		58.969788, 53.156410, 54.899357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.717445, 53.281525, 54.243664>,  <59.142166, 52.896873, 54.272518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.717445, 53.281525, 54.243664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.562431, 53.337894, 54.608074>,  <59.469425, 53.371716, 54.826721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.562431, 53.337894, 54.608074>,  <59.717445, 53.281525, 54.243664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.562431, 53.337894, 54.608074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811230, 0.521531, 0.264408,
		-0.437865, 0.841514, -0.316430,
		-0.387531, 0.140923, 0.911022,
		59.446171, 53.380173, 54.881382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.566784, 54.049469, 54.455116>,  <59.717445, 53.281525, 54.243664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.566784, 54.049469, 54.455116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.677650, 53.769577, 54.718498>,  <59.744171, 53.601643, 54.876526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.677650, 53.769577, 54.718498>,  <59.566784, 54.049469, 54.455116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.677650, 53.769577, 54.718498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938236, 0.344820, -0.028498,
		-0.207106, 0.625681, 0.752084,
		0.277164, -0.699731, 0.658450,
		59.760799, 53.559658, 54.916035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.971191, 54.385372, 54.960186>,  <59.566784, 54.049469, 54.455116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.971191, 54.385372, 54.960186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.053246, 53.994850, 54.932621>,  <60.102478, 53.760536, 54.916080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.053246, 53.994850, 54.932621>,  <59.971191, 54.385372, 54.960186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.053246, 53.994850, 54.932621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978404, 0.202732, 0.040323,
		-0.025396, -0.075696, 0.996808,
		0.205137, -0.976304, -0.068913,
		60.114788, 53.701958, 54.911945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.150894, 54.951275, 55.394497>,  <59.971191, 54.385372, 54.960186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.150894, 54.951275, 55.394497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.247681, 54.792892, 55.748825>,  <60.305752, 54.697861, 55.961422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.247681, 54.792892, 55.748825>,  <60.150894, 54.951275, 55.394497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.247681, 54.792892, 55.748825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760467, 0.644391, 0.080320,
		-0.602615, 0.654199, 0.457032,
		0.241962, -0.395960, 0.885816,
		60.320271, 54.674103, 56.014568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.021835, 55.389343, 55.998894>,  <60.150894, 54.951275, 55.394497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.021835, 55.389343, 55.998894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.337090, 55.173420, 56.117180>,  <60.526241, 55.043865, 56.188152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.337090, 55.173420, 56.117180>,  <60.021835, 55.389343, 55.998894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.337090, 55.173420, 56.117180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508143, 0.841761, 0.182287,
		-0.347321, 0.006598, 0.937723,
		0.788136, -0.539810, 0.295714,
		60.573532, 55.011478, 56.205894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.071812, 55.448086, 56.720821>,  <60.021835, 55.389343, 55.998894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.071812, 55.448086, 56.720821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.437065, 55.355331, 56.586708>,  <60.656216, 55.299679, 56.506241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.437065, 55.355331, 56.586708>,  <60.071812, 55.448086, 56.720821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.437065, 55.355331, 56.586708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314690, 0.923787, 0.218145,
		0.259145, -0.304706, 0.916514,
		0.913134, -0.231887, -0.335283,
		60.711006, 55.285767, 56.486122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.593109, 55.839600, 57.147209>,  <60.071812, 55.448086, 56.720821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.593109, 55.839600, 57.147209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.807846, 55.779156, 56.815193>,  <60.936687, 55.742889, 56.615982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.807846, 55.779156, 56.815193>,  <60.593109, 55.839600, 57.147209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.807846, 55.779156, 56.815193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495096, 0.853044, 0.164910,
		0.683141, -0.499480, 0.532765,
		0.536841, -0.151113, -0.830040,
		60.968899, 55.733822, 56.566181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.142361, 56.305099, 57.243954>,  <60.593109, 55.839600, 57.147209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.142361, 56.305099, 57.243954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.267975, 56.132381, 56.905739>,  <61.343342, 56.028751, 56.702808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.267975, 56.132381, 56.905739>,  <61.142361, 56.305099, 57.243954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.267975, 56.132381, 56.905739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771797, 0.634762, -0.037507,
		0.552912, -0.640807, 0.532593,
		0.314035, -0.431792, -0.845540,
		61.362186, 56.002846, 56.652077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.790066, 55.885174, 57.304642>,  <61.142361, 56.305099, 57.243954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.790066, 55.885174, 57.304642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.730522, 56.049461, 56.944832>,  <61.694794, 56.148033, 56.728947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.730522, 56.049461, 56.944832>,  <61.790066, 55.885174, 57.304642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.730522, 56.049461, 56.944832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959719, 0.279208, -0.031337,
		0.238285, -0.867959, -0.435737,
		-0.148861, 0.410718, -0.899528,
		61.685863, 56.172676, 56.674973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.648052, 55.318550, 57.783848>,  <61.790066, 55.885174, 57.304642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.648052, 55.318550, 57.783848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.027885, 55.193161, 57.782242>,  <62.255787, 55.117928, 57.781281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.027885, 55.193161, 57.782242>,  <61.648052, 55.318550, 57.783848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.027885, 55.193161, 57.782242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299881, -0.904522, -0.303169,
		0.091406, 0.289089, -0.952928,
		0.949587, -0.313477, -0.004013,
		62.312763, 55.099117, 57.781036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.822815, 55.060898, 57.144512>,  <61.648052, 55.318550, 57.783848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.822815, 55.060898, 57.144512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.036995, 54.887070, 57.434189>,  <62.165501, 54.782772, 57.607994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.036995, 54.887070, 57.434189>,  <61.822815, 55.060898, 57.144512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.036995, 54.887070, 57.434189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417563, -0.881549, -0.220257,
		0.734123, -0.184458, -0.653482,
		0.535448, -0.434566, 0.724187,
		62.197628, 54.756699, 57.651443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.500191, 54.944405, 56.810516>,  <61.822815, 55.060898, 57.144512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.500191, 54.944405, 56.810516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.798981, 54.732864, 56.971687>,  <62.978252, 54.605942, 57.068390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.798981, 54.732864, 56.971687>,  <62.500191, 54.944405, 56.810516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.798981, 54.732864, 56.971687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646734, 0.718500, -0.255916,
		-0.154164, 0.451751, 0.878723,
		0.746973, -0.528847, 0.402930,
		63.023071, 54.574211, 57.092567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.022751, 55.432365, 56.787193>,  <62.500191, 54.944405, 56.810516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.022751, 55.432365, 56.787193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.210144, 55.104401, 56.918816>,  <63.322578, 54.907623, 56.997787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.210144, 55.104401, 56.918816>,  <63.022751, 55.432365, 56.787193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.210144, 55.104401, 56.918816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882959, 0.421828, -0.206021,
		0.030114, 0.387057, 0.921564,
		0.468483, -0.819907, 0.329053,
		63.350689, 54.858429, 57.017532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.657448, 55.512032, 57.240112>,  <63.022751, 55.432365, 56.787193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.657448, 55.512032, 57.240112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.752731, 55.174049, 57.048569>,  <63.809902, 54.971260, 56.933643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.752731, 55.174049, 57.048569>,  <63.657448, 55.512032, 57.240112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.752731, 55.174049, 57.048569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802534, 0.448938, -0.392929,
		0.546986, -0.290702, 0.785047,
		0.238212, -0.844954, -0.478861,
		63.824196, 54.920563, 56.904911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.174500, 55.203701, 57.504318>,  <63.657448, 55.512032, 57.240112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.174500, 55.203701, 57.504318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.147987, 55.140720, 57.110199>,  <64.132080, 55.102932, 56.873726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.147987, 55.140720, 57.110199>,  <64.174500, 55.203701, 57.504318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.147987, 55.140720, 57.110199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767118, 0.623427, -0.151227,
		0.638073, -0.765864, 0.079463,
		-0.066280, -0.157451, -0.985300,
		64.128105, 55.093483, 56.814610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.844032, 54.866180, 57.155174>,  <64.174500, 55.203701, 57.504318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.844032, 54.866180, 57.155174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.622078, 55.155109, 56.990074>,  <64.488907, 55.328468, 56.891014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.622078, 55.155109, 56.990074>,  <64.844032, 54.866180, 57.155174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.622078, 55.155109, 56.990074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746254, 0.651447, 0.136827,
		0.367717, -0.232092, -0.900509,
		-0.554878, 0.722322, -0.412748,
		64.455612, 55.371807, 56.866249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.300201, 55.224358, 56.626553>,  <64.844032, 54.866180, 57.155174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.300201, 55.224358, 56.626553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.010712, 55.462624, 56.765930>,  <64.837021, 55.605583, 56.849556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.010712, 55.462624, 56.765930>,  <65.300201, 55.224358, 56.626553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.010712, 55.462624, 56.765930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677565, 0.709121, 0.195072,
		-0.130889, 0.377269, -0.916808,
		-0.723722, 0.595664, 0.348440,
		64.793594, 55.641323, 56.870461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.619606, 55.615391, 57.165218>,  <65.300201, 55.224358, 56.626553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.619606, 55.615391, 57.165218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.801018, 55.962811, 57.085274>,  <65.909866, 56.171261, 57.037308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.801018, 55.962811, 57.085274>,  <65.619606, 55.615391, 57.165218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.801018, 55.962811, 57.085274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705141, -0.212543, 0.676463,
		0.545060, -0.447721, -0.708840,
		0.453526, 0.868545, -0.199858,
		65.937073, 56.223373, 57.025318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.401184, 55.546829, 57.190716>,  <65.619606, 55.615391, 57.165218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.401184, 55.546829, 57.190716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.337242, 55.939781, 57.229462>,  <66.298882, 56.175552, 57.252708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.337242, 55.939781, 57.229462>,  <66.401184, 55.546829, 57.190716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.337242, 55.939781, 57.229462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856955, 0.089392, 0.507579,
		0.489975, 0.164147, -0.856143,
		-0.159850, 0.982377, 0.096866,
		66.289284, 56.234493, 57.258522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.935287, 55.963413, 56.968151>,  <66.401184, 55.546829, 57.190716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.935287, 55.963413, 56.968151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.741829, 56.122173, 57.280190>,  <66.625755, 56.217430, 57.467415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.741829, 56.122173, 57.280190>,  <66.935287, 55.963413, 56.968151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.741829, 56.122173, 57.280190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844589, -0.022245, 0.534953,
		0.229676, 0.917593, -0.324457,
		-0.483652, 0.396898, 0.780098,
		66.596733, 56.241241, 57.514217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.271149, 56.542946, 57.236931>,  <66.935287, 55.963413, 56.968151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.271149, 56.542946, 57.236931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.098824, 56.324318, 57.524170>,  <66.995430, 56.193142, 57.696514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.098824, 56.324318, 57.524170>,  <67.271149, 56.542946, 57.236931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.098824, 56.324318, 57.524170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901430, -0.222927, 0.371116,
		-0.042758, 0.807194, 0.588736,
		-0.430807, -0.546573, 0.718097,
		66.969582, 56.160347, 57.739597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.401024, 56.846157, 57.878605>,  <67.271149, 56.542946, 57.236931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.401024, 56.846157, 57.878605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.350609, 56.449413, 57.871384>,  <67.320358, 56.211365, 57.867050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.350609, 56.449413, 57.871384>,  <67.401024, 56.846157, 57.878605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.350609, 56.449413, 57.871384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852476, -0.117596, 0.509368,
		-0.507345, 0.048814, 0.860359,
		-0.126039, -0.991861, -0.018049,
		67.312798, 56.151855, 57.865971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.455544, 56.669456, 58.516811>,  <67.401024, 56.846157, 57.878605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.455544, 56.669456, 58.516811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.590912, 56.391151, 58.263390>,  <67.672134, 56.224167, 58.111336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.590912, 56.391151, 58.263390>,  <67.455544, 56.669456, 58.516811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.590912, 56.391151, 58.263390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930297, 0.146127, 0.336444,
		-0.141506, -0.703252, 0.696716,
		0.338414, -0.695762, -0.633555,
		67.692436, 56.182423, 58.073322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.771599, 56.019119, 58.899136>,  <67.455544, 56.669456, 58.516811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.771599, 56.019119, 58.899136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.928711, 56.149330, 58.555099>,  <68.022980, 56.227455, 58.348679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.928711, 56.149330, 58.555099>,  <67.771599, 56.019119, 58.899136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.928711, 56.149330, 58.555099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807852, 0.324766, 0.491835,
		0.439434, -0.888009, -0.135417,
		0.392775, 0.325526, -0.860094,
		68.046547, 56.246986, 58.297070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.550484, 55.931190, 58.809860>,  <67.771599, 56.019119, 58.899136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.550484, 55.931190, 58.809860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.458443, 56.228138, 58.558167>,  <68.403214, 56.406307, 58.407150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.458443, 56.228138, 58.558167>,  <68.550484, 55.931190, 58.809860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.458443, 56.228138, 58.558167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801806, 0.511056, 0.309725,
		0.551505, -0.433255, -0.712834,
		-0.230108, 0.742369, -0.629236,
		68.389412, 56.450848, 58.369396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.104935, 56.123020, 58.379250>,  <68.550484, 55.931190, 58.809860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.104935, 56.123020, 58.379250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.871246, 56.442276, 58.438110>,  <68.731033, 56.633831, 58.473427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.871246, 56.442276, 58.438110>,  <69.104935, 56.123020, 58.379250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.871246, 56.442276, 58.438110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755547, 0.468652, 0.457727,
		0.296369, 0.378594, -0.876831,
		-0.584221, 0.798143, 0.147151,
		68.695976, 56.681721, 58.482254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.479103, 56.744171, 58.212463>,  <69.104935, 56.123020, 58.379250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.479103, 56.744171, 58.212463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.193550, 56.844257, 58.474075>,  <69.022217, 56.904308, 58.631042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.193550, 56.844257, 58.474075>,  <69.479103, 56.744171, 58.212463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.193550, 56.844257, 58.474075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677505, 0.482970, 0.554732,
		-0.177074, 0.839125, -0.514309,
		-0.713885, 0.250218, 0.654033,
		68.979385, 56.919323, 58.670284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.216103, 57.571827, 58.315422>,  <69.479103, 56.744171, 58.212463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.216103, 57.571827, 58.315422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.250519, 57.316868, 58.621712>,  <69.271172, 57.163895, 58.805485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.250519, 57.316868, 58.621712>,  <69.216103, 57.571827, 58.315422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.250519, 57.316868, 58.621712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670725, 0.605371, 0.428548,
		-0.736698, 0.476714, 0.479604,
		0.086043, -0.637393, 0.765720,
		69.276329, 57.125648, 58.851429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.965248, 57.794899, 59.041290>,  <69.216103, 57.571827, 58.315422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.965248, 57.794899, 59.041290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.272865, 57.539299, 59.034981>,  <69.457436, 57.385937, 59.031193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.272865, 57.539299, 59.034981>,  <68.965248, 57.794899, 59.041290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.272865, 57.539299, 59.034981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608298, 0.724062, 0.325128,
		-0.196334, -0.259634, 0.945539,
		0.769043, -0.639003, -0.015777,
		69.503578, 57.347599, 59.030247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.432892, 57.837471, 59.739647>,  <68.965248, 57.794899, 59.041290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.432892, 57.837471, 59.739647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.676392, 57.680801, 59.463669>,  <69.822487, 57.586800, 59.298080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.676392, 57.680801, 59.463669>,  <69.432892, 57.837471, 59.739647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.676392, 57.680801, 59.463669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745012, 0.581179, 0.327395,
		0.272749, -0.713316, 0.645591,
		0.608741, -0.391676, -0.689946,
		69.859016, 57.563297, 59.256683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.026497, 57.593700, 60.024372>,  <69.432892, 57.837471, 59.739647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.026497, 57.593700, 60.024372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.104576, 57.759842, 59.668983>,  <70.151428, 57.859528, 59.455750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.104576, 57.759842, 59.668983>,  <70.026497, 57.593700, 60.024372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.104576, 57.759842, 59.668983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773363, 0.491932, 0.399892,
		0.603162, -0.765170, -0.225191,
		0.195207, 0.415354, -0.888468,
		70.163139, 57.884449, 59.402443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.596504, 57.298611, 59.663689>,  <70.026497, 57.593700, 60.024372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.596504, 57.298611, 59.663689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.548424, 57.693790, 59.624687>,  <70.519577, 57.930897, 59.601288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.548424, 57.693790, 59.624687>,  <70.596504, 57.298611, 59.663689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.548424, 57.693790, 59.624687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903982, 0.149513, 0.400577,
		0.410328, -0.039992, -0.911061,
		-0.120196, 0.987951, -0.097501,
		70.512367, 57.990177, 59.595436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.240295, 57.503437, 59.307873>,  <70.596504, 57.298611, 59.663689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.240295, 57.503437, 59.307873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.072556, 57.803730, 59.512047>,  <70.971916, 57.983906, 59.634552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.072556, 57.803730, 59.512047>,  <71.240295, 57.503437, 59.307873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.072556, 57.803730, 59.512047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871101, 0.174445, 0.459077,
		0.255603, 0.637154, -0.727119,
		-0.419345, 0.750736, 0.510437,
		70.946754, 58.028950, 59.665176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.623466, 58.128254, 59.204628>,  <71.240295, 57.503437, 59.307873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.623466, 58.128254, 59.204628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.447540, 58.112083, 59.563499>,  <71.341988, 58.102383, 59.778824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.447540, 58.112083, 59.563499>,  <71.623466, 58.128254, 59.204628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.447540, 58.112083, 59.563499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896782, 0.034120, 0.441155,
		-0.048446, 0.998600, 0.021246,
		-0.439812, -0.040426, 0.897179,
		71.315598, 58.099957, 59.832653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.744362, 58.785904, 59.679626>,  <71.623466, 58.128254, 59.204628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.744362, 58.785904, 59.679626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.699631, 58.452980, 59.896790>,  <71.672791, 58.253223, 60.027088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.699631, 58.452980, 59.896790>,  <71.744362, 58.785904, 59.679626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.699631, 58.452980, 59.896790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957944, 0.055007, 0.281633,
		-0.264271, 0.551571, 0.791158,
		-0.111821, -0.832312, 0.542911,
		71.666084, 58.203285, 60.059662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.844360, 58.918430, 60.455837>,  <71.744362, 58.785904, 59.679626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.844360, 58.918430, 60.455837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.922920, 58.542019, 60.345642>,  <71.970055, 58.316174, 60.279526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.922920, 58.542019, 60.345642>,  <71.844360, 58.918430, 60.455837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.922920, 58.542019, 60.345642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932349, 0.092237, 0.349597,
		-0.303571, -0.325507, 0.895483,
		0.196393, -0.941030, -0.275486,
		71.981834, 58.259708, 60.262997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.319420, 58.645786, 60.935558>,  <71.844360, 58.918430, 60.455837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.319420, 58.645786, 60.935558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.353676, 58.366928, 60.650841>,  <72.374229, 58.199612, 60.480011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.353676, 58.366928, 60.650841>,  <72.319420, 58.645786, 60.935558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.353676, 58.366928, 60.650841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988457, -0.030159, 0.148468,
		-0.124971, -0.716295, 0.686516,
		0.085643, -0.697146, -0.711796,
		72.379372, 58.157784, 60.437302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.740097, 58.054283, 61.245094>,  <72.319420, 58.645786, 60.935558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.740097, 58.054283, 61.245094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.784363, 58.097557, 60.849915>,  <72.810921, 58.123520, 60.612804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.784363, 58.097557, 60.849915>,  <72.740097, 58.054283, 61.245094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.784363, 58.097557, 60.849915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991832, -0.075444, 0.102846,
		-0.063409, -0.991264, -0.115649,
		0.110673, 0.108183, -0.987951,
		72.817566, 58.130013, 60.553528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.154243, 57.472160, 60.956619>,  <72.740097, 58.054283, 61.245094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.154243, 57.472160, 60.956619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.178848, 57.819000, 60.758888>,  <73.193611, 58.027103, 60.640251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.178848, 57.819000, 60.758888>,  <73.154243, 57.472160, 60.956619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.178848, 57.819000, 60.758888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981381, 0.037733, 0.188327,
		0.181950, -0.496706, -0.848633,
		0.061521, 0.867098, -0.494323,
		73.197304, 58.079128, 60.610592>
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
