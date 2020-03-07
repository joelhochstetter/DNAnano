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
	<36.072769, 52.849850, 49.400997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.103931, 52.805054, 49.797256>,  <36.122627, 52.778175, 50.035011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.103931, 52.805054, 49.797256>,  <36.072769, 52.849850, 49.400997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103931, 52.805054, 49.797256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014807, 0.993432, 0.113465,
		-0.996851, -0.023508, 0.075733,
		0.077903, -0.111987, 0.990651,
		36.127304, 52.771458, 50.094452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.475231, 53.185570, 49.795723>,  <36.072769, 52.849850, 49.400997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.475231, 53.185570, 49.795723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.839317, 53.169762, 49.960617>,  <36.057770, 53.160275, 50.059555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.839317, 53.169762, 49.960617>,  <35.475231, 53.185570, 49.795723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839317, 53.169762, 49.960617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060459, 0.997452, -0.037865,
		-0.409691, 0.059389, 0.910289,
		0.910218, -0.039522, 0.412238,
		36.112381, 53.157906, 50.084290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.516624, 53.617336, 50.326080>,  <35.475231, 53.185570, 49.795723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.516624, 53.617336, 50.326080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887077, 53.582775, 50.179211>,  <36.109348, 53.562038, 50.091087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887077, 53.582775, 50.179211>,  <35.516624, 53.617336, 50.326080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887077, 53.582775, 50.179211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110902, 0.992761, 0.046111,
		0.360531, -0.083425, 0.929009,
		0.926131, -0.086404, -0.367173,
		36.164917, 53.556854, 50.069057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040741, 53.829674, 50.986744>,  <35.516624, 53.617336, 50.326080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.040741, 53.829674, 50.986744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.129177, 53.886120, 50.600746>,  <36.182240, 53.919987, 50.369148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.129177, 53.886120, 50.600746>,  <36.040741, 53.829674, 50.986744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129177, 53.886120, 50.600746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252290, 0.947518, 0.196363,
		0.942055, -0.286872, 0.173887,
		0.221093, 0.141115, -0.964989,
		36.195503, 53.928455, 50.311249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.730381, 54.090851, 50.947666>,  <36.040741, 53.829674, 50.986744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.730381, 54.090851, 50.947666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.541096, 54.241966, 50.629333>,  <36.427525, 54.332634, 50.438335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.541096, 54.241966, 50.629333>,  <36.730381, 54.090851, 50.947666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541096, 54.241966, 50.629333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208283, 0.925746, 0.315613,
		0.855970, -0.016405, -0.516764,
		-0.473215, 0.377789, -0.795829,
		36.399132, 54.355305, 50.390583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751629, 53.848808, 51.770424>,  <36.730381, 54.090851, 50.947666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751629, 53.848808, 51.770424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.021187, 54.141827, 51.731972>,  <37.182922, 54.317638, 51.708900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.021187, 54.141827, 51.731972>,  <36.751629, 53.848808, 51.770424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.021187, 54.141827, 51.731972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718860, -0.620056, 0.314277,
		0.170615, -0.280895, -0.944451,
		0.673892, 0.732549, -0.096134,
		37.223354, 54.361591, 51.703133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.336071, 53.503815, 51.522896>,  <36.751629, 53.848808, 51.770424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.336071, 53.503815, 51.522896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.444084, 53.861702, 51.665199>,  <37.508892, 54.076435, 51.750580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.444084, 53.861702, 51.665199>,  <37.336071, 53.503815, 51.522896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.444084, 53.861702, 51.665199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927041, -0.341420, 0.155006,
		0.260149, 0.287943, -0.921635,
		0.270032, 0.894718, 0.355755,
		37.525093, 54.130119, 51.771927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.945190, 53.674152, 51.117489>,  <37.336071, 53.503815, 51.522896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.945190, 53.674152, 51.117489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905384, 53.862282, 51.468235>,  <37.881500, 53.975159, 51.678684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905384, 53.862282, 51.468235>,  <37.945190, 53.674152, 51.117489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.905384, 53.862282, 51.468235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939849, -0.244972, 0.238058,
		0.326772, 0.847812, -0.417654,
		-0.099515, 0.470322, 0.876866,
		37.875530, 54.003380, 51.731297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391571, 54.183578, 51.184971>,  <37.945190, 53.674152, 51.117489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.391571, 54.183578, 51.184971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.308937, 54.092670, 51.565636>,  <38.259357, 54.038124, 51.794037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.308937, 54.092670, 51.565636>,  <38.391571, 54.183578, 51.184971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308937, 54.092670, 51.565636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975127, 0.032010, 0.219325,
		-0.080309, 0.973305, 0.215006,
		-0.206588, -0.227272, 0.951667,
		38.246960, 54.024490, 51.851135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773907, 54.629742, 51.488655>,  <38.391571, 54.183578, 51.184971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773907, 54.629742, 51.488655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.705353, 54.335133, 51.750393>,  <38.664219, 54.158367, 51.907436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.705353, 54.335133, 51.750393>,  <38.773907, 54.629742, 51.488655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.705353, 54.335133, 51.750393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976996, -0.041502, 0.209180,
		-0.126909, 0.675138, 0.726693,
		-0.171384, -0.736523, 0.654341,
		38.653938, 54.114174, 51.946693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034595, 54.880379, 52.152981>,  <38.773907, 54.629742, 51.488655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.034595, 54.880379, 52.152981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.047131, 54.481609, 52.124260>,  <39.054653, 54.242348, 52.107029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.047131, 54.481609, 52.124260>,  <39.034595, 54.880379, 52.152981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047131, 54.481609, 52.124260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997129, 0.036141, -0.066537,
		0.068928, -0.069512, 0.995197,
		0.031342, -0.996926, -0.071803,
		39.056534, 54.182533, 52.102718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477077, 54.505081, 52.667973>,  <39.034595, 54.880379, 52.152981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477077, 54.505081, 52.667973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.477180, 54.317657, 52.314598>,  <39.477242, 54.205204, 52.102573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.477180, 54.317657, 52.314598>,  <39.477077, 54.505081, 52.667973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477180, 54.317657, 52.314598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993260, -0.102278, 0.054532,
		-0.115908, -0.877493, 0.465372,
		0.000254, -0.468556, -0.883434,
		39.477257, 54.177090, 52.049568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.924717, 53.867119, 52.749538>,  <39.477077, 54.505081, 52.667973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.924717, 53.867119, 52.749538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.932419, 53.996437, 52.371098>,  <39.937042, 54.074028, 52.144032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.932419, 53.996437, 52.371098>,  <39.924717, 53.867119, 52.749538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.932419, 53.996437, 52.371098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979116, 0.185453, 0.083301,
		0.202388, -0.927948, -0.312971,
		0.019258, 0.323294, -0.946102,
		39.938198, 54.093426, 52.087265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.442825, 53.555164, 52.457447>,  <39.924717, 53.867119, 52.749538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.442825, 53.555164, 52.457447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.401783, 53.891674, 52.245136>,  <40.377159, 54.093578, 52.117748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.401783, 53.891674, 52.245136>,  <40.442825, 53.555164, 52.457447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.401783, 53.891674, 52.245136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994541, 0.096953, -0.038584,
		0.019001, -0.531842, -0.846631,
		-0.102604, 0.841276, -0.530780,
		40.371002, 54.144058, 52.085903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.818348, 53.556473, 51.866997>,  <40.442825, 53.555164, 52.457447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.818348, 53.556473, 51.866997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.845833, 53.928905, 52.010315>,  <40.862324, 54.152363, 52.096306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.845833, 53.928905, 52.010315>,  <40.818348, 53.556473, 51.866997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.845833, 53.928905, 52.010315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959292, -0.160274, 0.232534,
		0.273932, 0.327731, -0.904187,
		0.068709, 0.931077, 0.358294,
		40.866444, 54.208229, 52.117802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.412991, 53.827465, 51.651852>,  <40.818348, 53.556473, 51.866997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.412991, 53.827465, 51.651852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.324982, 54.015850, 51.993561>,  <41.272175, 54.128880, 52.198586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.324982, 54.015850, 51.993561>,  <41.412991, 53.827465, 51.651852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.324982, 54.015850, 51.993561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921785, -0.186199, 0.340062,
		0.319221, 0.862279, -0.393157,
		-0.220023, 0.470961, 0.854275,
		41.258976, 54.157139, 52.249844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.798771, 54.534958, 51.751602>,  <41.412991, 53.827465, 51.651852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.798771, 54.534958, 51.751602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.698727, 54.333237, 52.082207>,  <41.638702, 54.212204, 52.280571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.698727, 54.333237, 52.082207>,  <41.798771, 54.534958, 51.751602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.698727, 54.333237, 52.082207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968217, -0.128931, 0.214318,
		-0.001517, 0.853849, 0.520519,
		-0.250106, -0.504301, 0.826515,
		41.623695, 54.181946, 52.330162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.155449, 54.857315, 52.469875>,  <41.798771, 54.534958, 51.751602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.155449, 54.857315, 52.469875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.073811, 54.467812, 52.510170>,  <42.024826, 54.234112, 52.534348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.073811, 54.467812, 52.510170>,  <42.155449, 54.857315, 52.469875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.073811, 54.467812, 52.510170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941885, -0.167279, 0.291324,
		-0.266827, 0.154339, 0.951306,
		-0.204096, -0.973754, 0.100736,
		42.012581, 54.175686, 52.540390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.446831, 54.714226, 53.093880>,  <42.155449, 54.857315, 52.469875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.446831, 54.714226, 53.093880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.418194, 54.380211, 52.875675>,  <42.401012, 54.179802, 52.744751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.418194, 54.380211, 52.875675>,  <42.446831, 54.714226, 53.093880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.418194, 54.380211, 52.875675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836028, -0.348520, 0.423781,
		-0.543996, -0.425725, 0.723068,
		-0.071590, -0.835040, -0.545512,
		42.396717, 54.129700, 52.712021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.501984, 54.105583, 53.584805>,  <42.446831, 54.714226, 53.093880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.501984, 54.105583, 53.584805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.604511, 54.038963, 53.203949>,  <42.666027, 53.998993, 52.975437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.604511, 54.038963, 53.203949>,  <42.501984, 54.105583, 53.584805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.604511, 54.038963, 53.203949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900747, -0.316190, 0.297791,
		-0.350654, -0.933961, 0.068976,
		0.256315, -0.166552, -0.952136,
		42.681404, 53.988998, 52.918308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.987167, 53.663177, 53.625809>,  <42.501984, 54.105583, 53.584805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.987167, 53.663177, 53.625809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.030621, 53.785789, 53.247551>,  <43.056690, 53.859356, 53.020596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.030621, 53.785789, 53.247551>,  <42.987167, 53.663177, 53.625809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.030621, 53.785789, 53.247551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993160, 0.007507, 0.116522,
		0.042816, -0.951832, -0.303616,
		0.108630, 0.306528, -0.945643,
		43.063210, 53.877747, 52.963860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.362335, 53.188717, 53.111668>,  <42.987167, 53.663177, 53.625809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.362335, 53.188717, 53.111668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.433765, 53.582123, 53.123100>,  <43.476624, 53.818165, 53.129959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.433765, 53.582123, 53.123100>,  <43.362335, 53.188717, 53.111668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.433765, 53.582123, 53.123100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907472, -0.175860, 0.381535,
		0.380270, -0.042195, -0.923912,
		0.178578, 0.983511, 0.028583,
		43.487339, 53.877174, 53.131676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.023773, 53.220284, 52.851143>,  <43.362335, 53.188717, 53.111668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.023773, 53.220284, 52.851143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.930096, 53.524372, 53.093536>,  <43.873890, 53.706825, 53.238972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.930096, 53.524372, 53.093536>,  <44.023773, 53.220284, 52.851143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.930096, 53.524372, 53.093536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856220, -0.133949, 0.498943,
		0.460477, 0.635709, -0.619544,
		-0.234195, 0.760218, 0.605988,
		43.859837, 53.752438, 53.275333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.787613, 53.019161, 53.123894>,  <44.023773, 53.220284, 52.851143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.787613, 53.019161, 53.123894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.928825, 53.218727, 52.807297>,  <45.013554, 53.338467, 52.617340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.928825, 53.218727, 52.807297>,  <44.787613, 53.019161, 53.123894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.928825, 53.218727, 52.807297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552854, -0.793712, -0.253720,
		-0.754799, -0.348008, -0.556029,
		0.353030, 0.498911, -0.791491,
		45.034733, 53.368401, 52.569851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.721603, 52.613354, 52.470303>,  <44.787613, 53.019161, 53.123894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.721603, 52.613354, 52.470303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.024445, 52.866497, 52.405453>,  <45.206150, 53.018383, 52.366543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.024445, 52.866497, 52.405453>,  <44.721603, 52.613354, 52.470303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.024445, 52.866497, 52.405453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608151, -0.773392, -0.178933,
		-0.238625, 0.036874, -0.970411,
		0.757106, 0.632855, -0.162126,
		45.251575, 53.056355, 52.356815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.042126, 52.597580, 51.722214>,  <44.721603, 52.613354, 52.470303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.042126, 52.597580, 51.722214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.301208, 52.703468, 52.007980>,  <45.456657, 52.767002, 52.179440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.301208, 52.703468, 52.007980>,  <45.042126, 52.597580, 51.722214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.301208, 52.703468, 52.007980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611096, -0.740517, -0.279637,
		0.455012, 0.617702, -0.641411,
		0.647708, 0.264725, 0.714419,
		45.495522, 52.782887, 52.222305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.655243, 52.825699, 51.437569>,  <45.042126, 52.597580, 51.722214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.655243, 52.825699, 51.437569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.728767, 52.649479, 51.789055>,  <45.772881, 52.543747, 51.999947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.728767, 52.649479, 51.789055>,  <45.655243, 52.825699, 51.437569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.728767, 52.649479, 51.789055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665762, -0.601882, -0.441021,
		0.723170, 0.666075, 0.182669,
		0.183808, -0.440547, 0.878711,
		45.783909, 52.517315, 52.052670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.375134, 53.015232, 51.744736>,  <45.655243, 52.825699, 51.437569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.375134, 53.015232, 51.744736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.208504, 52.654327, 51.789246>,  <46.108524, 52.437782, 51.815952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.208504, 52.654327, 51.789246>,  <46.375134, 53.015232, 51.744736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.208504, 52.654327, 51.789246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689411, -0.393319, -0.608287,
		0.592602, -0.176687, 0.785878,
		-0.416577, -0.902265, 0.111272,
		46.083530, 52.383648, 51.822628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.853844, 52.587566, 51.842129>,  <46.375134, 53.015232, 51.744736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.853844, 52.587566, 51.842129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.546658, 52.397331, 51.670528>,  <46.362347, 52.283192, 51.567566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.546658, 52.397331, 51.670528>,  <46.853844, 52.587566, 51.842129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.546658, 52.397331, 51.670528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630212, -0.441561, -0.638637,
		0.114297, -0.760814, 0.638825,
		-0.767964, -0.475590, -0.429005,
		46.316269, 52.254654, 51.541828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.059044, 51.965046, 51.481213>,  <46.853844, 52.587566, 51.842129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.059044, 51.965046, 51.481213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.708694, 52.019501, 51.296036>,  <46.498486, 52.052174, 51.184929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.708694, 52.019501, 51.296036>,  <47.059044, 51.965046, 51.481213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.708694, 52.019501, 51.296036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434778, -0.193535, -0.879496,
		-0.209344, -0.971600, 0.110313,
		-0.875867, 0.136155, -0.462946,
		46.445934, 52.060341, 51.157154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.634380, 51.364403, 51.099274>,  <47.059044, 51.965046, 51.481213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.634380, 51.364403, 51.099274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.549393, 51.709156, 50.915092>,  <46.498402, 51.916008, 50.804585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.549393, 51.709156, 50.915092>,  <46.634380, 51.364403, 51.099274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.549393, 51.709156, 50.915092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369007, -0.365556, -0.854519,
		-0.904815, -0.351469, -0.240371,
		-0.212468, 0.861880, -0.460456,
		46.485653, 51.967720, 50.776955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.085072, 50.789471, 51.435303>,  <46.634380, 51.364403, 51.099274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.085072, 50.789471, 51.435303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.121719, 50.391552, 51.417503>,  <47.143707, 50.152802, 51.406822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.121719, 50.391552, 51.417503>,  <47.085072, 50.789471, 51.435303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.121719, 50.391552, 51.417503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906118, -0.064752, -0.418041,
		0.412985, 0.078624, -0.907338,
		0.091620, -0.994799, -0.044501,
		47.149204, 50.093113, 51.404152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.969219, 50.107693, 51.873264>,  <47.085072, 50.789471, 51.435303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.969219, 50.107693, 51.873264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.760006, 50.097107, 51.532505>,  <46.634476, 50.090755, 51.328049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.760006, 50.097107, 51.532505>,  <46.969219, 50.107693, 51.873264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.760006, 50.097107, 51.532505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142645, -0.982702, 0.118106,
		-0.840289, 0.183293, 0.510214,
		-0.523037, -0.026464, -0.851899,
		46.603096, 50.089169, 51.276936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.366886, 50.644367, 52.144703>,  <46.969219, 50.107693, 51.873264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.366886, 50.644367, 52.144703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.492168, 50.335102, 51.924110>,  <47.567337, 50.149544, 51.791756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.492168, 50.335102, 51.924110>,  <47.366886, 50.644367, 52.144703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.492168, 50.335102, 51.924110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707736, 0.577233, -0.407323,
		0.633257, -0.262726, 0.727984,
		0.313202, -0.773161, -0.551477,
		47.586128, 50.103153, 51.758667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.994576, 50.442490, 52.331978>,  <47.366886, 50.644367, 52.144703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.994576, 50.442490, 52.331978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.946194, 50.358028, 51.944000>,  <47.917164, 50.307350, 51.711216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.946194, 50.358028, 51.944000>,  <47.994576, 50.442490, 52.331978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.946194, 50.358028, 51.944000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749299, 0.621476, -0.228733,
		0.651093, -0.754441, 0.083049,
		-0.120953, -0.211155, -0.969940,
		47.909908, 50.294682, 51.653019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.572781, 50.276714, 52.198288>,  <47.994576, 50.442490, 52.331978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.572781, 50.276714, 52.198288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.374825, 50.446716, 51.895119>,  <48.256050, 50.548717, 51.713219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.374825, 50.446716, 51.895119>,  <48.572781, 50.276714, 52.198288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.374825, 50.446716, 51.895119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724016, 0.683991, -0.089203,
		0.480501, -0.592894, -0.646216,
		-0.494894, 0.425009, -0.757923,
		48.226357, 50.574219, 51.667740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.305927, 50.131626, 52.089020>,  <48.572781, 50.276714, 52.198288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.305927, 50.131626, 52.089020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.602276, 49.987114, 51.862541>,  <49.780087, 49.900406, 51.726654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.602276, 49.987114, 51.862541>,  <49.305927, 50.131626, 52.089020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.602276, 49.987114, 51.862541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488034, 0.868748, 0.084262,
		0.461442, -0.338751, 0.819950,
		0.740874, -0.361281, -0.566199,
		49.824539, 49.878731, 51.692680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.033035, 50.305004, 52.375973>,  <49.305927, 50.131626, 52.089020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.033035, 50.305004, 52.375973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.071774, 50.273022, 51.979141>,  <50.095016, 50.253834, 51.741043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.071774, 50.273022, 51.979141>,  <50.033035, 50.305004, 52.375973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.071774, 50.273022, 51.979141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507836, 0.861225, -0.019833,
		0.855992, -0.501894, 0.124014,
		0.096850, -0.079956, -0.992082,
		50.100830, 50.249035, 51.681515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.748989, 50.559464, 52.253258>,  <50.033035, 50.305004, 52.375973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.748989, 50.559464, 52.253258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.494308, 50.633976, 51.953949>,  <50.341499, 50.678684, 51.774364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.494308, 50.633976, 51.953949>,  <50.748989, 50.559464, 52.253258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.494308, 50.633976, 51.953949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477777, 0.856974, -0.193199,
		0.605263, -0.480517, -0.634634,
		-0.636700, 0.186278, -0.748274,
		50.303299, 50.689857, 51.729465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.839497, 50.376297, 52.934708>,  <50.748989, 50.559464, 52.253258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.839497, 50.376297, 52.934708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.854507, 50.770588, 52.869061>,  <50.863514, 51.007164, 52.829674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.854507, 50.770588, 52.869061>,  <50.839497, 50.376297, 52.934708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.854507, 50.770588, 52.869061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121982, 0.167523, 0.978293,
		0.991823, -0.016690, 0.126527,
		0.037523, 0.985727, -0.164117,
		50.865765, 51.066307, 52.819824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.424736, 50.784630, 53.271355>,  <50.839497, 50.376297, 52.934708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.424736, 50.784630, 53.271355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.722321, 51.009621, 53.127060>,  <51.900871, 51.144615, 53.040482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.722321, 51.009621, 53.127060>,  <51.424736, 50.784630, 53.271355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.722321, 51.009621, 53.127060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498160, -0.826676, -0.261618,
		-0.445368, 0.014929, -0.895223,
		0.743965, 0.562481, -0.360738,
		51.945511, 51.178364, 53.018837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.434689, 50.761745, 52.564323>,  <51.424736, 50.784630, 53.271355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.434689, 50.761745, 52.564323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.784935, 50.790413, 52.755390>,  <51.995083, 50.807613, 52.870029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.784935, 50.790413, 52.755390>,  <51.434689, 50.761745, 52.564323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.784935, 50.790413, 52.755390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231223, -0.930449, -0.284254,
		0.424070, 0.359344, -0.831286,
		0.875614, 0.071669, 0.477664,
		52.047619, 50.811913, 52.898689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.043404, 50.419624, 52.207127>,  <51.434689, 50.761745, 52.564323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.043404, 50.419624, 52.207127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.034847, 50.401131, 52.606606>,  <52.029713, 50.390034, 52.846294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.034847, 50.401131, 52.606606>,  <52.043404, 50.419624, 52.207127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.034847, 50.401131, 52.606606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064508, -0.996912, -0.044768,
		0.997688, 0.063467, 0.024310,
		-0.021393, -0.046232, 0.998702,
		52.028427, 50.387260, 52.906216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.562798, 49.992100, 52.389729>,  <52.043404, 50.419624, 52.207127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.562798, 49.992100, 52.389729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.310352, 50.017159, 52.698990>,  <52.158886, 50.032192, 52.884548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.310352, 50.017159, 52.698990>,  <52.562798, 49.992100, 52.389729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.310352, 50.017159, 52.698990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195201, -0.977484, -0.080139,
		0.750726, -0.201498, 0.629133,
		-0.631115, 0.062645, 0.773155,
		52.121017, 50.035954, 52.930935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.236317, 49.881020, 52.214695>,  <52.562798, 49.992100, 52.389729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.236317, 49.881020, 52.214695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.599007, 50.043751, 52.259140>,  <53.816620, 50.141392, 52.285809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.599007, 50.043751, 52.259140>,  <53.236317, 49.881020, 52.214695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.599007, 50.043751, 52.259140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296127, -0.801769, 0.519110,
		0.300278, -0.437783, -0.847454,
		0.906721, 0.406831, 0.111115,
		53.871021, 50.165802, 52.292473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.795429, 49.365547, 52.384266>,  <53.236317, 49.881020, 52.214695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.795429, 49.365547, 52.384266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.960396, 49.696667, 52.536400>,  <54.059376, 49.895340, 52.627682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.960396, 49.696667, 52.536400>,  <53.795429, 49.365547, 52.384266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.960396, 49.696667, 52.536400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121214, -0.463648, 0.877689,
		0.902897, -0.315867, -0.291556,
		0.412412, 0.827803, 0.380339,
		54.084118, 49.945007, 52.650501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.439217, 49.181343, 52.805943>,  <53.795429, 49.365547, 52.384266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.439217, 49.181343, 52.805943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.227303, 49.501366, 52.918537>,  <54.100155, 49.693378, 52.986095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.227303, 49.501366, 52.918537>,  <54.439217, 49.181343, 52.805943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.227303, 49.501366, 52.918537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060335, -0.366603, 0.928419,
		0.845986, 0.474875, 0.242490,
		-0.529780, 0.800060, 0.281489,
		54.068367, 49.741383, 53.002983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.585541, 49.681717, 53.350403>,  <54.439217, 49.181343, 52.805943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.585541, 49.681717, 53.350403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.186707, 49.712189, 53.352276>,  <53.947407, 49.730473, 53.353401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.186707, 49.712189, 53.352276>,  <54.585541, 49.681717, 53.350403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.186707, 49.712189, 53.352276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025302, -0.387840, 0.921379,
		0.072003, 0.918573, 0.388637,
		-0.997083, 0.076176, 0.004684,
		53.887581, 49.735043, 53.353680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.487217, 49.862438, 53.962086>,  <54.585541, 49.681717, 53.350403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.487217, 49.862438, 53.962086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.142387, 49.726547, 53.811665>,  <53.935490, 49.645012, 53.721413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.142387, 49.726547, 53.811665>,  <54.487217, 49.862438, 53.962086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.142387, 49.726547, 53.811665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280357, -0.298455, 0.912318,
		-0.422172, 0.891915, 0.162046,
		-0.862073, -0.339725, -0.376054,
		53.883766, 49.624630, 53.698849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.793873, 50.216000, 54.115330>,  <54.487217, 49.862438, 53.962086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.793873, 50.216000, 54.115330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.798817, 49.816093, 54.108269>,  <53.801785, 49.576149, 54.104031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.798817, 49.816093, 54.108269>,  <53.793873, 50.216000, 54.115330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.798817, 49.816093, 54.108269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327864, -0.020734, 0.944497,
		-0.944644, -0.005883, -0.328044,
		0.012358, -0.999768, -0.017657,
		53.802525, 49.516163, 54.102970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.287079, 50.883961, 54.086044>,  <53.793873, 50.216000, 54.115330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.287079, 50.883961, 54.086044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.265762, 51.244297, 54.258392>,  <54.252972, 51.460499, 54.361801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.265762, 51.244297, 54.258392>,  <54.287079, 50.883961, 54.086044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.265762, 51.244297, 54.258392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992223, -0.000841, 0.124472,
		0.112491, 0.434152, -0.893789,
		-0.053287, 0.900839, 0.430870,
		54.249775, 51.514549, 54.387653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.803127, 51.445183, 53.775723>,  <54.287079, 50.883961, 54.086044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.803127, 51.445183, 53.775723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.725471, 51.524479, 54.160015>,  <54.678879, 51.572056, 54.390591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.725471, 51.524479, 54.160015>,  <54.803127, 51.445183, 53.775723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.725471, 51.524479, 54.160015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978879, 0.103123, 0.176526,
		-0.064080, 0.974714, -0.214071,
		-0.194138, 0.198238, 0.960735,
		54.667229, 51.583950, 54.448235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.268864, 51.985622, 54.101704>,  <54.803127, 51.445183, 53.775723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.268864, 51.985622, 54.101704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.171745, 51.724327, 54.388573>,  <55.113476, 51.567551, 54.560696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.171745, 51.724327, 54.388573>,  <55.268864, 51.985622, 54.101704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.171745, 51.724327, 54.388573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965671, -0.092363, 0.242795,
		-0.092363, 0.751501, 0.653235,
		-0.242795, -0.653235, 0.717171,
		55.098907, 51.528358, 54.603725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.397968, 52.140694, 54.867195>,  <55.268864, 51.985622, 54.101704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.397968, 52.140694, 54.867195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.425941, 51.758629, 54.752113>,  <55.442726, 51.529388, 54.683064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.425941, 51.758629, 54.752113>,  <55.397968, 52.140694, 54.867195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.425941, 51.758629, 54.752113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990002, 0.031037, 0.137595,
		-0.122497, -0.294445, 0.947785,
		0.069931, -0.955164, -0.287700,
		55.446922, 51.472080, 54.665802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.663883, 51.683464, 55.405449>,  <55.397968, 52.140694, 54.867195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.663883, 51.683464, 55.405449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.756233, 51.571632, 55.032669>,  <55.811642, 51.504536, 54.809002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.756233, 51.571632, 55.032669>,  <55.663883, 51.683464, 55.405449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.756233, 51.571632, 55.032669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942310, 0.302855, 0.142587,
		0.242382, -0.911107, 0.333368,
		0.230874, -0.279575, -0.931952,
		55.825497, 51.487759, 54.753082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.146183, 51.242561, 55.533955>,  <55.663883, 51.683464, 55.405449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.146183, 51.242561, 55.533955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.166313, 51.401806, 55.167572>,  <56.178391, 51.497353, 54.947742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.166313, 51.401806, 55.167572>,  <56.146183, 51.242561, 55.533955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.166313, 51.401806, 55.167572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949877, 0.264253, 0.167045,
		0.308546, -0.878452, -0.364857,
		0.050326, 0.398111, -0.915956,
		56.181412, 51.521240, 54.892784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.686535, 50.966908, 55.046276>,  <56.146183, 51.242561, 55.533955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.686535, 50.966908, 55.046276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.601738, 51.356674, 55.016434>,  <56.550861, 51.590534, 54.998528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.601738, 51.356674, 55.016434>,  <56.686535, 50.966908, 55.046276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.601738, 51.356674, 55.016434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916702, 0.224727, 0.330385,
		0.338699, 0.001650, -0.940893,
		-0.211989, 0.974420, -0.074602,
		56.538143, 51.649002, 54.994053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.293777, 51.297470, 54.776649>,  <56.686535, 50.966908, 55.046276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.293777, 51.297470, 54.776649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.131599, 51.595528, 54.988449>,  <57.034294, 51.774364, 55.115528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.131599, 51.595528, 54.988449>,  <57.293777, 51.297470, 54.776649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.131599, 51.595528, 54.988449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888395, 0.184743, 0.420266,
		0.215338, 0.640802, -0.736887,
		-0.405442, 0.745146, 0.529503,
		57.009968, 51.819073, 55.147301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.815929, 51.879875, 54.770279>,  <57.293777, 51.297470, 54.776649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.815929, 51.879875, 54.770279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.644096, 51.891747, 55.131294>,  <57.540997, 51.898869, 55.347904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.644096, 51.891747, 55.131294>,  <57.815929, 51.879875, 54.770279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.644096, 51.891747, 55.131294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652631, -0.700979, -0.287580,
		0.624127, -0.712565, 0.320496,
		-0.429580, 0.029679, 0.902541,
		57.515221, 51.900650, 55.402058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.449104, 52.501659, 54.948681>,  <57.815929, 51.879875, 54.770279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.449104, 52.501659, 54.948681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.495613, 52.716675, 55.282753>,  <57.523518, 52.845684, 55.483196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.495613, 52.716675, 55.282753>,  <57.449104, 52.501659, 54.948681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.495613, 52.716675, 55.282753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584107, -0.717108, 0.380230,
		0.803306, 0.443627, -0.397360,
		0.116270, 0.537542, 0.835183,
		57.530495, 52.877937, 55.533306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.168442, 52.748257, 55.152050>,  <57.449104, 52.501659, 54.948681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.168442, 52.748257, 55.152050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.010841, 52.702454, 55.516830>,  <57.916279, 52.674973, 55.735699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.010841, 52.702454, 55.516830>,  <58.168442, 52.748257, 55.152050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.010841, 52.702454, 55.516830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890869, -0.291645, 0.348276,
		0.226083, 0.949648, 0.216924,
		-0.394004, -0.114511, 0.911947,
		57.892639, 52.668098, 55.790413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.694313, 52.945034, 55.651241>,  <58.168442, 52.748257, 55.152050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.694313, 52.945034, 55.651241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.568474, 53.318695, 55.583839>,  <58.492970, 53.542892, 55.543400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.568474, 53.318695, 55.583839>,  <58.694313, 52.945034, 55.651241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.568474, 53.318695, 55.583839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406380, 0.292970, 0.865462,
		0.857836, 0.203798, -0.471788,
		-0.314599, 0.934149, -0.168501,
		58.474094, 53.598938, 55.533291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.225014, 53.370369, 55.961029>,  <58.694313, 52.945034, 55.651241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.225014, 53.370369, 55.961029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.000816, 53.683788, 55.853775>,  <58.866299, 53.871841, 55.789421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.000816, 53.683788, 55.853775>,  <59.225014, 53.370369, 55.961029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.000816, 53.683788, 55.853775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541056, 0.591582, 0.597737,
		0.626981, 0.189951, -0.755522,
		-0.560493, 0.783550, -0.268137,
		58.832668, 53.918854, 55.773335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.850479, 53.661526, 56.328159>,  <59.225014, 53.370369, 55.961029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.850479, 53.661526, 56.328159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.875450, 53.388809, 56.619713>,  <59.890434, 53.225182, 56.794643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.875450, 53.388809, 56.619713>,  <59.850479, 53.661526, 56.328159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.875450, 53.388809, 56.619713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739027, -0.459252, -0.492875,
		0.670777, 0.569432, 0.475190,
		0.062427, -0.681787, 0.728882,
		59.894176, 53.184273, 56.838379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.481781, 53.858768, 56.481659>,  <59.850479, 53.661526, 56.328159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.481781, 53.858768, 56.481659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.708328, 53.632717, 56.721611>,  <60.844257, 53.497086, 56.865582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.708328, 53.632717, 56.721611>,  <60.481781, 53.858768, 56.481659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.708328, 53.632717, 56.721611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822614, 0.343147, -0.453384,
		0.050371, 0.750254, 0.659228,
		0.566365, -0.565128, 0.599885,
		60.878239, 53.463181, 56.901577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.035339, 54.133064, 56.898956>,  <60.481781, 53.858768, 56.481659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.035339, 54.133064, 56.898956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.113014, 53.766045, 56.760162>,  <61.159618, 53.545834, 56.676888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.113014, 53.766045, 56.760162>,  <61.035339, 54.133064, 56.898956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.113014, 53.766045, 56.760162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529940, 0.395783, -0.750013,
		0.825502, -0.038236, 0.563102,
		0.194189, -0.917548, -0.346982,
		61.171272, 53.490780, 56.656067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.719639, 54.022228, 56.930916>,  <61.035339, 54.133064, 56.898956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.719639, 54.022228, 56.930916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.543106, 53.822792, 56.632484>,  <61.437187, 53.703133, 56.453426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.543106, 53.822792, 56.632484>,  <61.719639, 54.022228, 56.930916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.543106, 53.822792, 56.632484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655884, 0.388194, -0.647396,
		0.612409, -0.775058, 0.155694,
		-0.441330, -0.498588, -0.746082,
		61.410706, 53.673214, 56.408661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.289997, 53.987484, 56.481171>,  <61.719639, 54.022228, 56.930916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.289997, 53.987484, 56.481171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.982544, 53.908775, 56.237701>,  <61.798073, 53.861549, 56.091618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.982544, 53.908775, 56.237701>,  <62.289997, 53.987484, 56.481171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.982544, 53.908775, 56.237701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548133, 0.287940, -0.785265,
		0.329781, -0.937214, -0.113462,
		-0.768632, -0.196773, -0.608675,
		61.751953, 53.849743, 56.055099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.443371, 53.411812, 56.001507>,  <62.289997, 53.987484, 56.481171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.443371, 53.411812, 56.001507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.209473, 53.709480, 55.872337>,  <62.069134, 53.888081, 55.794834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.209473, 53.709480, 55.872337>,  <62.443371, 53.411812, 56.001507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.209473, 53.709480, 55.872337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701807, 0.264420, -0.661474,
		-0.406861, -0.613427, -0.676883,
		-0.584748, 0.744170, -0.322926,
		62.034050, 53.932732, 55.775459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.165897, 53.547855, 55.916210>,  <62.443371, 53.411812, 56.001507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.165897, 53.547855, 55.916210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.316856, 53.917896, 55.932983>,  <63.407433, 54.139919, 55.943047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.316856, 53.917896, 55.932983>,  <63.165897, 53.547855, 55.916210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.316856, 53.917896, 55.932983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670769, -0.241862, -0.701121,
		-0.638468, 0.292724, -0.711808,
		0.377394, 0.925103, 0.041929,
		63.430073, 54.195427, 55.945560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.093853, 53.976826, 55.297230>,  <63.165897, 53.547855, 55.916210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.093853, 53.976826, 55.297230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.430252, 54.057323, 55.498116>,  <63.632092, 54.105621, 55.618649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.430252, 54.057323, 55.498116>,  <63.093853, 53.976826, 55.297230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.430252, 54.057323, 55.498116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540875, -0.289896, -0.789566,
		-0.013303, 0.935661, -0.352649,
		0.840998, 0.201242, 0.502219,
		63.682552, 54.117695, 55.648781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.331829, 53.696514, 55.086643>,  <63.093853, 53.976826, 55.297230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.331829, 53.696514, 55.086643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.257812, 54.006573, 54.845013>,  <62.213402, 54.192608, 54.700035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.257812, 54.006573, 54.845013>,  <62.331829, 53.696514, 55.086643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.257812, 54.006573, 54.845013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916070, 0.358591, 0.179523,
		0.355772, -0.520155, -0.776444,
		-0.185045, 0.775146, -0.604075,
		62.202297, 54.239117, 54.663792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.939754, 53.673450, 54.560112>,  <62.331829, 53.696514, 55.086643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.939754, 53.673450, 54.560112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.733574, 54.012917, 54.607590>,  <62.609867, 54.216595, 54.636074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.733574, 54.012917, 54.607590>,  <62.939754, 53.673450, 54.560112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.733574, 54.012917, 54.607590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852728, 0.521667, -0.026801,
		-0.084661, 0.087396, -0.992570,
		-0.515449, 0.848661, 0.118690,
		62.578938, 54.267513, 54.643196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.193005, 54.165886, 53.994156>,  <62.939754, 53.673450, 54.560112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.193005, 54.165886, 53.994156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.997536, 54.368336, 54.278419>,  <62.880253, 54.489803, 54.448978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.997536, 54.368336, 54.278419>,  <63.193005, 54.165886, 53.994156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.997536, 54.368336, 54.278419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808727, 0.568390, 0.151308,
		-0.327353, 0.648671, -0.687070,
		-0.488673, 0.506121, 0.710662,
		62.850933, 54.520172, 54.491619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.420769, 54.854424, 53.727127>,  <63.193005, 54.165886, 53.994156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.420769, 54.854424, 53.727127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.317612, 54.821472, 54.112190>,  <63.255718, 54.801701, 54.343227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.317612, 54.821472, 54.112190>,  <63.420769, 54.854424, 53.727127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.317612, 54.821472, 54.112190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733355, 0.631994, 0.250548,
		-0.629032, 0.770582, -0.102574,
		-0.257893, -0.082380, 0.962655,
		63.240242, 54.796757, 54.400986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.173370, 55.557831, 54.105263>,  <63.420769, 54.854424, 53.727127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.173370, 55.557831, 54.105263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.368057, 55.279617, 54.316673>,  <63.484871, 55.112690, 54.443520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.368057, 55.279617, 54.316673>,  <63.173370, 55.557831, 54.105263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.368057, 55.279617, 54.316673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774152, 0.623734, 0.107908,
		-0.404711, 0.356636, 0.842033,
		0.486721, -0.695533, 0.528523,
		63.514072, 55.070957, 54.475231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.526299, 55.965851, 54.623726>,  <63.173370, 55.557831, 54.105263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.526299, 55.965851, 54.623726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.700562, 55.609398, 54.572990>,  <63.805119, 55.395527, 54.542549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.700562, 55.609398, 54.572990>,  <63.526299, 55.965851, 54.623726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.700562, 55.609398, 54.572990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851061, 0.361923, 0.380404,
		-0.293082, -0.273678, 0.916081,
		0.435659, -0.891130, -0.126843,
		63.831261, 55.342060, 54.534939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.782696, 55.905975, 55.241173>,  <63.526299, 55.965851, 54.623726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.782696, 55.905975, 55.241173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.966415, 55.639729, 55.005890>,  <64.076645, 55.479980, 54.864719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.966415, 55.639729, 55.005890>,  <63.782696, 55.905975, 55.241173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.966415, 55.639729, 55.005890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870292, 0.204614, 0.448023,
		-0.177857, -0.717694, 0.673263,
		0.459302, -0.665619, -0.588211,
		64.104202, 55.440044, 54.829426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.317444, 55.598972, 55.695389>,  <63.782696, 55.905975, 55.241173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.317444, 55.598972, 55.695389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.374557, 55.678646, 55.307587>,  <64.408829, 55.726452, 55.074905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.374557, 55.678646, 55.307587>,  <64.317444, 55.598972, 55.695389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.374557, 55.678646, 55.307587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707280, 0.664683, 0.240732,
		0.692362, -0.720085, -0.045968,
		0.142793, 0.199185, -0.969502,
		64.417397, 55.738403, 55.016735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.995216, 55.814663, 55.681911>,  <64.317444, 55.598972, 55.695389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.995216, 55.814663, 55.681911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.765976, 56.032166, 55.436676>,  <64.628433, 56.162666, 55.289536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.765976, 56.032166, 55.436676>,  <64.995216, 55.814663, 55.681911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.765976, 56.032166, 55.436676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377340, 0.839216, 0.391576,
		0.727434, -0.006927, -0.686143,
		-0.573109, 0.543754, -0.613088,
		64.594040, 56.195293, 55.252750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.468132, 56.451618, 55.376415>,  <64.995216, 55.814663, 55.681911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.468132, 56.451618, 55.376415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.077850, 56.528305, 55.418800>,  <64.843681, 56.574318, 55.444233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.077850, 56.528305, 55.418800>,  <65.468132, 56.451618, 55.376415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.077850, 56.528305, 55.418800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219052, 0.853198, 0.473360,
		0.000344, 0.485075, -0.874472,
		-0.975713, 0.191718, 0.105963,
		64.785133, 56.585819, 55.450588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.079185, 56.120205, 55.665085>,  <65.468132, 56.451618, 55.376415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.079185, 56.120205, 55.665085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.396301, 55.929939, 55.817513>,  <66.586571, 55.815781, 55.908970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.396301, 55.929939, 55.817513>,  <66.079185, 56.120205, 55.665085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.396301, 55.929939, 55.817513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464598, 0.876326, 0.127289,
		-0.394488, 0.076129, 0.915742,
		0.792798, -0.475666, 0.381069,
		66.634140, 55.787239, 55.931831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.244720, 56.375427, 56.405552>,  <66.079185, 56.120205, 55.665085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.244720, 56.375427, 56.405552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.576302, 56.238281, 56.228783>,  <66.775246, 56.155994, 56.122723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.576302, 56.238281, 56.228783>,  <66.244720, 56.375427, 56.405552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.576302, 56.238281, 56.228783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479060, 0.843030, 0.244543,
		0.288711, -0.414421, 0.863077,
		0.828944, -0.342863, -0.441924,
		66.824982, 56.135422, 56.096207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.847923, 56.619518, 56.903976>,  <66.244720, 56.375427, 56.405552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.847923, 56.619518, 56.903976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.929031, 56.550308, 56.518448>,  <66.977699, 56.508781, 56.287132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.929031, 56.550308, 56.518448>,  <66.847923, 56.619518, 56.903976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.929031, 56.550308, 56.518448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391304, 0.916581, -0.082224,
		0.897644, -0.360473, 0.253565,
		0.202773, -0.173029, -0.963818,
		66.989861, 56.498398, 56.229301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.159813, 57.171562, 56.664959>,  <66.847923, 56.619518, 56.903976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.159813, 57.171562, 56.664959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.172424, 56.995602, 56.305962>,  <67.179993, 56.890026, 56.090565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.172424, 56.995602, 56.305962>,  <67.159813, 57.171562, 56.664959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.172424, 56.995602, 56.305962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326092, 0.853332, -0.406802,
		0.944812, -0.279835, 0.170360,
		0.031536, -0.439904, -0.897491,
		67.181885, 56.863632, 56.036713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.570854, 57.101711, 57.280128>,  <67.159813, 57.171562, 56.664959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.570854, 57.101711, 57.280128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.711861, 56.810200, 57.514946>,  <67.796463, 56.635292, 57.655834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.711861, 56.810200, 57.514946>,  <67.570854, 57.101711, 57.280128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.711861, 56.810200, 57.514946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745169, 0.598078, 0.295000,
		-0.566085, 0.333451, 0.753896,
		0.352521, -0.728775, 0.587040,
		67.817619, 56.591568, 57.691059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.800133, 57.330315, 57.935631>,  <67.570854, 57.101711, 57.280128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.800133, 57.330315, 57.935631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.006424, 56.996162, 57.859550>,  <68.130196, 56.795670, 57.813904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.006424, 56.996162, 57.859550>,  <67.800133, 57.330315, 57.935631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.006424, 56.996162, 57.859550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829375, 0.431105, 0.355367,
		-0.214871, -0.341014, 0.915172,
		0.515720, -0.835379, -0.190196,
		68.161140, 56.745548, 57.802490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.199341, 57.115665, 58.525932>,  <67.800133, 57.330315, 57.935631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.199341, 57.115665, 58.525932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.359108, 57.001400, 58.177483>,  <68.454971, 56.932842, 57.968410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.359108, 57.001400, 58.177483>,  <68.199341, 57.115665, 58.525932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.359108, 57.001400, 58.177483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867885, 0.423964, 0.258903,
		0.295368, -0.859449, 0.417260,
		0.399417, -0.285662, -0.871128,
		68.478935, 56.915703, 57.916145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.550980, 56.486195, 58.555614>,  <68.199341, 57.115665, 58.525932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.550980, 56.486195, 58.555614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.639107, 56.797871, 58.320900>,  <68.691986, 56.984875, 58.180069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.639107, 56.797871, 58.320900>,  <68.550980, 56.486195, 58.555614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.639107, 56.797871, 58.320900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714002, 0.281030, 0.641266,
		0.664573, -0.560258, -0.494423,
		0.220326, 0.779188, -0.586790,
		68.705208, 57.031628, 58.144863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.214409, 56.600174, 58.309536>,  <68.550980, 56.486195, 58.555614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.214409, 56.600174, 58.309536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.046600, 56.963188, 58.317284>,  <68.945915, 57.180996, 58.321930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.046600, 56.963188, 58.317284>,  <69.214409, 56.600174, 58.309536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.046600, 56.963188, 58.317284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818509, 0.368969, 0.440346,
		0.392485, 0.200587, -0.897619,
		-0.419521, 0.907539, 0.019367,
		68.920746, 57.235451, 58.323093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.856461, 56.958019, 58.281986>,  <69.214409, 56.600174, 58.309536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.856461, 56.958019, 58.281986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.606964, 57.245152, 58.405701>,  <69.457268, 57.417431, 58.479927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.606964, 57.245152, 58.405701>,  <69.856461, 56.958019, 58.281986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.606964, 57.245152, 58.405701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770055, 0.496520, 0.400602,
		0.134001, 0.488038, -0.862474,
		-0.623746, 0.717834, 0.309283,
		69.419838, 57.460503, 58.498486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.456261, 56.958607, 58.739754>,  <69.856461, 56.958019, 58.281986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.456261, 56.958607, 58.739754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.334274, 57.232300, 58.474777>,  <70.261086, 57.396515, 58.315792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.334274, 57.232300, 58.474777>,  <70.456261, 56.958607, 58.739754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.334274, 57.232300, 58.474777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618283, 0.671302, 0.408753,
		0.724378, -0.284920, -0.627771,
		-0.304962, 0.684232, -0.662438,
		70.242783, 57.437569, 58.276047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.670509, 57.452995, 59.265953>,  <70.456261, 56.958607, 58.739754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.670509, 57.452995, 59.265953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.701752, 57.847851, 59.321754>,  <70.720497, 58.084763, 59.355236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.701752, 57.847851, 59.321754>,  <70.670509, 57.452995, 59.265953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.701752, 57.847851, 59.321754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887608, -0.132576, 0.441108,
		0.453929, 0.089369, -0.886545,
		0.078113, 0.987136, 0.139504,
		70.725189, 58.143993, 59.363605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.192871, 57.675549, 59.003708>,  <70.670509, 57.452995, 59.265953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.192871, 57.675549, 59.003708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.073929, 57.870735, 59.331970>,  <71.002563, 57.987846, 59.528927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.073929, 57.870735, 59.331970>,  <71.192871, 57.675549, 59.003708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.073929, 57.870735, 59.331970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783485, -0.366519, 0.501812,
		0.545653, 0.792183, -0.273329,
		-0.297347, 0.487965, 0.820656,
		70.984726, 58.017124, 59.578167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.737228, 58.183308, 59.246777>,  <71.192871, 57.675549, 59.003708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.737228, 58.183308, 59.246777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.510414, 57.967628, 59.495850>,  <71.374329, 57.838219, 59.645294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.510414, 57.967628, 59.495850>,  <71.737228, 58.183308, 59.246777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.510414, 57.967628, 59.495850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823680, -0.376131, 0.424354,
		0.005400, 0.753516, 0.657407,
		-0.567029, -0.539202, 0.622687,
		71.340309, 57.805866, 59.682655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.945633, 58.215355, 59.948910>,  <71.737228, 58.183308, 59.246777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.945633, 58.215355, 59.948910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.767555, 57.863060, 59.884277>,  <71.660706, 57.651684, 59.845497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.767555, 57.863060, 59.884277>,  <71.945633, 58.215355, 59.948910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.767555, 57.863060, 59.884277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830330, -0.473596, 0.293699,
		-0.335196, -0.003414, 0.942142,
		-0.445192, -0.880736, -0.161582,
		71.633995, 57.598839, 59.835804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.088623, 57.782864, 60.516949>,  <71.945633, 58.215355, 59.948910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.088623, 57.782864, 60.516949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.032883, 57.562225, 60.187996>,  <71.999435, 57.429840, 59.990623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.032883, 57.562225, 60.187996>,  <72.088623, 57.782864, 60.516949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.032883, 57.562225, 60.187996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734874, -0.614261, 0.287479,
		-0.663733, -0.564288, 0.490956,
		-0.139354, -0.551600, -0.822386,
		71.991074, 57.396744, 59.941280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.357536, 57.040226, 60.493515>,  <72.088623, 57.782864, 60.516949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.357536, 57.040226, 60.493515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.479576, 57.113056, 60.119614>,  <72.552803, 57.156754, 59.895271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.479576, 57.113056, 60.119614>,  <72.357536, 57.040226, 60.493515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.479576, 57.113056, 60.119614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394227, 0.869352, 0.298013,
		0.866885, -0.459432, 0.193476,
		0.305115, 0.182069, -0.934749,
		72.571106, 57.167679, 59.839188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.919662, 57.494442, 60.615913>,  <72.357536, 57.040226, 60.493515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.919662, 57.494442, 60.615913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.849564, 57.521072, 60.223007>,  <72.807503, 57.537052, 59.987263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.849564, 57.521072, 60.223007>,  <72.919662, 57.494442, 60.615913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.849564, 57.521072, 60.223007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261042, 0.965143, 0.018840,
		0.949285, -0.253112, -0.186524,
		-0.175254, 0.066575, -0.982270,
		72.796989, 57.541046, 59.928326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.556511, 57.656113, 60.210491>,  <72.919662, 57.494442, 60.615913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.556511, 57.656113, 60.210491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.209846, 57.781517, 60.055260>,  <73.001846, 57.856758, 59.962120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.209846, 57.781517, 60.055260>,  <73.556511, 57.656113, 60.210491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.209846, 57.781517, 60.055260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246008, 0.945290, 0.214260,
		0.434016, 0.090222, -0.896376,
		-0.866666, 0.313507, -0.388076,
		72.949844, 57.875568, 59.938835>
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
