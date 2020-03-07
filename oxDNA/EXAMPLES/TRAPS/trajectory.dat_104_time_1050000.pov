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
	<36.136143, 53.006386, 49.827114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.234764, 52.620056, 49.795128>,  <36.293938, 52.388260, 49.775936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.234764, 52.620056, 49.795128>,  <36.136143, 53.006386, 49.827114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234764, 52.620056, 49.795128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736023, 0.132929, 0.663777,
		-0.630463, -0.222510, 0.743643,
		0.246549, -0.965825, -0.079966,
		36.308727, 52.330307, 49.771137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403419, 52.715378, 50.537453>,  <36.136143, 53.006386, 49.827114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403419, 52.715378, 50.537453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563286, 52.484024, 50.252991>,  <36.659206, 52.345211, 50.082314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563286, 52.484024, 50.252991>,  <36.403419, 52.715378, 50.537453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563286, 52.484024, 50.252991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880128, 0.025280, 0.474063,
		-0.256214, -0.815371, 0.519157,
		0.399662, -0.578386, -0.711154,
		36.683186, 52.310509, 50.039646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907318, 52.123898, 50.681297>,  <36.403419, 52.715378, 50.537453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.907318, 52.123898, 50.681297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.028912, 52.249046, 50.321362>,  <37.101868, 52.324135, 50.105400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.028912, 52.249046, 50.321362>,  <36.907318, 52.123898, 50.681297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.028912, 52.249046, 50.321362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865459, 0.304122, 0.398109,
		0.398217, -0.899789, -0.178330,
		0.303980, 0.312872, -0.899838,
		37.120106, 52.342907, 50.051411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482246, 51.754532, 50.453735>,  <36.907318, 52.123898, 50.681297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.482246, 51.754532, 50.453735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.504997, 52.134552, 50.330982>,  <37.518646, 52.362564, 50.257332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.504997, 52.134552, 50.330982>,  <37.482246, 51.754532, 50.453735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504997, 52.134552, 50.330982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933604, 0.058307, 0.353531,
		0.353764, -0.306612, -0.883652,
		0.056873, 0.950047, -0.306881,
		37.522060, 52.419567, 50.238918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116169, 51.803150, 49.907940>,  <37.482246, 51.754532, 50.453735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116169, 51.803150, 49.907940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.018841, 52.140305, 50.099915>,  <37.960445, 52.342598, 50.215099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.018841, 52.140305, 50.099915>,  <38.116169, 51.803150, 49.907940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.018841, 52.140305, 50.099915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937701, 0.077893, 0.338600,
		0.248016, 0.532429, -0.809325,
		-0.243321, 0.842883, 0.479940,
		37.945843, 52.393169, 50.243896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536972, 52.487514, 49.733246>,  <38.116169, 51.803150, 49.907940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.536972, 52.487514, 49.733246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.389141, 52.520546, 50.103455>,  <38.300442, 52.540363, 50.325581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.389141, 52.520546, 50.103455>,  <38.536972, 52.487514, 49.733246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389141, 52.520546, 50.103455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929057, 0.050328, 0.366497,
		-0.016316, 0.995313, -0.095317,
		-0.369576, 0.082575, 0.925524,
		38.278267, 52.545319, 50.381111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950806, 53.017628, 50.003101>,  <38.536972, 52.487514, 49.733246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950806, 53.017628, 50.003101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.795727, 52.768669, 50.275074>,  <38.702679, 52.619293, 50.438259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.795727, 52.768669, 50.275074>,  <38.950806, 53.017628, 50.003101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.795727, 52.768669, 50.275074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920978, -0.292443, 0.257444,
		0.038610, 0.726016, 0.686593,
		-0.387697, -0.622397, 0.679936,
		38.679417, 52.581951, 50.479053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056553, 53.217419, 50.680767>,  <38.950806, 53.017628, 50.003101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.056553, 53.217419, 50.680767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.027882, 52.818756, 50.696480>,  <39.010681, 52.579559, 50.705910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.027882, 52.818756, 50.696480>,  <39.056553, 53.217419, 50.680767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.027882, 52.818756, 50.696480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907363, -0.048796, 0.417506,
		-0.414192, 0.065569, 0.907825,
		-0.071674, -0.996654, 0.039284,
		39.006378, 52.519760, 50.708263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.981098, 52.866165, 51.415005>,  <39.056553, 53.217419, 50.680767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.981098, 52.866165, 51.415005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.189575, 52.668186, 51.136898>,  <39.314659, 52.549400, 50.970036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.189575, 52.668186, 51.136898>,  <38.981098, 52.866165, 51.415005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.189575, 52.668186, 51.136898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793425, -0.019099, 0.608368,
		-0.314387, -0.868715, 0.382747,
		0.521188, -0.494944, -0.695265,
		39.345932, 52.519703, 50.928318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536095, 52.376129, 51.727898>,  <38.981098, 52.866165, 51.415005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.536095, 52.376129, 51.727898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.698280, 52.533466, 51.397835>,  <39.795589, 52.627869, 51.199799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.698280, 52.533466, 51.397835>,  <39.536095, 52.376129, 51.727898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.698280, 52.533466, 51.397835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893824, 0.018526, 0.448035,
		0.191517, -0.919206, -0.344066,
		0.405462, 0.393341, -0.825156,
		39.819920, 52.651470, 51.150288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.161953, 51.979645, 51.521435>,  <39.536095, 52.376129, 51.727898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.161953, 51.979645, 51.521435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.216633, 52.328461, 51.333450>,  <40.249443, 52.537750, 51.220661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.216633, 52.328461, 51.333450>,  <40.161953, 51.979645, 51.521435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.216633, 52.328461, 51.333450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957320, 0.005661, 0.288975,
		0.254658, -0.489404, -0.834046,
		0.136704, 0.872038, -0.469958,
		40.257645, 52.590073, 51.192463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.686741, 51.854595, 51.092197>,  <40.161953, 51.979645, 51.521435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.686741, 51.854595, 51.092197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.661472, 52.233681, 51.217319>,  <40.646309, 52.461132, 51.292393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.661472, 52.233681, 51.217319>,  <40.686741, 51.854595, 51.092197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.661472, 52.233681, 51.217319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956136, -0.032356, 0.291131,
		0.286030, 0.317480, -0.904098,
		-0.063176, 0.947713, 0.312809,
		40.642521, 52.517994, 51.311161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.373585, 51.574268, 50.695072>,  <40.686741, 51.854595, 51.092197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.373585, 51.574268, 50.695072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.510471, 51.198421, 50.694817>,  <41.592602, 50.972912, 50.694664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.510471, 51.198421, 50.694817>,  <41.373585, 51.574268, 50.695072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.510471, 51.198421, 50.694817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825156, 0.300200, 0.478537,
		-0.449451, -0.164292, 0.878067,
		0.342216, -0.939621, -0.000641,
		41.613136, 50.916534, 50.694626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.811638, 51.507240, 51.256035>,  <41.373585, 51.574268, 50.695072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.811638, 51.507240, 51.256035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.921089, 51.173637, 51.064384>,  <41.986759, 50.973476, 50.949394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.921089, 51.173637, 51.064384>,  <41.811638, 51.507240, 51.256035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.921089, 51.173637, 51.064384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948436, 0.151108, 0.278630,
		-0.159980, -0.530659, 0.832351,
		0.273633, -0.834007, -0.479122,
		42.003178, 50.923435, 50.920647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.413776, 51.281738, 51.652870>,  <41.811638, 51.507240, 51.256035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.413776, 51.281738, 51.652870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.432777, 51.117233, 51.288757>,  <42.444180, 51.018532, 51.070290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.432777, 51.117233, 51.288757>,  <42.413776, 51.281738, 51.652870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.432777, 51.117233, 51.288757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990382, 0.137953, -0.010645,
		0.129953, -0.901017, 0.413860,
		0.047502, -0.411263, -0.910278,
		42.447029, 50.993855, 51.015675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.847763, 50.567089, 51.613297>,  <42.413776, 51.281738, 51.652870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.847763, 50.567089, 51.613297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.864365, 50.829826, 51.312141>,  <42.874325, 50.987469, 51.131451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.864365, 50.829826, 51.312141>,  <42.847763, 50.567089, 51.613297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.864365, 50.829826, 51.312141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995737, 0.034928, 0.085366,
		0.082369, -0.753218, -0.652594,
		0.041506, 0.656843, -0.752884,
		42.876816, 51.026878, 51.086277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.410423, 50.325726, 51.103390>,  <42.847763, 50.567089, 51.613297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.410423, 50.325726, 51.103390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.336514, 50.718552, 51.088356>,  <43.292168, 50.954247, 51.079338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.336514, 50.718552, 51.088356>,  <43.410423, 50.325726, 51.103390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.336514, 50.718552, 51.088356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981829, 0.182777, -0.051028,
		-0.043244, -0.046326, -0.997990,
		-0.184774, 0.982062, -0.037581,
		43.281082, 51.013172, 51.077084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.716515, 50.639835, 50.482925>,  <43.410423, 50.325726, 51.103390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.716515, 50.639835, 50.482925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.665695, 50.913246, 50.770439>,  <43.635204, 51.077293, 50.942947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.665695, 50.913246, 50.770439>,  <43.716515, 50.639835, 50.482925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.665695, 50.913246, 50.770439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986147, 0.164955, 0.017445,
		-0.106643, 0.711046, -0.695011,
		-0.127050, 0.683523, 0.718787,
		43.627579, 51.118301, 50.986076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.900414, 51.375141, 50.250713>,  <43.716515, 50.639835, 50.482925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.900414, 51.375141, 50.250713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.991398, 51.298168, 50.632545>,  <44.045990, 51.251984, 50.861645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.991398, 51.298168, 50.632545>,  <43.900414, 51.375141, 50.250713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.991398, 51.298168, 50.632545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947491, 0.270003, -0.171346,
		-0.224768, 0.943435, 0.243742,
		0.227465, -0.192430, 0.954584,
		44.059639, 51.240440, 50.918922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.363560, 51.914112, 50.459343>,  <43.900414, 51.375141, 50.250713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.363560, 51.914112, 50.459343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.416687, 51.637234, 50.743095>,  <44.448563, 51.471107, 50.913345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.416687, 51.637234, 50.743095>,  <44.363560, 51.914112, 50.459343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.416687, 51.637234, 50.743095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958998, 0.270545, 0.084432,
		-0.250363, 0.669081, 0.699749,
		0.132822, -0.692196, 0.709382,
		44.456535, 51.429573, 50.955910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.674454, 52.182480, 51.059814>,  <44.363560, 51.914112, 50.459343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.674454, 52.182480, 51.059814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.819687, 51.819241, 50.976353>,  <44.906826, 51.601299, 50.926277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.819687, 51.819241, 50.976353>,  <44.674454, 52.182480, 51.059814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.819687, 51.819241, 50.976353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930718, 0.342884, 0.127262,
		-0.044022, -0.240404, 0.969674,
		0.363080, -0.908095, -0.208654,
		44.928612, 51.546814, 50.913757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.230263, 51.934120, 51.584084>,  <44.674454, 52.182480, 51.059814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.230263, 51.934120, 51.584084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.276936, 51.776852, 51.219269>,  <45.304939, 51.682491, 51.000381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.276936, 51.776852, 51.219269>,  <45.230263, 51.934120, 51.584084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.276936, 51.776852, 51.219269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952625, 0.304008, -0.009179,
		0.280874, -0.867754, 0.410016,
		0.116683, -0.393170, -0.912032,
		45.311939, 51.658901, 50.945660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.820927, 51.530254, 51.608330>,  <45.230263, 51.934120, 51.584084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.820927, 51.530254, 51.608330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.773735, 51.647968, 51.228966>,  <45.745419, 51.718597, 51.001347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.773735, 51.647968, 51.228966>,  <45.820927, 51.530254, 51.608330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.773735, 51.647968, 51.228966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871166, 0.489068, 0.043387,
		0.476604, -0.821101, -0.314073,
		-0.117978, 0.294288, -0.948407,
		45.738342, 51.736256, 50.944443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.381680, 51.996208, 51.892273>,  <45.820927, 51.530254, 51.608330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.381680, 51.996208, 51.892273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.597538, 51.888626, 52.211384>,  <46.727055, 51.824078, 52.402851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.597538, 51.888626, 52.211384>,  <46.381680, 51.996208, 51.892273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.597538, 51.888626, 52.211384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158765, 0.963107, 0.217300,
		-0.826784, 0.009393, 0.562440,
		0.539649, -0.268956, 0.797773,
		46.759434, 51.807938, 52.450714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.236938, 52.292713, 52.520718>,  <46.381680, 51.996208, 51.892273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.236938, 52.292713, 52.520718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.632076, 52.231953, 52.533871>,  <46.869160, 52.195496, 52.541763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.632076, 52.231953, 52.533871>,  <46.236938, 52.292713, 52.520718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.632076, 52.231953, 52.533871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147381, 0.982702, 0.112137,
		-0.049351, -0.105928, 0.993148,
		0.987848, -0.151905, 0.032885,
		46.928432, 52.186382, 52.543736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.381054, 52.647289, 53.058067>,  <46.236938, 52.292713, 52.520718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.381054, 52.647289, 53.058067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.712784, 52.636379, 52.834831>,  <46.911823, 52.629833, 52.700890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.712784, 52.636379, 52.834831>,  <46.381054, 52.647289, 53.058067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.712784, 52.636379, 52.834831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061383, 0.997210, 0.042473,
		0.555378, -0.069482, 0.828690,
		0.829329, -0.027279, -0.558094,
		46.961582, 52.628197, 52.667404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.622845, 53.221413, 53.207722>,  <46.381054, 52.647289, 53.058067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.622845, 53.221413, 53.207722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.925526, 53.145355, 52.957523>,  <47.107136, 53.099720, 52.807404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.925526, 53.145355, 52.957523>,  <46.622845, 53.221413, 53.207722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.925526, 53.145355, 52.957523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462910, 0.831449, 0.307257,
		0.461646, -0.522051, 0.717180,
		0.756702, -0.190146, -0.625498,
		47.152534, 53.088310, 52.769875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.235374, 53.260979, 53.583942>,  <46.622845, 53.221413, 53.207722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.235374, 53.260979, 53.583942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.285297, 53.354263, 53.198189>,  <47.315250, 53.410236, 52.966736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.285297, 53.354263, 53.198189>,  <47.235374, 53.260979, 53.583942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.285297, 53.354263, 53.198189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482316, 0.835150, 0.264379,
		0.867062, -0.498132, -0.008254,
		0.124802, 0.233214, -0.964384,
		47.322739, 53.424229, 52.908875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.911781, 53.259949, 53.320499>,  <47.235374, 53.260979, 53.583942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.911781, 53.259949, 53.320499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.679871, 53.549141, 53.170219>,  <47.540722, 53.722656, 53.080051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.679871, 53.549141, 53.170219>,  <47.911781, 53.259949, 53.320499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.679871, 53.549141, 53.170219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638723, 0.689583, 0.341331,
		0.505854, -0.042072, -0.861593,
		-0.579780, 0.722983, -0.375700,
		47.505936, 53.766037, 53.057510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.329987, 53.759300, 53.284843>,  <47.911781, 53.259949, 53.320499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.329987, 53.759300, 53.284843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.983356, 53.956566, 53.254288>,  <47.775379, 54.074924, 53.235954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.983356, 53.956566, 53.254288>,  <48.329987, 53.759300, 53.284843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.983356, 53.956566, 53.254288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432233, 0.818225, 0.379054,
		0.249442, 0.295460, -0.922216,
		-0.866576, 0.493164, -0.076392,
		47.723385, 54.104515, 53.231369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.427620, 54.288929, 52.861515>,  <48.329987, 53.759300, 53.284843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.427620, 54.288929, 52.861515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.145458, 54.357468, 53.136627>,  <47.976162, 54.398590, 53.301697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.145458, 54.357468, 53.136627>,  <48.427620, 54.288929, 52.861515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.145458, 54.357468, 53.136627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496064, 0.812439, 0.306372,
		-0.506285, 0.557300, -0.658097,
		-0.705405, 0.171346, 0.687782,
		47.933838, 54.408871, 53.342960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.121059, 55.088772, 52.966194>,  <48.427620, 54.288929, 52.861515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.121059, 55.088772, 52.966194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.151924, 54.842976, 53.280251>,  <48.170444, 54.695496, 53.468685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.151924, 54.842976, 53.280251>,  <48.121059, 55.088772, 52.966194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.151924, 54.842976, 53.280251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662066, 0.620380, 0.420473,
		-0.745462, 0.487368, 0.454707,
		0.077165, -0.614493, 0.785140,
		48.175076, 54.658627, 53.515793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.565578, 55.402767, 53.331306>,  <48.121059, 55.088772, 52.966194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.565578, 55.402767, 53.331306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.516842, 55.080601, 53.563328>,  <48.487598, 54.887302, 53.702541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.516842, 55.080601, 53.563328>,  <48.565578, 55.402767, 53.331306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.516842, 55.080601, 53.563328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644396, 0.380302, 0.663418,
		-0.754922, 0.454616, 0.472669,
		-0.121844, -0.805416, 0.580051,
		48.480289, 54.838978, 53.737343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.190586, 55.365005, 53.965103>,  <48.565578, 55.402767, 53.331306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.190586, 55.365005, 53.965103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.522224, 55.142006, 53.948193>,  <48.721207, 55.008205, 53.938046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.522224, 55.142006, 53.948193>,  <48.190586, 55.365005, 53.965103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.522224, 55.142006, 53.948193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492458, 0.692378, 0.527349,
		-0.264727, -0.458044, 0.848596,
		0.829099, -0.557501, -0.042276,
		48.770954, 54.974754, 53.935509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.559502, 55.466183, 54.599602>,  <48.190586, 55.365005, 53.965103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.559502, 55.466183, 54.599602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.801262, 55.350765, 54.302567>,  <48.946320, 55.281513, 54.124344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.801262, 55.350765, 54.302567>,  <48.559502, 55.466183, 54.599602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.801262, 55.350765, 54.302567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668022, 0.691452, 0.275030,
		0.434106, -0.662295, 0.610670,
		0.604400, -0.288549, -0.742590,
		48.982582, 55.264202, 54.079788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.186028, 55.306644, 54.934242>,  <48.559502, 55.466183, 54.599602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.186028, 55.306644, 54.934242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.228107, 55.402763, 54.548248>,  <49.253357, 55.460434, 54.316654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.228107, 55.402763, 54.548248>,  <49.186028, 55.306644, 54.934242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.228107, 55.402763, 54.548248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631699, 0.733295, 0.251466,
		0.768043, -0.636033, -0.074651,
		0.105200, 0.240294, -0.964983,
		49.259666, 55.474850, 54.258755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.911026, 55.301548, 54.762951>,  <49.186028, 55.306644, 54.934242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.911026, 55.301548, 54.762951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.717213, 55.527981, 54.496185>,  <49.600925, 55.663841, 54.336128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.717213, 55.527981, 54.496185>,  <49.911026, 55.301548, 54.762951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.717213, 55.527981, 54.496185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739257, 0.672574, 0.033794,
		0.467678, -0.476645, -0.744370,
		-0.484536, 0.566086, -0.666912,
		49.571854, 55.697807, 54.296112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.821213, 55.766273, 55.399460>,  <49.911026, 55.301548, 54.762951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.821213, 55.766273, 55.399460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.069736, 55.465622, 55.488029>,  <50.218853, 55.285233, 55.541172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.069736, 55.465622, 55.488029>,  <49.821213, 55.766273, 55.399460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.069736, 55.465622, 55.488029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116144, 0.367811, 0.922619,
		-0.774907, -0.547517, 0.315823,
		0.621313, -0.751625, 0.221429,
		50.256130, 55.240135, 55.554459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.749210, 55.287674, 56.004257>,  <49.821213, 55.766273, 55.399460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.749210, 55.287674, 56.004257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.143826, 55.323563, 55.949554>,  <50.380592, 55.345097, 55.916733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.143826, 55.323563, 55.949554>,  <49.749210, 55.287674, 56.004257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.143826, 55.323563, 55.949554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105318, 0.291238, 0.950836,
		0.125136, -0.952434, 0.277867,
		0.986534, 0.089719, -0.136753,
		50.439785, 55.350479, 55.908527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.212242, 54.849167, 56.347305>,  <49.749210, 55.287674, 56.004257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.212242, 54.849167, 56.347305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.369110, 55.215130, 56.309044>,  <50.463230, 55.434708, 56.286087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.369110, 55.215130, 56.309044>,  <50.212242, 54.849167, 56.347305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.369110, 55.215130, 56.309044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165828, 0.031970, 0.985636,
		0.904822, -0.402400, -0.139179,
		0.392170, 0.914906, -0.095657,
		50.486763, 55.489601, 56.280346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.691975, 54.803257, 56.834084>,  <50.212242, 54.849167, 56.347305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.691975, 54.803257, 56.834084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.680248, 55.190128, 56.733124>,  <50.673210, 55.422253, 56.672546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.680248, 55.190128, 56.733124>,  <50.691975, 54.803257, 56.834084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.680248, 55.190128, 56.733124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238193, 0.251993, 0.937957,
		0.970775, -0.032621, -0.237763,
		-0.029318, 0.967179, -0.252398,
		50.671452, 55.480282, 56.657406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.304359, 55.113506, 57.016132>,  <50.691975, 54.803257, 56.834084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.304359, 55.113506, 57.016132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.058537, 55.428738, 57.001930>,  <50.911045, 55.617874, 56.993408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.058537, 55.428738, 57.001930>,  <51.304359, 55.113506, 57.016132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.058537, 55.428738, 57.001930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409371, 0.357065, 0.839595,
		0.674343, 0.501439, -0.542051,
		-0.614553, 0.788075, -0.035510,
		50.874172, 55.665161, 56.991276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.718964, 55.834888, 56.990398>,  <51.304359, 55.113506, 57.016132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.718964, 55.834888, 56.990398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.360905, 55.856976, 57.167336>,  <51.146069, 55.870228, 57.273499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.360905, 55.856976, 57.167336>,  <51.718964, 55.834888, 56.990398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.360905, 55.856976, 57.167336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430613, 0.363695, 0.826014,
		-0.115268, 0.929880, -0.349336,
		-0.895146, 0.055216, 0.442341,
		51.092361, 55.873539, 57.300037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.331421, 55.690353, 56.816826>,  <51.718964, 55.834888, 56.990398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.331421, 55.690353, 56.816826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.706146, 55.768311, 56.933037>,  <52.930981, 55.815083, 57.002762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.706146, 55.768311, 56.933037>,  <52.331421, 55.690353, 56.816826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.706146, 55.768311, 56.933037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275449, -0.922880, -0.269112,
		0.215676, 0.332132, -0.918244,
		0.936809, 0.194889, 0.290529,
		52.987190, 55.826778, 57.020195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.710979, 55.331974, 56.196804>,  <52.331421, 55.690353, 56.816826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.710979, 55.331974, 56.196804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.935642, 55.358242, 56.526711>,  <53.070438, 55.374004, 56.724655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.935642, 55.358242, 56.526711>,  <52.710979, 55.331974, 56.196804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.935642, 55.358242, 56.526711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431430, -0.873838, -0.224221,
		0.705984, 0.481761, -0.519126,
		0.561653, 0.065670, 0.824762,
		53.104137, 55.377945, 56.774139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.283440, 55.059971, 56.090710>,  <52.710979, 55.331974, 56.196804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.283440, 55.059971, 56.090710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.352535, 55.058807, 56.484695>,  <53.393993, 55.058109, 56.721088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.352535, 55.058807, 56.484695>,  <53.283440, 55.059971, 56.090710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.352535, 55.058807, 56.484695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486206, -0.869418, -0.087837,
		0.856601, 0.494068, -0.148765,
		0.172736, -0.002911, 0.984964,
		53.404358, 55.057934, 56.780186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.790791, 54.473183, 55.764111>,  <53.283440, 55.059971, 56.090710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.790791, 54.473183, 55.764111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.703976, 54.082748, 55.759270>,  <53.651886, 53.848488, 55.756367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.703976, 54.082748, 55.759270>,  <53.790791, 54.473183, 55.764111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.703976, 54.082748, 55.759270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798969, 0.184748, -0.572291,
		0.560842, -0.114541, -0.819961,
		-0.217037, -0.976088, -0.012100,
		53.638866, 53.789921, 55.755638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.160717, 53.823040, 55.896935>,  <53.790791, 54.473183, 55.764111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.160717, 53.823040, 55.896935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.026459, 53.643204, 56.228043>,  <53.945904, 53.535301, 56.426708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.026459, 53.643204, 56.228043>,  <54.160717, 53.823040, 55.896935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.026459, 53.643204, 56.228043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318508, 0.772826, 0.548902,
		-0.886505, 0.447890, -0.116200,
		-0.335650, -0.449594, 0.827771,
		53.925762, 53.508324, 56.476376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.368206, 54.320049, 56.397362>,  <54.160717, 53.823040, 55.896935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.368206, 54.320049, 56.397362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.159866, 54.041016, 56.594170>,  <54.034863, 53.873596, 56.712254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.159866, 54.041016, 56.594170>,  <54.368206, 54.320049, 56.397362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.159866, 54.041016, 56.594170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034348, 0.558782, 0.828603,
		-0.852956, 0.448479, -0.267082,
		-0.520852, -0.697588, 0.492020,
		54.003613, 53.831738, 56.741776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.508598, 54.960098, 56.236732>,  <54.368206, 54.320049, 56.397362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.508598, 54.960098, 56.236732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.390182, 55.095631, 55.879509>,  <54.319134, 55.176949, 55.665176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.390182, 55.095631, 55.879509>,  <54.508598, 54.960098, 56.236732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.390182, 55.095631, 55.879509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912102, -0.177329, -0.369627,
		-0.283607, -0.923985, -0.256554,
		-0.296035, 0.338832, -0.893060,
		54.301373, 55.197281, 55.611591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.980988, 54.582657, 55.759441>,  <54.508598, 54.960098, 56.236732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.980988, 54.582657, 55.759441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.841843, 54.894531, 55.551178>,  <54.758358, 55.081657, 55.426220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.841843, 54.894531, 55.551178>,  <54.980988, 54.582657, 55.759441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.841843, 54.894531, 55.551178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880090, 0.080140, -0.467996,
		-0.323165, -0.621020, -0.714072,
		-0.347860, 0.779687, -0.520655,
		54.737484, 55.128437, 55.394981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.994617, 54.388451, 55.006012>,  <54.980988, 54.582657, 55.759441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.994617, 54.388451, 55.006012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.016449, 54.777428, 55.096672>,  <55.029549, 55.010815, 55.151066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.016449, 54.777428, 55.096672>,  <54.994617, 54.388451, 55.006012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.016449, 54.777428, 55.096672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821559, 0.085271, -0.563710,
		-0.567505, 0.216973, -0.794268,
		0.054582, 0.972446, 0.226648,
		55.032822, 55.069160, 55.164665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.037388, 54.829090, 54.422241>,  <54.994617, 54.388451, 55.006012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.037388, 54.829090, 54.422241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.231071, 54.965065, 54.744728>,  <55.347282, 55.046650, 54.938221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.231071, 54.965065, 54.744728>,  <55.037388, 54.829090, 54.422241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.231071, 54.965065, 54.744728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851361, 0.029474, -0.523752,
		-0.201806, 0.939985, -0.275139,
		0.484209, 0.339939, 0.806215,
		55.376335, 55.067047, 54.986591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.465797, 55.494228, 54.394394>,  <55.037388, 54.829090, 54.422241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.465797, 55.494228, 54.394394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.635002, 55.288414, 54.692741>,  <55.736526, 55.164925, 54.871750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.635002, 55.288414, 54.692741>,  <55.465797, 55.494228, 54.394394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.635002, 55.288414, 54.692741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881598, 0.043484, -0.469994,
		0.209395, 0.856366, 0.472008,
		0.423012, -0.514536, 0.745865,
		55.761906, 55.134052, 54.916500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.245403, 55.749340, 54.455036>,  <55.465797, 55.494228, 54.394394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.245403, 55.749340, 54.455036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.159019, 55.382469, 54.588985>,  <56.107189, 55.162346, 54.669353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.159019, 55.382469, 54.588985>,  <56.245403, 55.749340, 54.455036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.159019, 55.382469, 54.588985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863177, -0.339646, -0.373587,
		0.456384, 0.208371, 0.865041,
		-0.215963, -0.917182, 0.334869,
		56.094231, 55.107315, 54.689445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.957130, 55.336292, 54.415951>,  <56.245403, 55.749340, 54.455036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.957130, 55.336292, 54.415951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.724899, 55.066093, 54.597778>,  <56.585560, 54.903973, 54.706875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.724899, 55.066093, 54.597778>,  <56.957130, 55.336292, 54.415951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.724899, 55.066093, 54.597778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811910, -0.522205, 0.260968,
		0.061097, 0.520583, 0.851622,
		-0.580577, -0.675496, 0.454572,
		56.550728, 54.863445, 54.734150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.080490, 55.362202, 55.013691>,  <56.957130, 55.336292, 54.415951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.080490, 55.362202, 55.013691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.950233, 54.989670, 54.948471>,  <56.872078, 54.766151, 54.909340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.950233, 54.989670, 54.948471>,  <57.080490, 55.362202, 55.013691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.950233, 54.989670, 54.948471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903898, -0.357240, 0.235263,
		-0.277354, -0.070767, 0.958158,
		-0.325643, -0.931328, -0.163048,
		56.852539, 54.710270, 54.899555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.780361, 55.056171, 55.238712>,  <57.080490, 55.362202, 55.013691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.780361, 55.056171, 55.238712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.972435, 55.349686, 55.430954>,  <58.087677, 55.525795, 55.546299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.972435, 55.349686, 55.430954>,  <57.780361, 55.056171, 55.238712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.972435, 55.349686, 55.430954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813048, 0.166695, 0.557822,
		0.329210, -0.658609, 0.676650,
		0.480181, 0.733790, 0.480603,
		58.116489, 55.569824, 55.575134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.802597, 54.937302, 56.003258>,  <57.780361, 55.056171, 55.238712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.802597, 54.937302, 56.003258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.783226, 55.319912, 55.888222>,  <57.771603, 55.549480, 55.819199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.783226, 55.319912, 55.888222>,  <57.802597, 54.937302, 56.003258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.783226, 55.319912, 55.888222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928617, 0.062927, 0.365664,
		0.367865, 0.284770, 0.885201,
		-0.048427, 0.956528, -0.287591,
		57.768700, 55.606869, 55.801945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.978916, 55.183868, 56.735004>,  <57.802597, 54.937302, 56.003258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.978916, 55.183868, 56.735004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.065804, 54.878742, 56.978622>,  <58.117935, 54.695667, 57.124794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.065804, 54.878742, 56.978622>,  <57.978916, 55.183868, 56.735004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.065804, 54.878742, 56.978622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886918, -0.106349, -0.449517,
		0.407668, 0.637816, 0.653451,
		0.217215, -0.762811, 0.609046,
		58.130966, 54.649899, 57.161335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.566170, 55.235119, 57.162006>,  <57.978916, 55.183868, 56.735004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.566170, 55.235119, 57.162006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.538033, 54.838440, 57.118958>,  <58.521149, 54.600433, 57.093128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.538033, 54.838440, 57.118958>,  <58.566170, 55.235119, 57.162006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.538033, 54.838440, 57.118958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788169, 0.010869, -0.615363,
		0.611425, -0.128111, 0.780863,
		-0.070347, -0.991700, -0.107619,
		58.516930, 54.540932, 57.086670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.774071, 55.981224, 57.204018>,  <58.566170, 55.235119, 57.162006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.774071, 55.981224, 57.204018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.590729, 56.191856, 56.917625>,  <58.480724, 56.318233, 56.745789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.590729, 56.191856, 56.917625>,  <58.774071, 55.981224, 57.204018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.590729, 56.191856, 56.917625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687206, 0.720839, 0.090213,
		0.563610, -0.450675, -0.692269,
		-0.458357, 0.526577, -0.715979,
		58.453220, 56.349831, 56.702831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.094856, 55.864513, 56.606487>,  <58.774071, 55.981224, 57.204018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.094856, 55.864513, 56.606487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.943947, 56.230240, 56.665390>,  <58.853401, 56.449677, 56.700729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.943947, 56.230240, 56.665390>,  <59.094856, 55.864513, 56.606487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.943947, 56.230240, 56.665390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914214, 0.342299, 0.216898,
		0.147909, 0.216452, -0.965024,
		-0.377275, 0.914319, 0.147254,
		58.830765, 56.504536, 56.709568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.508625, 56.401081, 56.264431>,  <59.094856, 55.864513, 56.606487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.508625, 56.401081, 56.264431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.325882, 56.538528, 56.592628>,  <59.216236, 56.620998, 56.789547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.325882, 56.538528, 56.592628>,  <59.508625, 56.401081, 56.264431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.325882, 56.538528, 56.592628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878452, 0.029097, 0.476945,
		0.140015, 0.938657, -0.315148,
		-0.456857, 0.343621, 0.820491,
		59.188824, 56.641613, 56.838776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.749981, 57.131172, 56.417038>,  <59.508625, 56.401081, 56.264431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.749981, 57.131172, 56.417038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.630333, 56.907158, 56.726074>,  <59.558544, 56.772751, 56.911495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.630333, 56.907158, 56.726074>,  <59.749981, 57.131172, 56.417038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.630333, 56.907158, 56.726074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872845, 0.166584, 0.458685,
		-0.385579, 0.811551, 0.438993,
		-0.299117, -0.560032, 0.772589,
		59.540596, 56.739147, 56.957851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.176044, 57.399227, 56.979343>,  <59.749981, 57.131172, 56.417038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.176044, 57.399227, 56.979343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.047203, 57.028244, 57.055313>,  <59.969898, 56.805653, 57.100895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.047203, 57.028244, 57.055313>,  <60.176044, 57.399227, 56.979343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.047203, 57.028244, 57.055313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842965, -0.189669, 0.503424,
		-0.430881, 0.322258, 0.842906,
		-0.322106, -0.927456, 0.189928,
		59.950573, 56.750008, 57.112293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.811275, 57.268742, 57.666946>,  <60.176044, 57.399227, 56.979343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.811275, 57.268742, 57.666946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.194000, 57.184212, 57.746803>,  <60.423634, 57.133492, 57.794716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.194000, 57.184212, 57.746803>,  <59.811275, 57.268742, 57.666946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.194000, 57.184212, 57.746803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286828, 0.574307, -0.766747,
		0.047380, 0.790893, 0.610117,
		0.956810, -0.211327, 0.199639,
		60.481045, 57.120815, 57.806694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.266293, 57.919701, 57.715412>,  <59.811275, 57.268742, 57.666946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.266293, 57.919701, 57.715412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.438499, 57.588375, 57.571991>,  <60.541824, 57.389580, 57.485939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.438499, 57.588375, 57.571991>,  <60.266293, 57.919701, 57.715412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.438499, 57.588375, 57.571991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009192, 0.393211, -0.919402,
		0.902537, 0.399110, 0.161669,
		0.430513, -0.828309, -0.358556,
		60.567654, 57.339882, 57.464424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.844170, 58.146149, 57.572102>,  <60.266293, 57.919701, 57.715412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.844170, 58.146149, 57.572102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.789452, 57.831715, 57.330986>,  <60.756622, 57.643055, 57.186317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.789452, 57.831715, 57.330986>,  <60.844170, 58.146149, 57.572102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.789452, 57.831715, 57.330986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010372, 0.607343, -0.794371,
		0.990546, -0.114915, -0.074926,
		-0.136791, -0.786084, -0.602793,
		60.748413, 57.595890, 57.150146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.026485, 58.368526, 56.921349>,  <60.844170, 58.146149, 57.572102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.026485, 58.368526, 56.921349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.675552, 58.312172, 57.104843>,  <60.464993, 58.278358, 57.214939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.675552, 58.312172, 57.104843>,  <61.026485, 58.368526, 56.921349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.675552, 58.312172, 57.104843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048121, 0.925289, 0.376199,
		-0.477463, 0.352126, -0.805007,
		-0.877333, -0.140883, 0.458735,
		60.412354, 58.269905, 57.242462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.689445, 57.915791, 57.150509>,  <61.026485, 58.368526, 56.921349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.689445, 57.915791, 57.150509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.596054, 57.527370, 57.170700>,  <61.540020, 57.294319, 57.182816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.596054, 57.527370, 57.170700>,  <61.689445, 57.915791, 57.150509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.596054, 57.527370, 57.170700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725997, -0.208624, -0.655290,
		0.646850, -0.116349, 0.753689,
		-0.233480, -0.971050, 0.050480,
		61.526009, 57.236053, 57.185844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.306637, 57.387508, 57.323883>,  <61.689445, 57.915791, 57.150509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.306637, 57.387508, 57.323883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.002525, 57.247147, 57.105217>,  <61.820061, 57.162930, 56.974018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.002525, 57.247147, 57.105217>,  <62.306637, 57.387508, 57.323883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.002525, 57.247147, 57.105217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606830, -0.083341, -0.790451,
		0.231813, -0.932695, 0.276301,
		-0.760277, -0.350904, -0.546668,
		61.774441, 57.141876, 56.941216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.877064, 57.131615, 57.688900>,  <62.306637, 57.387508, 57.323883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.877064, 57.131615, 57.688900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.153351, 57.000557, 57.431046>,  <63.319122, 56.921925, 57.276333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.153351, 57.000557, 57.431046>,  <62.877064, 57.131615, 57.688900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.153351, 57.000557, 57.431046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119140, 0.827719, -0.548349,
		0.713243, 0.455557, 0.532685,
		0.690717, -0.327641, -0.644640,
		63.360565, 56.902264, 57.237652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.529053, 57.372910, 57.910046>,  <62.877064, 57.131615, 57.688900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.529053, 57.372910, 57.910046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.497360, 57.319138, 57.514946>,  <63.478344, 57.286873, 57.277885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.497360, 57.319138, 57.514946>,  <63.529053, 57.372910, 57.910046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.497360, 57.319138, 57.514946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031882, 0.990017, -0.137295,
		0.996347, -0.042369, -0.074150,
		-0.079227, -0.134429, -0.987751,
		63.473591, 57.278809, 57.218620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.042946, 57.657177, 57.401943>,  <63.529053, 57.372910, 57.910046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.042946, 57.657177, 57.401943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.693230, 57.651566, 57.207863>,  <63.483398, 57.648197, 57.091415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.693230, 57.651566, 57.207863>,  <64.042946, 57.657177, 57.401943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.693230, 57.651566, 57.207863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055846, 0.990037, -0.129261,
		0.482183, -0.140108, -0.864794,
		-0.874289, -0.014032, -0.485203,
		63.430943, 57.647354, 57.062302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.093987, 57.957802, 56.832546>,  <64.042946, 57.657177, 57.401943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.093987, 57.957802, 56.832546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.714310, 58.030613, 56.935234>,  <63.486504, 58.074299, 56.996845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.714310, 58.030613, 56.935234>,  <64.093987, 57.957802, 56.832546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.714310, 58.030613, 56.935234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112774, 0.958312, -0.262527,
		-0.293803, -0.220236, -0.930148,
		-0.949190, 0.182028, 0.256718,
		63.429554, 58.085220, 57.012249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.513145, 58.305256, 57.448811>,  <64.093987, 57.957802, 56.832546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.513145, 58.305256, 57.448811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.217079, 58.225662, 57.705734>,  <64.039436, 58.177906, 57.859890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.217079, 58.225662, 57.705734>,  <64.513145, 58.305256, 57.448811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.217079, 58.225662, 57.705734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641152, 0.496763, -0.584937,
		-0.202682, -0.844768, -0.495266,
		-0.740165, -0.198984, 0.642309,
		63.995029, 58.165966, 57.898426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.236557, 58.449074, 57.561359>,  <64.513145, 58.305256, 57.448811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.236557, 58.449074, 57.561359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.635834, 58.428299, 57.573547>,  <65.875397, 58.415836, 57.580860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.635834, 58.428299, 57.573547>,  <65.236557, 58.449074, 57.561359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.635834, 58.428299, 57.573547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059847, -0.799880, 0.597169,
		-0.006639, -0.597909, -0.801537,
		0.998186, -0.051935, 0.030473,
		65.935287, 58.412720, 57.582687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.429337, 57.757557, 57.323078>,  <65.236557, 58.449074, 57.561359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.429337, 57.757557, 57.323078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.712631, 57.892658, 57.571053>,  <65.882607, 57.973721, 57.719837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.712631, 57.892658, 57.571053>,  <65.429337, 57.757557, 57.323078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.712631, 57.892658, 57.571053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129444, -0.925368, 0.356283,
		0.694002, -0.172088, -0.699105,
		0.708241, 0.337756, 0.619932,
		65.925102, 57.993984, 57.757030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.943802, 57.245781, 57.244667>,  <65.429337, 57.757557, 57.323078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.943802, 57.245781, 57.244667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.958351, 57.454468, 57.585602>,  <65.967079, 57.579681, 57.790165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.958351, 57.454468, 57.585602>,  <65.943802, 57.245781, 57.244667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.958351, 57.454468, 57.585602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172701, -0.843355, 0.508848,
		0.984302, 0.128688, -0.120783,
		0.036380, 0.521720, 0.852341,
		65.969269, 57.610985, 57.841305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.536552, 57.063374, 57.595341>,  <65.943802, 57.245781, 57.244667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.536552, 57.063374, 57.595341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.267220, 57.172844, 57.870071>,  <66.105621, 57.238525, 58.034908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.267220, 57.172844, 57.870071>,  <66.536552, 57.063374, 57.595341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.267220, 57.172844, 57.870071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199317, -0.827381, 0.525084,
		0.711970, 0.490451, 0.502551,
		-0.673329, 0.273677, 0.686825,
		66.065224, 57.254948, 58.076118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.727264, 56.806896, 58.283749>,  <66.536552, 57.063374, 57.595341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.727264, 56.806896, 58.283749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.101990, 56.678627, 58.227806>,  <67.326820, 56.601665, 58.194241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.101990, 56.678627, 58.227806>,  <66.727264, 56.806896, 58.283749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.101990, 56.678627, 58.227806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345636, 0.910172, 0.228305,
		0.054078, -0.262216, 0.963493,
		0.936809, -0.320671, -0.139852,
		67.383034, 56.582424, 58.185852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.135811, 56.834194, 58.900265>,  <66.727264, 56.806896, 58.283749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.135811, 56.834194, 58.900265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.415558, 56.850410, 58.614822>,  <67.583405, 56.860138, 58.443558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.415558, 56.850410, 58.614822>,  <67.135811, 56.834194, 58.900265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.415558, 56.850410, 58.614822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340999, 0.858519, 0.382969,
		0.628165, -0.511177, 0.586605,
		0.699377, 0.040536, -0.713603,
		67.625374, 56.862572, 58.400742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.383553, 57.390087, 59.476353>,  <67.135811, 56.834194, 58.900265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.383553, 57.390087, 59.476353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.634598, 57.653664, 59.642197>,  <67.785225, 57.811810, 59.741703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.634598, 57.653664, 59.642197>,  <67.383553, 57.390087, 59.476353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.634598, 57.653664, 59.642197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720595, -0.693269, 0.011013,
		0.294694, 0.291854, -0.909932,
		0.627613, 0.658938, 0.414611,
		67.822884, 57.851345, 59.766579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.952911, 57.523685, 58.948227>,  <67.383553, 57.390087, 59.476353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.952911, 57.523685, 58.948227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.075958, 57.572479, 59.325691>,  <68.149788, 57.601757, 59.552170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.075958, 57.572479, 59.325691>,  <67.952911, 57.523685, 58.948227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.075958, 57.572479, 59.325691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809518, -0.554749, -0.192185,
		0.500049, 0.823027, -0.269401,
		0.307623, 0.121983, 0.943657,
		68.168243, 57.609074, 59.608788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.613396, 58.052135, 59.105289>,  <67.952911, 57.523685, 58.948227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.613396, 58.052135, 59.105289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.569107, 57.750648, 59.364410>,  <68.542534, 57.569756, 59.519882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.569107, 57.750648, 59.364410>,  <68.613396, 58.052135, 59.105289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.569107, 57.750648, 59.364410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879667, -0.377660, -0.289065,
		0.462523, 0.537846, 0.704837,
		-0.110717, -0.753721, 0.647802,
		68.535889, 57.524532, 59.558750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.202301, 58.133579, 59.470581>,  <68.613396, 58.052135, 59.105289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.202301, 58.133579, 59.470581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.046608, 57.765541, 59.488113>,  <68.953194, 57.544716, 59.498631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.046608, 57.765541, 59.488113>,  <69.202301, 58.133579, 59.470581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.046608, 57.765541, 59.488113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872346, -0.383470, -0.303254,
		0.295831, -0.079800, 0.951901,
		-0.389225, -0.920099, 0.043829,
		68.929840, 57.489510, 59.501263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.560440, 57.665470, 59.985847>,  <69.202301, 58.133579, 59.470581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.560440, 57.665470, 59.985847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.435059, 57.508438, 59.639984>,  <69.359833, 57.414219, 59.432465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.435059, 57.508438, 59.639984>,  <69.560440, 57.665470, 59.985847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.435059, 57.508438, 59.639984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948858, -0.165634, -0.268765,
		-0.037705, -0.904681, 0.424418,
		-0.313444, -0.392578, -0.864659,
		69.341026, 57.390663, 59.380585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.148529, 57.953728, 59.606556>,  <69.560440, 57.665470, 59.985847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.148529, 57.953728, 59.606556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.430748, 58.234432, 59.567116>,  <70.600082, 58.402855, 59.543449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.430748, 58.234432, 59.567116>,  <70.148529, 57.953728, 59.606556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.430748, 58.234432, 59.567116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677507, -0.627188, 0.384212,
		0.207782, -0.337887, -0.917964,
		0.705557, 0.701760, -0.098602,
		70.642418, 58.444962, 59.537537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.806389, 57.671959, 59.414032>,  <70.148529, 57.953728, 59.606556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.806389, 57.671959, 59.414032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.924591, 58.019417, 59.573097>,  <70.995514, 58.227890, 59.668537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.924591, 58.019417, 59.573097>,  <70.806389, 57.671959, 59.414032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.924591, 58.019417, 59.573097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878045, -0.410971, 0.245231,
		0.376447, 0.276699, -0.884152,
		0.295506, 0.868643, 0.397663,
		71.013245, 58.280010, 59.692398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.458443, 57.702934, 59.325806>,  <70.806389, 57.671959, 59.414032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.458443, 57.702934, 59.325806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.373253, 57.920929, 59.650185>,  <71.322136, 58.051723, 59.844810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.373253, 57.920929, 59.650185>,  <71.458443, 57.702934, 59.325806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.373253, 57.920929, 59.650185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884584, -0.244909, 0.396903,
		0.414913, 0.801882, -0.429922,
		-0.212977, 0.544982, 0.810947,
		71.309357, 58.084423, 59.893467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.054436, 58.104477, 59.513855>,  <71.458443, 57.702934, 59.325806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.054436, 58.104477, 59.513855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.832527, 58.019218, 59.835548>,  <71.699379, 57.968063, 60.028564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.832527, 58.019218, 59.835548>,  <72.054436, 58.104477, 59.513855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.832527, 58.019218, 59.835548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827352, -0.243385, 0.506214,
		0.087840, 0.946219, 0.311373,
		-0.554773, -0.213149, 0.804235,
		71.666092, 57.955273, 60.076820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.171219, 58.543697, 60.165066>,  <72.054436, 58.104477, 59.513855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.171219, 58.543697, 60.165066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.082253, 58.165428, 60.259918>,  <72.028870, 57.938465, 60.316830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.082253, 58.165428, 60.259918>,  <72.171219, 58.543697, 60.165066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.082253, 58.165428, 60.259918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896205, -0.102556, 0.431625,
		-0.383856, 0.308522, 0.870327,
		-0.222423, -0.945672, 0.237133,
		72.015526, 57.881725, 60.331059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.238998, 58.345219, 60.894203>,  <72.171219, 58.543697, 60.165066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.238998, 58.345219, 60.894203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.307037, 58.031075, 60.656120>,  <72.347862, 57.842587, 60.513271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.307037, 58.031075, 60.656120>,  <72.238998, 58.345219, 60.894203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.307037, 58.031075, 60.656120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914389, -0.099390, 0.392446,
		-0.367370, -0.611006, 0.701221,
		0.170093, -0.785362, -0.595210,
		72.358063, 57.795467, 60.477558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.475647, 57.820984, 61.392483>,  <72.238998, 58.345219, 60.894203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.475647, 57.820984, 61.392483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.609375, 57.750648, 61.022118>,  <72.689613, 57.708447, 60.799900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.609375, 57.750648, 61.022118>,  <72.475647, 57.820984, 61.392483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.609375, 57.750648, 61.022118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920420, -0.150313, 0.360877,
		-0.202632, -0.972876, 0.111590,
		0.334316, -0.175835, -0.925913,
		72.709671, 57.697899, 60.744343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.079521, 57.415981, 61.470642>,  <72.475647, 57.820984, 61.392483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.079521, 57.415981, 61.470642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.110359, 57.535480, 61.090157>,  <73.128860, 57.607182, 60.861866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.110359, 57.535480, 61.090157>,  <73.079521, 57.415981, 61.470642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.110359, 57.535480, 61.090157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984240, 0.129489, 0.120433,
		0.159151, -0.945506, -0.284060,
		0.077087, 0.298750, -0.951213,
		73.133484, 57.625107, 60.804794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.778969, 57.184425, 61.303677>,  <73.079521, 57.415981, 61.470642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.778969, 57.184425, 61.303677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.671440, 57.436302, 61.012138>,  <73.606926, 57.587429, 60.837215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.671440, 57.436302, 61.012138>,  <73.778969, 57.184425, 61.303677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.671440, 57.436302, 61.012138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949761, 0.299209, -0.091797,
		0.160274, -0.716911, -0.678492,
		-0.268821, 0.629693, -0.728850,
		73.590797, 57.625210, 60.793484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<74.340706, 57.351444, 60.719505>,  <73.778969, 57.184425, 61.303677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<74.340706, 57.351444, 60.719505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<74.101799, 57.666111, 60.656990>,  <73.958458, 57.854912, 60.619480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<74.101799, 57.666111, 60.656990>,  <74.340706, 57.351444, 60.719505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<74.101799, 57.666111, 60.656990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776009, 0.517565, -0.360467,
		-0.202679, -0.336576, -0.919586,
		-0.597270, 0.786666, -0.156286,
		73.922615, 57.902111, 60.610104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<74.246475, 57.618374, 59.918266>,  <74.340706, 57.351444, 60.719505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<74.246475, 57.618374, 59.918266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<74.194710, 57.904846, 60.192589>,  <74.163651, 58.076729, 60.357182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<74.194710, 57.904846, 60.192589>,  <74.246475, 57.618374, 59.918266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<74.194710, 57.904846, 60.192589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747522, 0.524887, -0.407068,
		-0.651507, 0.459971, -0.603296,
		-0.129423, 0.716184, 0.685806,
		74.155884, 58.119701, 60.398331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.526146, 57.752853, 59.929760>,  <74.246475, 57.618374, 59.918266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.526146, 57.752853, 59.929760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.374947, 57.383064, 59.949631>,  <73.284225, 57.161190, 59.961552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.374947, 57.383064, 59.949631>,  <73.526146, 57.752853, 59.929760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.374947, 57.383064, 59.949631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787653, 0.349324, 0.507519,
		-0.486541, 0.152713, -0.860207,
		-0.377996, -0.924474, 0.049675,
		73.261551, 57.105721, 59.964535>
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
