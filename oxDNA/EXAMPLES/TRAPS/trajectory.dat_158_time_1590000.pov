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
	<36.024586, 52.187943, 50.089706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.309402, 52.319481, 49.841560>,  <36.480293, 52.398403, 49.692673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.309402, 52.319481, 49.841560>,  <36.024586, 52.187943, 50.089706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.309402, 52.319481, 49.841560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055805, 0.854240, 0.516875,
		0.699913, -0.402657, 0.589905,
		0.712044, 0.328848, -0.620364,
		36.523014, 52.418137, 49.655453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641304, 52.504959, 50.443501>,  <36.024586, 52.187943, 50.089706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.641304, 52.504959, 50.443501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.626213, 52.680649, 50.084465>,  <36.617157, 52.786064, 49.869045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.626213, 52.680649, 50.084465>,  <36.641304, 52.504959, 50.443501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.626213, 52.680649, 50.084465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100394, 0.895347, 0.433907,
		0.994232, -0.073741, -0.077877,
		-0.037731, 0.439223, -0.897585,
		36.614895, 52.812416, 49.815189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945274, 53.034821, 50.432415>,  <36.641304, 52.504959, 50.443501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945274, 53.034821, 50.432415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.767841, 53.150307, 50.093033>,  <36.661381, 53.219597, 49.889404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.767841, 53.150307, 50.093033>,  <36.945274, 53.034821, 50.432415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.767841, 53.150307, 50.093033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179700, 0.956118, 0.231400,
		0.878031, -0.049821, -0.476004,
		-0.443587, 0.288715, -0.848454,
		36.634766, 53.236919, 49.838497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403721, 53.607063, 50.118614>,  <36.945274, 53.034821, 50.432415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403721, 53.607063, 50.118614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.018013, 53.637886, 50.017235>,  <36.786587, 53.656380, 49.956406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.018013, 53.637886, 50.017235>,  <37.403721, 53.607063, 50.118614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.018013, 53.637886, 50.017235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002901, 0.959775, 0.280756,
		0.264891, 0.269991, -0.925709,
		-0.964274, 0.077055, -0.253452,
		36.728729, 53.661003, 49.941200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953445, 53.415348, 50.572987>,  <37.403721, 53.607063, 50.118614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.953445, 53.415348, 50.572987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.276787, 53.506729, 50.355965>,  <38.470791, 53.561558, 50.225750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.276787, 53.506729, 50.355965>,  <37.953445, 53.415348, 50.572987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.276787, 53.506729, 50.355965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449309, -0.356063, -0.819353,
		-0.380372, 0.906105, -0.185178,
		0.808355, 0.228457, -0.542558,
		38.519295, 53.575268, 50.193195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512894, 53.229782, 51.197357>,  <37.953445, 53.415348, 50.572987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512894, 53.229782, 51.197357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.191780, 53.278004, 51.430939>,  <37.999111, 53.306938, 51.571087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.191780, 53.278004, 51.430939>,  <38.512894, 53.229782, 51.197357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.191780, 53.278004, 51.430939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595860, -0.126147, -0.793119,
		-0.021953, -0.984659, 0.173105,
		-0.802788, 0.120557, 0.583949,
		37.950943, 53.314171, 51.606125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040131, 52.670223, 51.024837>,  <38.512894, 53.229782, 51.197357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.040131, 52.670223, 51.024837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.828339, 52.973793, 51.176460>,  <37.701263, 53.155937, 51.267433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.828339, 52.973793, 51.176460>,  <38.040131, 52.670223, 51.024837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.828339, 52.973793, 51.176460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613168, -0.033591, -0.789239,
		-0.586243, -0.650307, 0.483136,
		-0.529477, 0.758928, 0.379055,
		37.669495, 53.201473, 51.290176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356022, 52.327908, 50.900074>,  <38.040131, 52.670223, 51.024837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356022, 52.327908, 50.900074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.371063, 52.723934, 50.845886>,  <37.380089, 52.961552, 50.813374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.371063, 52.723934, 50.845886>,  <37.356022, 52.327908, 50.900074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371063, 52.723934, 50.845886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480406, -0.100965, -0.871215,
		-0.876240, 0.097841, 0.471838,
		0.037601, 0.990067, -0.135473,
		37.382343, 53.020954, 50.805244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052822, 52.903023, 51.300087>,  <37.356022, 52.327908, 50.900074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.052822, 52.903023, 51.300087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.145004, 53.028225, 51.668633>,  <37.200314, 53.103348, 51.889759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.145004, 53.028225, 51.668633>,  <37.052822, 52.903023, 51.300087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145004, 53.028225, 51.668633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638609, -0.665774, 0.385907,
		0.734214, -0.677327, 0.046458,
		0.230454, 0.313007, 0.921367,
		37.214142, 53.122128, 51.945042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151695, 52.265026, 51.673290>,  <37.052822, 52.903023, 51.300087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151695, 52.265026, 51.673290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.083420, 52.567226, 51.926300>,  <37.042454, 52.748547, 52.078106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.083420, 52.567226, 51.926300>,  <37.151695, 52.265026, 51.673290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.083420, 52.567226, 51.926300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686774, -0.551539, 0.473442,
		0.706546, -0.353590, 0.612998,
		-0.170687, 0.755499, 0.632524,
		37.032215, 52.793877, 52.116058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747864, 51.906361, 51.763737>,  <37.151695, 52.265026, 51.673290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747864, 51.906361, 51.763737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.659351, 51.697037, 51.434570>,  <37.606243, 51.571442, 51.237072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.659351, 51.697037, 51.434570>,  <37.747864, 51.906361, 51.763737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.659351, 51.697037, 51.434570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639635, 0.559087, -0.527530,
		0.736140, -0.643096, 0.211011,
		-0.221279, -0.523306, -0.822913,
		37.592968, 51.540047, 51.187695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333382, 51.889381, 51.396481>,  <37.747864, 51.906361, 51.763737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.333382, 51.889381, 51.396481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.040607, 51.845173, 51.127541>,  <37.864944, 51.818649, 50.966175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.040607, 51.845173, 51.127541>,  <38.333382, 51.889381, 51.396481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040607, 51.845173, 51.127541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542638, 0.502236, -0.673278,
		0.412089, -0.857640, -0.307632,
		-0.731934, -0.110517, -0.672353,
		37.821026, 51.812019, 50.925835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990017, 52.078060, 51.056694>,  <38.333382, 51.889381, 51.396481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.990017, 52.078060, 51.056694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206642, 52.401611, 51.148289>,  <39.336617, 52.595741, 51.203243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206642, 52.401611, 51.148289>,  <38.990017, 52.078060, 51.056694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206642, 52.401611, 51.148289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592994, 0.174494, 0.786072,
		0.595880, -0.561490, 0.574157,
		0.541559, 0.808876, 0.228983,
		39.369110, 52.644276, 51.216984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.613884, 51.756607, 51.377407>,  <38.990017, 52.078060, 51.056694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.613884, 51.756607, 51.377407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.938358, 51.931499, 51.532738>,  <40.133045, 52.036434, 51.625938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.938358, 51.931499, 51.532738>,  <39.613884, 51.756607, 51.377407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.938358, 51.931499, 51.532738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025782, -0.636673, 0.770703,
		0.584215, -0.635198, -0.505189,
		0.811189, 0.437232, 0.388330,
		40.181717, 52.062668, 51.649239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.169590, 51.227600, 51.489414>,  <39.613884, 51.756607, 51.377407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.169590, 51.227600, 51.489414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.173698, 51.549248, 51.727165>,  <40.176163, 51.742237, 51.869816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.173698, 51.549248, 51.727165>,  <40.169590, 51.227600, 51.489414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.173698, 51.549248, 51.727165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041528, -0.594236, 0.803218,
		0.999085, 0.016434, -0.039497,
		0.010271, 0.804123, 0.594375,
		40.176781, 51.790485, 51.905479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.793243, 51.421982, 51.928352>,  <40.169590, 51.227600, 51.489414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.793243, 51.421982, 51.928352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.453827, 51.541943, 52.102722>,  <40.250175, 51.613918, 52.207344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.453827, 51.541943, 52.102722>,  <40.793243, 51.421982, 51.928352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.453827, 51.541943, 52.102722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191718, -0.593617, 0.781577,
		0.493174, 0.746776, 0.446212,
		-0.848542, 0.299906, 0.435927,
		40.199265, 51.631916, 52.233501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.431248, 51.135551, 52.540630>,  <40.793243, 51.421982, 51.928352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.431248, 51.135551, 52.540630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.256130, 50.925907, 52.248428>,  <40.151062, 50.800121, 52.073105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.256130, 50.925907, 52.248428>,  <40.431248, 51.135551, 52.540630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.256130, 50.925907, 52.248428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644908, 0.383067, -0.661327,
		0.626445, -0.760634, 0.170302,
		-0.437791, -0.524114, -0.730509,
		40.124794, 50.768673, 52.029274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.593216, 51.968861, 52.548668>,  <40.431248, 51.135551, 52.540630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.593216, 51.968861, 52.548668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.953671, 51.869194, 52.406754>,  <41.169941, 51.809395, 52.321606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.953671, 51.869194, 52.406754>,  <40.593216, 51.968861, 52.548668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.953671, 51.869194, 52.406754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379488, 0.057620, 0.923400,
		-0.209641, -0.966744, 0.146480,
		0.901132, -0.249170, -0.354788,
		41.224010, 51.794445, 52.300316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.271629, 52.393913, 52.479183>,  <40.593216, 51.968861, 52.548668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.271629, 52.393913, 52.479183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.256813, 52.021229, 52.623703>,  <41.247925, 51.797619, 52.710415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.256813, 52.021229, 52.623703>,  <41.271629, 52.393913, 52.479183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.256813, 52.021229, 52.623703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861081, 0.153719, 0.484676,
		-0.507118, 0.329059, 0.796588,
		-0.037036, -0.931714, 0.361299,
		41.245701, 51.741714, 52.732094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.282330, 52.258530, 53.277447>,  <41.271629, 52.393913, 52.479183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.282330, 52.258530, 53.277447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.472122, 51.948338, 53.110832>,  <41.585999, 51.762222, 53.010864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.472122, 51.948338, 53.110832>,  <41.282330, 52.258530, 53.277447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.472122, 51.948338, 53.110832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846731, 0.272719, 0.456805,
		-0.240645, -0.569439, 0.786021,
		0.474486, -0.775476, -0.416533,
		41.614468, 51.715694, 52.985874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.861683, 52.326622, 53.679031>,  <41.282330, 52.258530, 53.277447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.861683, 52.326622, 53.679031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.004021, 52.050629, 53.426903>,  <42.089424, 51.885033, 53.275627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.004021, 52.050629, 53.426903>,  <41.861683, 52.326622, 53.679031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.004021, 52.050629, 53.426903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919232, 0.136827, 0.369177,
		-0.168480, -0.710779, 0.682940,
		0.355848, -0.689979, -0.630318,
		42.110775, 51.843636, 53.237808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.467808, 52.133202, 53.954769>,  <41.861683, 52.326622, 53.679031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.467808, 52.133202, 53.954769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.504562, 52.041782, 53.567093>,  <42.526615, 51.986931, 53.334488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.504562, 52.041782, 53.567093>,  <42.467808, 52.133202, 53.954769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.504562, 52.041782, 53.567093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994791, -0.022090, 0.099518,
		-0.044153, -0.973283, 0.225324,
		0.091882, -0.228545, -0.969188,
		42.532127, 51.973221, 53.276337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.917561, 51.617325, 54.030289>,  <42.467808, 52.133202, 53.954769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.917561, 51.617325, 54.030289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.930439, 51.743507, 53.650932>,  <42.938164, 51.819218, 53.423317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.930439, 51.743507, 53.650932>,  <42.917561, 51.617325, 54.030289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.930439, 51.743507, 53.650932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992521, -0.121879, -0.006848,
		-0.117749, -0.941081, -0.317019,
		0.032194, 0.315455, -0.948394,
		42.940098, 51.838142, 53.366413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.334816, 51.116253, 53.564339>,  <42.917561, 51.617325, 54.030289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.334816, 51.116253, 53.564339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.347080, 51.507736, 53.483162>,  <43.354439, 51.742626, 53.434456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.347080, 51.507736, 53.483162>,  <43.334816, 51.116253, 53.564339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.347080, 51.507736, 53.483162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979964, 0.010543, 0.198896,
		0.196802, -0.204977, -0.958777,
		0.030661, 0.978710, -0.202945,
		43.356277, 51.801350, 53.422279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.998726, 51.293640, 53.289059>,  <43.334816, 51.116253, 53.564339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.998726, 51.293640, 53.289059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.882446, 51.633591, 53.464878>,  <43.812679, 51.837563, 53.570370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.882446, 51.633591, 53.464878>,  <43.998726, 51.293640, 53.289059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.882446, 51.633591, 53.464878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924873, 0.131879, 0.356675,
		0.245162, 0.510214, -0.824365,
		-0.290697, 0.849876, 0.439551,
		43.795238, 51.888554, 53.596745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.529636, 51.873505, 53.123402>,  <43.998726, 51.293640, 53.289059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.529636, 51.873505, 53.123402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.368710, 51.891113, 53.489178>,  <44.272156, 51.901680, 53.708645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.368710, 51.891113, 53.489178>,  <44.529636, 51.873505, 53.123402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.368710, 51.891113, 53.489178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890922, 0.248727, 0.379992,
		-0.210717, 0.967573, -0.139289,
		-0.402315, 0.044025, 0.914442,
		44.248016, 51.904320, 53.763512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.541363, 52.591579, 53.335266>,  <44.529636, 51.873505, 53.123402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.541363, 52.591579, 53.335266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.564945, 52.308731, 53.617119>,  <44.579094, 52.139023, 53.786228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.564945, 52.308731, 53.617119>,  <44.541363, 52.591579, 53.335266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.564945, 52.308731, 53.617119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904382, 0.336671, 0.262193,
		-0.422631, 0.621796, 0.659358,
		0.058957, -0.707123, 0.704629,
		44.582634, 52.096596, 53.828506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.672272, 52.912479, 54.066864>,  <44.541363, 52.591579, 53.335266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.672272, 52.912479, 54.066864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.849598, 52.555454, 54.033890>,  <44.955994, 52.341240, 54.014103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.849598, 52.555454, 54.033890>,  <44.672272, 52.912479, 54.066864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.849598, 52.555454, 54.033890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895331, 0.436513, 0.088541,
		-0.043042, -0.113063, 0.992655,
		0.443318, -0.892565, -0.082440,
		44.982594, 52.287685, 54.009159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.237392, 52.749367, 54.649513>,  <44.672272, 52.912479, 54.066864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.237392, 52.749367, 54.649513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.318520, 52.571335, 54.300625>,  <45.367195, 52.464516, 54.091293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.318520, 52.571335, 54.300625>,  <45.237392, 52.749367, 54.649513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.318520, 52.571335, 54.300625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870934, 0.489138, -0.047085,
		0.447593, -0.750097, 0.486843,
		0.202815, -0.445083, -0.872220,
		45.379364, 52.437809, 54.038960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.928444, 52.539719, 54.584156>,  <45.237392, 52.749367, 54.649513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.928444, 52.539719, 54.584156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.858334, 52.498329, 54.192528>,  <45.816269, 52.473495, 53.957550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.858334, 52.498329, 54.192528>,  <45.928444, 52.539719, 54.584156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.858334, 52.498329, 54.192528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873836, 0.441758, -0.203126,
		0.453529, -0.891147, 0.012990,
		-0.175277, -0.103474, -0.979066,
		45.805752, 52.467285, 53.898808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.449585, 52.130047, 54.189899>,  <45.928444, 52.539719, 54.584156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.449585, 52.130047, 54.189899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.294876, 52.400337, 53.938881>,  <46.202053, 52.562511, 53.788269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.294876, 52.400337, 53.938881>,  <46.449585, 52.130047, 54.189899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.294876, 52.400337, 53.938881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922032, 0.271327, -0.276113,
		-0.016307, -0.685407, -0.727978,
		-0.386770, 0.675721, -0.627542,
		46.178844, 52.603054, 53.750618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.831596, 52.127949, 53.526901>,  <46.449585, 52.130047, 54.189899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.831596, 52.127949, 53.526901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.695873, 52.492073, 53.621727>,  <46.614441, 52.710548, 53.678623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.695873, 52.492073, 53.621727>,  <46.831596, 52.127949, 53.526901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.695873, 52.492073, 53.621727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926330, 0.367191, -0.084164,
		-0.163665, 0.191046, -0.967841,
		-0.339304, 0.910314, 0.237068,
		46.594082, 52.765167, 53.692848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.006500, 52.585484, 52.962849>,  <46.831596, 52.127949, 53.526901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.006500, 52.585484, 52.962849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.014629, 52.776791, 53.314041>,  <47.019505, 52.891575, 53.524757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.014629, 52.776791, 53.314041>,  <47.006500, 52.585484, 52.962849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.014629, 52.776791, 53.314041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914565, 0.345895, -0.209588,
		-0.403928, 0.807227, -0.430380,
		0.020319, 0.478269, 0.877978,
		47.020725, 52.920273, 53.577435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.419212, 53.238987, 52.834660>,  <47.006500, 52.585484, 52.962849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.419212, 53.238987, 52.834660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.399162, 53.226986, 53.233978>,  <47.387131, 53.219784, 53.473568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.399162, 53.226986, 53.233978>,  <47.419212, 53.238987, 52.834660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.399162, 53.226986, 53.233978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829512, 0.555434, 0.058345,
		-0.556236, 0.831019, -0.002953,
		-0.050126, -0.030004, 0.998292,
		47.384125, 53.217983, 53.533466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.584381, 53.891396, 53.082851>,  <47.419212, 53.238987, 52.834660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.584381, 53.891396, 53.082851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.633461, 53.631069, 53.382557>,  <47.662907, 53.474873, 53.562378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.633461, 53.631069, 53.382557>,  <47.584381, 53.891396, 53.082851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.633461, 53.631069, 53.382557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950233, 0.294877, 0.100524,
		-0.286361, 0.699637, 0.654603,
		0.122697, -0.650812, 0.749259,
		47.670269, 53.435825, 53.607334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.778305, 54.190796, 53.662693>,  <47.584381, 53.891396, 53.082851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.778305, 54.190796, 53.662693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.918938, 53.817757, 53.695312>,  <48.003315, 53.593933, 53.714886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.918938, 53.817757, 53.695312>,  <47.778305, 54.190796, 53.662693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.918938, 53.817757, 53.695312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925121, 0.359451, 0.122252,
		-0.143326, 0.032464, 0.989143,
		0.351580, -0.932599, 0.081551,
		48.024410, 53.537975, 53.719776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.320675, 54.326946, 54.097660>,  <47.778305, 54.190796, 53.662693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.320675, 54.326946, 54.097660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.370483, 53.972809, 53.918480>,  <48.400368, 53.760326, 53.810974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.370483, 53.972809, 53.918480>,  <48.320675, 54.326946, 54.097660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.370483, 53.972809, 53.918480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988800, 0.148162, -0.017961,
		0.082271, -0.440694, 0.893879,
		0.124523, -0.885346, -0.447948,
		48.407841, 53.707207, 53.784096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.983829, 54.679920, 54.196175>,  <48.320675, 54.326946, 54.097660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.983829, 54.679920, 54.196175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.083042, 54.838989, 53.842827>,  <49.142570, 54.934429, 53.630817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.083042, 54.838989, 53.842827>,  <48.983829, 54.679920, 54.196175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.083042, 54.838989, 53.842827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622121, 0.764371, 0.169419,
		0.742593, 0.507539, 0.436990,
		0.248035, 0.397670, -0.883367,
		49.157452, 54.958290, 53.577816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.165089, 55.374126, 54.264759>,  <48.983829, 54.679920, 54.196175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.165089, 55.374126, 54.264759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.040787, 55.308304, 53.890305>,  <48.966206, 55.268810, 53.665630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.040787, 55.308304, 53.890305>,  <49.165089, 55.374126, 54.264759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.040787, 55.308304, 53.890305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556374, 0.830026, 0.038787,
		0.770635, 0.532895, -0.349491,
		-0.310756, -0.164557, -0.936137,
		48.947559, 55.258938, 53.609463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.786049, 54.910416, 53.944500>,  <49.165089, 55.374126, 54.264759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.786049, 54.910416, 53.944500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.542946, 54.632385, 53.790871>,  <49.397083, 54.465569, 53.698692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.542946, 54.632385, 53.790871>,  <49.786049, 54.910416, 53.944500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.542946, 54.632385, 53.790871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775187, -0.624255, -0.096911,
		-0.172399, -0.356626, 0.918203,
		-0.607753, -0.695071, -0.384073,
		49.360619, 54.423862, 53.675648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.060028, 54.295982, 54.222080>,  <49.786049, 54.910416, 53.944500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.060028, 54.295982, 54.222080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.887260, 54.202705, 53.873581>,  <49.783600, 54.146740, 53.664482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.887260, 54.202705, 53.873581>,  <50.060028, 54.295982, 54.222080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.887260, 54.202705, 53.873581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780686, -0.580394, -0.231675,
		-0.451642, -0.780234, 0.432730,
		-0.431915, -0.233192, -0.871247,
		49.757687, 54.132748, 53.612206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.553200, 53.959576, 53.949902>,  <50.060028, 54.295982, 54.222080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.553200, 53.959576, 53.949902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.329517, 53.842453, 53.639664>,  <50.195309, 53.772179, 53.453522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.329517, 53.842453, 53.639664>,  <50.553200, 53.959576, 53.949902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.329517, 53.842453, 53.639664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751171, -0.574781, -0.324605,
		-0.350751, -0.764127, 0.541372,
		-0.559210, -0.292807, -0.775596,
		50.161755, 53.754612, 53.406986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.554546, 53.324417, 54.124172>,  <50.553200, 53.959576, 53.949902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.554546, 53.324417, 54.124172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.539509, 53.408947, 53.733494>,  <50.530487, 53.459663, 53.499088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.539509, 53.408947, 53.733494>,  <50.554546, 53.324417, 54.124172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.539509, 53.408947, 53.733494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774458, -0.611500, -0.162118,
		-0.631507, -0.762503, -0.140670,
		-0.037596, 0.211322, -0.976693,
		50.528229, 53.472343, 53.440487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.467346, 52.718296, 53.679581>,  <50.554546, 53.324417, 54.124172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.467346, 52.718296, 53.679581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.659527, 53.029148, 53.516983>,  <50.774834, 53.215660, 53.419426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.659527, 53.029148, 53.516983>,  <50.467346, 52.718296, 53.679581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.659527, 53.029148, 53.516983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872035, -0.472667, 0.127044,
		-0.093406, -0.415515, -0.904778,
		0.480447, 0.777132, -0.406494,
		50.803661, 53.262287, 53.395035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.774979, 52.619804, 52.970078>,  <50.467346, 52.718296, 53.679581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.774979, 52.619804, 52.970078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.989899, 52.873909, 53.191978>,  <51.118851, 53.026371, 53.325119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.989899, 52.873909, 53.191978>,  <50.774979, 52.619804, 52.970078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.989899, 52.873909, 53.191978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760098, -0.649761, 0.007872,
		0.365455, 0.417435, -0.831980,
		0.537302, 0.635263, 0.554750,
		51.151089, 53.064487, 53.358402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.491917, 52.629112, 52.739780>,  <50.774979, 52.619804, 52.970078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.491917, 52.629112, 52.739780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.539467, 52.735531, 53.122421>,  <51.567997, 52.799381, 53.352005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.539467, 52.735531, 53.122421>,  <51.491917, 52.629112, 52.739780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.539467, 52.735531, 53.122421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933914, -0.357105, -0.016737,
		0.337155, 0.895376, -0.290910,
		0.118872, 0.266042, 0.956604,
		51.575127, 52.815342, 53.409401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.939312, 53.248016, 52.872784>,  <51.491917, 52.629112, 52.739780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.939312, 53.248016, 52.872784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.990349, 53.047886, 53.215340>,  <52.020969, 52.927807, 53.420872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.990349, 53.047886, 53.215340>,  <51.939312, 53.248016, 52.872784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.990349, 53.047886, 53.215340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969419, -0.119592, -0.214300,
		0.209637, 0.857540, 0.469764,
		0.127591, -0.500323, 0.856386,
		52.028625, 52.897789, 53.472256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.594421, 53.386677, 53.204727>,  <51.939312, 53.248016, 52.872784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.594421, 53.386677, 53.204727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.522167, 53.028931, 53.368423>,  <52.478813, 52.814281, 53.466640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.522167, 53.028931, 53.368423>,  <52.594421, 53.386677, 53.204727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.522167, 53.028931, 53.368423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983388, -0.156666, 0.091677,
		-0.017880, 0.418999, 0.907811,
		-0.180636, -0.894369, 0.409237,
		52.467976, 52.760620, 53.491196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.013973, 53.303207, 53.772911>,  <52.594421, 53.386677, 53.204727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.013973, 53.303207, 53.772911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.894886, 52.930069, 53.691757>,  <52.823433, 52.706184, 53.643066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.894886, 52.930069, 53.691757>,  <53.013973, 53.303207, 53.772911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.894886, 52.930069, 53.691757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954264, -0.284733, -0.091140,
		0.027252, -0.220740, 0.974952,
		-0.297720, -0.932846, -0.202884,
		52.805569, 52.650215, 53.630894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.442310, 52.793373, 54.151596>,  <53.013973, 53.303207, 53.772911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.442310, 52.793373, 54.151596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.317696, 52.621639, 53.812511>,  <53.242928, 52.518600, 53.609058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.317696, 52.621639, 53.812511>,  <53.442310, 52.793373, 54.151596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.317696, 52.621639, 53.812511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926383, -0.335851, -0.170348,
		-0.211568, -0.838376, 0.502358,
		-0.311533, -0.429336, -0.847713,
		53.224236, 52.492840, 53.558197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.564682, 52.147686, 54.285862>,  <53.442310, 52.793373, 54.151596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.564682, 52.147686, 54.285862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.581390, 52.240898, 53.897232>,  <53.591415, 52.296825, 53.664055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.581390, 52.240898, 53.897232>,  <53.564682, 52.147686, 54.285862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.581390, 52.240898, 53.897232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957123, -0.288326, -0.028003,
		-0.286655, -0.928743, -0.235085,
		0.041774, 0.233033, -0.971571,
		53.593922, 52.310806, 53.605762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.164307, 52.007542, 53.673439>,  <53.564682, 52.147686, 54.285862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.164307, 52.007542, 53.673439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.460587, 51.932484, 53.415401>,  <54.638355, 51.887447, 53.260578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.460587, 51.932484, 53.415401>,  <54.164307, 52.007542, 53.673439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.460587, 51.932484, 53.415401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637091, -0.108591, 0.763101,
		-0.213246, -0.976215, 0.039115,
		0.740703, -0.187648, -0.645095,
		54.682796, 51.876190, 53.221874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.485191, 51.367935, 53.805035>,  <54.164307, 52.007542, 53.673439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.485191, 51.367935, 53.805035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.731102, 51.660667, 53.687412>,  <54.878651, 51.836308, 53.616840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.731102, 51.660667, 53.687412>,  <54.485191, 51.367935, 53.805035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.731102, 51.660667, 53.687412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498866, -0.072042, 0.863679,
		0.610884, -0.677666, -0.409377,
		0.614779, 0.731833, -0.294055,
		54.915535, 51.880219, 53.599197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.255989, 51.194351, 53.862251>,  <54.485191, 51.367935, 53.805035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.255989, 51.194351, 53.862251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.198540, 51.590065, 53.872696>,  <55.164070, 51.827496, 53.878963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.198540, 51.590065, 53.872696>,  <55.255989, 51.194351, 53.862251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.198540, 51.590065, 53.872696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599541, 0.065989, 0.797619,
		0.787351, 0.130215, -0.602596,
		-0.143627, 0.989287, 0.026112,
		55.155453, 51.886852, 53.880531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.857544, 51.432068, 54.103188>,  <55.255989, 51.194351, 53.862251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.857544, 51.432068, 54.103188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.592171, 51.718941, 54.188515>,  <55.432945, 51.891064, 54.239712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.592171, 51.718941, 54.188515>,  <55.857544, 51.432068, 54.103188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.592171, 51.718941, 54.188515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526798, 0.245248, 0.813841,
		0.531356, 0.652306, -0.540516,
		-0.663434, 0.717182, 0.213319,
		55.393139, 51.934097, 54.252510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.148705, 52.142410, 54.108112>,  <55.857544, 51.432068, 54.103188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.148705, 52.142410, 54.108112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.841568, 52.144081, 54.364365>,  <55.657288, 52.145084, 54.518116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.841568, 52.144081, 54.364365>,  <56.148705, 52.142410, 54.108112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.841568, 52.144081, 54.364365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625359, 0.222025, 0.748085,
		-0.139109, 0.975032, -0.173093,
		-0.767838, 0.004179, 0.640631,
		55.611217, 52.145336, 54.556553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.256306, 52.603813, 54.518051>,  <56.148705, 52.142410, 54.108112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.256306, 52.603813, 54.518051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.982597, 52.413589, 54.739182>,  <55.818371, 52.299454, 54.871861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.982597, 52.413589, 54.739182>,  <56.256306, 52.603813, 54.518051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.982597, 52.413589, 54.739182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598819, 0.066186, 0.798145,
		-0.416155, 0.877190, 0.239485,
		-0.684274, -0.475560, 0.552821,
		55.777313, 52.270920, 54.905029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.370041, 52.106567, 54.971649>,  <56.256306, 52.603813, 54.518051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.370041, 52.106567, 54.971649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.153397, 52.440773, 54.934624>,  <56.023411, 52.641296, 54.912411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.153397, 52.440773, 54.934624>,  <56.370041, 52.106567, 54.971649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.153397, 52.440773, 54.934624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344300, 0.120032, -0.931155,
		-0.766886, -0.536194, -0.352679,
		-0.541612, 0.835517, -0.092561,
		55.990913, 52.691429, 54.906857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.442768, 52.241837, 55.762012>,  <56.370041, 52.106567, 54.971649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.442768, 52.241837, 55.762012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.501099, 52.637302, 55.776306>,  <56.536095, 52.874580, 55.784882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.501099, 52.637302, 55.776306>,  <56.442768, 52.241837, 55.762012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.501099, 52.637302, 55.776306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499601, -0.104767, 0.859897,
		0.853894, -0.107540, -0.509216,
		0.145822, 0.988665, 0.035733,
		56.544846, 52.933903, 55.787025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.990768, 52.077812, 56.161243>,  <56.442768, 52.241837, 55.762012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.990768, 52.077812, 56.161243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.928810, 52.470215, 56.114525>,  <56.891636, 52.705654, 56.086494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.928810, 52.470215, 56.114525>,  <56.990768, 52.077812, 56.161243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.928810, 52.470215, 56.114525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383506, 0.168656, 0.908008,
		0.910456, 0.095855, -0.402345,
		-0.154895, 0.981003, -0.116793,
		56.882343, 52.764515, 56.079487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.591694, 52.343517, 56.381882>,  <56.990768, 52.077812, 56.161243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.591694, 52.343517, 56.381882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.264992, 52.573711, 56.398491>,  <57.068970, 52.711830, 56.408459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.264992, 52.573711, 56.398491>,  <57.591694, 52.343517, 56.381882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.264992, 52.573711, 56.398491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141804, 0.130449, 0.981262,
		0.559288, 0.807339, -0.188151,
		-0.816755, 0.575489, 0.041525,
		57.019966, 52.746357, 56.410950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.841557, 53.006851, 56.647438>,  <57.591694, 52.343517, 56.381882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.841557, 53.006851, 56.647438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.472351, 52.874271, 56.725616>,  <57.250828, 52.794724, 56.772522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.472351, 52.874271, 56.725616>,  <57.841557, 53.006851, 56.647438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.472351, 52.874271, 56.725616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194965, 0.035041, 0.980184,
		-0.331726, 0.942823, 0.032277,
		-0.923009, -0.331446, 0.195441,
		57.195450, 52.774837, 56.784248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.228188, 53.475548, 57.215958>,  <57.841557, 53.006851, 56.647438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.228188, 53.475548, 57.215958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.479584, 53.763298, 57.097633>,  <58.630421, 53.935947, 57.026638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.479584, 53.763298, 57.097633>,  <58.228188, 53.475548, 57.215958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.479584, 53.763298, 57.097633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597207, 0.202630, -0.776070,
		-0.498345, 0.664410, 0.556967,
		0.628487, 0.719375, -0.295810,
		58.668129, 53.979111, 57.008892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.831806, 53.367611, 57.647549>,  <58.228188, 53.475548, 57.215958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.831806, 53.367611, 57.647549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.032219, 53.180634, 57.938881>,  <59.152466, 53.068447, 58.113678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.032219, 53.180634, 57.938881>,  <58.831806, 53.367611, 57.647549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.032219, 53.180634, 57.938881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861203, 0.186255, -0.472904,
		0.085402, 0.864179, 0.495884,
		0.501034, -0.467444, 0.728327,
		59.182529, 53.040401, 58.157379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.438717, 53.934799, 57.800415>,  <58.831806, 53.367611, 57.647549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.438717, 53.934799, 57.800415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.551826, 53.567543, 57.911453>,  <59.619690, 53.347191, 57.978077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.551826, 53.567543, 57.911453>,  <59.438717, 53.934799, 57.800415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.551826, 53.567543, 57.911453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941094, 0.209619, -0.265336,
		0.185427, 0.336269, 0.923331,
		0.282772, -0.918141, 0.277592,
		59.636658, 53.292099, 57.994732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.984432, 53.871250, 58.473866>,  <59.438717, 53.934799, 57.800415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.984432, 53.871250, 58.473866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.979118, 53.621918, 58.161125>,  <59.975929, 53.472321, 57.973480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.979118, 53.621918, 58.161125>,  <59.984432, 53.871250, 58.473866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.979118, 53.621918, 58.161125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959305, 0.212625, -0.185809,
		0.282060, -0.752499, 0.595137,
		-0.013280, -0.623327, -0.781849,
		59.975136, 53.434921, 57.926571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.486404, 53.323624, 58.573090>,  <59.984432, 53.871250, 58.473866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.486404, 53.323624, 58.573090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.423698, 53.429131, 58.192383>,  <60.386074, 53.492435, 57.963959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.423698, 53.429131, 58.192383>,  <60.486404, 53.323624, 58.573090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.423698, 53.429131, 58.192383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987297, 0.016612, -0.158015,
		-0.025869, -0.964443, -0.263021,
		-0.156766, 0.263768, -0.951762,
		60.376667, 53.508263, 57.906853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.839561, 52.751255, 58.129578>,  <60.486404, 53.323624, 58.573090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.839561, 52.751255, 58.129578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.794846, 53.135029, 58.026047>,  <60.768017, 53.365292, 57.963928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.794846, 53.135029, 58.026047>,  <60.839561, 52.751255, 58.129578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.794846, 53.135029, 58.026047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921213, 0.002379, -0.389052,
		-0.372653, -0.281929, -0.884107,
		-0.111788, 0.959432, -0.258830,
		60.761311, 53.422859, 57.948399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.905430, 52.866459, 57.419724>,  <60.839561, 52.751255, 58.129578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.905430, 52.866459, 57.419724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.016632, 53.195057, 57.618866>,  <61.083355, 53.392216, 57.738350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.016632, 53.195057, 57.618866>,  <60.905430, 52.866459, 57.419724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.016632, 53.195057, 57.618866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801467, 0.087315, -0.591630,
		-0.529491, 0.563491, -0.634127,
		0.278009, 0.821495, 0.497853,
		61.100037, 53.441505, 57.768223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.161140, 53.412731, 57.011440>,  <60.905430, 52.866459, 57.419724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.161140, 53.412731, 57.011440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.327492, 53.411804, 57.375206>,  <61.427303, 53.411247, 57.593468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.327492, 53.411804, 57.375206>,  <61.161140, 53.412731, 57.011440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.327492, 53.411804, 57.375206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906174, 0.085485, -0.414176,
		-0.076783, 0.996337, 0.037648,
		0.415877, -0.002314, 0.909418,
		61.452255, 53.411110, 57.648033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.697227, 53.936573, 56.959583>,  <61.161140, 53.412731, 57.011440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.697227, 53.936573, 56.959583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.774628, 53.729462, 57.292923>,  <61.821068, 53.605194, 57.492928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.774628, 53.729462, 57.292923>,  <61.697227, 53.936573, 56.959583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.774628, 53.729462, 57.292923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972088, 0.216047, -0.091481,
		-0.132675, 0.827787, 0.545129,
		0.193500, -0.517776, 0.833346,
		61.832676, 53.574127, 57.542927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.977501, 54.389091, 57.446693>,  <61.697227, 53.936573, 56.959583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.977501, 54.389091, 57.446693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.094955, 54.009281, 57.490829>,  <62.165428, 53.781395, 57.517311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.094955, 54.009281, 57.490829>,  <61.977501, 54.389091, 57.446693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.094955, 54.009281, 57.490829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951393, 0.301508, 0.062802,
		-0.092901, 0.086535, 0.991908,
		0.293634, -0.949529, 0.110339,
		62.183044, 53.724422, 57.523930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.369228, 54.349739, 58.067635>,  <61.977501, 54.389091, 57.446693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.369228, 54.349739, 58.067635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.471756, 54.097691, 57.774445>,  <62.533272, 53.946461, 57.598530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.471756, 54.097691, 57.774445>,  <62.369228, 54.349739, 58.067635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.471756, 54.097691, 57.774445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962034, 0.239858, 0.130222,
		0.093754, -0.738523, 0.667678,
		0.256319, -0.630120, -0.732972,
		62.548653, 53.908653, 57.554554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.884739, 53.761101, 58.191860>,  <62.369228, 54.349739, 58.067635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.884739, 53.761101, 58.191860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.945404, 53.904427, 57.823380>,  <62.981804, 53.990421, 57.602291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.945404, 53.904427, 57.823380>,  <62.884739, 53.761101, 58.191860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.945404, 53.904427, 57.823380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939734, 0.236655, 0.246770,
		0.306428, -0.903108, -0.300830,
		0.151667, 0.358317, -0.921198,
		62.990906, 54.011921, 57.547020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.485306, 53.515461, 57.956310>,  <62.884739, 53.761101, 58.191860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.485306, 53.515461, 57.956310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.411583, 53.841728, 57.736961>,  <63.367348, 54.037491, 57.605350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.411583, 53.841728, 57.736961>,  <63.485306, 53.515461, 57.956310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.411583, 53.841728, 57.736961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937594, 0.313293, 0.150877,
		0.294867, -0.486342, -0.822512,
		-0.184309, 0.815671, -0.548371,
		63.356289, 54.086430, 57.572449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.174568, 53.787735, 57.905262>,  <63.485306, 53.515461, 57.956310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.174568, 53.787735, 57.905262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.950119, 54.035797, 57.685974>,  <63.815449, 54.184635, 57.554401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.950119, 54.035797, 57.685974>,  <64.174568, 53.787735, 57.905262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.950119, 54.035797, 57.685974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635209, 0.747273, 0.195173,
		0.530708, -0.238718, -0.813242,
		-0.561123, 0.620159, -0.548219,
		63.781784, 54.221844, 57.521507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.552284, 54.125591, 57.309109>,  <64.174568, 53.787735, 57.905262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.552284, 54.125591, 57.309109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.264320, 54.355003, 57.465462>,  <64.091537, 54.492649, 57.559273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.264320, 54.355003, 57.465462>,  <64.552284, 54.125591, 57.309109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.264320, 54.355003, 57.465462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636630, 0.769984, 0.042753,
		-0.276454, 0.279626, -0.919447,
		-0.719914, 0.573528, 0.390883,
		64.048347, 54.527061, 57.582726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.317017, 54.636322, 56.843540>,  <64.552284, 54.125591, 57.309109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.317017, 54.636322, 56.843540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.316452, 54.718197, 57.235069>,  <64.316116, 54.767323, 57.469986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.316452, 54.718197, 57.235069>,  <64.317017, 54.636322, 56.843540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.316452, 54.718197, 57.235069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900192, 0.426531, -0.087895,
		-0.435490, 0.881008, -0.184861,
		-0.001413, 0.204688, 0.978826,
		64.316025, 54.779602, 57.528717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.566803, 55.269939, 56.887295>,  <64.317017, 54.636322, 56.843540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.566803, 55.269939, 56.887295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.599495, 55.120113, 57.256729>,  <64.619110, 55.030216, 57.478390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.599495, 55.120113, 57.256729>,  <64.566803, 55.269939, 56.887295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.599495, 55.120113, 57.256729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948132, 0.314846, 0.043785,
		-0.307189, 0.872107, 0.380873,
		0.081732, -0.374568, 0.923590,
		64.624016, 55.007744, 57.533806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.151268, 55.608974, 57.100487>,  <64.566803, 55.269939, 56.887295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.151268, 55.608974, 57.100487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.107643, 55.323967, 57.377739>,  <65.081467, 55.152962, 57.544090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.107643, 55.323967, 57.377739>,  <65.151268, 55.608974, 57.100487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.107643, 55.323967, 57.377739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911764, 0.206059, 0.355283,
		-0.395970, 0.670718, 0.627172,
		-0.109060, -0.712515, 0.693130,
		65.074928, 55.110214, 57.585678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.666710, 56.058716, 57.307259>,  <65.151268, 55.608974, 57.100487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.666710, 56.058716, 57.307259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.566467, 56.095455, 56.921768>,  <65.506325, 56.117496, 56.690475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.566467, 56.095455, 56.921768>,  <65.666710, 56.058716, 57.307259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.566467, 56.095455, 56.921768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629072, 0.741220, 0.234225,
		0.735843, 0.664949, -0.127976,
		-0.250606, 0.091846, -0.963722,
		65.491287, 56.123009, 56.632652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.556129, 56.745327, 57.180248>,  <65.666710, 56.058716, 57.307259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.556129, 56.745327, 57.180248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.341881, 56.525352, 56.923912>,  <65.213333, 56.393368, 56.770111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.341881, 56.525352, 56.923912>,  <65.556129, 56.745327, 57.180248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.341881, 56.525352, 56.923912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820528, 0.518311, 0.241011,
		0.199614, 0.654919, -0.728859,
		-0.535619, -0.549941, -0.640842,
		65.181198, 56.360371, 56.731659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.330299, 56.788910, 57.829002>,  <65.556129, 56.745327, 57.180248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.330299, 56.788910, 57.829002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.666199, 56.982887, 57.926704>,  <65.867737, 57.099274, 57.985325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.666199, 56.982887, 57.926704>,  <65.330299, 56.788910, 57.829002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.666199, 56.982887, 57.926704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286094, 0.777487, -0.560057,
		-0.461502, 0.400425, 0.791629,
		0.839742, 0.484947, 0.244253,
		65.918121, 57.128372, 57.999981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.667099, 56.717422, 58.553082>,  <65.330299, 56.788910, 57.829002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.667099, 56.717422, 58.553082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.675102, 56.319489, 58.592880>,  <65.679901, 56.080727, 58.616760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.675102, 56.319489, 58.592880>,  <65.667099, 56.717422, 58.553082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.675102, 56.319489, 58.592880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684192, -0.058948, -0.726916,
		0.729028, 0.082616, 0.679480,
		0.020001, -0.994836, 0.099500,
		65.681099, 56.021038, 58.622730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.034889, 56.772560, 59.220123>,  <65.667099, 56.717422, 58.553082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.034889, 56.772560, 59.220123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.125404, 56.400928, 59.103088>,  <66.179710, 56.177952, 59.032867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.125404, 56.400928, 59.103088>,  <66.034889, 56.772560, 59.220123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.125404, 56.400928, 59.103088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746198, 0.358422, -0.561002,
		0.626085, -0.091382, 0.774382,
		0.226290, -0.929076, -0.292592,
		66.193291, 56.122204, 59.015312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.757484, 56.753540, 59.286972>,  <66.034889, 56.772560, 59.220123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.757484, 56.753540, 59.286972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.634468, 56.490166, 59.012199>,  <66.560654, 56.332142, 58.847336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.634468, 56.490166, 59.012199>,  <66.757484, 56.753540, 59.286972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.634468, 56.490166, 59.012199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716684, 0.314591, -0.622412,
		0.625922, -0.683732, 0.375142,
		-0.307547, -0.658440, -0.686929,
		66.542206, 56.292633, 58.806122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.856918, 56.877739, 59.995575>,  <66.757484, 56.753540, 59.286972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.856918, 56.877739, 59.995575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.232216, 56.739723, 60.005653>,  <67.457397, 56.656914, 60.011700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.232216, 56.739723, 60.005653>,  <66.856918, 56.877739, 59.995575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.232216, 56.739723, 60.005653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095571, 0.328512, 0.939652,
		-0.332491, -0.879222, 0.341202,
		0.938251, -0.345035, 0.025199,
		67.513695, 56.636211, 60.013214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.877335, 56.533550, 60.731865>,  <66.856918, 56.877739, 59.995575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.877335, 56.533550, 60.731865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.234009, 56.622616, 60.574219>,  <67.448013, 56.676056, 60.479630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.234009, 56.622616, 60.574219>,  <66.877335, 56.533550, 60.731865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.234009, 56.622616, 60.574219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314683, 0.320952, 0.893289,
		0.325423, -0.920542, 0.216105,
		0.891670, 0.222692, -0.394124,
		67.501511, 56.689415, 60.455982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.410057, 56.394894, 61.275040>,  <66.877335, 56.533550, 60.731865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.410057, 56.394894, 61.275040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.577675, 56.713383, 61.100487>,  <67.678246, 56.904476, 60.995754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.577675, 56.713383, 61.100487>,  <67.410057, 56.394894, 61.275040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.577675, 56.713383, 61.100487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490286, 0.206092, 0.846844,
		0.764212, -0.568819, -0.304015,
		0.419046, 0.796223, -0.436382,
		67.703392, 56.952251, 60.969574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.087143, 56.551239, 61.567497>,  <67.410057, 56.394894, 61.275040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.087143, 56.551239, 61.567497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.005280, 56.899223, 61.388039>,  <67.956161, 57.108013, 61.280361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.005280, 56.899223, 61.388039>,  <68.087143, 56.551239, 61.567497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.005280, 56.899223, 61.388039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422414, 0.491973, 0.761268,
		0.882994, -0.033711, -0.468172,
		-0.204665, 0.869958, -0.448649,
		67.943878, 57.160210, 61.253445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.696198, 56.989761, 61.454269>,  <68.087143, 56.551239, 61.567497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.696198, 56.989761, 61.454269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.369263, 57.209789, 61.522835>,  <68.173103, 57.341805, 61.563972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.369263, 57.209789, 61.522835>,  <68.696198, 56.989761, 61.454269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.369263, 57.209789, 61.522835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460282, 0.444443, 0.768512,
		0.346553, 0.707031, -0.616448,
		-0.817338, 0.550070, 0.171411,
		68.124062, 57.374809, 61.574257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.951561, 57.712032, 61.434723>,  <68.696198, 56.989761, 61.454269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.951561, 57.712032, 61.434723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.628052, 57.640057, 61.658691>,  <68.433945, 57.596870, 61.793072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.628052, 57.640057, 61.658691>,  <68.951561, 57.712032, 61.434723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.628052, 57.640057, 61.658691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370446, 0.583591, 0.722628,
		-0.456794, 0.791861, -0.405333,
		-0.808770, -0.179938, 0.559923,
		68.385422, 57.586075, 61.826668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.229408, 58.374729, 61.686638>,  <68.951561, 57.712032, 61.434723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.229408, 58.374729, 61.686638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.623245, 58.338768, 61.746628>,  <69.859550, 58.317192, 61.782619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.623245, 58.338768, 61.746628>,  <69.229408, 58.374729, 61.686638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.623245, 58.338768, 61.746628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135812, -0.147024, -0.979765,
		0.110135, 0.985039, -0.132549,
		0.984594, -0.089905, 0.149973,
		69.918625, 58.311798, 61.791618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.695869, 58.864410, 61.293255>,  <69.229408, 58.374729, 61.686638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.695869, 58.864410, 61.293255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.875824, 58.512486, 61.354630>,  <69.983795, 58.301331, 61.391457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.875824, 58.512486, 61.354630>,  <69.695869, 58.864410, 61.293255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.875824, 58.512486, 61.354630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083828, -0.212648, -0.973526,
		0.889145, 0.425109, -0.169419,
		0.449882, -0.879808, 0.153439,
		70.010788, 58.248543, 61.400661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.342094, 58.770061, 60.812298>,  <69.695869, 58.864410, 61.293255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.342094, 58.770061, 60.812298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.191498, 58.421326, 60.937614>,  <70.101135, 58.212086, 61.012802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.191498, 58.421326, 60.937614>,  <70.342094, 58.770061, 60.812298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.191498, 58.421326, 60.937614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054950, -0.358593, -0.931875,
		0.924787, -0.333633, 0.182916,
		-0.376497, -0.871837, 0.313289,
		70.078552, 58.159775, 61.031601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.887642, 58.275589, 60.563622>,  <70.342094, 58.770061, 60.812298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.887642, 58.275589, 60.563622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.507805, 58.166687, 60.625786>,  <70.279900, 58.101345, 60.663082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.507805, 58.166687, 60.625786>,  <70.887642, 58.275589, 60.563622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.507805, 58.166687, 60.625786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067170, -0.307524, -0.949167,
		0.306206, -0.911760, 0.273735,
		-0.949593, -0.272254, 0.155409,
		70.222931, 58.085011, 60.672409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.728119, 57.433037, 60.486725>,  <70.887642, 58.275589, 60.563622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.728119, 57.433037, 60.486725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.398933, 57.647232, 60.410866>,  <70.201424, 57.775749, 60.365349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.398933, 57.647232, 60.410866>,  <70.728119, 57.433037, 60.486725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.398933, 57.647232, 60.410866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254276, -0.645764, -0.719953,
		-0.507994, -0.544280, 0.667609,
		-0.822973, 0.535489, -0.189647,
		70.152039, 57.807880, 60.353970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.429359, 57.158936, 60.495972>,  <70.728119, 57.433037, 60.486725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.429359, 57.158936, 60.495972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.340179, 57.006035, 60.137268>,  <71.286674, 56.914295, 59.922047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.340179, 57.006035, 60.137268>,  <71.429359, 57.158936, 60.495972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.340179, 57.006035, 60.137268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061008, 0.923581, -0.378518,
		0.972920, -0.029680, -0.229231,
		-0.222948, -0.382252, -0.896759,
		71.273293, 56.891357, 59.868240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.939819, 57.310749, 60.033504>,  <71.429359, 57.158936, 60.495972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.939819, 57.310749, 60.033504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.566391, 57.303417, 59.890343>,  <71.342331, 57.299019, 59.804443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.566391, 57.303417, 59.890343>,  <71.939819, 57.310749, 60.033504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.566391, 57.303417, 59.890343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073429, 0.967720, -0.241093,
		0.350773, -0.251360, -0.902095,
		-0.933577, -0.018329, -0.357908,
		71.286316, 57.297920, 59.782970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.283630, 57.672680, 60.636112>,  <71.939819, 57.310749, 60.033504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.283630, 57.672680, 60.636112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.565918, 57.905876, 60.475075>,  <72.735291, 58.045795, 60.378452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.565918, 57.905876, 60.475075>,  <72.283630, 57.672680, 60.636112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.565918, 57.905876, 60.475075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525283, 0.049226, -0.849503,
		-0.475433, 0.810987, 0.340974,
		0.705720, 0.582990, -0.402594,
		72.777634, 58.080772, 60.354298>
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
