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
	<36.052052, 52.337761, 50.551769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.052334, 52.473270, 50.175423>,  <36.052502, 52.554577, 49.949615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.052334, 52.473270, 50.175423>,  <36.052052, 52.337761, 50.551769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.052334, 52.473270, 50.175423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476666, -0.826988, -0.298127,
		-0.879084, 0.448689, 0.160900,
		0.000704, 0.338775, -0.940867,
		36.052544, 52.574902, 49.893162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755043, 52.066311, 50.122391>,  <36.052052, 52.337761, 50.551769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755043, 52.066311, 50.122391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.028458, 51.785290, 50.201584>,  <37.192505, 51.616676, 50.249100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.028458, 51.785290, 50.201584>,  <36.755043, 52.066311, 50.122391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.028458, 51.785290, 50.201584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504186, -0.650584, -0.567923,
		0.527804, 0.288373, -0.798914,
		0.683534, -0.702554, 0.197987,
		37.233517, 51.574524, 50.260979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988377, 51.573833, 49.612701>,  <36.755043, 52.066311, 50.122391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988377, 51.573833, 49.612701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.936710, 51.299187, 49.898880>,  <36.905712, 51.134399, 50.070587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.936710, 51.299187, 49.898880>,  <36.988377, 51.573833, 49.612701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936710, 51.299187, 49.898880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631155, -0.499553, -0.593371,
		0.764826, -0.528202, -0.368840,
		-0.129165, -0.686621, 0.715449,
		36.897961, 51.093201, 50.113514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195549, 50.924488, 49.428902>,  <36.988377, 51.573833, 49.612701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195549, 50.924488, 49.428902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.896713, 50.873074, 49.689770>,  <36.717411, 50.842224, 49.846291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.896713, 50.873074, 49.689770>,  <37.195549, 50.924488, 49.428902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.896713, 50.873074, 49.689770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527416, -0.482535, -0.699280,
		0.404579, -0.866394, 0.292706,
		-0.747093, -0.128537, 0.652173,
		36.672585, 50.834511, 49.885422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636780, 50.681499, 48.897457>,  <37.195549, 50.924488, 49.428902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636780, 50.681499, 48.897457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.896461, 50.387497, 48.975731>,  <38.052273, 50.211094, 49.022697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.896461, 50.387497, 48.975731>,  <37.636780, 50.681499, 48.897457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.896461, 50.387497, 48.975731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540192, -0.264428, 0.798918,
		-0.535466, -0.624372, -0.568714,
		0.649207, -0.735008, 0.195689,
		38.091225, 50.166996, 49.034439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103092, 51.132515, 49.293816>,  <37.636780, 50.681499, 48.897457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103092, 51.132515, 49.293816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.106136, 51.114407, 49.693394>,  <38.107964, 51.103542, 49.933140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.106136, 51.114407, 49.693394>,  <38.103092, 51.132515, 49.293816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.106136, 51.114407, 49.693394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958679, -0.283774, -0.020162,
		0.284387, 0.957822, 0.041246,
		0.007607, -0.045275, 0.998946,
		38.108418, 51.100822, 49.993076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649212, 51.614765, 49.679531>,  <38.103092, 51.132515, 49.293816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.649212, 51.614765, 49.679531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.546223, 51.301884, 49.906464>,  <38.484428, 51.114155, 50.042622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.546223, 51.301884, 49.906464>,  <38.649212, 51.614765, 49.679531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.546223, 51.301884, 49.906464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890293, -0.420259, -0.175386,
		0.375613, 0.459930, 0.804599,
		-0.257475, -0.782206, 0.567327,
		38.468979, 51.067223, 50.076660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041271, 51.461193, 50.274662>,  <38.649212, 51.614765, 49.679531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041271, 51.461193, 50.274662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883507, 51.097488, 50.221470>,  <38.788849, 50.879265, 50.189552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883507, 51.097488, 50.221470>,  <39.041271, 51.461193, 50.274662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883507, 51.097488, 50.221470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917598, -0.397491, -0.003696,
		-0.049499, -0.123484, 0.991111,
		-0.394415, -0.909259, -0.132984,
		38.765182, 50.824711, 50.181576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.244453, 50.932598, 50.806202>,  <39.041271, 51.461193, 50.274662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.244453, 50.932598, 50.806202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.187160, 50.734230, 50.463612>,  <39.152782, 50.615208, 50.258057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.187160, 50.734230, 50.463612>,  <39.244453, 50.932598, 50.806202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.187160, 50.734230, 50.463612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908818, -0.408532, 0.084562,
		-0.391833, -0.766266, 0.509219,
		-0.143236, -0.495922, -0.856472,
		39.144188, 50.585453, 50.206669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302326, 50.156025, 50.907063>,  <39.244453, 50.932598, 50.806202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302326, 50.156025, 50.907063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.417553, 50.314594, 50.558380>,  <39.486691, 50.409737, 50.349171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.417553, 50.314594, 50.558380>,  <39.302326, 50.156025, 50.907063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.417553, 50.314594, 50.558380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942834, -0.276708, 0.185732,
		-0.167577, -0.875373, -0.453476,
		0.288065, 0.396428, -0.871701,
		39.503971, 50.433521, 50.296871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.996876, 49.874573, 50.706993>,  <39.302326, 50.156025, 50.907063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.996876, 49.874573, 50.706993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.964977, 50.145367, 50.414330>,  <39.945839, 50.307842, 50.238731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.964977, 50.145367, 50.414330>,  <39.996876, 49.874573, 50.706993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964977, 50.145367, 50.414330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898802, -0.268558, -0.346457,
		-0.431040, -0.685248, -0.587060,
		-0.079749, 0.676987, -0.731661,
		39.941051, 50.348461, 50.194832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667145, 49.960953, 50.962261>,  <39.996876, 49.874573, 50.706993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.667145, 49.960953, 50.962261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.871273, 49.696098, 51.181770>,  <40.993752, 49.537186, 51.313477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.871273, 49.696098, 51.181770>,  <40.667145, 49.960953, 50.962261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.871273, 49.696098, 51.181770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272068, 0.729649, 0.627368,
		-0.815814, -0.170854, 0.552500,
		0.510320, -0.662133, 0.548774,
		41.024368, 49.497459, 51.346401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.362427, 49.768051, 51.607910>,  <40.667145, 49.960953, 50.962261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.362427, 49.768051, 51.607910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.762127, 49.776634, 51.595032>,  <41.001945, 49.781784, 51.587303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.762127, 49.776634, 51.595032>,  <40.362427, 49.768051, 51.607910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.762127, 49.776634, 51.595032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001626, 0.808163, 0.588957,
		0.038656, -0.588568, 0.807523,
		0.999251, 0.021454, -0.032197,
		41.061901, 49.783070, 51.585373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.645329, 49.948429, 52.252193>,  <40.362427, 49.768051, 51.607910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.645329, 49.948429, 52.252193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.904793, 50.056175, 51.967468>,  <41.060471, 50.120823, 51.796631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.904793, 50.056175, 51.967468>,  <40.645329, 49.948429, 52.252193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.904793, 50.056175, 51.967468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093452, 0.900005, 0.425743,
		0.755321, -0.342683, 0.558623,
		0.648658, 0.269368, -0.711817,
		41.099392, 50.136986, 51.753922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.390953, 50.020493, 52.477154>,  <40.645329, 49.948429, 52.252193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.390953, 50.020493, 52.477154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.220509, 50.260914, 52.206699>,  <41.118240, 50.405167, 52.044426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.220509, 50.260914, 52.206699>,  <41.390953, 50.020493, 52.477154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.220509, 50.260914, 52.206699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218447, 0.793633, 0.567827,
		0.877900, 0.094258, -0.469476,
		-0.426114, 0.601051, -0.676140,
		41.092674, 50.441231, 52.003857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.915947, 50.461044, 52.140327>,  <41.390953, 50.020493, 52.477154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.915947, 50.461044, 52.140327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.543789, 50.588760, 52.212345>,  <41.320496, 50.665390, 52.255558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.543789, 50.588760, 52.212345>,  <41.915947, 50.461044, 52.140327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.543789, 50.588760, 52.212345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353807, 0.653803, 0.668851,
		0.095845, 0.685998, -0.721263,
		-0.930395, 0.319294, 0.180047,
		41.264671, 50.684547, 52.266361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.968552, 51.162220, 52.165165>,  <41.915947, 50.461044, 52.140327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.968552, 51.162220, 52.165165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.660480, 51.045536, 52.392052>,  <41.475639, 50.975525, 52.528183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.660480, 51.045536, 52.392052>,  <41.968552, 51.162220, 52.165165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.660480, 51.045536, 52.392052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363994, 0.529256, 0.766418,
		-0.523776, 0.796739, -0.301438,
		-0.770173, -0.291710, 0.567220,
		41.429428, 50.958023, 52.562218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.593815, 51.719349, 52.521290>,  <41.968552, 51.162220, 52.165165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.593815, 51.719349, 52.521290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.511951, 51.395042, 52.740662>,  <41.462833, 51.200459, 52.872284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.511951, 51.395042, 52.740662>,  <41.593815, 51.719349, 52.521290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.511951, 51.395042, 52.740662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445152, 0.421908, 0.789831,
		-0.871754, 0.405781, 0.274566,
		-0.204656, -0.810762, 0.548434,
		41.450554, 51.151814, 52.905193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.624855, 51.944107, 53.124725>,  <41.593815, 51.719349, 52.521290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.624855, 51.944107, 53.124725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.669563, 51.551682, 53.188004>,  <41.696388, 51.316227, 53.225971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.669563, 51.551682, 53.188004>,  <41.624855, 51.944107, 53.124725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.669563, 51.551682, 53.188004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484972, 0.192800, 0.853013,
		-0.867358, -0.018622, 0.497337,
		0.111771, -0.981061, 0.158196,
		41.703094, 51.257362, 53.235462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.173260, 51.659531, 53.661819>,  <41.624855, 51.944107, 53.124725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.173260, 51.659531, 53.661819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.546810, 51.519123, 53.634529>,  <41.770943, 51.434879, 53.618153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.546810, 51.519123, 53.634529>,  <41.173260, 51.659531, 53.661819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.546810, 51.519123, 53.634529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200236, 0.355238, 0.913078,
		-0.296273, -0.866365, 0.402036,
		0.933878, -0.351023, -0.068230,
		41.826973, 51.413815, 53.614059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.596676, 52.043190, 54.079483>,  <41.173260, 51.659531, 53.661819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.596676, 52.043190, 54.079483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.987877, 51.966892, 54.113258>,  <42.222595, 51.921112, 54.133522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.987877, 51.966892, 54.113258>,  <41.596676, 52.043190, 54.079483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.987877, 51.966892, 54.113258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207500, 0.848016, -0.487660,
		0.021414, 0.494453, 0.868941,
		0.978001, -0.190748, 0.084439,
		42.281277, 51.909668, 54.138592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.864906, 52.767960, 54.337864>,  <41.596676, 52.043190, 54.079483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.864906, 52.767960, 54.337864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.823971, 52.768211, 53.939964>,  <41.799412, 52.768364, 53.701225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.823971, 52.768211, 53.939964>,  <41.864906, 52.767960, 54.337864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.823971, 52.768211, 53.939964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661427, 0.746873, 0.068518,
		0.742995, 0.664966, -0.076015,
		-0.102335, 0.000630, -0.994750,
		41.793270, 52.768402, 53.641541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.763172, 53.566284, 54.517231>,  <41.864906, 52.767960, 54.337864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.763172, 53.566284, 54.517231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.742794, 53.332031, 54.193642>,  <41.730568, 53.191479, 53.999489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.742794, 53.332031, 54.193642>,  <41.763172, 53.566284, 54.517231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.742794, 53.332031, 54.193642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944783, 0.290816, -0.151033,
		0.323712, 0.756609, -0.568114,
		-0.050944, -0.585636, -0.808971,
		41.727512, 53.156342, 53.950951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.876385, 54.097767, 54.984287>,  <41.763172, 53.566284, 54.517231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.876385, 54.097767, 54.984287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.118134, 53.950630, 54.701607>,  <42.263184, 53.862347, 54.531998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.118134, 53.950630, 54.701607>,  <41.876385, 54.097767, 54.984287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.118134, 53.950630, 54.701607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742491, 0.581670, 0.332215,
		0.288865, -0.725502, 0.624663,
		0.604370, -0.367842, -0.706703,
		42.299446, 53.840279, 54.489597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.498863, 53.936142, 55.292439>,  <41.876385, 54.097767, 54.984287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.498863, 53.936142, 55.292439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.585484, 53.977089, 54.904083>,  <42.637455, 54.001656, 54.671070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.585484, 53.977089, 54.904083>,  <42.498863, 53.936142, 55.292439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.585484, 53.977089, 54.904083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847743, 0.473507, 0.239003,
		0.484189, -0.874822, 0.015758,
		0.216547, 0.102364, -0.970891,
		42.650448, 54.007797, 54.612816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.183678, 53.641865, 54.985874>,  <42.498863, 53.936142, 55.292439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.183678, 53.641865, 54.985874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.097481, 53.976368, 54.784187>,  <43.045765, 54.177071, 54.663174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.097481, 53.976368, 54.784187>,  <43.183678, 53.641865, 54.985874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.097481, 53.976368, 54.784187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942566, 0.313076, 0.116422,
		0.255217, -0.450169, -0.855694,
		-0.215488, 0.836260, -0.504216,
		43.032833, 54.227245, 54.632923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.731697, 53.833832, 54.468555>,  <43.183678, 53.641865, 54.985874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.731697, 53.833832, 54.468555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.577969, 54.196533, 54.537949>,  <43.485729, 54.414154, 54.579582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.577969, 54.196533, 54.537949>,  <43.731697, 53.833832, 54.468555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.577969, 54.196533, 54.537949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920565, 0.362218, 0.146144,
		0.069678, 0.215866, -0.973934,
		-0.384324, 0.906752, 0.173480,
		43.462673, 54.468559, 54.589993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.096134, 54.444241, 53.977028>,  <43.731697, 53.833832, 54.468555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.096134, 54.444241, 53.977028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.933815, 54.592766, 54.311081>,  <43.836422, 54.681881, 54.511513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.933815, 54.592766, 54.311081>,  <44.096134, 54.444241, 53.977028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.933815, 54.592766, 54.311081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894462, 0.349087, 0.279420,
		-0.187781, 0.860385, -0.473789,
		-0.405803, 0.371317, 0.835134,
		43.812073, 54.704163, 54.561623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.425407, 55.139286, 54.142532>,  <44.096134, 54.444241, 53.977028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.425407, 55.139286, 54.142532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.310368, 54.859856, 54.404610>,  <44.241344, 54.692196, 54.561855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.310368, 54.859856, 54.404610>,  <44.425407, 55.139286, 54.142532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.310368, 54.859856, 54.404610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916800, -0.002907, 0.399335,
		-0.277063, 0.715526, 0.641294,
		-0.287599, -0.698580, 0.655190,
		44.224087, 54.650280, 54.601166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.662144, 55.295544, 54.845356>,  <44.425407, 55.139286, 54.142532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.662144, 55.295544, 54.845356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.641033, 54.901073, 54.782532>,  <44.628365, 54.664391, 54.744839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.641033, 54.901073, 54.782532>,  <44.662144, 55.295544, 54.845356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.641033, 54.901073, 54.782532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966768, -0.089859, 0.239345,
		-0.250149, -0.139205, 0.958148,
		-0.052780, -0.986178, -0.157057,
		44.625198, 54.605221, 54.735416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.922478, 54.865021, 55.477909>,  <44.662144, 55.295544, 54.845356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.922478, 54.865021, 55.477909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.973465, 54.627289, 55.160286>,  <45.004055, 54.484650, 54.969711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.973465, 54.627289, 55.160286>,  <44.922478, 54.865021, 55.477909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.973465, 54.627289, 55.160286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954158, -0.145108, 0.261775,
		-0.270805, -0.791021, 0.548590,
		0.127464, -0.594331, -0.794055,
		45.011703, 54.448990, 54.922070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.055241, 54.105782, 55.630116>,  <44.922478, 54.865021, 55.477909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.055241, 54.105782, 55.630116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.215012, 54.210079, 55.278557>,  <45.310875, 54.272659, 55.067619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.215012, 54.210079, 55.278557>,  <45.055241, 54.105782, 55.630116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.215012, 54.210079, 55.278557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873431, -0.399496, 0.278427,
		-0.278519, -0.878872, -0.387313,
		0.399432, 0.260744, -0.878901,
		45.334843, 54.288303, 55.014885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.187725, 53.404526, 55.240341>,  <45.055241, 54.105782, 55.630116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.187725, 53.404526, 55.240341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.434223, 53.716312, 55.195297>,  <45.582123, 53.903385, 55.168270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.434223, 53.716312, 55.195297>,  <45.187725, 53.404526, 55.240341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.434223, 53.716312, 55.195297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657381, -0.430361, 0.618579,
		0.433697, -0.455222, -0.777611,
		0.616245, 0.779463, -0.112608,
		45.619095, 53.950150, 55.161514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.861034, 53.115547, 54.888386>,  <45.187725, 53.404526, 55.240341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.861034, 53.115547, 54.888386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.830517, 53.422340, 55.143234>,  <45.812206, 53.606415, 55.296143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.830517, 53.422340, 55.143234>,  <45.861034, 53.115547, 54.888386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.830517, 53.422340, 55.143234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554967, -0.498191, 0.666196,
		0.828366, 0.404407, -0.387640,
		-0.076296, 0.766982, 0.637117,
		45.807629, 53.652435, 55.334370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.548779, 53.268116, 55.203999>,  <45.861034, 53.115547, 54.888386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.548779, 53.268116, 55.203999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.240772, 53.334473, 55.450432>,  <46.055969, 53.374287, 55.598289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.240772, 53.334473, 55.450432>,  <46.548779, 53.268116, 55.203999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.240772, 53.334473, 55.450432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475140, -0.495340, 0.727241,
		0.425809, 0.852713, 0.302602,
		-0.770019, 0.165887, 0.616079,
		46.009766, 53.384239, 55.635254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.854790, 53.549767, 55.846130>,  <46.548779, 53.268116, 55.203999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.854790, 53.549767, 55.846130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.502483, 53.361992, 55.871033>,  <46.291100, 53.249325, 55.885975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.502483, 53.361992, 55.871033>,  <46.854790, 53.549767, 55.846130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.502483, 53.361992, 55.871033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357548, -0.573035, 0.737422,
		-0.310500, 0.671756, 0.672557,
		-0.880766, -0.469441, 0.062258,
		46.238255, 53.221161, 55.889709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.652607, 53.425644, 56.016464>,  <46.854790, 53.549767, 55.846130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.652607, 53.425644, 56.016464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.915337, 53.130405, 55.954750>,  <48.072975, 52.953262, 55.917721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.915337, 53.130405, 55.954750>,  <47.652607, 53.425644, 56.016464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.915337, 53.130405, 55.954750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627604, 0.421708, 0.654428,
		-0.417967, -0.526671, 0.740217,
		0.656824, -0.738092, -0.154281,
		48.112385, 52.908978, 55.908466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.999168, 53.200130, 56.642490>,  <47.652607, 53.425644, 56.016464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.999168, 53.200130, 56.642490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.244793, 53.081482, 56.349930>,  <48.392170, 53.010292, 56.174393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.244793, 53.081482, 56.349930>,  <47.999168, 53.200130, 56.642490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.244793, 53.081482, 56.349930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776570, 0.392557, 0.492786,
		0.140946, -0.870584, 0.471400,
		0.614063, -0.296618, -0.731399,
		48.429012, 52.992496, 56.130508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.587883, 52.670963, 56.830116>,  <47.999168, 53.200130, 56.642490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.587883, 52.670963, 56.830116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.666454, 52.924564, 56.530930>,  <48.713596, 53.076725, 56.351418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.666454, 52.924564, 56.530930>,  <48.587883, 52.670963, 56.830116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.666454, 52.924564, 56.530930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831651, 0.296353, 0.469608,
		0.519396, -0.714290, -0.469060,
		0.196429, 0.634007, -0.747964,
		48.725384, 53.114765, 56.306541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.292297, 52.583504, 56.645863>,  <48.587883, 52.670963, 56.830116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.292297, 52.583504, 56.645863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.129356, 52.946995, 56.609459>,  <49.031593, 53.165089, 56.587616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.129356, 52.946995, 56.609459>,  <49.292297, 52.583504, 56.645863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.129356, 52.946995, 56.609459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644049, 0.356493, 0.676841,
		0.647509, 0.217094, -0.730481,
		-0.407349, 0.908726, -0.091013,
		49.007153, 53.219612, 56.582153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.708447, 53.102631, 56.301590>,  <49.292297, 52.583504, 56.645863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.708447, 53.102631, 56.301590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.480179, 53.278008, 56.579323>,  <49.343220, 53.383236, 56.745964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.480179, 53.278008, 56.579323>,  <49.708447, 53.102631, 56.301590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.480179, 53.278008, 56.579323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821080, 0.317861, 0.474121,
		-0.012826, 0.840672, -0.541393,
		-0.570668, 0.438447, 0.694336,
		49.308979, 53.409542, 56.787624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.799168, 53.801723, 56.201843>,  <49.708447, 53.102631, 56.301590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.799168, 53.801723, 56.201843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.689255, 53.735779, 56.580750>,  <49.623306, 53.696213, 56.808094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.689255, 53.735779, 56.580750>,  <49.799168, 53.801723, 56.201843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.689255, 53.735779, 56.580750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892175, 0.323603, 0.315125,
		-0.358491, 0.931720, 0.058165,
		-0.274786, -0.164863, 0.947266,
		49.606819, 53.686321, 56.864929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.832073, 54.394279, 56.719551>,  <49.799168, 53.801723, 56.201843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.832073, 54.394279, 56.719551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.892056, 54.049873, 56.913940>,  <49.928047, 53.843231, 57.030575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.892056, 54.049873, 56.913940>,  <49.832073, 54.394279, 56.719551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.892056, 54.049873, 56.913940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861480, 0.354981, 0.363098,
		-0.485143, 0.364208, 0.794977,
		0.149958, -0.861012, 0.485975,
		49.937042, 53.791569, 57.059734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.877743, 54.618347, 57.438305>,  <49.832073, 54.394279, 56.719551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.877743, 54.618347, 57.438305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.079788, 54.291290, 57.327797>,  <50.201015, 54.095058, 57.261494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.079788, 54.291290, 57.327797>,  <49.877743, 54.618347, 57.438305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.079788, 54.291290, 57.327797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757242, 0.266293, 0.596384,
		-0.414059, -0.510444, 0.753659,
		0.505114, -0.817640, -0.276269,
		50.231323, 54.045998, 57.244915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.252316, 54.612045, 58.005573>,  <49.877743, 54.618347, 57.438305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.252316, 54.612045, 58.005573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.434654, 54.404789, 57.716095>,  <50.544056, 54.280437, 57.542408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.434654, 54.404789, 57.716095>,  <50.252316, 54.612045, 58.005573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.434654, 54.404789, 57.716095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876535, 0.120122, 0.466108,
		-0.154576, -0.846820, 0.508923,
		0.455843, -0.518138, -0.723699,
		50.571407, 54.249348, 57.498985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.540195, 53.877384, 58.207359>,  <50.252316, 54.612045, 58.005573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.540195, 53.877384, 58.207359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.758411, 54.077316, 57.938271>,  <50.889343, 54.197273, 57.776817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.758411, 54.077316, 57.938271>,  <50.540195, 53.877384, 58.207359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.758411, 54.077316, 57.938271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791205, -0.042466, 0.610075,
		0.276365, -0.865083, -0.418634,
		0.545543, 0.499829, -0.672722,
		50.922073, 54.227264, 57.736454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.091030, 53.408310, 58.018471>,  <50.540195, 53.877384, 58.207359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.091030, 53.408310, 58.018471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.197460, 53.787178, 57.946838>,  <51.261318, 54.014500, 57.903858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.197460, 53.787178, 57.946838>,  <51.091030, 53.408310, 58.018471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.197460, 53.787178, 57.946838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842636, -0.138315, 0.520417,
		0.468154, -0.289375, -0.834922,
		0.266078, 0.947170, -0.179085,
		51.277283, 54.071327, 57.893112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.706676, 53.567104, 57.512264>,  <51.091030, 53.408310, 58.018471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.706676, 53.567104, 57.512264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.661228, 53.857342, 57.783737>,  <51.633961, 54.031483, 57.946621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.661228, 53.857342, 57.783737>,  <51.706676, 53.567104, 57.512264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.661228, 53.857342, 57.783737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923271, -0.175196, 0.341872,
		0.366962, 0.665449, -0.650012,
		-0.113619, 0.725592, 0.678680,
		51.627144, 54.075020, 57.987343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.307175, 54.009174, 57.623184>,  <51.706676, 53.567104, 57.512264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.307175, 54.009174, 57.623184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.124256, 54.031330, 57.978218>,  <52.014507, 54.044624, 58.191238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.124256, 54.031330, 57.978218>,  <52.307175, 54.009174, 57.623184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.124256, 54.031330, 57.978218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886229, -0.054690, 0.460008,
		0.074024, 0.996966, -0.024082,
		-0.457295, 0.055394, 0.887588,
		51.987068, 54.047947, 58.244495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.881332, 53.795101, 57.110634>,  <52.307175, 54.009174, 57.623184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.881332, 53.795101, 57.110634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.084034, 54.066444, 57.323433>,  <53.205654, 54.229252, 57.451111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.084034, 54.066444, 57.323433>,  <52.881332, 53.795101, 57.110634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.084034, 54.066444, 57.323433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845991, -0.272619, -0.458234,
		-0.165817, 0.682278, -0.712040,
		0.506759, 0.678362, 0.531996,
		53.236061, 54.269955, 57.483032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.346748, 54.152313, 56.668102>,  <52.881332, 53.795101, 57.110634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.346748, 54.152313, 56.668102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.491573, 54.161861, 57.040840>,  <53.578468, 54.167591, 57.264484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.491573, 54.161861, 57.040840>,  <53.346748, 54.152313, 56.668102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.491573, 54.161861, 57.040840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930324, 0.053344, -0.362838,
		-0.058368, 0.998291, -0.002889,
		0.362063, 0.023866, 0.931848,
		53.600193, 54.169022, 57.320396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.785889, 54.749466, 56.800137>,  <53.346748, 54.152313, 56.668102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.785889, 54.749466, 56.800137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.903290, 54.448154, 57.035568>,  <53.973732, 54.267368, 57.176826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.903290, 54.448154, 57.035568>,  <53.785889, 54.749466, 56.800137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.903290, 54.448154, 57.035568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904049, 0.018590, -0.427025,
		0.310727, 0.657441, 0.686455,
		0.293505, -0.753277, 0.588582,
		53.991341, 54.222172, 57.212143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.476196, 54.899090, 57.010181>,  <53.785889, 54.749466, 56.800137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.476196, 54.899090, 57.010181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.413986, 54.507553, 57.063370>,  <54.376659, 54.272633, 57.095284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.413986, 54.507553, 57.063370>,  <54.476196, 54.899090, 57.010181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.413986, 54.507553, 57.063370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841555, -0.201777, -0.501071,
		0.517300, 0.033977, 0.855129,
		-0.155521, -0.978842, 0.132972,
		54.367329, 54.213902, 57.103260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.602940, 54.542046, 57.729706>,  <54.476196, 54.899090, 57.010181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.602940, 54.542046, 57.729706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.613174, 54.899529, 57.908875>,  <54.619316, 55.114017, 58.016376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.613174, 54.899529, 57.908875>,  <54.602940, 54.542046, 57.729706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.613174, 54.899529, 57.908875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756081, -0.310425, 0.576176,
		0.653978, 0.323924, -0.683656,
		0.025587, 0.893705, 0.447924,
		54.620850, 55.167641, 58.043251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.208332, 54.435448, 58.033989>,  <54.602940, 54.542046, 57.729706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.208332, 54.435448, 58.033989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.095551, 54.794716, 58.168922>,  <55.027882, 55.010277, 58.249882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.095551, 54.794716, 58.168922>,  <55.208332, 54.435448, 58.033989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.095551, 54.794716, 58.168922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752775, -0.010885, 0.658187,
		0.594835, 0.439516, -0.673050,
		-0.281957, 0.898169, 0.337332,
		55.010963, 55.064167, 58.270123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.717266, 55.029007, 58.017925>,  <55.208332, 54.435448, 58.033989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.717266, 55.029007, 58.017925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.468285, 55.074837, 58.327614>,  <55.318893, 55.102333, 58.513428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.468285, 55.074837, 58.327614>,  <55.717266, 55.029007, 58.017925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.468285, 55.074837, 58.327614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780517, 0.017809, 0.624881,
		0.057808, 0.993255, -0.100514,
		-0.622456, 0.114576, 0.774223,
		55.281548, 55.109211, 58.559879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.228088, 55.595222, 57.936916>,  <55.717266, 55.029007, 58.017925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.228088, 55.595222, 57.936916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.619087, 55.666542, 57.982010>,  <56.853687, 55.709332, 58.009064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.619087, 55.666542, 57.982010>,  <56.228088, 55.595222, 57.936916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.619087, 55.666542, 57.982010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082582, 0.815202, -0.573259,
		-0.194110, 0.551049, 0.811582,
		0.977498, 0.178297, 0.112732,
		56.912338, 55.720032, 58.015831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.339432, 56.315361, 58.157211>,  <56.228088, 55.595222, 57.936916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.339432, 56.315361, 58.157211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.663376, 56.178661, 57.966492>,  <56.857742, 56.096642, 57.852058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.663376, 56.178661, 57.966492>,  <56.339432, 56.315361, 58.157211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.663376, 56.178661, 57.966492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035474, 0.782766, -0.621304,
		0.585551, 0.520083, 0.621807,
		0.809859, -0.341747, -0.476799,
		56.906334, 56.076138, 57.823452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.918110, 56.745647, 58.185196>,  <56.339432, 56.315361, 58.157211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.918110, 56.745647, 58.185196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.917404, 56.519989, 57.854927>,  <56.916981, 56.384594, 57.656765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.917404, 56.519989, 57.854927>,  <56.918110, 56.745647, 58.185196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.917404, 56.519989, 57.854927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009276, 0.825649, -0.564108,
		0.999956, 0.006662, -0.006691,
		-0.001766, -0.564145, -0.825674,
		56.916874, 56.350746, 57.607224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.368141, 57.032448, 57.763954>,  <56.918110, 56.745647, 58.185196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.368141, 57.032448, 57.763954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.177048, 56.807255, 57.494194>,  <57.062389, 56.672138, 57.332336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.177048, 56.807255, 57.494194>,  <57.368141, 57.032448, 57.763954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.177048, 56.807255, 57.494194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198271, 0.678766, -0.707082,
		0.855837, -0.471513, -0.212647,
		-0.477736, -0.562985, -0.674401,
		57.033726, 56.638359, 57.291874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.921902, 57.422737, 57.662514>,  <57.368141, 57.032448, 57.763954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.921902, 57.422737, 57.662514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.098854, 57.774277, 57.733994>,  <58.205025, 57.985199, 57.776882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.098854, 57.774277, 57.733994>,  <57.921902, 57.422737, 57.662514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.098854, 57.774277, 57.733994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329147, -0.344455, 0.879212,
		0.834244, -0.330126, -0.441648,
		0.442378, 0.878845, 0.178700,
		58.231567, 58.037930, 57.787605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.543434, 57.286789, 57.978329>,  <57.921902, 57.422737, 57.662514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.543434, 57.286789, 57.978329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.444427, 57.664745, 58.064034>,  <58.385021, 57.891521, 58.115456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.444427, 57.664745, 58.064034>,  <58.543434, 57.286789, 57.978329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.444427, 57.664745, 58.064034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067078, -0.203898, 0.976691,
		0.966558, 0.256124, -0.012913,
		-0.247521, 0.944895, 0.214259,
		58.370171, 57.948215, 58.128311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.819916, 57.131638, 57.326809>,  <58.543434, 57.286789, 57.978329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.819916, 57.131638, 57.326809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.539070, 56.935291, 57.533142>,  <58.370564, 56.817486, 57.656944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.539070, 56.935291, 57.533142>,  <58.819916, 57.131638, 57.326809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.539070, 56.935291, 57.533142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699517, 0.340097, -0.628498,
		0.133070, -0.802115, -0.582154,
		-0.702117, -0.490861, 0.515837,
		58.328434, 56.788033, 57.687893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.344025, 56.999386, 56.865894>,  <58.819916, 57.131638, 57.326809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.344025, 56.999386, 56.865894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.123413, 56.928154, 57.191864>,  <57.991047, 56.885414, 57.387447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.123413, 56.928154, 57.191864>,  <58.344025, 56.999386, 56.865894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.123413, 56.928154, 57.191864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771121, 0.481394, -0.416692,
		-0.318097, -0.858224, -0.402821,
		-0.551531, -0.178075, 0.814925,
		57.957954, 56.874733, 57.436340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.933109, 56.610394, 56.415855>,  <58.344025, 56.999386, 56.865894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.933109, 56.610394, 56.415855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.257538, 56.378433, 56.385170>,  <59.452194, 56.239258, 56.366756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.257538, 56.378433, 56.385170>,  <58.933109, 56.610394, 56.415855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.257538, 56.378433, 56.385170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442929, -0.523179, -0.728078,
		0.382073, 0.624502, -0.681188,
		0.811070, -0.579897, -0.076718,
		59.500858, 56.204464, 56.362156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.155243, 56.491482, 55.671452>,  <58.933109, 56.610394, 56.415855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.155243, 56.491482, 55.671452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.308884, 56.172371, 55.857361>,  <59.401070, 55.980904, 55.968906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.308884, 56.172371, 55.857361>,  <59.155243, 56.491482, 55.671452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.308884, 56.172371, 55.857361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173179, -0.556704, -0.812459,
		0.906903, 0.231580, -0.351991,
		0.384104, -0.797780, 0.464771,
		59.424114, 55.933037, 55.996792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.720802, 56.130104, 55.347763>,  <59.155243, 56.491482, 55.671452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.720802, 56.130104, 55.347763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.514442, 55.858299, 55.556419>,  <59.390625, 55.695217, 55.681614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.514442, 55.858299, 55.556419>,  <59.720802, 56.130104, 55.347763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.514442, 55.858299, 55.556419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101520, -0.556146, -0.824861,
		0.850611, -0.478504, 0.217933,
		-0.515902, -0.679511, 0.521642,
		59.359673, 55.654446, 55.712914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.913422, 55.399487, 55.312778>,  <59.720802, 56.130104, 55.347763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.913422, 55.399487, 55.312778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.515633, 55.378311, 55.349030>,  <59.276958, 55.365604, 55.370781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.515633, 55.378311, 55.349030>,  <59.913422, 55.399487, 55.312778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.515633, 55.378311, 55.349030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053489, -0.487331, -0.871578,
		0.090309, -0.871611, 0.481807,
		-0.994477, -0.052940, 0.090632,
		59.217289, 55.362431, 55.376221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.177662, 54.829800, 55.533138>,  <59.913422, 55.399487, 55.312778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.177662, 54.829800, 55.533138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.459610, 54.873955, 55.813416>,  <60.628780, 54.900448, 55.981583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.459610, 54.873955, 55.813416>,  <60.177662, 54.829800, 55.533138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.459610, 54.873955, 55.813416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638588, -0.528800, -0.559085,
		0.308809, 0.841537, -0.443230,
		0.704871, 0.110390, 0.700694,
		60.671070, 54.907070, 56.023624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.759174, 55.111202, 55.255421>,  <60.177662, 54.829800, 55.533138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.759174, 55.111202, 55.255421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.820076, 54.849792, 55.551994>,  <60.856617, 54.692947, 55.729939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.820076, 54.849792, 55.551994>,  <60.759174, 55.111202, 55.255421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.820076, 54.849792, 55.551994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538940, -0.573936, -0.616556,
		0.828469, 0.493465, 0.264822,
		0.152257, -0.653521, 0.741436,
		60.865753, 54.653736, 55.774426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.543137, 54.981632, 55.111111>,  <60.759174, 55.111202, 55.255421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.543137, 54.981632, 55.111111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.853088, 55.121311, 55.321869>,  <62.039059, 55.205116, 55.448322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.853088, 55.121311, 55.321869>,  <61.543137, 54.981632, 55.111111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.853088, 55.121311, 55.321869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328489, 0.489705, -0.807641,
		-0.540046, 0.798908, 0.264758,
		0.774884, 0.349194, 0.526895,
		62.085552, 55.226070, 55.479939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.574123, 55.743099, 55.160698>,  <61.543137, 54.981632, 55.111111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.574123, 55.743099, 55.160698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.935944, 55.573845, 55.181641>,  <62.153034, 55.472290, 55.194206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.935944, 55.573845, 55.181641>,  <61.574123, 55.743099, 55.160698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.935944, 55.573845, 55.181641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216762, 0.350654, -0.911074,
		0.367153, 0.835461, 0.408905,
		0.904551, -0.423138, 0.052352,
		62.207310, 55.446903, 55.197346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.216644, 56.168163, 55.120369>,  <61.574123, 55.743099, 55.160698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.216644, 56.168163, 55.120369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.255013, 55.807556, 54.951576>,  <62.278034, 55.591190, 54.850300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.255013, 55.807556, 54.951576>,  <62.216644, 56.168163, 55.120369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.255013, 55.807556, 54.951576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223108, 0.432617, -0.873536,
		0.970063, -0.010360, 0.242632,
		0.095917, -0.901518, -0.421977,
		62.283787, 55.537102, 54.824982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.721649, 55.936703, 55.633141>,  <62.216644, 56.168163, 55.120369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.721649, 55.936703, 55.633141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.708336, 56.150623, 55.970871>,  <62.700348, 56.278976, 56.173508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.708336, 56.150623, 55.970871>,  <62.721649, 55.936703, 55.633141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.708336, 56.150623, 55.970871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997547, -0.034278, 0.061033,
		0.061582, 0.844284, -0.532346,
		-0.033282, 0.534799, 0.844324,
		62.698353, 56.311062, 56.224167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.999588, 56.680370, 55.546997>,  <62.721649, 55.936703, 55.633141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.999588, 56.680370, 55.546997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.027168, 56.488361, 55.896812>,  <63.043716, 56.373158, 56.106701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.027168, 56.488361, 55.896812>,  <62.999588, 56.680370, 55.546997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.027168, 56.488361, 55.896812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991579, 0.129305, -0.007205,
		-0.109624, 0.867674, 0.484896,
		0.068951, -0.480023, 0.874542,
		63.047855, 56.344353, 56.159176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.566135, 56.928982, 55.696167>,  <62.999588, 56.680370, 55.546997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.566135, 56.928982, 55.696167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.492340, 56.680492, 56.000809>,  <63.448063, 56.531399, 56.183594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.492340, 56.680492, 56.000809>,  <63.566135, 56.928982, 55.696167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.492340, 56.680492, 56.000809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977042, -0.031912, 0.210642,
		-0.106551, 0.782985, 0.612847,
		-0.184487, -0.621222, 0.761609,
		63.436993, 56.494125, 56.229290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.916954, 57.153564, 56.311378>,  <63.566135, 56.928982, 55.696167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.916954, 57.153564, 56.311378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.865211, 56.758720, 56.273689>,  <63.834167, 56.521812, 56.251076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.865211, 56.758720, 56.273689>,  <63.916954, 57.153564, 56.311378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.865211, 56.758720, 56.273689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983565, -0.139795, 0.114272,
		-0.125971, -0.077894, 0.988971,
		-0.129352, -0.987112, -0.094224,
		63.826405, 56.462585, 56.245422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.249718, 56.803162, 56.875008>,  <63.916954, 57.153564, 56.311378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.249718, 56.803162, 56.875008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.203613, 56.565216, 56.556801>,  <64.175949, 56.422447, 56.365875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.203613, 56.565216, 56.556801>,  <64.249718, 56.803162, 56.875008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.203613, 56.565216, 56.556801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989179, 0.004443, -0.146643,
		0.090767, -0.803815, 0.587914,
		-0.115262, -0.594863, -0.795521,
		64.169037, 56.386757, 56.318146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.237160, 57.323662, 57.501938>,  <64.249718, 56.803162, 56.875008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.237160, 57.323662, 57.501938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.517937, 57.305321, 57.786240>,  <64.686401, 57.294315, 57.956821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.517937, 57.305321, 57.786240>,  <64.237160, 57.323662, 57.501938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.517937, 57.305321, 57.786240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710219, 0.120065, -0.693667,
		-0.053532, 0.991707, 0.116843,
		0.701943, -0.045850, 0.710756,
		64.728523, 57.291565, 57.999466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.653351, 57.891705, 57.682602>,  <64.237160, 57.323662, 57.501938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.653351, 57.891705, 57.682602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.899406, 57.585846, 57.759460>,  <65.047043, 57.402332, 57.805576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.899406, 57.585846, 57.759460>,  <64.653351, 57.891705, 57.682602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.899406, 57.585846, 57.759460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618560, 0.316949, -0.718976,
		0.488861, 0.561126, 0.667947,
		0.615141, -0.764645, 0.192146,
		65.083946, 57.356453, 57.817104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.241615, 58.329010, 57.238808>,  <64.653351, 57.891705, 57.682602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.241615, 58.329010, 57.238808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.344490, 58.713066, 57.195038>,  <64.406219, 58.943501, 57.168774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.344490, 58.713066, 57.195038>,  <64.241615, 58.329010, 57.238808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.344490, 58.713066, 57.195038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239260, 0.046444, 0.969844,
		0.936272, -0.275621, -0.217779,
		0.257195, 0.960144, -0.109429,
		64.421646, 59.001110, 57.162209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.976707, 58.506454, 57.345135>,  <64.241615, 58.329010, 57.238808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.976707, 58.506454, 57.345135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.771324, 58.841694, 57.418846>,  <64.648094, 59.042835, 57.463074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.771324, 58.841694, 57.418846>,  <64.976707, 58.506454, 57.345135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.771324, 58.841694, 57.418846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405233, 0.047525, 0.912977,
		0.756406, 0.543448, -0.364026,
		-0.513456, 0.838097, 0.184275,
		64.617287, 59.093124, 57.474129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.447578, 57.965153, 57.511997>,  <64.976707, 58.506454, 57.345135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.447578, 57.965153, 57.511997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.845711, 57.989227, 57.481850>,  <66.084595, 58.003670, 57.463760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.845711, 57.989227, 57.481850>,  <65.447578, 57.965153, 57.511997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.845711, 57.989227, 57.481850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008410, 0.724317, 0.689415,
		0.096086, -0.686835, 0.720434,
		0.995338, 0.060184, -0.075373,
		66.144310, 58.007282, 57.459236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.716866, 57.824497, 58.210899>,  <65.447578, 57.965153, 57.511997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.716866, 57.824497, 58.210899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.954430, 58.046341, 57.977776>,  <66.096970, 58.179447, 57.837902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.954430, 58.046341, 57.977776>,  <65.716866, 57.824497, 58.210899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.954430, 58.046341, 57.977776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056429, 0.751348, 0.657489,
		0.802551, -0.357601, 0.477529,
		0.593909, 0.554615, -0.582816,
		66.132607, 58.212727, 57.802933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.201416, 58.009239, 58.609364>,  <65.716866, 57.824497, 58.210899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.201416, 58.009239, 58.609364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.099663, 58.253815, 58.309647>,  <66.038612, 58.400558, 58.129818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.099663, 58.253815, 58.309647>,  <66.201416, 58.009239, 58.609364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.099663, 58.253815, 58.309647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337576, 0.669909, 0.661260,
		0.906276, 0.421151, 0.035998,
		-0.254375, 0.611436, -0.749292,
		66.023354, 58.437244, 58.084858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.161224, 58.462868, 59.238686>,  <66.201416, 58.009239, 58.609364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.161224, 58.462868, 59.238686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.137207, 58.290161, 59.598679>,  <66.122795, 58.186539, 59.814674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.137207, 58.290161, 59.598679>,  <66.161224, 58.462868, 59.238686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.137207, 58.290161, 59.598679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327173, -0.843294, -0.426396,
		0.943055, -0.320051, -0.090633,
		-0.060038, -0.431767, 0.899985,
		66.119194, 58.160629, 59.868675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.881287, 58.848007, 59.403423>,  <66.161224, 58.462868, 59.238686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.881287, 58.848007, 59.403423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.151810, 58.577003, 59.519066>,  <67.314125, 58.414402, 59.588451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.151810, 58.577003, 59.519066>,  <66.881287, 58.848007, 59.403423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.151810, 58.577003, 59.519066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729375, 0.670828, -0.134171,
		-0.103040, 0.301610, 0.947847,
		0.676309, -0.677511, 0.289109,
		67.354706, 58.373749, 59.605797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.335831, 59.198994, 59.970562>,  <66.881287, 58.848007, 59.403423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.335831, 59.198994, 59.970562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.526863, 58.912540, 59.766968>,  <67.641479, 58.740669, 59.644814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.526863, 58.912540, 59.766968>,  <67.335831, 59.198994, 59.970562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.526863, 58.912540, 59.766968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790553, 0.603030, -0.106675,
		0.383326, -0.351433, 0.854140,
		0.477584, -0.716135, -0.508984,
		67.670135, 58.697701, 59.614273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.141304, 59.164234, 60.220261>,  <67.335831, 59.198994, 59.970562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.141304, 59.164234, 60.220261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.034935, 59.051357, 59.851555>,  <67.971115, 58.983631, 59.630333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.034935, 59.051357, 59.851555>,  <68.141304, 59.164234, 60.220261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.034935, 59.051357, 59.851555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715265, 0.583292, -0.384924,
		0.646280, -0.761668, 0.046727,
		-0.265929, -0.282191, -0.921765,
		67.955154, 58.966702, 59.575024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.704109, 58.710144, 59.715954>,  <68.141304, 59.164234, 60.220261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.704109, 58.710144, 59.715954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.446594, 58.969254, 59.553017>,  <68.292084, 59.124718, 59.455254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.446594, 58.969254, 59.553017>,  <68.704109, 58.710144, 59.715954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.446594, 58.969254, 59.553017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765174, 0.549806, -0.334995,
		0.006958, -0.527353, -0.849618,
		-0.643786, 0.647774, -0.407342,
		68.253456, 59.163586, 59.430813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.905167, 58.187584, 60.215736>,  <68.704109, 58.710144, 59.715954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.905167, 58.187584, 60.215736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.963165, 58.449631, 60.512329>,  <68.997963, 58.606857, 60.690285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.963165, 58.449631, 60.512329>,  <68.905167, 58.187584, 60.215736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.963165, 58.449631, 60.512329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254425, 0.748889, -0.611910,
		-0.956161, -0.099929, 0.275262,
		0.144993, 0.655118, 0.741483,
		69.006660, 58.646168, 60.734776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.753395, 57.469402, 60.192303>,  <68.905167, 58.187584, 60.215736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.753395, 57.469402, 60.192303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.578552, 57.110195, 60.172279>,  <68.473648, 56.894672, 60.160267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.578552, 57.110195, 60.172279>,  <68.753395, 57.469402, 60.192303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.578552, 57.110195, 60.172279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142012, -0.123868, 0.982084,
		-0.888127, 0.422169, 0.181672,
		-0.437109, -0.898015, -0.050057,
		68.447418, 56.840790, 60.157261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.231628, 57.400856, 59.652603>,  <68.753395, 57.469402, 60.192303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.231628, 57.400856, 59.652603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.511642, 57.592064, 59.864815>,  <69.679649, 57.706787, 59.992142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.511642, 57.592064, 59.864815>,  <69.231628, 57.400856, 59.652603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.511642, 57.592064, 59.864815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588207, 0.035306, -0.807939,
		-0.404938, 0.877642, -0.256457,
		0.700027, 0.478015, 0.530532,
		69.721649, 57.735470, 60.023975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.539879, 57.659492, 59.119820>,  <69.231628, 57.400856, 59.652603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.539879, 57.659492, 59.119820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.794792, 57.717312, 59.422600>,  <69.947739, 57.752003, 59.604267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.794792, 57.717312, 59.422600>,  <69.539879, 57.659492, 59.119820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.794792, 57.717312, 59.422600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750702, 0.105501, -0.652163,
		-0.174127, 0.983858, -0.041278,
		0.637281, 0.144547, 0.756954,
		69.985977, 57.760677, 59.649685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.334885, 57.525276, 59.079460>,  <69.539879, 57.659492, 59.119820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.334885, 57.525276, 59.079460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.582710, 57.309658, 59.307693>,  <70.731407, 57.180286, 59.444633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.582710, 57.309658, 59.307693>,  <70.334885, 57.525276, 59.079460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.582710, 57.309658, 59.307693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764980, 0.577548, -0.285034,
		-0.175894, 0.613084, 0.770188,
		0.619570, -0.539043, 0.570584,
		70.768578, 57.147945, 59.478870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.724518, 57.851460, 59.716526>,  <70.334885, 57.525276, 59.079460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.724518, 57.851460, 59.716526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.936417, 57.573578, 59.521904>,  <71.063560, 57.406849, 59.405128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.936417, 57.573578, 59.521904>,  <70.724518, 57.851460, 59.716526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.936417, 57.573578, 59.521904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676544, 0.692099, -0.251571,
		0.511515, -0.195908, 0.836644,
		0.529755, -0.694708, -0.486559,
		71.095345, 57.365166, 59.375935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.387115, 57.883537, 59.941566>,  <70.724518, 57.851460, 59.716526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.387115, 57.883537, 59.941566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.392204, 57.729599, 59.572411>,  <71.395256, 57.637238, 59.350918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.392204, 57.729599, 59.572411>,  <71.387115, 57.883537, 59.941566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.392204, 57.729599, 59.572411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762368, 0.600957, -0.240097,
		0.647019, -0.700531, 0.301036,
		0.012714, -0.384847, -0.922893,
		71.396019, 57.614143, 59.295544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.038956, 57.599930, 59.721191>,  <71.387115, 57.883537, 59.941566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.038956, 57.599930, 59.721191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.834412, 57.715153, 59.397331>,  <71.711685, 57.784286, 59.203014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.834412, 57.715153, 59.397331>,  <72.038956, 57.599930, 59.721191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.834412, 57.715153, 59.397331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707517, 0.675888, -0.206387,
		0.487779, -0.678378, -0.549431,
		-0.511362, 0.288060, -0.809648,
		71.681000, 57.801571, 59.154438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.781776, 57.573795, 59.520115>,  <72.038956, 57.599930, 59.721191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.781776, 57.573795, 59.520115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.861725, 57.945320, 59.395302>,  <72.909698, 58.168236, 59.320415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.861725, 57.945320, 59.395302>,  <72.781776, 57.573795, 59.520115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.861725, 57.945320, 59.395302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908337, 0.295055, 0.296422,
		0.367386, 0.224184, 0.902646,
		0.199877, 0.928808, -0.312034,
		72.921684, 58.223961, 59.301693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.599663, 57.944180, 60.208481>,  <72.781776, 57.573795, 59.520115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.599663, 57.944180, 60.208481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.964966, 57.821404, 60.101341>,  <73.184151, 57.747738, 60.037056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.964966, 57.821404, 60.101341>,  <72.599663, 57.944180, 60.208481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.964966, 57.821404, 60.101341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215993, 0.192646, -0.957201,
		0.345404, 0.932028, 0.109639,
		0.913260, -0.306939, -0.267853,
		73.238945, 57.729321, 60.020985>
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
