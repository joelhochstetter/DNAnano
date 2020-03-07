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
	<36.447014, 52.599957, 50.251656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591274, 52.883480, 50.009163>,  <36.677830, 53.053593, 49.863667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591274, 52.883480, 50.009163>,  <36.447014, 52.599957, 50.251656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591274, 52.883480, 50.009163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898781, -0.437804, 0.022807,
		-0.249245, -0.553097, -0.794960,
		0.360651, 0.708810, -0.606234,
		36.699471, 53.096123, 49.827293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748932, 52.301899, 49.591049>,  <36.447014, 52.599957, 50.251656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.748932, 52.301899, 49.591049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.922192, 52.646336, 49.697559>,  <37.026146, 52.852997, 49.761463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.922192, 52.646336, 49.697559>,  <36.748932, 52.301899, 49.591049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922192, 52.646336, 49.697559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900945, -0.422191, -0.100267,
		0.026078, 0.283327, -0.958669,
		0.433150, 0.861093, 0.266271,
		37.052135, 52.904663, 49.777439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493614, 52.257065, 49.296120>,  <36.748932, 52.301899, 49.591049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493614, 52.257065, 49.296120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.465057, 52.517876, 49.598053>,  <37.447922, 52.674362, 49.779213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.465057, 52.517876, 49.598053>,  <37.493614, 52.257065, 49.296120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465057, 52.517876, 49.598053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745352, -0.468019, 0.474772,
		0.662837, 0.596509, -0.452574,
		-0.071392, 0.652023, 0.754830,
		37.443638, 52.713482, 49.824501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138069, 52.650967, 49.295616>,  <37.493614, 52.257065, 49.296120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138069, 52.650967, 49.295616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.947014, 52.573681, 49.638435>,  <37.832378, 52.527309, 49.844128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.947014, 52.573681, 49.638435>,  <38.138069, 52.650967, 49.295616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.947014, 52.573681, 49.638435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770585, -0.560675, 0.303057,
		0.421971, 0.805179, 0.416686,
		-0.477640, -0.193211, 0.857047,
		37.803722, 52.515717, 49.895550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541531, 52.994343, 49.871754>,  <38.138069, 52.650967, 49.295616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.541531, 52.994343, 49.871754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.345879, 52.651871, 49.938347>,  <38.228489, 52.446388, 49.978302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.345879, 52.651871, 49.938347>,  <38.541531, 52.994343, 49.871754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345879, 52.651871, 49.938347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865304, -0.452349, 0.215939,
		-0.109572, 0.249683, 0.962108,
		-0.489125, -0.856177, 0.166486,
		38.199142, 52.395020, 49.988293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951260, 52.773479, 50.383469>,  <38.541531, 52.994343, 49.871754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.951260, 52.773479, 50.383469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.707924, 52.479691, 50.263149>,  <38.561920, 52.303417, 50.190960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.707924, 52.479691, 50.263149>,  <38.951260, 52.773479, 50.383469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707924, 52.479691, 50.263149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704701, -0.674202, 0.221017,
		-0.365127, -0.077517, 0.927725,
		-0.608341, -0.734468, -0.300796,
		38.525421, 52.259350, 50.172909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823921, 52.190742, 50.839161>,  <38.951260, 52.773479, 50.383469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.823921, 52.190742, 50.839161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.827793, 52.059475, 50.461334>,  <38.830116, 51.980717, 50.234638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.827793, 52.059475, 50.461334>,  <38.823921, 52.190742, 50.839161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.827793, 52.059475, 50.461334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696066, -0.675972, 0.241979,
		-0.717913, -0.659825, 0.221884,
		0.009676, -0.328166, -0.944570,
		38.830696, 51.961025, 50.177963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797546, 51.397854, 50.829517>,  <38.823921, 52.190742, 50.839161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.797546, 51.397854, 50.829517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.993652, 51.570992, 50.526920>,  <39.111317, 51.674873, 50.345364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.993652, 51.570992, 50.526920>,  <38.797546, 51.397854, 50.829517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.993652, 51.570992, 50.526920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811796, -0.542683, 0.215595,
		-0.317216, -0.719817, -0.617443,
		0.490265, 0.432848, -0.756493,
		39.140732, 51.700848, 50.299973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112305, 50.864029, 50.456478>,  <38.797546, 51.397854, 50.829517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.112305, 50.864029, 50.456478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.294270, 51.220154, 50.448505>,  <39.403446, 51.433830, 50.443722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.294270, 51.220154, 50.448505>,  <39.112305, 50.864029, 50.456478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.294270, 51.220154, 50.448505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885521, -0.449859, 0.116104,
		0.094403, -0.070467, -0.993037,
		0.454908, 0.890315, -0.019932,
		39.430740, 51.487247, 50.442524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603390, 51.025761, 49.870228>,  <39.112305, 50.864029, 50.456478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.603390, 51.025761, 49.870228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.723713, 51.212151, 50.203064>,  <39.795906, 51.323986, 50.402767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.723713, 51.212151, 50.203064>,  <39.603390, 51.025761, 49.870228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.723713, 51.212151, 50.203064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903316, -0.419013, -0.091910,
		0.305831, 0.779292, -0.546966,
		0.300810, 0.465975, 0.832094,
		39.813957, 51.351944, 50.452694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.284237, 51.369293, 49.855934>,  <39.603390, 51.025761, 49.870228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.284237, 51.369293, 49.855934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.228672, 51.225891, 50.225189>,  <40.195332, 51.139851, 50.446743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.228672, 51.225891, 50.225189>,  <40.284237, 51.369293, 49.855934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.228672, 51.225891, 50.225189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756837, -0.639614, -0.134506,
		0.638671, 0.679977, 0.360182,
		-0.138917, -0.358504, 0.923134,
		40.186996, 51.118340, 50.502129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.585392, 50.718014, 49.975124>,  <40.284237, 51.369293, 49.855934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.585392, 50.718014, 49.975124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.970352, 50.612087, 49.950928>,  <41.201328, 50.548531, 49.936409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.970352, 50.612087, 49.950928>,  <40.585392, 50.718014, 49.975124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.970352, 50.612087, 49.950928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271608, 0.934732, 0.229138,
		-0.004137, -0.236952, 0.971512,
		0.962399, -0.264818, -0.060491,
		41.259071, 50.532642, 49.932781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.029892, 50.906845, 50.563442>,  <40.585392, 50.718014, 49.975124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.029892, 50.906845, 50.563442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.316223, 50.897732, 50.284283>,  <41.488022, 50.892265, 50.116787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.316223, 50.897732, 50.284283>,  <41.029892, 50.906845, 50.563442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.316223, 50.897732, 50.284283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419242, 0.813298, 0.403463,
		0.558410, -0.581401, 0.591736,
		0.715832, -0.022783, -0.697901,
		41.530972, 50.890896, 50.074913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.644695, 50.919842, 50.939701>,  <41.029892, 50.906845, 50.563442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.644695, 50.919842, 50.939701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.681450, 51.081226, 50.575554>,  <41.703503, 51.178059, 50.357063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.681450, 51.081226, 50.575554>,  <41.644695, 50.919842, 50.939701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.681450, 51.081226, 50.575554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570487, 0.727996, 0.380218,
		0.816151, -0.554290, -0.163282,
		0.091882, 0.403466, -0.910370,
		41.709015, 51.202267, 50.302444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.374500, 50.860432, 50.651920>,  <41.644695, 50.919842, 50.939701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.374500, 50.860432, 50.651920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.163548, 51.182705, 50.544033>,  <42.036976, 51.376068, 50.479301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.163548, 51.182705, 50.544033>,  <42.374500, 50.860432, 50.651920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.163548, 51.182705, 50.544033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710249, 0.592279, 0.380462,
		0.466279, 0.009082, -0.884591,
		-0.527380, 0.805682, -0.269716,
		42.005333, 51.424408, 50.463120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.944420, 51.279690, 50.637169>,  <42.374500, 50.860432, 50.651920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.944420, 51.279690, 50.637169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.610298, 51.499199, 50.650585>,  <42.409824, 51.630905, 50.658634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.610298, 51.499199, 50.650585>,  <42.944420, 51.279690, 50.637169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.610298, 51.499199, 50.650585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531217, 0.789849, 0.306509,
		0.141714, 0.273842, -0.951277,
		-0.835300, 0.548771, 0.033537,
		42.359707, 51.663830, 50.660645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.912457, 51.952450, 50.134449>,  <42.944420, 51.279690, 50.637169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.912457, 51.952450, 50.134449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.731922, 51.954338, 50.491386>,  <42.623604, 51.955471, 50.705547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.731922, 51.954338, 50.491386>,  <42.912457, 51.952450, 50.134449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.731922, 51.954338, 50.491386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703098, 0.617659, 0.352350,
		-0.549501, 0.786432, -0.282089,
		-0.451334, 0.004720, 0.892343,
		42.596523, 51.955753, 50.759090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.340927, 52.400322, 49.736328>,  <42.912457, 51.952450, 50.134449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.340927, 52.400322, 49.736328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.610851, 52.108818, 49.689774>,  <43.772804, 51.933918, 49.661842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.610851, 52.108818, 49.689774>,  <43.340927, 52.400322, 49.736328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.610851, 52.108818, 49.689774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169388, 0.306439, -0.936698,
		0.718290, 0.612378, 0.330231,
		0.674809, -0.728758, -0.116383,
		43.813293, 51.890190, 49.654858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.117455, 52.553932, 49.662754>,  <43.340927, 52.400322, 49.736328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.117455, 52.553932, 49.662754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.981403, 52.250862, 49.439957>,  <43.899773, 52.069019, 49.306278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.981403, 52.250862, 49.439957>,  <44.117455, 52.553932, 49.662754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.981403, 52.250862, 49.439957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223089, 0.510390, -0.830502,
		0.913535, -0.406735, -0.004569,
		-0.340126, -0.757673, -0.556997,
		43.879364, 52.023560, 49.272858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.618263, 52.063919, 49.163548>,  <44.117455, 52.553932, 49.662754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.618263, 52.063919, 49.163548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.249226, 52.159348, 49.042282>,  <44.027805, 52.216606, 48.969521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.249226, 52.159348, 49.042282>,  <44.618263, 52.063919, 49.163548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.249226, 52.159348, 49.042282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383161, 0.475216, -0.792059,
		-0.044896, -0.846907, -0.529842,
		-0.922590, 0.238575, -0.303167,
		43.972450, 52.230919, 48.951332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.196873, 51.625793, 49.365753>,  <44.618263, 52.063919, 49.163548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.196873, 51.625793, 49.365753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.260303, 51.923790, 49.624935>,  <45.298363, 52.102589, 49.780445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.260303, 51.923790, 49.624935>,  <45.196873, 51.625793, 49.365753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.260303, 51.923790, 49.624935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732793, -0.528624, 0.428451,
		0.661715, 0.406873, -0.629751,
		0.158577, 0.744990, 0.647953,
		45.307877, 52.147285, 49.819321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.817295, 51.917240, 49.367573>,  <45.196873, 51.625793, 49.365753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.817295, 51.917240, 49.367573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.679222, 51.992603, 49.735344>,  <45.596378, 52.037823, 49.956009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.679222, 51.992603, 49.735344>,  <45.817295, 51.917240, 49.367573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.679222, 51.992603, 49.735344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852335, -0.347186, 0.391136,
		0.392907, 0.918675, -0.040745,
		-0.345181, 0.188408, 0.919431,
		45.575668, 52.049126, 50.011173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.022533, 52.604794, 49.825077>,  <45.817295, 51.917240, 49.367573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.022533, 52.604794, 49.825077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.947903, 52.258518, 50.010880>,  <45.903122, 52.050755, 50.122360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.947903, 52.258518, 50.010880>,  <46.022533, 52.604794, 49.825077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.947903, 52.258518, 50.010880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976229, -0.110290, 0.186581,
		-0.110290, 0.488280, 0.865690,
		-0.186581, -0.865690, 0.464510,
		45.891930, 51.998810, 50.150234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.117695, 52.532932, 50.659115>,  <46.022533, 52.604794, 49.825077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.117695, 52.532932, 50.659115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.253071, 52.245037, 50.416649>,  <46.334297, 52.072300, 50.271168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.253071, 52.245037, 50.416649>,  <46.117695, 52.532932, 50.659115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.253071, 52.245037, 50.416649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940981, 0.256119, 0.221264,
		-0.004000, -0.645278, 0.763938,
		0.338435, -0.719736, -0.606170,
		46.354603, 52.029118, 50.234798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.526890, 52.148010, 51.068493>,  <46.117695, 52.532932, 50.659115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.526890, 52.148010, 51.068493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.627052, 52.051014, 50.693581>,  <46.687149, 51.992817, 50.468632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.627052, 52.051014, 50.693581>,  <46.526890, 52.148010, 51.068493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.627052, 52.051014, 50.693581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956770, 0.209923, 0.201306,
		0.147942, -0.947169, 0.284576,
		0.250410, -0.242492, -0.937279,
		46.702175, 51.978268, 50.412395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.062145, 51.744946, 51.185295>,  <46.526890, 52.148010, 51.068493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.062145, 51.744946, 51.185295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.062756, 51.892506, 50.813507>,  <47.063122, 51.981041, 50.590435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.062756, 51.892506, 50.813507>,  <47.062145, 51.744946, 51.185295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.062756, 51.892506, 50.813507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984028, 0.164897, 0.067065,
		0.178007, -0.914727, -0.362752,
		0.001530, 0.368896, -0.929469,
		47.063213, 52.003174, 50.534668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.635773, 51.343491, 50.851738>,  <47.062145, 51.744946, 51.185295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.635773, 51.343491, 50.851738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.589211, 51.726082, 50.744713>,  <47.561272, 51.955639, 50.680496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.589211, 51.726082, 50.744713>,  <47.635773, 51.343491, 50.851738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.589211, 51.726082, 50.744713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973993, 0.162660, 0.157733,
		0.194391, -0.242246, -0.950541,
		-0.116405, 0.956482, -0.267565,
		47.554291, 52.013027, 50.664444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.153278, 51.572487, 50.266113>,  <47.635773, 51.343491, 50.851738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.153278, 51.572487, 50.266113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.036774, 51.862141, 50.516167>,  <47.966869, 52.035934, 50.666199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.036774, 51.862141, 50.516167>,  <48.153278, 51.572487, 50.266113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.036774, 51.862141, 50.516167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955304, 0.185608, 0.230096,
		0.050590, 0.664213, -0.745829,
		-0.291265, 0.724134, 0.625135,
		47.949394, 52.079380, 50.703709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.415916, 52.147465, 50.012928>,  <48.153278, 51.572487, 50.266113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.415916, 52.147465, 50.012928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.375084, 52.155434, 50.410759>,  <48.350586, 52.160213, 50.649456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.375084, 52.155434, 50.410759>,  <48.415916, 52.147465, 50.012928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.375084, 52.155434, 50.410759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976794, 0.191247, 0.096424,
		-0.188289, 0.981340, -0.038983,
		-0.102080, 0.019923, 0.994577,
		48.344460, 52.161411, 50.709133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.857845, 52.762959, 50.184223>,  <48.415916, 52.147465, 50.012928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.857845, 52.762959, 50.184223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.800194, 52.491615, 50.472404>,  <48.765602, 52.328808, 50.645313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.800194, 52.491615, 50.472404>,  <48.857845, 52.762959, 50.184223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.800194, 52.491615, 50.472404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987925, -0.056830, 0.144133,
		-0.056830, 0.732529, 0.678359,
		-0.144133, -0.678359, 0.720454,
		48.756954, 52.288109, 50.688541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.150177, 53.029202, 50.813339>,  <48.857845, 52.762959, 50.184223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.150177, 53.029202, 50.813339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.126175, 52.629921, 50.813438>,  <49.111774, 52.390354, 50.813496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.126175, 52.629921, 50.813438>,  <49.150177, 53.029202, 50.813339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.126175, 52.629921, 50.813438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991875, -0.059600, 0.112392,
		-0.112175, 0.006989, 0.993664,
		-0.060008, -0.998198, 0.000246,
		49.108173, 52.330463, 50.813511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.530819, 52.679207, 51.372623>,  <49.150177, 53.029202, 50.813339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.530819, 52.679207, 51.372623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.509552, 52.445656, 51.048584>,  <49.496792, 52.305527, 50.854160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.509552, 52.445656, 51.048584>,  <49.530819, 52.679207, 51.372623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.509552, 52.445656, 51.048584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998500, -0.041668, -0.035506,
		-0.013024, -0.810773, 0.585216,
		-0.053172, -0.583876, -0.810099,
		49.493599, 52.270493, 50.805553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.331566, 52.953362, 51.536221>,  <49.530819, 52.679207, 51.372623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.331566, 52.953362, 51.536221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.190968, 53.220619, 51.798531>,  <50.106609, 53.380974, 51.955917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.190968, 53.220619, 51.798531>,  <50.331566, 52.953362, 51.536221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.190968, 53.220619, 51.798531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856028, -0.512976, 0.063813,
		0.379031, -0.538929, 0.752257,
		-0.351499, 0.668140, 0.655773,
		50.085518, 53.421062, 51.995262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.771694, 53.296509, 52.020424>,  <50.331566, 52.953362, 51.536221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.771694, 53.296509, 52.020424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.804710, 52.931660, 51.859814>,  <50.824520, 52.712749, 51.763447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.804710, 52.931660, 51.859814>,  <50.771694, 53.296509, 52.020424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.804710, 52.931660, 51.859814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972205, 0.162274, -0.168775,
		0.219100, -0.376429, 0.900164,
		0.082541, -0.912123, -0.401521,
		50.829472, 52.658024, 51.739357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.271862, 52.776703, 52.269073>,  <50.771694, 53.296509, 52.020424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.271862, 52.776703, 52.269073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.252148, 52.771152, 51.869598>,  <51.240318, 52.767822, 51.629913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.252148, 52.771152, 51.869598>,  <51.271862, 52.776703, 52.269073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.252148, 52.771152, 51.869598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933770, 0.354222, -0.051002,
		0.354464, -0.935058, -0.004514,
		-0.049289, -0.013863, -0.998688,
		51.237362, 52.766991, 51.569992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.999908, 52.535080, 52.066891>,  <51.271862, 52.776703, 52.269073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.999908, 52.535080, 52.066891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.797569, 52.713264, 51.771408>,  <51.676167, 52.820175, 51.594120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.797569, 52.713264, 51.771408>,  <51.999908, 52.535080, 52.066891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.797569, 52.713264, 51.771408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854041, 0.379116, -0.356209,
		0.121379, -0.811072, -0.572214,
		-0.505847, 0.445458, -0.738706,
		51.645817, 52.846901, 51.549797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.461815, 52.385960, 51.606922>,  <51.999908, 52.535080, 52.066891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.461815, 52.385960, 51.606922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.205383, 52.689323, 51.559875>,  <52.051525, 52.871342, 51.531647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.205383, 52.689323, 51.559875>,  <52.461815, 52.385960, 51.606922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.205383, 52.689323, 51.559875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764734, 0.618293, -0.181370,
		-0.064831, -0.206219, -0.976356,
		-0.641076, 0.758411, -0.117618,
		52.013062, 52.916847, 51.524590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.441334, 52.759979, 50.970184>,  <52.461815, 52.385960, 51.606922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.441334, 52.759979, 50.970184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.317364, 53.051453, 51.214466>,  <52.242981, 53.226337, 51.361034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.317364, 53.051453, 51.214466>,  <52.441334, 52.759979, 50.970184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.317364, 53.051453, 51.214466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670356, 0.622983, -0.403132,
		-0.674217, 0.284450, -0.681557,
		-0.309928, 0.728684, 0.610708,
		52.224384, 53.270058, 51.397678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.348999, 53.305584, 50.521156>,  <52.441334, 52.759979, 50.970184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.348999, 53.305584, 50.521156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.378727, 53.447639, 50.893898>,  <52.396564, 53.532871, 51.117542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.378727, 53.447639, 50.893898>,  <52.348999, 53.305584, 50.521156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.378727, 53.447639, 50.893898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522258, 0.782185, -0.339754,
		-0.849543, 0.511920, -0.127341,
		0.074323, 0.355140, 0.931854,
		52.401024, 53.554180, 51.173454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.255703, 54.041237, 50.494141>,  <52.348999, 53.305584, 50.521156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.255703, 54.041237, 50.494141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.453239, 53.989876, 50.838150>,  <52.571762, 53.959061, 51.044556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.453239, 53.989876, 50.838150>,  <52.255703, 54.041237, 50.494141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.453239, 53.989876, 50.838150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610564, 0.755419, -0.237812,
		-0.619140, 0.642538, 0.451453,
		0.493840, -0.128402, 0.860020,
		52.601391, 53.951355, 51.096157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.169338, 54.642471, 51.136417>,  <52.255703, 54.041237, 50.494141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.169338, 54.642471, 51.136417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.504162, 54.441658, 51.049423>,  <52.705055, 54.321171, 50.997227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.504162, 54.441658, 51.049423>,  <52.169338, 54.642471, 51.136417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.504162, 54.441658, 51.049423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437853, 0.853043, -0.283908,
		0.328055, 0.142421, 0.933861,
		0.837058, -0.502031, -0.217485,
		52.755280, 54.291050, 50.984177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.693604, 55.100101, 51.297142>,  <52.169338, 54.642471, 51.136417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.693604, 55.100101, 51.297142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.842884, 54.849247, 51.023666>,  <52.932453, 54.698734, 50.859581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.842884, 54.849247, 51.023666>,  <52.693604, 55.100101, 51.297142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.842884, 54.849247, 51.023666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470545, 0.763059, -0.443089,
		0.799568, -0.156344, 0.579868,
		0.373200, -0.627134, -0.683685,
		52.954845, 54.661106, 50.818562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.074593, 54.401932, 51.437374>,  <52.693604, 55.100101, 51.297142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.074593, 54.401932, 51.437374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.426281, 54.589844, 51.469067>,  <53.637295, 54.702591, 51.488083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.426281, 54.589844, 51.469067>,  <53.074593, 54.401932, 51.437374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.426281, 54.589844, 51.469067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467388, 0.882772, -0.047558,
		-0.092285, 0.004782, 0.995721,
		0.879222, 0.469777, 0.079232,
		53.690048, 54.730778, 51.492836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.991154, 54.950386, 51.986454>,  <53.074593, 54.401932, 51.437374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.991154, 54.950386, 51.986454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.297951, 55.044102, 51.747513>,  <53.482029, 55.100330, 51.604149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.297951, 55.044102, 51.747513>,  <52.991154, 54.950386, 51.986454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.297951, 55.044102, 51.747513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323183, 0.945303, -0.044210,
		0.554319, 0.226962, 0.800761,
		0.766996, 0.234287, -0.597350,
		53.528049, 55.114388, 51.568306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.338650, 55.595909, 52.279327>,  <52.991154, 54.950386, 51.986454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.338650, 55.595909, 52.279327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.345757, 55.554207, 51.881569>,  <53.350021, 55.529186, 51.642914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.345757, 55.554207, 51.881569>,  <53.338650, 55.595909, 52.279327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.345757, 55.554207, 51.881569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411849, 0.905492, -0.102297,
		0.911079, 0.411357, -0.026848,
		0.017770, -0.104258, -0.994392,
		53.351086, 55.522930, 51.583252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.147720, 56.281006, 52.401653>,  <53.338650, 55.595909, 52.279327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.147720, 56.281006, 52.401653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.449986, 56.069359, 52.556061>,  <53.631344, 55.942371, 52.648705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.449986, 56.069359, 52.556061>,  <53.147720, 56.281006, 52.401653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.449986, 56.069359, 52.556061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502216, -0.846420, -0.177068,
		0.420426, -0.060063, -0.905337,
		0.755659, -0.529118, 0.386021,
		53.676682, 55.910622, 52.671867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.713062, 56.512852, 52.062698>,  <53.147720, 56.281006, 52.401653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.713062, 56.512852, 52.062698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.084038, 56.635384, 51.976891>,  <54.306622, 56.708904, 51.925404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.084038, 56.635384, 51.976891>,  <53.713062, 56.512852, 52.062698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.084038, 56.635384, 51.976891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372200, -0.811956, 0.449660,
		-0.036436, -0.496877, -0.867056,
		0.927437, 0.306334, -0.214522,
		54.362270, 56.727283, 51.912533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.122009, 55.946342, 51.711792>,  <53.713062, 56.512852, 52.062698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.122009, 55.946342, 51.711792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.337349, 56.195366, 51.938980>,  <54.466553, 56.344780, 52.075294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.337349, 56.195366, 51.938980>,  <54.122009, 55.946342, 51.711792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.337349, 56.195366, 51.938980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508160, -0.777477, 0.370544,
		0.672274, 0.089140, -0.734916,
		0.538350, 0.622563, 0.567974,
		54.498856, 56.382133, 52.109371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.834877, 55.930161, 52.106243>,  <54.122009, 55.946342, 51.711792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.834877, 55.930161, 52.106243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.878777, 55.638268, 52.376190>,  <54.905117, 55.463131, 52.538158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.878777, 55.638268, 52.376190>,  <54.834877, 55.930161, 52.106243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.878777, 55.638268, 52.376190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521630, 0.620240, 0.585837,
		-0.846084, 0.287734, 0.448723,
		0.109751, -0.729734, 0.674865,
		54.911701, 55.419346, 52.578651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.534992, 56.037441, 52.821617>,  <54.834877, 55.930161, 52.106243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.534992, 56.037441, 52.821617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.890533, 55.854324, 52.814026>,  <55.103859, 55.744453, 52.809471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.890533, 55.854324, 52.814026>,  <54.534992, 56.037441, 52.821617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.890533, 55.854324, 52.814026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375350, 0.703769, 0.603176,
		-0.262773, -0.543260, 0.797382,
		0.888855, -0.457796, -0.018981,
		55.157188, 55.716984, 52.808331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.820011, 56.107998, 53.432316>,  <54.534992, 56.037441, 52.821617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.820011, 56.107998, 53.432316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.146339, 56.068859, 53.204327>,  <55.342136, 56.045376, 53.067532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.146339, 56.068859, 53.204327>,  <54.820011, 56.107998, 53.432316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.146339, 56.068859, 53.204327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434417, 0.754266, 0.492305,
		0.381738, -0.649237, 0.657851,
		0.815817, -0.097850, -0.569972,
		55.391083, 56.039505, 53.033337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.408058, 56.026276, 53.868290>,  <54.820011, 56.107998, 53.432316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.408058, 56.026276, 53.868290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.558975, 56.173397, 53.528320>,  <55.649525, 56.261669, 53.324337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.558975, 56.173397, 53.528320>,  <55.408058, 56.026276, 53.868290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.558975, 56.173397, 53.528320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516022, 0.678589, 0.522722,
		0.769008, -0.635799, 0.066233,
		0.377291, 0.367800, -0.849927,
		55.672161, 56.283737, 53.273342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.260895, 56.195518, 53.906948>,  <55.408058, 56.026276, 53.868290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.260895, 56.195518, 53.906948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.089485, 56.428391, 53.630562>,  <55.986641, 56.568115, 53.464729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.089485, 56.428391, 53.630562>,  <56.260895, 56.195518, 53.906948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.089485, 56.428391, 53.630562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426082, 0.804574, 0.413660,
		0.796758, -0.117146, -0.592835,
		-0.428522, 0.582183, -0.690965,
		55.960930, 56.603046, 53.423271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.689320, 56.418304, 53.356266>,  <56.260895, 56.195518, 53.906948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.689320, 56.418304, 53.356266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.397644, 56.613602, 53.548058>,  <56.222637, 56.730782, 53.663132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.397644, 56.613602, 53.548058>,  <56.689320, 56.418304, 53.356266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.397644, 56.613602, 53.548058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683969, 0.497858, 0.533219,
		0.021630, 0.716766, -0.696978,
		-0.729190, 0.488245, 0.479478,
		56.178886, 56.760075, 53.691902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.839474, 57.160980, 53.262444>,  <56.689320, 56.418304, 53.356266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.839474, 57.160980, 53.262444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.635712, 57.100609, 53.601318>,  <56.513454, 57.064384, 53.804642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.635712, 57.100609, 53.601318>,  <56.839474, 57.160980, 53.262444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.635712, 57.100609, 53.601318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733561, 0.438532, 0.519209,
		-0.449884, 0.885951, -0.112672,
		-0.509404, -0.150932, 0.847188,
		56.482891, 57.055328, 53.855476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.632839, 57.742332, 53.683193>,  <56.839474, 57.160980, 53.262444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.632839, 57.742332, 53.683193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.676613, 57.446136, 53.948433>,  <56.702877, 57.268417, 54.107574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.676613, 57.446136, 53.948433>,  <56.632839, 57.742332, 53.683193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.676613, 57.446136, 53.948433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684099, 0.540086, 0.490220,
		-0.721133, 0.399977, 0.565673,
		0.109436, -0.740490, 0.663098,
		56.709442, 57.223988, 54.147362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.583950, 58.068600, 54.347622>,  <56.632839, 57.742332, 53.683193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.583950, 58.068600, 54.347622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.797470, 57.733688, 54.394997>,  <56.925583, 57.532742, 54.423420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.797470, 57.733688, 54.394997>,  <56.583950, 58.068600, 54.347622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.797470, 57.733688, 54.394997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622255, 0.483770, 0.615439,
		-0.572586, -0.254826, 0.779236,
		0.533801, -0.837276, 0.118433,
		56.957611, 57.482506, 54.430527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.608086, 57.818687, 55.128086>,  <56.583950, 58.068600, 54.347622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.608086, 57.818687, 55.128086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.929665, 57.703163, 54.920143>,  <57.122612, 57.633850, 54.795376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.929665, 57.703163, 54.920143>,  <56.608086, 57.818687, 55.128086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.929665, 57.703163, 54.920143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593036, 0.454593, 0.664570,
		0.044392, -0.842577, 0.536744,
		0.803951, -0.288807, -0.519859,
		57.170849, 57.616520, 54.764187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.140110, 57.426136, 55.595863>,  <56.608086, 57.818687, 55.128086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.140110, 57.426136, 55.595863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.346062, 57.559185, 55.279823>,  <57.469635, 57.639015, 55.090199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.346062, 57.559185, 55.279823>,  <57.140110, 57.426136, 55.595863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.346062, 57.559185, 55.279823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719260, 0.333852, 0.609269,
		0.466434, -0.881988, -0.067349,
		0.514883, 0.332625, -0.790098,
		57.500526, 57.658974, 55.042793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.880962, 57.146564, 55.559799>,  <57.140110, 57.426136, 55.595863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.880962, 57.146564, 55.559799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.860023, 57.497494, 55.368980>,  <57.847462, 57.708050, 55.254490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.860023, 57.497494, 55.368980>,  <57.880962, 57.146564, 55.559799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.860023, 57.497494, 55.368980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766054, 0.341733, 0.544408,
		0.640641, -0.336943, -0.689963,
		-0.052349, 0.877319, -0.477044,
		57.844318, 57.760689, 55.225868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.449356, 57.359226, 55.346508>,  <57.880962, 57.146564, 55.559799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.449356, 57.359226, 55.346508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.271210, 57.717331, 55.341629>,  <58.164322, 57.932194, 55.338703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.271210, 57.717331, 55.341629>,  <58.449356, 57.359226, 55.346508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.271210, 57.717331, 55.341629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789306, 0.399012, 0.466674,
		0.422664, 0.198215, -0.884345,
		-0.445366, 0.895266, -0.012196,
		58.137600, 57.985912, 55.337971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.929562, 57.902878, 55.100494>,  <58.449356, 57.359226, 55.346508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.929562, 57.902878, 55.100494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.672523, 58.085007, 55.346992>,  <58.518303, 58.194283, 55.494892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.672523, 58.085007, 55.346992>,  <58.929562, 57.902878, 55.100494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.672523, 58.085007, 55.346992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748236, 0.546080, 0.376749,
		-0.164978, 0.703193, -0.691594,
		-0.642593, 0.455320, 0.616246,
		58.479744, 58.221603, 55.531868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.066174, 58.623322, 55.017296>,  <58.929562, 57.902878, 55.100494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.066174, 58.623322, 55.017296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.903313, 58.514656, 55.366104>,  <58.805595, 58.449459, 55.575390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.903313, 58.514656, 55.366104>,  <59.066174, 58.623322, 55.017296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.903313, 58.514656, 55.366104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802099, 0.350325, 0.483642,
		-0.436877, 0.896367, 0.075262,
		-0.407155, -0.271659, 0.872024,
		58.781166, 58.433159, 55.627712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.435261, 59.167091, 55.402222>,  <59.066174, 58.623322, 55.017296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.435261, 59.167091, 55.402222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.295822, 58.862106, 55.620262>,  <59.212158, 58.679115, 55.751087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.295822, 58.862106, 55.620262>,  <59.435261, 59.167091, 55.402222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.295822, 58.862106, 55.620262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727454, 0.146625, 0.670307,
		-0.591007, 0.630205, 0.503540,
		-0.348599, -0.762459, 0.545101,
		59.191242, 58.633369, 55.783794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.185272, 59.320316, 56.126884>,  <59.435261, 59.167091, 55.402222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.185272, 59.320316, 56.126884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.312508, 58.941223, 56.116959>,  <59.388847, 58.713768, 56.111004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.312508, 58.941223, 56.116959>,  <59.185272, 59.320316, 56.126884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.312508, 58.941223, 56.116959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802032, 0.255043, 0.540090,
		-0.505534, -0.191701, 0.841241,
		0.318088, -0.947736, -0.024818,
		59.407932, 58.656902, 56.109512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.233517, 59.049103, 56.880348>,  <59.185272, 59.320316, 56.126884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.233517, 59.049103, 56.880348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.515762, 58.836052, 56.693405>,  <59.685108, 58.708221, 56.581242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.515762, 58.836052, 56.693405>,  <59.233517, 59.049103, 56.880348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.515762, 58.836052, 56.693405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639676, 0.195057, 0.743483,
		-0.304841, -0.823564, 0.478346,
		0.705610, -0.532631, -0.467353,
		59.727444, 58.676262, 56.553200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.684055, 59.202976, 57.458740>,  <59.233517, 59.049103, 56.880348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.684055, 59.202976, 57.458740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.881660, 59.017517, 57.164536>,  <60.000221, 58.906242, 56.988010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.881660, 59.017517, 57.164536>,  <59.684055, 59.202976, 57.458740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.881660, 59.017517, 57.164536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835395, 0.018653, 0.549334,
		-0.240979, -0.885822, 0.396545,
		0.494009, -0.463650, -0.735516,
		60.029861, 58.878422, 56.943882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.037102, 58.559147, 57.599476>,  <59.684055, 59.202976, 57.458740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.037102, 58.559147, 57.599476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.250298, 58.706257, 57.294670>,  <60.378216, 58.794525, 57.111786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.250298, 58.706257, 57.294670>,  <60.037102, 58.559147, 57.599476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.250298, 58.706257, 57.294670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800784, 0.071586, 0.594661,
		0.273253, -0.927154, -0.256357,
		0.532990, 0.367779, -0.762010,
		60.410194, 58.816589, 57.066067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.189240, 58.745773, 58.287605>,  <60.037102, 58.559147, 57.599476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.189240, 58.745773, 58.287605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.193771, 58.382473, 58.454910>,  <60.196491, 58.164494, 58.555294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.193771, 58.382473, 58.454910>,  <60.189240, 58.745773, 58.287605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.193771, 58.382473, 58.454910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237930, -0.403830, -0.883352,
		0.971216, 0.109528, 0.211525,
		0.011331, -0.908254, 0.418266,
		60.197170, 58.109997, 58.580391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.924629, 58.490307, 58.133682>,  <60.189240, 58.745773, 58.287605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.924629, 58.490307, 58.133682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.586143, 58.277168, 58.134171>,  <60.383053, 58.149284, 58.134464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.586143, 58.277168, 58.134171>,  <60.924629, 58.490307, 58.133682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.586143, 58.277168, 58.134171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206386, -0.329869, -0.921190,
		0.491251, -0.779272, 0.389111,
		-0.846213, -0.532843, 0.001217,
		60.332279, 58.117317, 58.134537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.511101, 58.247982, 58.518124>,  <60.924629, 58.490307, 58.133682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.511101, 58.247982, 58.518124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.561539, 57.913231, 58.731194>,  <61.591801, 57.712379, 58.859035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.561539, 57.913231, 58.731194>,  <61.511101, 58.247982, 58.518124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.561539, 57.913231, 58.731194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001114, 0.537079, 0.843532,
		-0.992018, -0.105771, 0.068655,
		0.126095, -0.836875, 0.532674,
		61.599365, 57.662170, 58.890995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.949680, 57.963402, 58.906307>,  <61.511101, 58.247982, 58.518124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.949680, 57.963402, 58.906307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.309563, 57.892982, 59.066071>,  <61.525494, 57.850731, 59.161930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.309563, 57.892982, 59.066071>,  <60.949680, 57.963402, 58.906307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.309563, 57.892982, 59.066071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256166, 0.527927, 0.809736,
		-0.353413, -0.830843, 0.429883,
		0.899710, -0.176050, 0.399410,
		61.579475, 57.840168, 59.185894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.927876, 57.517696, 59.511948>,  <60.949680, 57.963402, 58.906307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.927876, 57.517696, 59.511948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.216988, 57.794090, 59.507355>,  <61.390453, 57.959927, 59.504597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.216988, 57.794090, 59.507355>,  <60.927876, 57.517696, 59.511948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.216988, 57.794090, 59.507355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386705, 0.418160, 0.821950,
		0.572759, -0.589645, 0.569444,
		0.722777, 0.690986, -0.011487,
		61.433823, 58.001385, 59.503910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.814621, 58.016026, 60.178143>,  <60.927876, 57.517696, 59.511948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.814621, 58.016026, 60.178143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.076653, 57.724800, 60.258942>,  <61.233871, 57.550064, 60.307423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.076653, 57.724800, 60.258942>,  <60.814621, 58.016026, 60.178143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.076653, 57.724800, 60.258942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529027, 0.251091, -0.810607,
		0.539450, 0.637872, 0.549648,
		0.655075, -0.728061, 0.202000,
		61.273174, 57.506382, 60.319542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.517200, 58.230423, 60.283733>,  <60.814621, 58.016026, 60.178143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.517200, 58.230423, 60.283733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.515892, 57.856224, 60.142410>,  <61.515106, 57.631702, 60.057617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.515892, 57.856224, 60.142410>,  <61.517200, 58.230423, 60.283733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.515892, 57.856224, 60.142410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506416, 0.303103, -0.807261,
		0.862283, -0.181563, 0.472761,
		-0.003274, -0.935502, -0.353307,
		61.514912, 57.575573, 60.036419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.211613, 58.094982, 60.126747>,  <61.517200, 58.230423, 60.283733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.211613, 58.094982, 60.126747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.953072, 57.853264, 59.940392>,  <61.797947, 57.708233, 59.828579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.953072, 57.853264, 59.940392>,  <62.211613, 58.094982, 60.126747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.953072, 57.853264, 59.940392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522183, 0.094897, -0.847537,
		0.556373, -0.791090, 0.254215,
		-0.646354, -0.604294, -0.465892,
		61.759167, 57.671974, 59.800625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.642944, 57.494583, 59.797482>,  <62.211613, 58.094982, 60.126747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.642944, 57.494583, 59.797482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.302895, 57.581585, 59.605659>,  <62.098866, 57.633785, 59.490566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.302895, 57.581585, 59.605659>,  <62.642944, 57.494583, 59.797482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.302895, 57.581585, 59.605659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492406, 0.005640, -0.870347,
		-0.186598, -0.976044, -0.111894,
		-0.850128, 0.217502, -0.479558,
		62.047855, 57.646835, 59.461792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.567684, 56.958729, 59.237423>,  <62.642944, 57.494583, 59.797482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.567684, 56.958729, 59.237423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.360336, 57.290905, 59.155777>,  <62.235928, 57.490211, 59.106789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.360336, 57.290905, 59.155777>,  <62.567684, 56.958729, 59.237423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.360336, 57.290905, 59.155777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168513, -0.134813, -0.976437,
		-0.838391, -0.540548, -0.070058,
		-0.518366, 0.830442, -0.204115,
		62.204826, 57.540039, 59.094543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.179226, 56.893307, 58.747280>,  <62.567684, 56.958729, 59.237423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.179226, 56.893307, 58.747280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.502258, 57.087387, 58.613182>,  <63.696079, 57.203835, 58.532722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.502258, 57.087387, 58.613182>,  <63.179226, 56.893307, 58.747280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.502258, 57.087387, 58.613182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513260, -0.858214, -0.005692,
		-0.290476, -0.167473, -0.942113,
		0.807581, 0.485202, -0.335248,
		63.744534, 57.232948, 58.512608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.803131, 56.750732, 59.039326>,  <63.179226, 56.893307, 58.747280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.803131, 56.750732, 59.039326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.940521, 56.707939, 59.412544>,  <64.022957, 56.682262, 59.636475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.940521, 56.707939, 59.412544>,  <63.803131, 56.750732, 59.039326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.940521, 56.707939, 59.412544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934914, 0.133337, -0.328873,
		-0.089225, 0.985279, 0.145821,
		0.343475, -0.106986, 0.933048,
		64.043564, 56.675842, 59.692459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.252342, 57.261681, 59.402283>,  <63.803131, 56.750732, 59.039326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.252342, 57.261681, 59.402283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.373764, 56.905510, 59.537926>,  <64.446617, 56.691807, 59.619312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.373764, 56.905510, 59.537926>,  <64.252342, 57.261681, 59.402283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.373764, 56.905510, 59.537926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944696, 0.234893, -0.228853,
		0.124123, 0.389822, 0.912487,
		0.303549, -0.890429, 0.339108,
		64.464828, 56.638382, 59.639660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.774773, 57.395344, 59.999130>,  <64.252342, 57.261681, 59.402283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.774773, 57.395344, 59.999130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.806595, 57.047745, 59.803780>,  <64.825691, 56.839184, 59.686569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.806595, 57.047745, 59.803780>,  <64.774773, 57.395344, 59.999130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.806595, 57.047745, 59.803780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987629, 0.135130, -0.079558,
		0.135130, -0.476007, 0.868998,
		0.079558, -0.868998, -0.488379,
		64.830460, 56.787045, 59.657265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.340935, 57.621407, 60.293236>,  <64.774773, 57.395344, 59.999130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.340935, 57.621407, 60.293236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.318810, 57.282833, 60.081390>,  <65.305534, 57.079689, 59.954285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.318810, 57.282833, 60.081390>,  <65.340935, 57.621407, 60.293236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.318810, 57.282833, 60.081390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925219, -0.242860, 0.291528,
		-0.375381, -0.473885, 0.796569,
		-0.055304, -0.846435, -0.529612,
		65.302216, 57.028904, 59.922508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.658592, 57.056870, 60.782593>,  <65.340935, 57.621407, 60.293236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.658592, 57.056870, 60.782593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.691544, 56.934662, 60.403145>,  <65.711311, 56.861336, 60.175476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.691544, 56.934662, 60.403145>,  <65.658592, 57.056870, 60.782593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.691544, 56.934662, 60.403145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971401, -0.188082, 0.144930,
		-0.222697, -0.933426, 0.281288,
		0.082376, -0.305519, -0.948616,
		65.716255, 56.843006, 60.118561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.910149, 56.296268, 60.658951>,  <65.658592, 57.056870, 60.782593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.910149, 56.296268, 60.658951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.017235, 56.543587, 60.363373>,  <66.081482, 56.691978, 60.186024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.017235, 56.543587, 60.363373>,  <65.910149, 56.296268, 60.658951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.017235, 56.543587, 60.363373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963493, -0.174707, 0.202878,
		-0.003661, -0.766282, -0.642494,
		0.267710, 0.618295, -0.738947,
		66.097549, 56.729076, 60.141689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.451698, 55.994267, 60.153099>,  <65.910149, 56.296268, 60.658951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.451698, 55.994267, 60.153099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.462822, 56.391037, 60.103592>,  <66.469498, 56.629097, 60.073887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.462822, 56.391037, 60.103592>,  <66.451698, 55.994267, 60.153099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.462822, 56.391037, 60.103592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988070, -0.008508, 0.153768,
		0.151473, -0.126562, -0.980325,
		0.027802, 0.991922, -0.123763,
		66.471161, 56.688614, 60.066463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.788177, 56.247406, 59.558563>,  <66.451698, 55.994267, 60.153099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.788177, 56.247406, 59.558563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.831238, 56.515808, 59.852005>,  <66.857071, 56.676849, 60.028069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.831238, 56.515808, 59.852005>,  <66.788177, 56.247406, 59.558563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.831238, 56.515808, 59.852005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992306, -0.117910, -0.037753,
		0.061167, 0.732022, -0.678530,
		0.107641, 0.671001, 0.733602,
		66.863533, 56.717110, 60.072086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.276726, 56.692383, 59.311687>,  <66.788177, 56.247406, 59.558563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.276726, 56.692383, 59.311687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.335411, 56.691696, 59.707359>,  <67.370621, 56.691284, 59.944763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.335411, 56.691696, 59.707359>,  <67.276726, 56.692383, 59.311687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.335411, 56.691696, 59.707359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982593, -0.114963, -0.145929,
		0.113970, 0.993368, -0.015178,
		0.146706, -0.001718, 0.989179,
		67.379425, 56.691181, 60.004112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.782974, 57.143044, 59.513241>,  <67.276726, 56.692383, 59.311687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.782974, 57.143044, 59.513241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.801140, 56.824085, 59.753937>,  <67.812042, 56.632710, 59.898354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.801140, 56.824085, 59.753937>,  <67.782974, 57.143044, 59.513241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.801140, 56.824085, 59.753937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954844, -0.142397, -0.260760,
		0.293615, 0.586412, 0.754924,
		0.045414, -0.797398, 0.601742,
		67.814766, 56.584866, 59.934460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.244881, 57.203964, 60.072224>,  <67.782974, 57.143044, 59.513241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.244881, 57.203964, 60.072224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.215652, 56.833878, 59.923294>,  <68.198112, 56.611824, 59.833935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.215652, 56.833878, 59.923294>,  <68.244881, 57.203964, 60.072224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.215652, 56.833878, 59.923294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985570, -0.009839, -0.168983,
		0.152683, -0.379302, 0.912589,
		-0.073074, -0.925221, -0.372326,
		68.193733, 56.556313, 59.811596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.927132, 56.947884, 60.241806>,  <68.244881, 57.203964, 60.072224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.927132, 56.947884, 60.241806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.799202, 56.694920, 59.959595>,  <68.722443, 56.543140, 59.790268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.799202, 56.694920, 59.959595>,  <68.927132, 56.947884, 60.241806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.799202, 56.694920, 59.959595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942577, -0.136742, -0.304713,
		0.096227, -0.762471, 0.639827,
		-0.319826, -0.632408, -0.705529,
		68.703255, 56.505196, 59.747936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.672585, 56.823669, 60.097641>,  <68.927132, 56.947884, 60.241806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.672585, 56.823669, 60.097641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.533852, 57.198723, 60.088371>,  <69.450607, 57.423756, 60.082809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.533852, 57.198723, 60.088371>,  <69.672585, 56.823669, 60.097641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.533852, 57.198723, 60.088371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762245, 0.267392, -0.589478,
		-0.546519, -0.222122, -0.807452,
		-0.346842, 0.937637, -0.023177,
		69.429802, 57.480015, 60.081417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.544754, 56.948486, 59.451889>,  <69.672585, 56.823669, 60.097641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.544754, 56.948486, 59.451889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.658623, 57.252373, 59.685745>,  <69.726944, 57.434704, 59.826057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.658623, 57.252373, 59.685745>,  <69.544754, 56.948486, 59.451889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.658623, 57.252373, 59.685745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673740, 0.275288, -0.685778,
		-0.681939, 0.589110, -0.433485,
		0.284666, 0.759715, 0.584636,
		69.744026, 57.480286, 59.861137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.542343, 57.687592, 59.207764>,  <69.544754, 56.948486, 59.451889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.542343, 57.687592, 59.207764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.861816, 57.592422, 59.428856>,  <70.053497, 57.535320, 59.561512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.861816, 57.592422, 59.428856>,  <69.542343, 57.687592, 59.207764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.861816, 57.592422, 59.428856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596920, 0.196948, -0.777752,
		0.076186, 0.951107, 0.299319,
		0.798675, -0.237924, 0.552730,
		70.101418, 57.521046, 59.594673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.030807, 58.202801, 59.434696>,  <69.542343, 57.687592, 59.207764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.030807, 58.202801, 59.434696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.224754, 57.860260, 59.363640>,  <70.341125, 57.654736, 59.321007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.224754, 57.860260, 59.363640>,  <70.030807, 58.202801, 59.434696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.224754, 57.860260, 59.363640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392157, 0.394434, -0.831044,
		0.781736, 0.333287, 0.527076,
		0.484873, -0.856354, -0.177643,
		70.370216, 57.603355, 59.310349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.808899, 58.372349, 59.227436>,  <70.030807, 58.202801, 59.434696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.808899, 58.372349, 59.227436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.717857, 58.010387, 59.083580>,  <70.663231, 57.793209, 58.997265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.717857, 58.010387, 59.083580>,  <70.808899, 58.372349, 59.227436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.717857, 58.010387, 59.083580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287504, 0.290421, -0.912687,
		0.930342, -0.311133, 0.194061,
		-0.227607, -0.904904, -0.359643,
		70.649574, 57.738914, 58.975689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.276955, 58.122761, 58.669701>,  <70.808899, 58.372349, 59.227436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.276955, 58.122761, 58.669701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.907402, 57.972176, 58.642189>,  <70.685669, 57.881824, 58.625683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.907402, 57.972176, 58.642189>,  <71.276955, 58.122761, 58.669701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.907402, 57.972176, 58.642189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006185, 0.165015, -0.986272,
		0.382650, -0.911615, -0.150124,
		-0.923873, -0.376468, -0.068781,
		70.630241, 57.859234, 58.621555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.761513, 58.179291, 59.180054>,  <71.276955, 58.122761, 58.669701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.761513, 58.179291, 59.180054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.949112, 57.827034, 59.206894>,  <72.061676, 57.615681, 59.223000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.949112, 57.827034, 59.206894>,  <71.761513, 58.179291, 59.180054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.949112, 57.827034, 59.206894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537259, 0.344778, 0.769728,
		-0.700991, -0.324954, 0.634836,
		0.469004, -0.880643, 0.067102,
		72.089813, 57.562840, 59.227024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.833694, 58.120621, 59.825638>,  <71.761513, 58.179291, 59.180054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.833694, 58.120621, 59.825638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.101295, 57.839798, 59.728035>,  <72.261856, 57.671303, 59.669472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.101295, 57.839798, 59.728035>,  <71.833694, 58.120621, 59.825638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.101295, 57.839798, 59.728035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496080, 0.177303, 0.849981,
		-0.553474, -0.689692, 0.466895,
		0.669007, -0.702060, -0.244010,
		72.301994, 57.629181, 59.654831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.019432, 57.614532, 60.397285>,  <71.833694, 58.120621, 59.825638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.019432, 57.614532, 60.397285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.312622, 57.642918, 60.126671>,  <72.488541, 57.659950, 59.964302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.312622, 57.642918, 60.126671>,  <72.019432, 57.614532, 60.397285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.312622, 57.642918, 60.126671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678607, -0.007292, 0.734465,
		0.047188, -0.997452, -0.053503,
		0.732984, 0.070965, -0.676534,
		72.532516, 57.664207, 59.923710>
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
