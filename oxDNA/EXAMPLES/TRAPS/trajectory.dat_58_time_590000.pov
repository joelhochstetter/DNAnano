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
	<36.690586, 53.525154, 50.588833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.464287, 53.236263, 50.429680>,  <36.328506, 53.062927, 50.334187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.464287, 53.236263, 50.429680>,  <36.690586, 53.525154, 50.588833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.464287, 53.236263, 50.429680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043811, 0.455522, -0.889146,
		0.823413, -0.520465, -0.226069,
		-0.565748, -0.722230, -0.397885,
		36.294563, 53.019596, 50.310314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.269085, 53.563694, 50.123375>,  <36.690586, 53.525154, 50.588833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.269085, 53.563694, 50.123375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.312233, 53.945210, 50.235550>,  <37.338120, 54.174118, 50.302853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.312233, 53.945210, 50.235550>,  <37.269085, 53.563694, 50.123375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.312233, 53.945210, 50.235550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745140, -0.264298, 0.612302,
		0.658127, 0.142917, -0.739218,
		0.107865, 0.953793, 0.280436,
		37.344593, 54.231346, 50.319679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990864, 53.926552, 50.056732>,  <37.269085, 53.563694, 50.123375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.990864, 53.926552, 50.056732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.770721, 54.057125, 50.364120>,  <37.638638, 54.135468, 50.548553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.770721, 54.057125, 50.364120>,  <37.990864, 53.926552, 50.056732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.770721, 54.057125, 50.364120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726419, -0.266542, 0.633460,
		0.411612, 0.906861, -0.090433,
		-0.550356, 0.326432, 0.768473,
		37.605614, 54.155056, 50.594662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444180, 54.293987, 50.477810>,  <37.990864, 53.926552, 50.056732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.444180, 54.293987, 50.477810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.152081, 54.149357, 50.709671>,  <37.976822, 54.062580, 50.848789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.152081, 54.149357, 50.709671>,  <38.444180, 54.293987, 50.477810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.152081, 54.149357, 50.709671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676404, -0.501884, 0.539064,
		0.096008, 0.785732, 0.611071,
		-0.730246, -0.361577, 0.579657,
		37.933006, 54.040882, 50.883568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401466, 54.466759, 51.269135>,  <38.444180, 54.293987, 50.477810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401466, 54.466759, 51.269135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.233692, 54.110130, 51.200821>,  <38.133026, 53.896152, 51.159832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.233692, 54.110130, 51.200821>,  <38.401466, 54.466759, 51.269135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.233692, 54.110130, 51.200821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606506, -0.415209, 0.678050,
		-0.675442, 0.180821, 0.714900,
		-0.419439, -0.891574, -0.170781,
		38.107861, 53.842659, 51.149586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.081924, 54.174927, 51.615505>,  <38.401466, 54.466759, 51.269135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.081924, 54.174927, 51.615505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.882221, 54.374550, 51.898827>,  <38.762402, 54.494324, 52.068817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.882221, 54.374550, 51.898827>,  <39.081924, 54.174927, 51.615505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882221, 54.374550, 51.898827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847576, 0.111574, 0.518813,
		0.179888, 0.859357, -0.478691,
		-0.499255, 0.499055, 0.708299,
		38.732445, 54.524265, 52.111317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.267757, 54.931454, 51.754990>,  <39.081924, 54.174927, 51.615505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.267757, 54.931454, 51.754990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.168991, 54.713432, 52.075478>,  <39.109730, 54.582619, 52.267769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.168991, 54.713432, 52.075478>,  <39.267757, 54.931454, 51.754990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.168991, 54.713432, 52.075478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947482, 0.037626, 0.317588,
		-0.203248, 0.837559, 0.507135,
		-0.246917, -0.545050, 0.801219,
		39.094917, 54.549919, 52.315842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310501, 55.185383, 52.507008>,  <39.267757, 54.931454, 51.754990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.310501, 55.185383, 52.507008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.410378, 54.799770, 52.470589>,  <39.470303, 54.568401, 52.448738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.410378, 54.799770, 52.470589>,  <39.310501, 55.185383, 52.507008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.410378, 54.799770, 52.470589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913118, 0.203120, 0.353494,
		-0.322287, -0.171403, 0.930995,
		0.249693, -0.964035, -0.091048,
		39.485287, 54.510559, 52.443275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.568981, 54.883755, 53.222454>,  <39.310501, 55.185383, 52.507008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.568981, 54.883755, 53.222454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.747654, 54.682701, 52.926392>,  <39.854858, 54.562069, 52.748753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.747654, 54.682701, 52.926392>,  <39.568981, 54.883755, 53.222454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.747654, 54.682701, 52.926392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851612, -0.014750, 0.523965,
		-0.274278, -0.864376, 0.421457,
		0.446686, -0.502630, -0.740159,
		39.881660, 54.531914, 52.704346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786785, 54.172146, 53.469475>,  <39.568981, 54.883755, 53.222454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.786785, 54.172146, 53.469475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.015751, 54.362072, 53.202072>,  <40.153130, 54.476028, 53.041630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.015751, 54.362072, 53.202072>,  <39.786785, 54.172146, 53.469475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.015751, 54.362072, 53.202072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747286, 0.033492, 0.663658,
		0.337504, -0.879448, -0.335651,
		0.572411, 0.474815, -0.668503,
		40.187473, 54.504517, 53.001522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.307384, 53.804302, 53.235134>,  <39.786785, 54.172146, 53.469475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.307384, 53.804302, 53.235134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.425159, 54.185982, 53.213936>,  <40.495823, 54.414989, 53.201218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.425159, 54.185982, 53.213936>,  <40.307384, 53.804302, 53.235134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.425159, 54.185982, 53.213936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505483, -0.108436, 0.855996,
		0.811045, -0.278824, -0.514260,
		0.294436, 0.954201, -0.052994,
		40.513489, 54.472240, 53.198036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.034786, 53.901539, 53.419712>,  <40.307384, 53.804302, 53.235134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.034786, 53.901539, 53.419712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.847492, 54.245338, 53.501694>,  <40.735115, 54.451618, 53.550884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.847492, 54.245338, 53.501694>,  <41.034786, 53.901539, 53.419712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.847492, 54.245338, 53.501694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479967, 0.052659, 0.875705,
		0.741879, 0.508411, -0.437190,
		-0.468240, 0.859503, 0.204953,
		40.707020, 54.503189, 53.563179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.524918, 54.480507, 53.405781>,  <41.034786, 53.901539, 53.419712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.524918, 54.480507, 53.405781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.244061, 54.470314, 53.690414>,  <41.075546, 54.464199, 53.861195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.244061, 54.470314, 53.690414>,  <41.524918, 54.480507, 53.405781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.244061, 54.470314, 53.690414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707021, 0.093478, 0.700987,
		-0.084380, 0.995295, -0.047618,
		-0.702140, -0.025482, 0.711582,
		41.033417, 54.462669, 53.903889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.998539, 54.160595, 53.854153>,  <41.524918, 54.480507, 53.405781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.998539, 54.160595, 53.854153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.961685, 54.378460, 54.187584>,  <41.939575, 54.509178, 54.387642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.961685, 54.378460, 54.187584>,  <41.998539, 54.160595, 53.854153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.961685, 54.378460, 54.187584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992611, -0.016146, 0.120259,
		0.078960, 0.838500, -0.539151,
		-0.092132, 0.544663, 0.833579,
		41.934044, 54.541859, 54.437656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.377899, 54.738926, 53.805290>,  <41.998539, 54.160595, 53.854153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.377899, 54.738926, 53.805290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.367626, 54.672543, 54.199608>,  <42.361462, 54.632713, 54.436199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.367626, 54.672543, 54.199608>,  <42.377899, 54.738926, 53.805290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.367626, 54.672543, 54.199608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993517, 0.105007, 0.043559,
		-0.110745, 0.980526, 0.162183,
		-0.025681, -0.165956, 0.985799,
		42.359921, 54.622757, 54.495346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.623470, 55.298454, 54.354660>,  <42.377899, 54.738926, 53.805290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.623470, 55.298454, 54.354660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.685432, 54.921860, 54.474403>,  <42.722610, 54.695904, 54.546249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.685432, 54.921860, 54.474403>,  <42.623470, 55.298454, 54.354660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.685432, 54.921860, 54.474403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974353, 0.195658, 0.111150,
		-0.163218, 0.274463, 0.947644,
		0.154907, -0.941482, 0.299359,
		42.731903, 54.639416, 54.564213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.123280, 55.318195, 54.907955>,  <42.623470, 55.298454, 54.354660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.123280, 55.318195, 54.907955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.149925, 54.954056, 54.744576>,  <43.165913, 54.735573, 54.646549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.149925, 54.954056, 54.744576>,  <43.123280, 55.318195, 54.907955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.149925, 54.954056, 54.744576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994235, 0.095036, -0.049661,
		0.084026, -0.402786, 0.911429,
		0.066616, -0.910347, -0.408449,
		43.169910, 54.680950, 54.622040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.486347, 54.799866, 55.300625>,  <43.123280, 55.318195, 54.907955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.486347, 54.799866, 55.300625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.512630, 54.728024, 54.908009>,  <43.528400, 54.684917, 54.672440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.512630, 54.728024, 54.908009>,  <43.486347, 54.799866, 55.300625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.512630, 54.728024, 54.908009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997785, 0.001605, 0.066498,
		-0.010368, -0.983737, 0.179313,
		0.065704, -0.179606, -0.981542,
		43.532341, 54.674141, 54.613544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.125259, 54.382381, 55.182243>,  <43.486347, 54.799866, 55.300625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.125259, 54.382381, 55.182243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.007748, 54.545273, 54.836327>,  <43.937241, 54.643009, 54.628777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.007748, 54.545273, 54.836327>,  <44.125259, 54.382381, 55.182243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.007748, 54.545273, 54.836327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942732, 0.272941, -0.191730,
		0.157958, -0.871589, -0.464092,
		-0.293780, 0.407229, -0.864788,
		43.919613, 54.667442, 54.576889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.635635, 54.788132, 55.031132>,  <44.125259, 54.382381, 55.182243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.635635, 54.788132, 55.031132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.486897, 54.718948, 54.666317>,  <44.397652, 54.677437, 54.447426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.486897, 54.718948, 54.666317>,  <44.635635, 54.788132, 55.031132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.486897, 54.718948, 54.666317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796893, 0.444443, -0.409185,
		0.476121, -0.878951, -0.027436,
		-0.371847, -0.172958, -0.912039,
		44.375343, 54.667061, 54.392704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.093967, 55.248390, 54.586464>,  <44.635635, 54.788132, 55.031132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.093967, 55.248390, 54.586464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.014740, 54.905342, 54.396618>,  <44.967205, 54.699512, 54.282711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.014740, 54.905342, 54.396618>,  <45.093967, 55.248390, 54.586464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.014740, 54.905342, 54.396618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654842, 0.244519, -0.715117,
		0.729349, -0.452443, 0.513171,
		-0.198070, -0.857616, -0.474619,
		44.955318, 54.648056, 54.254230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.652424, 54.777054, 54.406498>,  <45.093967, 55.248390, 54.586464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.652424, 54.777054, 54.406498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.383553, 54.746731, 54.111900>,  <45.222229, 54.728539, 53.935143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.383553, 54.746731, 54.111900>,  <45.652424, 54.777054, 54.406498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.383553, 54.746731, 54.111900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702770, 0.247709, -0.666899,
		0.232990, -0.965864, -0.113234,
		-0.672183, -0.075803, -0.736494,
		45.181896, 54.723988, 53.890953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.016750, 55.163586, 54.894241>,  <45.652424, 54.777054, 54.406498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.016750, 55.163586, 54.894241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.816036, 55.475880, 54.745293>,  <45.695606, 55.663258, 54.655922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.816036, 55.475880, 54.745293>,  <46.016750, 55.163586, 54.894241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.816036, 55.475880, 54.745293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864948, -0.457194, 0.206973,
		-0.008654, 0.425938, 0.904711,
		-0.501786, 0.780737, -0.372370,
		45.665501, 55.710102, 54.633583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.898056, 55.717453, 55.328197>,  <46.016750, 55.163586, 54.894241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.898056, 55.717453, 55.328197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.031372, 55.781029, 55.699928>,  <46.111362, 55.819176, 55.922966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.031372, 55.781029, 55.699928>,  <45.898056, 55.717453, 55.328197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.031372, 55.781029, 55.699928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870915, -0.429461, -0.238894,
		0.361142, 0.888989, -0.281559,
		0.333293, 0.158939, 0.929330,
		46.131359, 55.828709, 55.978725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.530556, 56.168999, 55.402290>,  <45.898056, 55.717453, 55.328197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.530556, 56.168999, 55.402290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.521984, 55.881340, 55.680099>,  <46.516842, 55.708744, 55.846786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.521984, 55.881340, 55.680099>,  <46.530556, 56.168999, 55.402290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.521984, 55.881340, 55.680099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942782, -0.245727, -0.225344,
		0.332720, 0.649956, 0.683268,
		-0.021434, -0.719149, 0.694525,
		46.515553, 55.665596, 55.888458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.041664, 56.270153, 55.940018>,  <46.530556, 56.168999, 55.402290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.041664, 56.270153, 55.940018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.979206, 55.876553, 55.905724>,  <46.941730, 55.640392, 55.885147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.979206, 55.876553, 55.905724>,  <47.041664, 56.270153, 55.940018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.979206, 55.876553, 55.905724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985942, -0.150050, -0.073505,
		0.059465, -0.096009, 0.993603,
		-0.156147, -0.984006, -0.085737,
		46.932362, 55.581352, 55.880001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.584221, 55.743862, 56.347656>,  <47.041664, 56.270153, 55.940018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.584221, 55.743862, 56.347656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.444401, 55.604538, 55.999748>,  <47.360508, 55.520943, 55.791004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.444401, 55.604538, 55.999748>,  <47.584221, 55.743862, 56.347656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.444401, 55.604538, 55.999748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936371, -0.161631, -0.311585,
		-0.032053, -0.923338, 0.382648,
		-0.349546, -0.348313, -0.869768,
		47.339539, 55.500046, 55.738819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.093704, 55.249214, 56.108753>,  <47.584221, 55.743862, 56.347656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.093704, 55.249214, 56.108753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.907967, 55.349163, 55.768883>,  <47.796524, 55.409130, 55.564960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.907967, 55.349163, 55.768883>,  <48.093704, 55.249214, 56.108753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.907967, 55.349163, 55.768883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867717, -0.063757, -0.492953,
		-0.177346, -0.966179, -0.187209,
		-0.464345, 0.249868, -0.849676,
		47.768661, 55.424122, 55.513981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.605549, 55.004318, 55.743965>,  <48.093704, 55.249214, 56.108753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.605549, 55.004318, 55.743965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.421600, 55.293976, 55.538391>,  <48.311230, 55.467770, 55.415047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.421600, 55.293976, 55.538391>,  <48.605549, 55.004318, 55.743965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.421600, 55.293976, 55.538391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872596, 0.261253, -0.412702,
		-0.164591, -0.638246, -0.752032,
		-0.459876, 0.724147, -0.513931,
		48.283638, 55.511219, 55.384212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.828358, 54.978218, 55.049629>,  <48.605549, 55.004318, 55.743965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.828358, 54.978218, 55.049629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.747673, 55.355549, 55.155037>,  <48.699261, 55.581947, 55.218281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.747673, 55.355549, 55.155037>,  <48.828358, 54.978218, 55.049629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.747673, 55.355549, 55.155037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896281, 0.286272, -0.338715,
		-0.394957, 0.167860, -0.903234,
		-0.201714, 0.943330, 0.263515,
		48.687160, 55.638546, 55.234093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.506817, 55.430225, 54.839325>,  <48.828358, 54.978218, 55.049629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.506817, 55.430225, 54.839325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.278854, 55.720436, 54.993629>,  <49.142075, 55.894562, 55.086212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.278854, 55.720436, 54.993629>,  <49.506817, 55.430225, 54.839325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.278854, 55.720436, 54.993629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702088, 0.673870, -0.230156,
		-0.426938, 0.139671, -0.893429,
		-0.569909, 0.725528, 0.385762,
		49.107883, 55.938095, 55.109360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.434029, 56.012890, 54.288517>,  <49.506817, 55.430225, 54.839325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.434029, 56.012890, 54.288517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.441010, 56.128036, 54.671520>,  <49.445198, 56.197124, 54.901321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.441010, 56.128036, 54.671520>,  <49.434029, 56.012890, 54.288517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.441010, 56.128036, 54.671520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780923, 0.594113, -0.192845,
		-0.624384, 0.751108, -0.214432,
		0.017450, 0.287865, 0.957512,
		49.446243, 56.214397, 54.958775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.000599, 56.496655, 54.624653>,  <49.434029, 56.012890, 54.288517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.000599, 56.496655, 54.624653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.305267, 56.435581, 54.876541>,  <50.488068, 56.398937, 55.027676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.305267, 56.435581, 54.876541>,  <50.000599, 56.496655, 54.624653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.305267, 56.435581, 54.876541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238662, 0.969624, -0.053572,
		-0.602414, 0.191095, 0.774971,
		0.761668, -0.152684, 0.629722,
		50.533768, 56.389774, 55.065456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.932571, 56.964581, 55.206646>,  <50.000599, 56.496655, 54.624653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.932571, 56.964581, 55.206646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.320156, 56.870358, 55.176628>,  <50.552708, 56.813824, 55.158615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.320156, 56.870358, 55.176628>,  <49.932571, 56.964581, 55.206646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.320156, 56.870358, 55.176628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232960, 0.971586, -0.041831,
		0.082767, 0.023049, 0.996302,
		0.968958, -0.235560, -0.075046,
		50.610844, 56.799690, 55.154114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.295372, 57.624294, 55.489296>,  <49.932571, 56.964581, 55.206646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.295372, 57.624294, 55.489296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.423237, 57.446918, 55.154350>,  <50.499954, 57.340492, 54.953384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.423237, 57.446918, 55.154350>,  <50.295372, 57.624294, 55.489296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.423237, 57.446918, 55.154350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331756, 0.880173, -0.339461,
		0.887556, -0.169289, 0.428469,
		0.319660, -0.443438, -0.837365,
		50.519135, 57.313889, 54.903141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.977348, 57.911285, 55.285381>,  <50.295372, 57.624294, 55.489296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.977348, 57.911285, 55.285381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.812023, 57.745792, 54.960915>,  <50.712826, 57.646496, 54.766235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.812023, 57.745792, 54.960915>,  <50.977348, 57.911285, 55.285381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.812023, 57.745792, 54.960915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498165, 0.642950, -0.581762,
		0.762235, -0.644547, -0.059635,
		-0.413315, -0.413731, -0.811170,
		50.688030, 57.621674, 54.717564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.488945, 57.906673, 54.785458>,  <50.977348, 57.911285, 55.285381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.488945, 57.906673, 54.785458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.142536, 57.880043, 54.587234>,  <50.934692, 57.864063, 54.468300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.142536, 57.880043, 54.587234>,  <51.488945, 57.906673, 54.785458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.142536, 57.880043, 54.587234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302401, 0.719559, -0.625131,
		0.398202, -0.691232, -0.603020,
		-0.866019, -0.066575, -0.495559,
		50.882732, 57.860069, 54.438568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.610710, 57.894413, 53.992966>,  <51.488945, 57.906673, 54.785458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.610710, 57.894413, 53.992966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.261585, 58.049820, 54.111118>,  <51.052109, 58.143063, 54.182011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.261585, 58.049820, 54.111118>,  <51.610710, 57.894413, 53.992966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.261585, 58.049820, 54.111118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203084, 0.839454, -0.504058,
		-0.443794, -0.379962, -0.811588,
		-0.872814, 0.388518, 0.295380,
		50.999741, 58.166374, 54.199734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.953751, 57.229137, 54.014763>,  <51.610710, 57.894413, 53.992966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.953751, 57.229137, 54.014763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.210201, 57.536102, 54.017178>,  <52.364071, 57.720280, 54.018627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.210201, 57.536102, 54.017178>,  <51.953751, 57.229137, 54.014763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.210201, 57.536102, 54.017178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010720, 0.001095, 0.999942,
		0.767358, -0.641156, 0.008929,
		0.641129, 0.767409, 0.006033,
		52.402538, 57.766327, 54.018986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.538406, 56.998890, 54.345459>,  <51.953751, 57.229137, 54.014763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.538406, 56.998890, 54.345459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.440411, 57.385109, 54.380562>,  <52.381611, 57.616840, 54.401623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.440411, 57.385109, 54.380562>,  <52.538406, 56.998890, 54.345459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.440411, 57.385109, 54.380562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222934, -0.144189, 0.964111,
		0.943546, 0.216638, 0.250578,
		-0.244994, 0.965545, 0.087753,
		52.366913, 57.674774, 54.406887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.909218, 57.269676, 54.905792>,  <52.538406, 56.998890, 54.345459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.909218, 57.269676, 54.905792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.585758, 57.491615, 54.827576>,  <52.391682, 57.624779, 54.780647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.585758, 57.491615, 54.827576>,  <52.909218, 57.269676, 54.905792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.585758, 57.491615, 54.827576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323463, -0.141712, 0.935569,
		0.491390, 0.819793, 0.294068,
		-0.808645, 0.554849, -0.195537,
		52.343166, 57.658070, 54.768913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.815655, 57.984386, 55.272575>,  <52.909218, 57.269676, 54.905792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.815655, 57.984386, 55.272575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.450130, 57.840836, 55.196518>,  <52.230816, 57.754707, 55.150883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.450130, 57.840836, 55.196518>,  <52.815655, 57.984386, 55.272575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.450130, 57.840836, 55.196518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210340, 0.017694, 0.977468,
		-0.347424, 0.933218, -0.091654,
		-0.913813, -0.358874, -0.190146,
		52.175987, 57.733173, 55.139473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.531754, 58.172482, 54.991768>,  <52.815655, 57.984386, 55.272575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.531754, 58.172482, 54.991768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.858738, 58.347748, 54.842224>,  <54.054928, 58.452908, 54.752499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.858738, 58.347748, 54.842224>,  <53.531754, 58.172482, 54.991768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.858738, 58.347748, 54.842224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139334, 0.780229, 0.609778,
		0.558876, -0.446379, 0.698858,
		0.817461, 0.438165, -0.373856,
		54.103977, 58.479198, 54.730068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.973228, 58.278114, 55.568558>,  <53.531754, 58.172482, 54.991768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.973228, 58.278114, 55.568558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.044983, 58.559875, 55.293854>,  <54.088036, 58.728931, 55.129032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.044983, 58.559875, 55.293854>,  <53.973228, 58.278114, 55.568558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.044983, 58.559875, 55.293854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103756, 0.680640, 0.725234,
		0.978292, -0.201352, 0.049012,
		0.179387, 0.704405, -0.686756,
		54.098801, 58.771198, 55.087826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.642056, 58.624645, 55.673698>,  <53.973228, 58.278114, 55.568558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.642056, 58.624645, 55.673698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.428795, 58.882637, 55.454697>,  <54.300838, 59.037430, 55.323296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.428795, 58.882637, 55.454697>,  <54.642056, 58.624645, 55.673698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.428795, 58.882637, 55.454697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180858, 0.545299, 0.818498,
		0.826463, 0.535403, -0.174077,
		-0.533150, 0.644975, -0.547501,
		54.268848, 59.076130, 55.290447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.240433, 58.159203, 55.537312>,  <54.642056, 58.624645, 55.673698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.240433, 58.159203, 55.537312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.928017, 58.172508, 55.786751>,  <54.740566, 58.180492, 55.936413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.928017, 58.172508, 55.786751>,  <55.240433, 58.159203, 55.537312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.928017, 58.172508, 55.786751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057414, -0.990526, 0.124743,
		0.621836, 0.133233, 0.771731,
		-0.781040, 0.033261, 0.623595,
		54.693707, 58.182487, 55.973827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.344921, 57.966251, 56.334496>,  <55.240433, 58.159203, 55.537312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.344921, 57.966251, 56.334496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.976151, 57.875099, 56.209190>,  <54.754890, 57.820408, 56.134007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.976151, 57.875099, 56.209190>,  <55.344921, 57.966251, 56.334496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.976151, 57.875099, 56.209190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168742, -0.964156, 0.204767,
		-0.348692, 0.135920, 0.927329,
		-0.921922, -0.227880, -0.313258,
		54.699574, 57.806736, 56.115211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.000267, 57.718983, 56.105423>,  <55.344921, 57.966251, 56.334496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.000267, 57.718983, 56.105423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.133636, 58.008217, 55.863441>,  <56.213657, 58.181759, 55.718250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.133636, 58.008217, 55.863441>,  <56.000267, 57.718983, 56.105423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.133636, 58.008217, 55.863441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902145, -0.431057, -0.018008,
		-0.273792, -0.539754, -0.796055,
		0.333425, 0.723087, -0.604957,
		56.233665, 58.225143, 55.681953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.111374, 57.455368, 55.360180>,  <56.000267, 57.718983, 56.105423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.111374, 57.455368, 55.360180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.350754, 57.762459, 55.451790>,  <56.494381, 57.946712, 55.506756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.350754, 57.762459, 55.451790>,  <56.111374, 57.455368, 55.360180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.350754, 57.762459, 55.451790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790117, -0.518284, -0.327255,
		-0.132545, 0.376800, -0.916762,
		0.598453, 0.767726, 0.229020,
		56.530289, 57.992775, 55.520496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.411835, 57.563374, 54.712456>,  <56.111374, 57.455368, 55.360180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.411835, 57.563374, 54.712456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.599998, 57.676739, 55.046738>,  <56.712894, 57.744759, 55.247307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.599998, 57.676739, 55.046738>,  <56.411835, 57.563374, 54.712456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.599998, 57.676739, 55.046738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870917, -0.301714, -0.387908,
		0.142206, 0.910300, -0.388755,
		0.470405, 0.283411, 0.835702,
		56.741119, 57.761761, 55.297447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.991589, 57.750572, 54.447910>,  <56.411835, 57.563374, 54.712456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.991589, 57.750572, 54.447910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.071648, 57.673279, 54.832119>,  <57.119682, 57.626904, 55.062645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.071648, 57.673279, 54.832119>,  <56.991589, 57.750572, 54.447910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.071648, 57.673279, 54.832119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858374, -0.438075, -0.266991,
		0.472373, 0.877924, 0.078188,
		0.200145, -0.193234, 0.960522,
		57.131691, 57.615307, 55.120277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.693344, 58.169636, 54.616577>,  <56.991589, 57.750572, 54.447910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.693344, 58.169636, 54.616577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.620087, 57.838463, 54.828609>,  <57.576130, 57.639759, 54.955830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.620087, 57.838463, 54.828609>,  <57.693344, 58.169636, 54.616577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.620087, 57.838463, 54.828609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853915, -0.401150, -0.331524,
		0.487121, 0.391926, 0.780453,
		-0.183145, -0.827933, 0.530080,
		57.565144, 57.590084, 54.987633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.275333, 58.009949, 54.892654>,  <57.693344, 58.169636, 54.616577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.275333, 58.009949, 54.892654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.061699, 57.672344, 54.873108>,  <57.933517, 57.469780, 54.861378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.061699, 57.672344, 54.873108>,  <58.275333, 58.009949, 54.892654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.061699, 57.672344, 54.873108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719235, -0.423229, -0.550979,
		0.444351, -0.329421, 0.833087,
		-0.534091, -0.844013, -0.048869,
		57.901470, 57.419140, 54.858448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.732155, 57.360447, 54.990475>,  <58.275333, 58.009949, 54.892654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.732155, 57.360447, 54.990475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.420425, 57.273155, 54.755516>,  <58.233387, 57.220779, 54.614540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.420425, 57.273155, 54.755516>,  <58.732155, 57.360447, 54.990475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.420425, 57.273155, 54.755516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623888, -0.182670, -0.759866,
		0.058524, -0.958649, 0.278508,
		-0.779320, -0.218228, -0.587399,
		58.186630, 57.207687, 54.579296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.664440, 56.621895, 54.662884>,  <58.732155, 57.360447, 54.990475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.664440, 56.621895, 54.662884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.539528, 56.938374, 54.452553>,  <58.464581, 57.128262, 54.326355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.539528, 56.938374, 54.452553>,  <58.664440, 56.621895, 54.662884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.539528, 56.938374, 54.452553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749624, -0.134785, -0.647994,
		-0.583563, -0.596528, -0.551007,
		-0.312279, 0.791194, -0.525827,
		58.445843, 57.175732, 54.294804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.766033, 56.435310, 54.092941>,  <58.664440, 56.621895, 54.662884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.766033, 56.435310, 54.092941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.787682, 56.834549, 54.104721>,  <58.800671, 57.074093, 54.111790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.787682, 56.834549, 54.104721>,  <58.766033, 56.435310, 54.092941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.787682, 56.834549, 54.104721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826756, -0.028255, -0.561850,
		-0.559951, 0.054755, -0.826715,
		0.054123, 0.998100, 0.029448,
		58.803917, 57.133980, 54.113556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.625759, 56.827286, 53.373447>,  <58.766033, 56.435310, 54.092941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.625759, 56.827286, 53.373447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.875313, 57.021084, 53.618736>,  <59.025043, 57.137363, 53.765907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.875313, 57.021084, 53.618736>,  <58.625759, 56.827286, 53.373447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.875313, 57.021084, 53.618736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720461, -0.052507, -0.691504,
		-0.302832, 0.873217, -0.381818,
		0.623882, 0.484495, 0.613218,
		59.062477, 57.166431, 53.802700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.011463, 57.306419, 53.041981>,  <58.625759, 56.827286, 53.373447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.011463, 57.306419, 53.041981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.249443, 57.256393, 53.359570>,  <59.392231, 57.226379, 53.550121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.249443, 57.256393, 53.359570>,  <59.011463, 57.306419, 53.041981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.249443, 57.256393, 53.359570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800115, 0.186131, -0.570238,
		-0.076467, 0.974533, 0.210804,
		0.594953, -0.125063, 0.793971,
		59.427929, 57.218876, 53.597759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.582489, 57.756081, 52.892948>,  <59.011463, 57.306419, 53.041981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.582489, 57.756081, 52.892948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.665398, 57.453758, 53.141396>,  <59.715145, 57.272366, 53.290462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.665398, 57.453758, 53.141396>,  <59.582489, 57.756081, 52.892948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.665398, 57.453758, 53.141396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850637, -0.174338, -0.496008,
		0.483172, 0.631156, 0.606784,
		0.207273, -0.755810, 0.621120,
		59.727581, 57.227016, 53.327732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.324661, 57.744495, 53.196636>,  <59.582489, 57.756081, 52.892948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.324661, 57.744495, 53.196636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.210579, 57.362011, 53.170361>,  <60.142128, 57.132519, 53.154594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.210579, 57.362011, 53.170361>,  <60.324661, 57.744495, 53.196636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.210579, 57.362011, 53.170361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903236, -0.245209, -0.352189,
		0.320659, -0.159782, 0.933621,
		-0.285206, -0.956212, -0.065692,
		60.125019, 57.075146, 53.150654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.627808, 57.245071, 53.694939>,  <60.324661, 57.744495, 53.196636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.627808, 57.245071, 53.694939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.538193, 57.098759, 53.333603>,  <60.484425, 57.010971, 53.116802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.538193, 57.098759, 53.333603>,  <60.627808, 57.245071, 53.694939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.538193, 57.098759, 53.333603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966473, -0.202698, -0.157616,
		-0.125452, -0.908361, 0.398926,
		-0.224034, -0.365778, -0.903336,
		60.470982, 56.989025, 53.062603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.945900, 56.508003, 53.499325>,  <60.627808, 57.245071, 53.694939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.945900, 56.508003, 53.499325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.928589, 56.689056, 53.143066>,  <60.918201, 56.797688, 52.929314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.928589, 56.689056, 53.143066>,  <60.945900, 56.508003, 53.499325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.928589, 56.689056, 53.143066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893097, -0.382030, -0.237550,
		-0.447776, -0.805712, -0.387716,
		-0.043278, 0.452637, -0.890644,
		60.915607, 56.824848, 52.875874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.682739, 56.495609, 53.310684>,  <60.945900, 56.508003, 53.499325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.682739, 56.495609, 53.310684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.612556, 56.812767, 53.077263>,  <61.570446, 57.003063, 52.937210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.612556, 56.812767, 53.077263>,  <61.682739, 56.495609, 53.310684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.612556, 56.812767, 53.077263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543695, 0.572199, 0.613991,
		0.820738, -0.209546, -0.531489,
		-0.175458, 0.792893, -0.583554,
		61.559917, 57.050636, 52.902195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.258087, 56.799038, 53.334209>,  <61.682739, 56.495609, 53.310684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.258087, 56.799038, 53.334209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.964622, 57.060234, 53.259007>,  <61.788544, 57.216953, 53.213882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.964622, 57.060234, 53.259007>,  <62.258087, 56.799038, 53.334209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.964622, 57.060234, 53.259007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430907, 0.661012, 0.614314,
		0.525419, 0.369682, -0.766336,
		-0.733658, 0.652992, -0.188009,
		61.744526, 57.256130, 53.202602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.500561, 57.511936, 53.299271>,  <62.258087, 56.799038, 53.334209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.500561, 57.511936, 53.299271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.113319, 57.527264, 53.398315>,  <61.880974, 57.536461, 53.457745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.113319, 57.527264, 53.398315>,  <62.500561, 57.511936, 53.299271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.113319, 57.527264, 53.398315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187440, 0.766553, 0.614217,
		-0.166277, 0.641037, -0.749282,
		-0.968100, 0.038315, 0.247616,
		61.822887, 57.538757, 53.472599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.061821, 58.128857, 53.036522>,  <62.500561, 57.511936, 53.299271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.061821, 58.128857, 53.036522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.000290, 57.975853, 53.400944>,  <61.963371, 57.884052, 53.619598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.000290, 57.975853, 53.400944>,  <62.061821, 58.128857, 53.036522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.000290, 57.975853, 53.400944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381433, 0.827573, 0.411864,
		-0.911507, 0.410864, 0.018595,
		-0.153831, -0.382510, 0.911055,
		61.954140, 57.861099, 53.674259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.686790, 58.597874, 53.535652>,  <62.061821, 58.128857, 53.036522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.686790, 58.597874, 53.535652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.987251, 58.363297, 53.656883>,  <62.167526, 58.222549, 53.729622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.987251, 58.363297, 53.656883>,  <61.686790, 58.597874, 53.535652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.987251, 58.363297, 53.656883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539783, 0.809943, 0.229404,
		-0.380009, -0.008721, 0.924941,
		0.751151, -0.586443, 0.303079,
		62.212597, 58.187363, 53.747807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.922760, 58.750694, 54.224888>,  <61.686790, 58.597874, 53.535652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.922760, 58.750694, 54.224888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.260017, 58.621044, 54.053284>,  <62.462372, 58.543255, 53.950321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.260017, 58.621044, 54.053284>,  <61.922760, 58.750694, 54.224888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.260017, 58.621044, 54.053284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470450, 0.831039, 0.296732,
		0.260345, -0.452016, 0.853172,
		0.843147, -0.324122, -0.429008,
		62.512962, 58.523808, 53.924580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.455402, 58.533390, 54.673645>,  <61.922760, 58.750694, 54.224888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.455402, 58.533390, 54.673645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.583534, 58.689556, 54.328400>,  <62.660416, 58.783257, 54.121254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.583534, 58.689556, 54.328400>,  <62.455402, 58.533390, 54.673645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.583534, 58.689556, 54.328400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439770, 0.745705, 0.500526,
		0.839041, -0.539904, 0.067178,
		0.320331, 0.390419, -0.863111,
		62.679634, 58.806683, 54.069466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.224430, 58.569466, 54.578762>,  <62.455402, 58.533390, 54.673645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.224430, 58.569466, 54.578762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.049553, 58.861320, 54.368431>,  <62.944626, 59.036434, 54.242233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.049553, 58.861320, 54.368431>,  <63.224430, 58.569466, 54.578762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.049553, 58.861320, 54.368431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489042, 0.683535, 0.541865,
		0.754786, -0.020253, -0.655658,
		-0.437191, 0.729636, -0.525827,
		62.918396, 59.080212, 54.210682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.743183, 59.034912, 54.227959>,  <63.224430, 58.569466, 54.578762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.743183, 59.034912, 54.227959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.401894, 59.208916, 54.343048>,  <63.197121, 59.313316, 54.412102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.401894, 59.208916, 54.343048>,  <63.743183, 59.034912, 54.227959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.401894, 59.208916, 54.343048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518103, 0.643634, 0.563297,
		0.059851, 0.629686, -0.774540,
		-0.853221, 0.435006, 0.287721,
		63.145927, 59.339417, 54.429363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.662876, 59.847389, 53.981346>,  <63.743183, 59.034912, 54.227959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.662876, 59.847389, 53.981346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.480331, 59.728798, 54.316925>,  <63.370804, 59.657642, 54.518272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.480331, 59.728798, 54.316925>,  <63.662876, 59.847389, 53.981346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.480331, 59.728798, 54.316925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580905, 0.614928, 0.533304,
		-0.674005, 0.730729, -0.108405,
		-0.456362, -0.296477, 0.838949,
		63.343422, 59.639854, 54.568611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.420628, 60.441612, 54.249546>,  <63.662876, 59.847389, 53.981346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.420628, 60.441612, 54.249546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.530777, 60.141369, 54.489796>,  <63.596867, 59.961224, 54.633945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.530777, 60.141369, 54.489796>,  <63.420628, 60.441612, 54.249546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.530777, 60.141369, 54.489796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663553, 0.600488, 0.446219,
		-0.695607, 0.275672, 0.663428,
		0.275370, -0.750613, 0.600626,
		63.613388, 59.916183, 54.669983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.307419, 60.669960, 55.007229>,  <63.420628, 60.441612, 54.249546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.307419, 60.669960, 55.007229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.578705, 60.381340, 54.951530>,  <63.741478, 60.208168, 54.918114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.578705, 60.381340, 54.951530>,  <63.307419, 60.669960, 55.007229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.578705, 60.381340, 54.951530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724049, 0.623748, 0.294434,
		-0.125596, -0.300508, 0.945474,
		0.678218, -0.721549, -0.139242,
		63.782169, 60.164875, 54.909760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.748783, 60.599503, 55.562737>,  <63.307419, 60.669960, 55.007229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.748783, 60.599503, 55.562737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.939957, 60.496857, 55.226707>,  <64.054665, 60.435268, 55.025089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.939957, 60.496857, 55.226707>,  <63.748783, 60.599503, 55.562737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.939957, 60.496857, 55.226707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802372, 0.516732, 0.298642,
		0.357455, -0.816783, 0.452870,
		0.477938, -0.256619, -0.840073,
		64.083336, 60.419872, 54.974686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.462189, 60.705444, 55.758545>,  <63.748783, 60.599503, 55.562737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.462189, 60.705444, 55.758545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.499557, 60.688435, 55.360657>,  <64.521980, 60.678230, 55.121925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.499557, 60.688435, 55.360657>,  <64.462189, 60.705444, 55.758545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.499557, 60.688435, 55.360657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792017, 0.608579, 0.048377,
		0.603307, -0.792353, 0.090536,
		0.093430, -0.042521, -0.994717,
		64.527588, 60.675678, 55.062241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.035362, 60.272072, 55.384705>,  <64.462189, 60.705444, 55.758545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.035362, 60.272072, 55.384705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.924347, 60.597366, 55.180115>,  <64.857735, 60.792545, 55.057362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.924347, 60.597366, 55.180115>,  <65.035362, 60.272072, 55.384705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.924347, 60.597366, 55.180115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933725, 0.353643, 0.055626,
		0.226118, -0.462143, -0.857493,
		-0.277540, 0.813241, -0.511479,
		64.841087, 60.841339, 55.026672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.788994, 59.946419, 55.341915>,  <65.035362, 60.272072, 55.384705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.788994, 59.946419, 55.341915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.808922, 60.171860, 55.671730>,  <65.820877, 60.307125, 55.869621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.808922, 60.171860, 55.671730>,  <65.788994, 59.946419, 55.341915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.808922, 60.171860, 55.671730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851707, -0.407215, 0.329805,
		0.521645, -0.718696, 0.459742,
		0.049816, 0.563606, 0.824540,
		65.823868, 60.340942, 55.919090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.477409, 59.827404, 55.490753>,  <65.788994, 59.946419, 55.341915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.477409, 59.827404, 55.490753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.772644, 59.639225, 55.297302>,  <66.949783, 59.526318, 55.181232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.772644, 59.639225, 55.297302>,  <66.477409, 59.827404, 55.490753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.772644, 59.639225, 55.297302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368899, -0.318785, 0.873092,
		-0.564920, -0.822832, -0.061743,
		0.738091, -0.470451, -0.483630,
		66.994072, 59.498089, 55.152214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.552742, 59.180096, 55.789001>,  <66.477409, 59.827404, 55.490753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.552742, 59.180096, 55.789001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.918945, 59.253136, 55.645607>,  <67.138664, 59.296959, 55.559570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.918945, 59.253136, 55.645607>,  <66.552742, 59.180096, 55.789001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.918945, 59.253136, 55.645607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402305, -0.418969, 0.814012,
		-0.001558, -0.889451, -0.457028,
		0.915504, 0.182596, -0.358484,
		67.193596, 59.307915, 55.538063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.003838, 58.583290, 55.783752>,  <66.552742, 59.180096, 55.789001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.003838, 58.583290, 55.783752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.273857, 58.877640, 55.804955>,  <67.435867, 59.054249, 55.817677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.273857, 58.877640, 55.804955>,  <67.003838, 58.583290, 55.783752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.273857, 58.877640, 55.804955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466497, -0.481382, 0.742059,
		0.571576, -0.476195, -0.668236,
		0.675042, 0.735873, 0.053003,
		67.476372, 59.098400, 55.820854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.783699, 58.355045, 55.597477>,  <67.003838, 58.583290, 55.783752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.783699, 58.355045, 55.597477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.742912, 58.633087, 55.882133>,  <67.718445, 58.799911, 56.052925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.742912, 58.633087, 55.882133>,  <67.783699, 58.355045, 55.597477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.742912, 58.633087, 55.882133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616519, -0.517267, 0.593582,
		0.780710, 0.499262, -0.375805,
		-0.101961, 0.695106, 0.711640,
		67.712326, 58.841618, 56.095627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.431366, 58.664234, 55.874992>,  <67.783699, 58.355045, 55.597477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.431366, 58.664234, 55.874992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.185951, 58.646191, 56.190346>,  <68.038704, 58.635365, 56.379559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.185951, 58.646191, 56.190346>,  <68.431366, 58.664234, 55.874992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.185951, 58.646191, 56.190346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778044, -0.205209, 0.593748,
		0.135002, 0.977678, 0.160996,
		-0.613532, -0.045105, 0.788380,
		68.001892, 58.632660, 56.426861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.509590, 59.185429, 56.508549>,  <68.431366, 58.664234, 55.874992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.509590, 59.185429, 56.508549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.403595, 58.806557, 56.580811>,  <68.339996, 58.579235, 56.624168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.403595, 58.806557, 56.580811>,  <68.509590, 59.185429, 56.508549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.403595, 58.806557, 56.580811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891275, -0.169088, 0.420759,
		-0.367987, 0.272509, 0.889002,
		-0.264980, -0.947179, 0.180658,
		68.324104, 58.522404, 56.635010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.951469, 59.124222, 57.000191>,  <68.509590, 59.185429, 56.508549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.951469, 59.124222, 57.000191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.821487, 58.749073, 56.951523>,  <68.743500, 58.523983, 56.922321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.821487, 58.749073, 56.951523>,  <68.951469, 59.124222, 57.000191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.821487, 58.749073, 56.951523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795721, -0.340673, 0.500769,
		-0.511104, 0.065916, 0.856987,
		-0.324961, -0.937868, -0.121668,
		68.723999, 58.467712, 56.915024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.012299, 58.717873, 57.606071>,  <68.951469, 59.124222, 57.000191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.012299, 58.717873, 57.606071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.013939, 58.444458, 57.314110>,  <69.014923, 58.280411, 57.138931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.013939, 58.444458, 57.314110>,  <69.012299, 58.717873, 57.606071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.013939, 58.444458, 57.314110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825129, -0.410035, 0.388631,
		-0.564930, -0.603862, 0.562322,
		0.004108, -0.683537, -0.729904,
		69.015175, 58.239395, 57.095139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.024971, 58.026844, 57.892120>,  <69.012299, 58.717873, 57.606071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.024971, 58.026844, 57.892120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.201126, 58.074478, 57.536171>,  <69.306824, 58.103058, 57.322601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.201126, 58.074478, 57.536171>,  <69.024971, 58.026844, 57.892120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.201126, 58.074478, 57.536171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844360, -0.391808, 0.365435,
		-0.305140, -0.912307, -0.273102,
		0.440392, 0.119087, -0.889872,
		69.333244, 58.110203, 57.269211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.261368, 57.407475, 57.471645>,  <69.024971, 58.026844, 57.892120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.261368, 57.407475, 57.471645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.502106, 57.726524, 57.455742>,  <69.646545, 57.917953, 57.446198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.502106, 57.726524, 57.455742>,  <69.261368, 57.407475, 57.471645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.502106, 57.726524, 57.455742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704818, -0.507079, 0.496087,
		0.375531, -0.326588, -0.867362,
		0.601838, 0.797628, -0.039761,
		69.682655, 57.965813, 57.443813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.952148, 57.191021, 57.425102>,  <69.261368, 57.407475, 57.471645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.952148, 57.191021, 57.425102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.995026, 57.576744, 57.521942>,  <70.020752, 57.808178, 57.580048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.995026, 57.576744, 57.521942>,  <69.952148, 57.191021, 57.425102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.995026, 57.576744, 57.521942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850336, -0.215109, 0.480268,
		0.515206, 0.154382, -0.843048,
		0.107202, 0.964310, 0.242102,
		70.027184, 57.866035, 57.594574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.610512, 57.487469, 57.253731>,  <69.952148, 57.191021, 57.425102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.610512, 57.487469, 57.253731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.487175, 57.685066, 57.578911>,  <70.413170, 57.803623, 57.774021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.487175, 57.685066, 57.578911>,  <70.610512, 57.487469, 57.253731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.487175, 57.685066, 57.578911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847851, -0.244801, 0.470341,
		0.431356, 0.834293, -0.343347,
		-0.308350, 0.493992, 0.812953,
		70.394669, 57.833263, 57.822796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.243423, 57.726387, 57.501919>,  <70.610512, 57.487469, 57.253731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.243423, 57.726387, 57.501919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.985085, 57.769535, 57.804245>,  <70.830086, 57.795422, 57.985641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.985085, 57.769535, 57.804245>,  <71.243423, 57.726387, 57.501919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.985085, 57.769535, 57.804245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746574, -0.117897, 0.654773,
		0.159736, 0.987150, -0.004388,
		-0.645842, 0.107866, 0.755813,
		70.791328, 57.801895, 58.030991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.525627, 58.310062, 57.868065>,  <71.243423, 57.726387, 57.501919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.525627, 58.310062, 57.868065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.315750, 58.059338, 58.098480>,  <71.189827, 57.908905, 58.236729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.315750, 58.059338, 58.098480>,  <71.525627, 58.310062, 57.868065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.315750, 58.059338, 58.098480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732223, 0.012861, 0.680944,
		-0.434229, 0.779068, 0.452215,
		-0.524685, -0.626808, 0.576036,
		71.158348, 57.871296, 58.271290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.854317, 58.518528, 58.492737>,  <71.525627, 58.310062, 57.868065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.854317, 58.518528, 58.492737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.613480, 58.206871, 58.562515>,  <71.468979, 58.019878, 58.604382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.613480, 58.206871, 58.562515>,  <71.854317, 58.518528, 58.492737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.613480, 58.206871, 58.562515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591647, -0.288665, 0.752746,
		-0.536141, 0.556425, 0.634778,
		-0.602085, -0.779143, 0.174442,
		71.432854, 57.973129, 58.614849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.933105, 58.426929, 59.209843>,  <71.854317, 58.518528, 58.492737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.933105, 58.426929, 59.209843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.800186, 58.089958, 59.040184>,  <71.720436, 57.887775, 58.938389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.800186, 58.089958, 59.040184>,  <71.933105, 58.426929, 59.209843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.800186, 58.089958, 59.040184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521034, -0.538813, 0.661970,
		-0.786197, -0.001029, 0.617975,
		-0.332292, -0.842425, -0.424149,
		71.700500, 57.837231, 58.912941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.478607, 58.098999, 59.559208>,  <71.933105, 58.426929, 59.209843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.478607, 58.098999, 59.559208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.705811, 57.842583, 59.352745>,  <71.842133, 57.688732, 59.228867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.705811, 57.842583, 59.352745>,  <71.478607, 58.098999, 59.559208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.705811, 57.842583, 59.352745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351173, -0.378422, 0.856431,
		-0.744336, -0.667729, 0.010167,
		0.568016, -0.641042, -0.516162,
		71.876213, 57.650269, 59.197895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.301804, 57.411919, 59.775490>,  <71.478607, 58.098999, 59.559208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.301804, 57.411919, 59.775490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.681366, 57.434151, 59.651245>,  <71.909103, 57.447491, 59.576698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.681366, 57.434151, 59.651245>,  <71.301804, 57.411919, 59.775490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.681366, 57.434151, 59.651245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298640, -0.476053, 0.827156,
		-0.101895, -0.877659, -0.468330,
		0.948911, 0.055579, -0.310612,
		71.966042, 57.450825, 59.558060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.649361, 56.719372, 59.842690>,  <71.301804, 57.411919, 59.775490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.649361, 56.719372, 59.842690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.884949, 57.039726, 59.885956>,  <72.026299, 57.231941, 59.911915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.884949, 57.039726, 59.885956>,  <71.649361, 56.719372, 59.842690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.884949, 57.039726, 59.885956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164784, -0.250036, 0.954111,
		0.791180, -0.544114, -0.279236,
		0.588965, 0.800888, 0.108162,
		72.061638, 57.279991, 59.918404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.362221, 56.528790, 59.898415>,  <71.649361, 56.719372, 59.842690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.362221, 56.528790, 59.898415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.321564, 56.872498, 60.098946>,  <72.297173, 57.078724, 60.219265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.321564, 56.872498, 60.098946>,  <72.362221, 56.528790, 59.898415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.321564, 56.872498, 60.098946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312187, -0.450927, 0.836184,
		0.944568, 0.241499, -0.222419,
		-0.101643, 0.859269, 0.501324,
		72.291069, 57.130280, 60.249344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.015724, 56.801197, 60.153996>,  <72.362221, 56.528790, 59.898415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.015724, 56.801197, 60.153996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.714149, 56.906120, 60.394920>,  <72.533203, 56.969074, 60.539474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.714149, 56.906120, 60.394920>,  <73.015724, 56.801197, 60.153996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.714149, 56.906120, 60.394920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547895, -0.254809, 0.796796,
		0.362477, 0.930735, 0.048395,
		-0.753937, 0.262305, 0.602308,
		72.487968, 56.984814, 60.575611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.134354, 57.393208, 60.748306>,  <73.015724, 56.801197, 60.153996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.134354, 57.393208, 60.748306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.875572, 57.099525, 60.830658>,  <72.720299, 56.923317, 60.880070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.875572, 57.099525, 60.830658>,  <73.134354, 57.393208, 60.748306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.875572, 57.099525, 60.830658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628659, -0.360775, 0.688934,
		-0.431541, 0.575142, 0.694971,
		-0.646962, -0.734203, 0.205879,
		72.681480, 56.879265, 60.892422>
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
