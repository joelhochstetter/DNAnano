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
	<36.351196, 53.587135, 49.775898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.620289, 53.581528, 50.071800>,  <36.781746, 53.578163, 50.249340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.620289, 53.581528, 50.071800>,  <36.351196, 53.587135, 49.775898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.620289, 53.581528, 50.071800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600714, 0.594038, -0.535033,
		-0.431943, 0.804315, 0.408048,
		0.672731, -0.014016, 0.739754,
		36.822109, 53.577324, 50.293728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640610, 54.300411, 49.758080>,  <36.351196, 53.587135, 49.775898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640610, 54.300411, 49.758080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.900448, 54.096180, 49.983406>,  <37.056351, 53.973640, 50.118603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.900448, 54.096180, 49.983406>,  <36.640610, 54.300411, 49.758080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.900448, 54.096180, 49.983406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740888, 0.591393, -0.318340,
		-0.170604, 0.624149, 0.762452,
		0.649600, -0.510581, 0.563318,
		37.095329, 53.943005, 50.152401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971291, 54.837097, 50.209877>,  <36.640610, 54.300411, 49.758080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.971291, 54.837097, 50.209877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203316, 54.513519, 50.171631>,  <37.342529, 54.319374, 50.148682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203316, 54.513519, 50.171631>,  <36.971291, 54.837097, 50.209877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203316, 54.513519, 50.171631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795964, 0.587838, -0.144524,
		0.173117, 0.007728, 0.984871,
		0.580062, -0.808941, -0.095614,
		37.377335, 54.270836, 50.142948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516296, 54.806561, 50.721668>,  <36.971291, 54.837097, 50.209877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.516296, 54.806561, 50.721668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.656261, 54.585506, 50.419106>,  <37.740242, 54.452873, 50.237568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.656261, 54.585506, 50.419106>,  <37.516296, 54.806561, 50.721668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.656261, 54.585506, 50.419106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839887, 0.542702, -0.007966,
		0.414907, -0.632510, 0.654051,
		0.349917, -0.552634, -0.756408,
		37.761238, 54.419716, 50.192184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072674, 54.342068, 50.813229>,  <37.516296, 54.806561, 50.721668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072674, 54.342068, 50.813229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.040821, 54.559284, 50.478859>,  <38.021709, 54.689613, 50.278236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.040821, 54.559284, 50.478859>,  <38.072674, 54.342068, 50.813229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040821, 54.559284, 50.478859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911698, 0.378761, 0.159208,
		0.403071, -0.749428, -0.525254,
		-0.079630, 0.543045, -0.835919,
		38.016933, 54.722198, 50.228085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561138, 54.144341, 50.148750>,  <38.072674, 54.342068, 50.813229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.561138, 54.144341, 50.148750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.459164, 54.530472, 50.171196>,  <38.397980, 54.762150, 50.184666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.459164, 54.530472, 50.171196>,  <38.561138, 54.144341, 50.148750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.459164, 54.530472, 50.171196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965809, 0.251377, 0.063417,
		0.047112, 0.070365, -0.996408,
		-0.254937, 0.965328, 0.056116,
		38.382683, 54.820068, 50.188030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043514, 54.640343, 49.806095>,  <38.561138, 54.144341, 50.148750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.043514, 54.640343, 49.806095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.841896, 54.870384, 50.063835>,  <38.720924, 55.008408, 50.218479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.841896, 54.870384, 50.063835>,  <39.043514, 54.640343, 49.806095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.841896, 54.870384, 50.063835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772089, 0.634392, 0.037754,
		-0.387061, 0.516529, -0.763794,
		-0.504046, 0.575105, 0.644355,
		38.690681, 55.042915, 50.257141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126724, 55.318886, 49.505756>,  <39.043514, 54.640343, 49.806095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.126724, 55.318886, 49.505756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.070156, 55.373245, 49.897987>,  <39.036213, 55.405861, 50.133327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.070156, 55.373245, 49.897987>,  <39.126724, 55.318886, 49.505756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070156, 55.373245, 49.897987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709262, 0.704930, 0.004597,
		-0.690613, 0.696136, -0.196083,
		-0.141425, 0.135899, 0.980577,
		39.027729, 55.414017, 50.192162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866337, 56.020638, 49.784740>,  <39.126724, 55.318886, 49.505756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.866337, 56.020638, 49.784740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.124161, 55.871090, 50.051506>,  <39.278854, 55.781361, 50.211563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.124161, 55.871090, 50.051506>,  <38.866337, 56.020638, 49.784740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.124161, 55.871090, 50.051506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584796, 0.802980, -0.115047,
		-0.492503, 0.464161, 0.736203,
		0.644557, -0.373868, 0.666910,
		39.317528, 55.758930, 50.251579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.434212, 56.548023, 49.809975>,  <38.866337, 56.020638, 49.784740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.434212, 56.548023, 49.809975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.527592, 56.288841, 50.099983>,  <39.583618, 56.133331, 50.273987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.527592, 56.288841, 50.099983>,  <39.434212, 56.548023, 49.809975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.527592, 56.288841, 50.099983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816321, 0.535719, 0.215931,
		-0.528321, 0.541441, 0.654001,
		0.233447, -0.647956, 0.725022,
		39.597626, 56.094456, 50.317490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710644, 57.018585, 50.349079>,  <39.434212, 56.548023, 49.809975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.710644, 57.018585, 50.349079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.850254, 56.650581, 50.420364>,  <39.934021, 56.429779, 50.463135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.850254, 56.650581, 50.420364>,  <39.710644, 57.018585, 50.349079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850254, 56.650581, 50.420364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844141, 0.391247, 0.366541,
		-0.406947, 0.022505, 0.913174,
		0.349028, -0.920011, 0.178214,
		39.954964, 56.374577, 50.473827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.018951, 56.863594, 50.994602>,  <39.710644, 57.018585, 50.349079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.018951, 56.863594, 50.994602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.181438, 56.655506, 50.694107>,  <40.278931, 56.530655, 50.513809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.181438, 56.655506, 50.694107>,  <40.018951, 56.863594, 50.994602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.181438, 56.655506, 50.694107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877385, 0.451755, 0.161598,
		0.255309, -0.724768, 0.639945,
		0.406219, -0.520221, -0.751237,
		40.303303, 56.499439, 50.468735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.647335, 56.545322, 51.144558>,  <40.018951, 56.863594, 50.994602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.647335, 56.545322, 51.144558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.645645, 56.615364, 50.750740>,  <40.644630, 56.657391, 50.514450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.645645, 56.615364, 50.750740>,  <40.647335, 56.545322, 51.144558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.645645, 56.615364, 50.750740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977774, 0.207105, 0.032635,
		0.209618, -0.962520, -0.172089,
		-0.004229, 0.175105, -0.984541,
		40.644375, 56.667896, 50.455379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.237720, 56.109432, 51.420639>,  <40.647335, 56.545322, 51.144558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.237720, 56.109432, 51.420639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.220573, 56.506500, 51.465836>,  <41.210285, 56.744740, 51.492954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.220573, 56.506500, 51.465836>,  <41.237720, 56.109432, 51.420639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.220573, 56.506500, 51.465836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662062, -0.056473, 0.747319,
		0.748222, 0.106839, -0.654789,
		-0.042865, 0.992671, 0.112988,
		41.207714, 56.804302, 51.499733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.900730, 56.416862, 51.391376>,  <41.237720, 56.109432, 51.420639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.900730, 56.416862, 51.391376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.693604, 56.710167, 51.567646>,  <41.569328, 56.886150, 51.673409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.693604, 56.710167, 51.567646>,  <41.900730, 56.416862, 51.391376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.693604, 56.710167, 51.567646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699777, 0.066729, 0.711238,
		0.492117, 0.676665, -0.547673,
		-0.517816, 0.733261, 0.440676,
		41.538258, 56.930145, 51.699848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.437824, 56.873413, 51.560638>,  <41.900730, 56.416862, 51.391376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.437824, 56.873413, 51.560638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.122772, 56.873249, 51.807098>,  <41.933743, 56.873150, 51.954975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.122772, 56.873249, 51.807098>,  <42.437824, 56.873413, 51.560638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.122772, 56.873249, 51.807098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615806, -0.033867, 0.787170,
		0.020541, 0.999426, 0.026929,
		-0.787630, -0.000414, 0.616148,
		41.886482, 56.873123, 51.991943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.418144, 57.449436, 51.907654>,  <42.437824, 56.873413, 51.560638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.418144, 57.449436, 51.907654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.291279, 57.119576, 52.094994>,  <42.215160, 56.921658, 52.207397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.291279, 57.119576, 52.094994>,  <42.418144, 57.449436, 51.907654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.291279, 57.119576, 52.094994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816227, 0.014087, 0.577559,
		-0.482885, 0.565459, 0.668639,
		-0.317167, -0.824656, 0.468346,
		42.196129, 56.872177, 52.235497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.330975, 57.487419, 52.591103>,  <42.418144, 57.449436, 51.907654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.330975, 57.487419, 52.591103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.461266, 57.129280, 52.469612>,  <42.539440, 56.914394, 52.396717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.461266, 57.129280, 52.469612>,  <42.330975, 57.487419, 52.591103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.461266, 57.129280, 52.469612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792135, 0.083052, 0.604669,
		-0.516165, -0.437551, 0.736290,
		0.325724, -0.895350, -0.303730,
		42.558983, 56.860676, 52.378494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.562702, 57.183960, 53.250660>,  <42.330975, 57.487419, 52.591103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.562702, 57.183960, 53.250660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.745262, 57.066132, 52.914818>,  <42.854797, 56.995434, 52.713314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.745262, 57.066132, 52.914818>,  <42.562702, 57.183960, 53.250660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.745262, 57.066132, 52.914818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886627, 0.229871, 0.401313,
		0.074786, -0.927572, 0.366083,
		0.456399, -0.294567, -0.839602,
		42.882183, 56.977760, 52.662937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.253292, 56.909603, 53.416492>,  <42.562702, 57.183960, 53.250660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.253292, 56.909603, 53.416492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.310478, 57.054878, 53.048222>,  <43.344791, 57.142044, 52.827259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.310478, 57.054878, 53.048222>,  <43.253292, 56.909603, 53.416492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.310478, 57.054878, 53.048222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925883, 0.279616, 0.254079,
		0.349716, -0.888769, -0.296292,
		0.142969, 0.363187, -0.920682,
		43.353371, 57.163834, 52.772018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.968983, 56.707073, 53.094814>,  <43.253292, 56.909603, 53.416492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.968983, 56.707073, 53.094814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.810432, 57.058594, 52.988541>,  <43.715302, 57.269508, 52.924778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.810432, 57.058594, 52.988541>,  <43.968983, 56.707073, 53.094814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.810432, 57.058594, 52.988541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826026, 0.467677, 0.314577,
		0.400704, -0.094767, -0.911293,
		-0.396379, 0.878805, -0.265681,
		43.691517, 57.322235, 52.908836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.445133, 57.020634, 52.568600>,  <43.968983, 56.707073, 53.094814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.445133, 57.020634, 52.568600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.245514, 57.275597, 52.803432>,  <44.125744, 57.428574, 52.944332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.245514, 57.275597, 52.803432>,  <44.445133, 57.020634, 52.568600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.245514, 57.275597, 52.803432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852541, 0.239697, 0.464456,
		0.155323, 0.732300, -0.663032,
		-0.499048, 0.637403, 0.587085,
		44.095798, 57.466816, 52.979557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.714394, 57.661945, 52.552193>,  <44.445133, 57.020634, 52.568600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.714394, 57.661945, 52.552193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.543892, 57.634338, 52.912979>,  <44.441593, 57.617775, 53.129452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.543892, 57.634338, 52.912979>,  <44.714394, 57.661945, 52.552193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.543892, 57.634338, 52.912979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849528, 0.312055, 0.425350,
		-0.310822, 0.947554, -0.074378,
		-0.426252, -0.069022, 0.901967,
		44.416016, 57.613632, 53.183571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.932739, 58.257072, 52.887051>,  <44.714394, 57.661945, 52.552193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.932739, 58.257072, 52.887051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.833210, 57.995834, 53.173141>,  <44.773491, 57.839092, 53.344795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.833210, 57.995834, 53.173141>,  <44.932739, 58.257072, 52.887051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.833210, 57.995834, 53.173141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812097, 0.261737, 0.521529,
		-0.527810, 0.710605, 0.465250,
		-0.248828, -0.653096, 0.715227,
		44.758560, 57.799904, 53.387711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.102043, 58.561119, 53.432842>,  <44.932739, 58.257072, 52.887051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.102043, 58.561119, 53.432842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.095200, 58.172626, 53.527859>,  <45.091091, 57.939533, 53.584869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.095200, 58.172626, 53.527859>,  <45.102043, 58.561119, 53.432842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.095200, 58.172626, 53.527859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819445, 0.122505, 0.559913,
		-0.572903, 0.204232, 0.793771,
		-0.017111, -0.971227, 0.237541,
		45.090065, 57.881260, 53.599121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.333481, 58.536049, 54.100151>,  <45.102043, 58.561119, 53.432842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.333481, 58.536049, 54.100151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.395332, 58.187943, 53.913078>,  <45.432442, 57.979076, 53.800835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.395332, 58.187943, 53.913078>,  <45.333481, 58.536049, 54.100151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.395332, 58.187943, 53.913078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960607, 0.021789, 0.277055,
		-0.230922, -0.492094, 0.839356,
		0.154626, -0.870269, -0.467678,
		45.441719, 57.926861, 53.772774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.082092, 58.344810, 54.088379>,  <45.333481, 58.536049, 54.100151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.082092, 58.344810, 54.088379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.970772, 57.996822, 53.925552>,  <45.903980, 57.788029, 53.827854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.970772, 57.996822, 53.925552>,  <46.082092, 58.344810, 54.088379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.970772, 57.996822, 53.925552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901258, -0.383060, 0.202482,
		-0.332085, -0.310522, 0.890671,
		-0.278306, -0.869966, -0.407069,
		45.887280, 57.735832, 53.803432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.648388, 57.939167, 54.190937>,  <46.082092, 58.344810, 54.088379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.648388, 57.939167, 54.190937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.389225, 57.669617, 54.048889>,  <46.233727, 57.507889, 53.963661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.389225, 57.669617, 54.048889>,  <46.648388, 57.939167, 54.190937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.389225, 57.669617, 54.048889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650128, -0.732153, 0.203188,
		-0.396926, -0.099228, 0.912471,
		-0.647906, -0.673874, -0.355122,
		46.194855, 57.467453, 53.942352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.501114, 57.427856, 54.663925>,  <46.648388, 57.939167, 54.190937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.501114, 57.427856, 54.663925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.455101, 57.244057, 54.311646>,  <46.427494, 57.133778, 54.100277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.455101, 57.244057, 54.311646>,  <46.501114, 57.427856, 54.663925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.455101, 57.244057, 54.311646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829445, -0.532290, 0.169376,
		-0.546615, -0.711008, 0.442358,
		-0.115035, -0.459495, -0.880700,
		46.420589, 57.106209, 54.047436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.472004, 56.737057, 54.776688>,  <46.501114, 57.427856, 54.663925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.472004, 56.737057, 54.776688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.617657, 56.807274, 54.410824>,  <46.705048, 56.849403, 54.191307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.617657, 56.807274, 54.410824>,  <46.472004, 56.737057, 54.776688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.617657, 56.807274, 54.410824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850521, -0.462851, 0.249765,
		-0.379505, -0.868881, -0.317837,
		0.364127, 0.175540, -0.914657,
		46.726894, 56.859936, 54.136425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.825726, 56.121929, 54.377560>,  <46.472004, 56.737057, 54.776688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.825726, 56.121929, 54.377560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.989285, 56.480381, 54.308563>,  <47.087421, 56.695454, 54.267166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.989285, 56.480381, 54.308563>,  <46.825726, 56.121929, 54.377560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.989285, 56.480381, 54.308563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867952, -0.323506, 0.376834,
		0.281890, -0.303800, -0.910079,
		0.408898, 0.896130, -0.172491,
		47.111954, 56.749222, 54.256817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.425587, 55.944473, 53.914822>,  <46.825726, 56.121929, 54.377560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.425587, 55.944473, 53.914822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.450172, 56.261414, 54.157608>,  <47.464924, 56.451576, 54.303280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.450172, 56.261414, 54.157608>,  <47.425587, 55.944473, 53.914822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.450172, 56.261414, 54.157608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931264, -0.264329, 0.250755,
		0.359123, 0.549828, -0.754135,
		0.061467, 0.792350, 0.606962,
		47.468613, 56.499119, 54.339695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.981697, 56.480900, 53.801346>,  <47.425587, 55.944473, 53.914822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.981697, 56.480900, 53.801346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.919327, 56.369629, 54.180462>,  <47.881905, 56.302868, 54.407932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.919327, 56.369629, 54.180462>,  <47.981697, 56.480900, 53.801346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.919327, 56.369629, 54.180462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934218, -0.353175, 0.050039,
		0.320817, 0.893245, 0.314945,
		-0.155928, -0.278174, 0.947790,
		47.872547, 56.286179, 54.464798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.407616, 56.829525, 54.307922>,  <47.981697, 56.480900, 53.801346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.407616, 56.829525, 54.307922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.337521, 56.451935, 54.419777>,  <48.295464, 56.225380, 54.486889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.337521, 56.451935, 54.419777>,  <48.407616, 56.829525, 54.307922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.337521, 56.451935, 54.419777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925113, -0.255057, -0.281267,
		0.336833, 0.209402, 0.917984,
		-0.175240, -0.943979, 0.279632,
		48.284950, 56.168739, 54.503666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.963543, 56.521385, 54.871357>,  <48.407616, 56.829525, 54.307922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.963543, 56.521385, 54.871357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.801895, 56.295616, 54.583435>,  <48.704906, 56.160156, 54.410683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.801895, 56.295616, 54.583435>,  <48.963543, 56.521385, 54.871357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.801895, 56.295616, 54.583435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912336, -0.192104, -0.361579,
		0.065806, -0.802823, 0.592575,
		-0.404120, -0.564421, -0.719803,
		48.680660, 56.126289, 54.367493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.280422, 55.898422, 54.734230>,  <48.963543, 56.521385, 54.871357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.280422, 55.898422, 54.734230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.105167, 55.986610, 54.385651>,  <49.000015, 56.039524, 54.176502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.105167, 55.986610, 54.385651>,  <49.280422, 55.898422, 54.734230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.105167, 55.986610, 54.385651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866549, -0.154175, -0.474681,
		-0.239011, -0.963131, -0.123501,
		-0.438139, 0.220474, -0.871450,
		48.973724, 56.052753, 54.124214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.528664, 55.325844, 54.279682>,  <49.280422, 55.898422, 54.734230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.528664, 55.325844, 54.279682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.435135, 55.681152, 54.121544>,  <49.379017, 55.894337, 54.026661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.435135, 55.681152, 54.121544>,  <49.528664, 55.325844, 54.279682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.435135, 55.681152, 54.121544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777601, -0.073246, -0.624477,
		-0.583664, -0.453437, -0.673596,
		-0.233823, 0.888274, -0.395344,
		49.364986, 55.947636, 54.002941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.668980, 54.724072, 53.851517>,  <49.528664, 55.325844, 54.279682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.668980, 54.724072, 53.851517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.563583, 54.513878, 54.175106>,  <49.500347, 54.387760, 54.369259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.563583, 54.513878, 54.175106>,  <49.668980, 54.724072, 53.851517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.563583, 54.513878, 54.175106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797313, -0.590690, -0.124001,
		0.543013, 0.612332, 0.574618,
		-0.263491, -0.525485, 0.808973,
		49.484535, 54.356232, 54.417797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.225597, 54.814518, 54.265491>,  <49.668980, 54.724072, 53.851517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.225597, 54.814518, 54.265491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.025875, 54.477047, 54.344383>,  <49.906040, 54.274563, 54.391716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.025875, 54.477047, 54.344383>,  <50.225597, 54.814518, 54.265491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.025875, 54.477047, 54.344383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824046, -0.532741, -0.192707,
		0.267653, 0.066302, 0.961232,
		-0.499310, -0.843677, 0.197226,
		49.876083, 54.223946, 54.403549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.614964, 55.157921, 54.693466>,  <50.225597, 54.814518, 54.265491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.614964, 55.157921, 54.693466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.677284, 55.460239, 54.947868>,  <50.714676, 55.641628, 55.100510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.677284, 55.460239, 54.947868>,  <50.614964, 55.157921, 54.693466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.677284, 55.460239, 54.947868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938129, -0.314798, 0.144278,
		0.309257, 0.574175, -0.758079,
		0.155801, 0.755794, 0.636004,
		50.724026, 55.686977, 55.138668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.282803, 55.631947, 54.592327>,  <50.614964, 55.157921, 54.693466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.282803, 55.631947, 54.592327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.176945, 55.617744, 54.977806>,  <51.113430, 55.609222, 55.209091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.176945, 55.617744, 54.977806>,  <51.282803, 55.631947, 54.592327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.176945, 55.617744, 54.977806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961394, -0.087858, 0.260772,
		0.075408, 0.995500, 0.057389,
		-0.264640, -0.035509, 0.963693,
		51.097553, 55.607090, 55.266914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.878185, 55.555157, 55.011864>,  <51.282803, 55.631947, 54.592327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.878185, 55.555157, 55.011864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.602604, 55.493450, 55.295143>,  <51.437256, 55.456425, 55.465111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.602604, 55.493450, 55.295143>,  <51.878185, 55.555157, 55.011864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.602604, 55.493450, 55.295143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722958, -0.216041, 0.656245,
		0.051761, 0.964120, 0.260372,
		-0.688950, -0.154270, 0.708201,
		51.395920, 55.447170, 55.507603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.118595, 56.162495, 54.579552>,  <51.878185, 55.555157, 55.011864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.118595, 56.162495, 54.579552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.282158, 56.166183, 54.944565>,  <52.380295, 56.168396, 55.163570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.282158, 56.166183, 54.944565>,  <52.118595, 56.162495, 54.579552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.282158, 56.166183, 54.944565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890140, 0.216329, -0.401063,
		-0.201107, 0.976277, 0.080247,
		0.408909, 0.009226, 0.912529,
		52.404831, 56.168953, 55.218323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.426666, 56.851871, 54.680969>,  <52.118595, 56.162495, 54.579552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.426666, 56.851871, 54.680969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.611660, 56.615540, 54.945400>,  <52.722656, 56.473740, 55.104061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.611660, 56.615540, 54.945400>,  <52.426666, 56.851871, 54.680969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.611660, 56.615540, 54.945400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879097, 0.402535, -0.255254,
		-0.115297, 0.699206, 0.705562,
		0.462488, -0.590827, 0.661081,
		52.750408, 56.438290, 55.143726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.012531, 57.197350, 55.094528>,  <52.426666, 56.851871, 54.680969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.012531, 57.197350, 55.094528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.092098, 56.805397, 55.087898>,  <53.139839, 56.570225, 55.083920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.092098, 56.805397, 55.087898>,  <53.012531, 57.197350, 55.094528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.092098, 56.805397, 55.087898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942564, 0.195914, -0.270539,
		0.268342, 0.038194, 0.962566,
		0.198913, -0.979877, -0.016571,
		53.151772, 56.511433, 55.082928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.515228, 57.051632, 55.624298>,  <53.012531, 57.197350, 55.094528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.515228, 57.051632, 55.624298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.585636, 56.769337, 55.349792>,  <53.627880, 56.599960, 55.185089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.585636, 56.769337, 55.349792>,  <53.515228, 57.051632, 55.624298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.585636, 56.769337, 55.349792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952077, 0.299196, -0.063487,
		0.250132, -0.642200, 0.724578,
		0.176020, -0.705734, -0.686263,
		53.638443, 56.557617, 55.143913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.188885, 56.576477, 55.635475>,  <53.515228, 57.051632, 55.624298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.188885, 56.576477, 55.635475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.125397, 56.671726, 55.252205>,  <54.087303, 56.728874, 55.022243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.125397, 56.671726, 55.252205>,  <54.188885, 56.576477, 55.635475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.125397, 56.671726, 55.252205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968652, 0.225401, -0.104436,
		0.191105, -0.944718, -0.266434,
		-0.158717, 0.238124, -0.958178,
		54.077782, 56.743164, 54.964752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.776745, 56.370617, 55.221352>,  <54.188885, 56.576477, 55.635475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.776745, 56.370617, 55.221352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.609634, 56.650543, 54.989586>,  <54.509369, 56.818501, 54.850529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.609634, 56.650543, 54.989586>,  <54.776745, 56.370617, 55.221352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.609634, 56.650543, 54.989586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890638, 0.441462, -0.108977,
		0.179524, -0.561573, -0.807717,
		-0.417774, 0.699819, -0.579411,
		54.484303, 56.860489, 54.815762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.153938, 56.430767, 54.545296>,  <54.776745, 56.370617, 55.221352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.153938, 56.430767, 54.545296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.965523, 56.770836, 54.639381>,  <54.852474, 56.974876, 54.695831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.965523, 56.770836, 54.639381>,  <55.153938, 56.430767, 54.545296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.965523, 56.770836, 54.639381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858644, 0.503002, -0.098584,
		-0.202127, 0.155529, -0.966931,
		-0.471035, 0.850176, 0.235215,
		54.824211, 57.025890, 54.709946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.306450, 56.997166, 53.977604>,  <55.153938, 56.430767, 54.545296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.306450, 56.997166, 53.977604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.252037, 57.151417, 54.342632>,  <55.219387, 57.243969, 54.561649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.252037, 57.151417, 54.342632>,  <55.306450, 56.997166, 53.977604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.252037, 57.151417, 54.342632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844958, 0.526082, -0.096352,
		-0.517243, 0.757977, -0.397405,
		-0.136035, 0.385628, 0.912571,
		55.211227, 57.267105, 54.616402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.843601, 57.479099, 53.996178>,  <55.306450, 56.997166, 53.977604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.843601, 57.479099, 53.996178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.727806, 57.439144, 54.376961>,  <55.658329, 57.415173, 54.605431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.727806, 57.439144, 54.376961>,  <55.843601, 57.479099, 53.996178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.727806, 57.439144, 54.376961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891684, 0.333433, 0.306140,
		-0.347992, 0.937468, -0.007459,
		-0.289483, -0.099884, 0.951957,
		55.640961, 57.409180, 54.662548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.723305, 58.185387, 54.368023>,  <55.843601, 57.479099, 53.996178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.723305, 58.185387, 54.368023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.890533, 57.892929, 54.583668>,  <55.990871, 57.717453, 54.713055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.890533, 57.892929, 54.583668>,  <55.723305, 58.185387, 54.368023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.890533, 57.892929, 54.583668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830364, 0.548246, 0.099603,
		-0.368391, 0.406018, 0.836324,
		0.418071, -0.731147, 0.539112,
		56.015953, 57.673584, 54.745399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.237442, 58.463055, 54.726688>,  <55.723305, 58.185387, 54.368023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.237442, 58.463055, 54.726688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.326508, 58.073257, 54.715561>,  <56.379948, 57.839378, 54.708885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.326508, 58.073257, 54.715561>,  <56.237442, 58.463055, 54.726688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.326508, 58.073257, 54.715561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974272, 0.223455, -0.029354,
		0.034821, -0.020567, 0.999182,
		0.222668, -0.974497, -0.027819,
		56.393307, 57.780907, 54.707214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.784340, 58.409626, 55.297119>,  <56.237442, 58.463055, 54.726688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.784340, 58.409626, 55.297119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.823624, 58.131599, 55.012238>,  <56.847195, 57.964783, 54.841309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.823624, 58.131599, 55.012238>,  <56.784340, 58.409626, 55.297119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.823624, 58.131599, 55.012238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975047, 0.210386, -0.070867,
		0.199096, -0.687476, 0.698382,
		0.098210, -0.695064, -0.712208,
		56.853088, 57.923080, 54.798576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.455833, 58.167595, 55.452003>,  <56.784340, 58.409626, 55.297119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.455833, 58.167595, 55.452003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.315346, 58.105659, 55.082642>,  <57.231052, 58.068501, 54.861027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.315346, 58.105659, 55.082642>,  <57.455833, 58.167595, 55.452003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.315346, 58.105659, 55.082642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902770, 0.205531, -0.377840,
		0.248290, -0.966325, 0.067593,
		-0.351223, -0.154835, -0.923401,
		57.209980, 58.059208, 54.805622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.769234, 57.526859, 55.033043>,  <57.455833, 58.167595, 55.452003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.769234, 57.526859, 55.033043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.656944, 57.820557, 54.785793>,  <57.589573, 57.996777, 54.637444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.656944, 57.820557, 54.785793>,  <57.769234, 57.526859, 55.033043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.656944, 57.820557, 54.785793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951476, 0.128313, -0.279693,
		-0.126049, -0.666649, -0.734636,
		-0.280720, 0.734244, -0.618127,
		57.572727, 58.040829, 54.600353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.902435, 57.325996, 54.333172>,  <57.769234, 57.526859, 55.033043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.902435, 57.325996, 54.333172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.922226, 57.721272, 54.391201>,  <57.934101, 57.958435, 54.426018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.922226, 57.721272, 54.391201>,  <57.902435, 57.325996, 54.333172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.922226, 57.721272, 54.391201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932865, 0.006168, -0.360172,
		-0.356811, 0.153151, -0.921537,
		0.049476, 0.988184, 0.145070,
		57.937069, 58.017727, 54.434723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.263866, 57.584431, 53.735214>,  <57.902435, 57.325996, 54.333172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.263866, 57.584431, 53.735214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.349617, 57.787582, 54.068947>,  <58.401066, 57.909473, 54.269184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.349617, 57.787582, 54.068947>,  <58.263866, 57.584431, 53.735214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.349617, 57.787582, 54.068947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974544, -0.168622, -0.147755,
		0.065644, 0.844764, -0.531097,
		0.214373, 0.507878, 0.834329,
		58.413929, 57.939945, 54.319244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.042713, 57.712536, 53.893768>,  <58.263866, 57.584431, 53.735214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.042713, 57.712536, 53.893768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.030388, 57.356632, 54.075920>,  <59.022991, 57.143089, 54.185211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.030388, 57.356632, 54.075920>,  <59.042713, 57.712536, 53.893768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.030388, 57.356632, 54.075920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935517, 0.134743, 0.326577,
		-0.351935, 0.436082, 0.828235,
		-0.030816, -0.889762, 0.455383,
		59.021145, 57.089703, 54.212536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.418377, 57.790192, 54.507671>,  <59.042713, 57.712536, 53.893768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.418377, 57.790192, 54.507671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.431206, 57.397579, 54.432236>,  <59.438904, 57.162010, 54.386974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.431206, 57.397579, 54.432236>,  <59.418377, 57.790192, 54.507671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.431206, 57.397579, 54.432236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966497, -0.017623, 0.256074,
		-0.254668, -0.190485, 0.948082,
		0.032070, -0.981532, -0.188592,
		59.440826, 57.103119, 54.375660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.839420, 57.436066, 55.013371>,  <59.418377, 57.790192, 54.507671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.839420, 57.436066, 55.013371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.890968, 57.230270, 54.674267>,  <59.921898, 57.106792, 54.470806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.890968, 57.230270, 54.674267>,  <59.839420, 57.436066, 55.013371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.890968, 57.230270, 54.674267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990382, 0.110183, 0.083686,
		0.050352, -0.850386, 0.523744,
		0.128873, -0.514493, -0.847755,
		59.929630, 57.075924, 54.419941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.266052, 56.792545, 55.153820>,  <59.839420, 57.436066, 55.013371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.266052, 56.792545, 55.153820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.295723, 56.886562, 54.766159>,  <60.313526, 56.942974, 54.533562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.295723, 56.886562, 54.766159>,  <60.266052, 56.792545, 55.153820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.295723, 56.886562, 54.766159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996809, -0.046219, 0.065087,
		-0.029495, -0.970885, -0.237721,
		0.074180, 0.235043, -0.969150,
		60.317978, 56.957077, 54.475414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.601036, 56.240196, 54.795837>,  <60.266052, 56.792545, 55.153820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.601036, 56.240196, 54.795837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.671944, 56.600800, 54.637920>,  <60.714489, 56.817162, 54.543171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.671944, 56.600800, 54.637920>,  <60.601036, 56.240196, 54.795837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.671944, 56.600800, 54.637920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982346, -0.186439, 0.015364,
		-0.059755, -0.390549, -0.918641,
		0.177271, 0.901505, -0.394795,
		60.725124, 56.871250, 54.519482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.110371, 56.230606, 54.237286>,  <60.601036, 56.240196, 54.795837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.110371, 56.230606, 54.237286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.126503, 56.570194, 54.448044>,  <61.136181, 56.773949, 54.574497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.126503, 56.570194, 54.448044>,  <61.110371, 56.230606, 54.237286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.126503, 56.570194, 54.448044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986784, -0.116670, 0.112456,
		0.156945, 0.515395, -0.842458,
		0.040330, 0.848974, 0.526894,
		61.138603, 56.824886, 54.606113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.593185, 56.803474, 53.868614>,  <61.110371, 56.230606, 54.237286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.593185, 56.803474, 53.868614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.553665, 56.844765, 54.264511>,  <61.529953, 56.869537, 54.502048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.553665, 56.844765, 54.264511>,  <61.593185, 56.803474, 53.868614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.553665, 56.844765, 54.264511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984215, -0.136618, 0.112499,
		0.146829, 0.985231, -0.088099,
		-0.098801, 0.103226, 0.989739,
		61.524025, 56.875732, 54.561432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.208012, 57.153934, 54.158058>,  <61.593185, 56.803474, 53.868614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.208012, 57.153934, 54.158058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.043823, 56.978477, 54.477837>,  <61.945309, 56.873203, 54.669704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.043823, 56.978477, 54.477837>,  <62.208012, 57.153934, 54.158058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.043823, 56.978477, 54.477837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897648, -0.040113, 0.438884,
		-0.160444, 0.897767, 0.410210,
		-0.410470, -0.438640, 0.799443,
		61.920681, 56.846886, 54.717670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.409702, 57.442314, 54.797222>,  <62.208012, 57.153934, 54.158058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.409702, 57.442314, 54.797222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.308449, 57.066338, 54.888809>,  <62.247696, 56.840752, 54.943760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.308449, 57.066338, 54.888809>,  <62.409702, 57.442314, 54.797222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.308449, 57.066338, 54.888809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854710, -0.106415, 0.508081,
		-0.453202, 0.324313, 0.830318,
		-0.253136, -0.939945, 0.228966,
		62.232510, 56.784355, 54.957500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.099136, 57.216747, 54.602032>,  <62.409702, 57.442314, 54.797222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.099136, 57.216747, 54.602032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.232216, 57.549061, 54.780518>,  <63.312065, 57.748447, 54.887608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.232216, 57.549061, 54.780518>,  <63.099136, 57.216747, 54.602032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.232216, 57.549061, 54.780518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931705, -0.362698, -0.019393,
		0.145730, 0.422194, -0.894715,
		0.332699, 0.830784, 0.446216,
		63.332027, 57.798298, 54.914383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.701344, 57.490055, 54.280827>,  <63.099136, 57.216747, 54.602032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.701344, 57.490055, 54.280827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.718979, 57.642582, 54.650185>,  <63.729561, 57.734097, 54.871799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.718979, 57.642582, 54.650185>,  <63.701344, 57.490055, 54.280827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.718979, 57.642582, 54.650185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939202, -0.330869, 0.091788,
		0.340522, 0.863206, -0.372719,
		0.044089, 0.381314, 0.923393,
		63.732204, 57.756977, 54.927204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.971958, 57.064793, 54.866756>,  <63.701344, 57.490055, 54.280827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.971958, 57.064793, 54.866756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.100601, 57.002831, 55.240402>,  <64.177788, 56.965652, 55.464592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.100601, 57.002831, 55.240402>,  <63.971958, 57.064793, 54.866756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.100601, 57.002831, 55.240402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407327, -0.867947, -0.284171,
		0.854783, 0.471882, -0.216041,
		0.321607, -0.154905, 0.934116,
		64.197083, 56.956360, 55.520638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.452019, 56.600254, 54.789486>,  <63.971958, 57.064793, 54.866756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.452019, 56.600254, 54.789486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.379639, 56.549740, 55.179626>,  <64.336212, 56.519432, 55.413712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.379639, 56.549740, 55.179626>,  <64.452019, 56.600254, 54.789486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.379639, 56.549740, 55.179626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339028, -0.938945, -0.058676,
		0.923211, 0.320054, 0.212711,
		-0.180945, -0.126285, 0.975352,
		64.325356, 56.511856, 55.472233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.025337, 56.255589, 55.235523>,  <64.452019, 56.600254, 54.789486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.025337, 56.255589, 55.235523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.632149, 56.189743, 55.268181>,  <64.396233, 56.150238, 55.287777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.632149, 56.189743, 55.268181>,  <65.025337, 56.255589, 55.235523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.632149, 56.189743, 55.268181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129590, -0.936073, -0.327069,
		0.130263, -0.310920, 0.941467,
		-0.982974, -0.164610, 0.081643,
		64.337257, 56.140362, 55.292675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.186127, 56.982731, 55.138618>,  <65.025337, 56.255589, 55.235523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.186127, 56.982731, 55.138618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.027550, 57.026337, 55.503242>,  <64.932404, 57.052502, 55.722019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.027550, 57.026337, 55.503242>,  <65.186127, 56.982731, 55.138618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.027550, 57.026337, 55.503242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877989, 0.335165, 0.341760,
		-0.268267, 0.935831, -0.228588,
		-0.396445, 0.109015, 0.911563,
		64.908615, 57.059040, 55.776711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.718269, 57.274063, 55.625134>,  <65.186127, 56.982731, 55.138618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.718269, 57.274063, 55.625134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.415627, 57.208939, 55.878448>,  <65.234039, 57.169865, 56.030437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.415627, 57.208939, 55.878448>,  <65.718269, 57.274063, 55.625134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.415627, 57.208939, 55.878448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557754, 0.344786, 0.755005,
		-0.341271, 0.924454, -0.170056,
		-0.756600, -0.162812, 0.633284,
		65.188644, 57.160095, 56.068432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.583206, 57.914303, 55.917397>,  <65.718269, 57.274063, 55.625134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.583206, 57.914303, 55.917397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.446770, 57.646442, 56.181282>,  <65.364906, 57.485725, 56.339611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.446770, 57.646442, 56.181282>,  <65.583206, 57.914303, 55.917397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.446770, 57.646442, 56.181282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463996, 0.490407, 0.737705,
		-0.817533, 0.557732, 0.143441,
		-0.341097, -0.669654, 0.659709,
		65.344444, 57.445545, 56.379196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.174965, 58.238018, 56.519009>,  <65.583206, 57.914303, 55.917397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.174965, 58.238018, 56.519009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.355515, 57.892525, 56.608643>,  <65.463844, 57.685226, 56.662422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.355515, 57.892525, 56.608643>,  <65.174965, 58.238018, 56.519009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.355515, 57.892525, 56.608643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505194, 0.454365, 0.733711,
		-0.735549, -0.217977, 0.641446,
		0.451383, -0.863735, 0.224087,
		65.490929, 57.633404, 56.675869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.969650, 58.080360, 57.124783>,  <65.174965, 58.238018, 56.519009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.969650, 58.080360, 57.124783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.338531, 57.951935, 57.038567>,  <65.559860, 57.874878, 56.986835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.338531, 57.951935, 57.038567>,  <64.969650, 58.080360, 57.124783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.338531, 57.951935, 57.038567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353294, 0.472870, 0.807203,
		-0.157240, -0.820556, 0.549512,
		0.922203, -0.321064, -0.215544,
		65.615196, 57.855618, 56.973904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.286530, 57.629784, 57.634716>,  <64.969650, 58.080360, 57.124783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.286530, 57.629784, 57.634716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.567947, 57.833069, 57.436020>,  <65.736794, 57.955040, 57.316803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.567947, 57.833069, 57.436020>,  <65.286530, 57.629784, 57.634716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.567947, 57.833069, 57.436020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227631, 0.501003, 0.834973,
		0.673216, -0.700508, 0.236788,
		0.703537, 0.508217, -0.496741,
		65.779007, 57.985535, 57.286999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.921631, 57.598568, 57.895775>,  <65.286530, 57.629784, 57.634716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.921631, 57.598568, 57.895775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.885086, 57.979286, 57.778648>,  <65.863159, 58.207718, 57.708374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.885086, 57.979286, 57.778648>,  <65.921631, 57.598568, 57.895775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.885086, 57.979286, 57.778648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139519, 0.303383, 0.942599,
		0.985995, 0.045272, -0.160513,
		-0.091371, 0.951793, -0.292818,
		65.857674, 58.264824, 57.690804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.553284, 57.943661, 57.984043>,  <65.921631, 57.598568, 57.895775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.553284, 57.943661, 57.984043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.213150, 58.147625, 58.036064>,  <66.009071, 58.270004, 58.067276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.213150, 58.147625, 58.036064>,  <66.553284, 57.943661, 57.984043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.213150, 58.147625, 58.036064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174282, 0.039698, 0.983895,
		0.496536, 0.859311, -0.122625,
		-0.850340, 0.509911, 0.130051,
		65.958046, 58.300598, 58.075081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.773499, 58.315052, 58.618092>,  <66.553284, 57.943661, 57.984043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.773499, 58.315052, 58.618092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.381676, 58.250580, 58.569916>,  <66.146584, 58.211895, 58.541012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.381676, 58.250580, 58.569916>,  <66.773499, 58.315052, 58.618092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.381676, 58.250580, 58.569916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081235, -0.230821, 0.969599,
		-0.184079, 0.959554, 0.213007,
		-0.979549, -0.161179, -0.120439,
		66.087814, 58.202225, 58.533783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.453079, 58.669804, 59.171371>,  <66.773499, 58.315052, 58.618092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.453079, 58.669804, 59.171371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.236221, 58.357517, 59.047081>,  <66.106102, 58.170143, 58.972507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.236221, 58.357517, 59.047081>,  <66.453079, 58.669804, 59.171371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.236221, 58.357517, 59.047081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089559, -0.421368, 0.902457,
		-0.835494, 0.461441, 0.298366,
		-0.542152, -0.780719, -0.310724,
		66.073578, 58.123302, 58.953865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.926308, 58.476044, 59.663727>,  <66.453079, 58.669804, 59.171371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.926308, 58.476044, 59.663727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.062271, 58.172462, 59.441574>,  <66.143852, 57.990314, 59.308285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.062271, 58.172462, 59.441574>,  <65.926308, 58.476044, 59.663727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.062271, 58.172462, 59.441574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137367, -0.544139, 0.827673,
		-0.930369, -0.357632, -0.080707,
		0.339918, -0.758955, -0.555377,
		66.164246, 57.944775, 59.274960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.691864, 57.880856, 59.985226>,  <65.926308, 58.476044, 59.663727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.691864, 57.880856, 59.985226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.021362, 57.780186, 59.782013>,  <66.219063, 57.719784, 59.660088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.021362, 57.780186, 59.782013>,  <65.691864, 57.880856, 59.985226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.021362, 57.780186, 59.782013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241628, -0.654776, 0.716160,
		-0.512884, -0.712692, -0.478561,
		0.823752, -0.251673, -0.508030,
		66.268486, 57.704685, 59.629604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.796577, 57.108276, 59.671974>,  <65.691864, 57.880856, 59.985226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.796577, 57.108276, 59.671974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.147606, 57.245567, 59.805870>,  <66.358223, 57.327942, 59.886208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.147606, 57.245567, 59.805870>,  <65.796577, 57.108276, 59.671974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.147606, 57.245567, 59.805870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098892, -0.812776, 0.574122,
		0.469124, -0.470734, -0.747217,
		0.877578, 0.343228, 0.334741,
		66.410881, 57.348537, 59.906292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.217239, 56.444691, 59.801937>,  <65.796577, 57.108276, 59.671974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.217239, 56.444691, 59.801937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.428993, 56.720253, 59.999992>,  <66.556046, 56.885590, 60.118828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.428993, 56.720253, 59.999992>,  <66.217239, 56.444691, 59.801937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.428993, 56.720253, 59.999992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279756, -0.692731, 0.664726,
		0.800936, -0.213370, -0.559441,
		0.529375, 0.688910, 0.495141,
		66.587807, 56.926926, 60.148537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.966629, 56.160873, 59.846275>,  <66.217239, 56.444691, 59.801937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.966629, 56.160873, 59.846275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.905762, 56.433479, 60.132599>,  <66.869240, 56.597042, 60.304394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.905762, 56.433479, 60.132599>,  <66.966629, 56.160873, 59.846275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.905762, 56.433479, 60.132599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467861, -0.588290, 0.659561,
		0.870603, 0.435265, -0.229333,
		-0.152170, 0.681513, 0.715811,
		66.860107, 56.637932, 60.347343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.522324, 56.582241, 60.221645>,  <66.966629, 56.160873, 59.846275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.522324, 56.582241, 60.221645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.222336, 56.462906, 60.457794>,  <67.042343, 56.391304, 60.599483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.222336, 56.462906, 60.457794>,  <67.522324, 56.582241, 60.221645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.222336, 56.462906, 60.457794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649448, -0.501530, 0.571564,
		0.125571, 0.812072, 0.569887,
		-0.749966, -0.298340, 0.590376,
		66.997345, 56.373405, 60.634907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.868851, 56.964947, 59.597702>,  <67.522324, 56.582241, 60.221645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.868851, 56.964947, 59.597702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.982544, 56.603565, 59.726067>,  <68.050758, 56.386738, 59.803085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.982544, 56.603565, 59.726067>,  <67.868851, 56.964947, 59.597702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.982544, 56.603565, 59.726067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677287, 0.426116, 0.599756,
		-0.678595, 0.046873, 0.733015,
		0.284237, -0.903453, 0.320907,
		68.067818, 56.332531, 59.822338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.021896, 57.151337, 60.245651>,  <67.868851, 56.964947, 59.597702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.021896, 57.151337, 60.245651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.187927, 56.807499, 60.126450>,  <68.287544, 56.601196, 60.054928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.187927, 56.807499, 60.126450>,  <68.021896, 57.151337, 60.245651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.187927, 56.807499, 60.126450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878426, 0.293391, 0.377213,
		-0.236818, -0.418349, 0.876870,
		0.415072, -0.859596, -0.298009,
		68.312447, 56.549622, 60.037048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.339882, 56.712978, 60.791798>,  <68.021896, 57.151337, 60.245651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.339882, 56.712978, 60.791798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.545914, 56.616821, 60.462700>,  <68.669533, 56.559128, 60.265240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.545914, 56.616821, 60.462700>,  <68.339882, 56.712978, 60.791798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.545914, 56.616821, 60.462700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847616, 0.285579, 0.447204,
		0.127452, -0.927715, 0.350858,
		0.515075, -0.240396, -0.822744,
		68.700439, 56.544704, 60.215878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.993881, 56.894985, 60.963139>,  <68.339882, 56.712978, 60.791798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.993881, 56.894985, 60.963139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.077316, 56.715385, 60.615601>,  <69.127380, 56.607628, 60.407078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.077316, 56.715385, 60.615601>,  <68.993881, 56.894985, 60.963139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.077316, 56.715385, 60.615601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962483, 0.251884, 0.100899,
		0.173545, -0.857297, 0.484690,
		0.208586, -0.448996, -0.868847,
		69.139893, 56.580688, 60.354946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.518822, 56.279537, 60.974392>,  <68.993881, 56.894985, 60.963139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.518822, 56.279537, 60.974392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.512871, 56.539040, 60.670052>,  <69.509300, 56.694740, 60.487450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.512871, 56.539040, 60.670052>,  <69.518822, 56.279537, 60.974392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.512871, 56.539040, 60.670052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914635, 0.316282, 0.251809,
		0.404006, -0.692153, -0.598083,
		-0.014873, 0.648760, -0.760848,
		69.508408, 56.733669, 60.441795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.890907, 56.211929, 60.343739>,  <69.518822, 56.279537, 60.974392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.890907, 56.211929, 60.343739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.869377, 56.611309, 60.349327>,  <69.856461, 56.850937, 60.352680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.869377, 56.611309, 60.349327>,  <69.890907, 56.211929, 60.343739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.869377, 56.611309, 60.349327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987742, 0.051187, 0.147466,
		0.146522, 0.021742, -0.988968,
		-0.053828, 0.998452, 0.013976,
		69.853226, 56.910843, 60.353519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.285736, 56.593620, 59.826504>,  <69.890907, 56.211929, 60.343739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.285736, 56.593620, 59.826504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.256447, 56.818512, 60.155998>,  <70.238869, 56.953445, 60.353695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.256447, 56.818512, 60.155998>,  <70.285736, 56.593620, 59.826504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.256447, 56.818512, 60.155998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996296, 0.003902, 0.085905,
		0.045084, 0.826974, -0.560429,
		-0.073228, 0.562226, 0.823735,
		70.234482, 56.987179, 60.403118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.413361, 57.248940, 59.765785>,  <70.285736, 56.593620, 59.826504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.413361, 57.248940, 59.765785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.528610, 57.144142, 60.134209>,  <70.597763, 57.081264, 60.355263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.528610, 57.144142, 60.134209>,  <70.413361, 57.248940, 59.765785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.528610, 57.144142, 60.134209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946603, 0.223231, -0.232616,
		-0.144663, 0.938896, 0.312325,
		0.288122, -0.261997, 0.921055,
		70.615044, 57.065544, 60.410526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.964409, 57.685024, 59.870590>,  <70.413361, 57.248940, 59.765785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.964409, 57.685024, 59.870590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.006592, 57.372215, 60.116295>,  <71.031906, 57.184528, 60.263718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.006592, 57.372215, 60.116295>,  <70.964409, 57.685024, 59.870590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.006592, 57.372215, 60.116295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983925, -0.007455, -0.178426,
		0.144112, 0.623207, 0.768664,
		0.105466, -0.782022, 0.614263,
		71.038231, 57.137608, 60.300575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.674438, 57.785622, 60.160137>,  <70.964409, 57.685024, 59.870590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.674438, 57.785622, 60.160137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.556465, 57.403469, 60.166458>,  <71.485680, 57.174175, 60.170250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.556465, 57.403469, 60.166458>,  <71.674438, 57.785622, 60.160137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.556465, 57.403469, 60.166458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918489, -0.288034, -0.270950,
		0.263413, -0.065399, 0.962464,
		-0.294942, -0.955384, 0.015803,
		71.467979, 57.116852, 60.171200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.369293, 58.060200, 59.947800>,  <71.674438, 57.785622, 60.160137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.369293, 58.060200, 59.947800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.633804, 57.887871, 59.702164>,  <72.792511, 57.784473, 59.554783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.633804, 57.887871, 59.702164>,  <72.369293, 58.060200, 59.947800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.633804, 57.887871, 59.702164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380393, -0.512990, 0.769508,
		-0.646544, -0.742452, -0.175345,
		0.661273, -0.430821, -0.614094,
		72.832184, 57.758625, 59.517937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.417542, 57.314461, 60.149734>,  <72.369293, 58.060200, 59.947800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.417542, 57.314461, 60.149734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.749908, 57.441689, 59.967133>,  <72.949333, 57.518024, 59.857571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.749908, 57.441689, 59.967133>,  <72.417542, 57.314461, 60.149734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.749908, 57.441689, 59.967133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556041, -0.503756, 0.661097,
		-0.019689, -0.803155, -0.595444,
		0.830922, 0.318075, -0.456506,
		72.999184, 57.537109, 59.830181>
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
