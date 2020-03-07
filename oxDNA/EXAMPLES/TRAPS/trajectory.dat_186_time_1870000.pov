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
	<35.947472, 53.474987, 49.358299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.188076, 53.168694, 49.267227>,  <36.332439, 52.984917, 49.212585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.188076, 53.168694, 49.267227>,  <35.947472, 53.474987, 49.358299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.188076, 53.168694, 49.267227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409783, 0.051105, 0.910750,
		-0.685754, -0.641128, 0.344524,
		0.601515, -0.765730, -0.227678,
		36.368530, 52.938976, 49.198925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765648, 52.992786, 49.870995>,  <35.947472, 53.474987, 49.358299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765648, 52.992786, 49.870995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.136127, 52.951790, 49.725864>,  <36.358418, 52.927193, 49.638786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.136127, 52.951790, 49.725864>,  <35.765648, 52.992786, 49.870995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136127, 52.951790, 49.725864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314998, -0.318466, 0.894067,
		-0.207178, -0.942378, -0.262681,
		0.926204, -0.102487, -0.362826,
		36.413990, 52.921043, 49.617016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102524, 52.706825, 50.366383>,  <35.765648, 52.992786, 49.870995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102524, 52.706825, 50.366383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.404369, 52.803093, 50.122208>,  <36.585476, 52.860855, 49.975704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.404369, 52.803093, 50.122208>,  <36.102524, 52.706825, 50.366383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404369, 52.803093, 50.122208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642115, -0.079362, 0.762489,
		0.135064, -0.967357, -0.214428,
		0.754617, 0.240672, -0.610435,
		36.630753, 52.875294, 49.939075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530643, 52.092442, 50.591846>,  <36.102524, 52.706825, 50.366383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530643, 52.092442, 50.591846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.736282, 52.403927, 50.448006>,  <36.859665, 52.590816, 50.361702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.736282, 52.403927, 50.448006>,  <36.530643, 52.092442, 50.591846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736282, 52.403927, 50.448006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628449, -0.056646, 0.775786,
		0.583741, -0.624823, -0.518501,
		0.514100, 0.778709, -0.359603,
		36.890511, 52.637539, 50.340126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228035, 52.021896, 50.462406>,  <36.530643, 52.092442, 50.591846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.228035, 52.021896, 50.462406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.120228, 52.379753, 50.604942>,  <37.055546, 52.594467, 50.690464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.120228, 52.379753, 50.604942>,  <37.228035, 52.021896, 50.462406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120228, 52.379753, 50.604942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282251, -0.280397, 0.917449,
		0.920704, 0.347843, -0.176943,
		-0.269514, 0.894641, 0.356342,
		37.039375, 52.648144, 50.711845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988735, 52.214886, 50.500740>,  <37.228035, 52.021896, 50.462406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988735, 52.214886, 50.500740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.362236, 52.326763, 50.590073>,  <38.586338, 52.393890, 50.643673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.362236, 52.326763, 50.590073>,  <37.988735, 52.214886, 50.500740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.362236, 52.326763, 50.590073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357526, 0.699589, 0.618669,
		0.016801, -0.657530, 0.753241,
		0.933753, 0.279697, 0.223330,
		38.642361, 52.410671, 50.657070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118298, 52.334717, 51.254871>,  <37.988735, 52.214886, 50.500740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.118298, 52.334717, 51.254871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.392765, 52.562008, 51.073196>,  <38.557446, 52.698383, 50.964191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.392765, 52.562008, 51.073196>,  <38.118298, 52.334717, 51.254871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.392765, 52.562008, 51.073196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363637, 0.808687, 0.462379,
		0.630030, -0.152113, 0.761527,
		0.686171, 0.568232, -0.454183,
		38.598618, 52.732479, 50.936943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691681, 52.560486, 51.535393>,  <38.118298, 52.334717, 51.254871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691681, 52.560486, 51.535393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.662674, 52.451530, 51.919174>,  <38.645267, 52.386158, 52.149441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.662674, 52.451530, 51.919174>,  <38.691681, 52.560486, 51.535393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662674, 52.451530, 51.919174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874546, -0.479846, -0.070126,
		0.479490, 0.833998, 0.273015,
		-0.072521, -0.272389, 0.959450,
		38.640919, 52.369812, 52.207008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073772, 52.871471, 52.029892>,  <38.691681, 52.560486, 51.535393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.073772, 52.871471, 52.029892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.033089, 52.491493, 52.148048>,  <39.008678, 52.263508, 52.218945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.033089, 52.491493, 52.148048>,  <39.073772, 52.871471, 52.029892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.033089, 52.491493, 52.148048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970349, -0.160177, -0.181012,
		0.219267, 0.268227, 0.938070,
		-0.101705, -0.949946, 0.295395,
		39.002579, 52.206509, 52.236668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505924, 52.679611, 52.601360>,  <39.073772, 52.871471, 52.029892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.505924, 52.679611, 52.601360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.432190, 52.399105, 52.325897>,  <39.387951, 52.230801, 52.160618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.432190, 52.399105, 52.325897>,  <39.505924, 52.679611, 52.601360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.432190, 52.399105, 52.325897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982858, -0.129394, -0.131324,
		0.002984, -0.701062, 0.713094,
		-0.184337, -0.701262, -0.688659,
		39.376888, 52.188728, 52.119301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.853722, 52.041378, 52.403400>,  <39.505924, 52.679611, 52.601360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.853722, 52.041378, 52.403400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.182251, 51.820095, 52.459099>,  <40.379368, 51.687325, 52.492519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.182251, 51.820095, 52.459099>,  <39.853722, 52.041378, 52.403400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.182251, 51.820095, 52.459099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455652, 0.783044, 0.423349,
		-0.343239, -0.284256, 0.895201,
		0.821321, -0.553210, 0.139249,
		40.428646, 51.654133, 52.500874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.110985, 52.237656, 53.063667>,  <39.853722, 52.041378, 52.403400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.110985, 52.237656, 53.063667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.451473, 52.094574, 52.910065>,  <40.655766, 52.008724, 52.817902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.451473, 52.094574, 52.910065>,  <40.110985, 52.237656, 53.063667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.451473, 52.094574, 52.910065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451298, 0.872402, 0.187736,
		0.267858, -0.333109, 0.904041,
		0.851224, -0.357705, -0.384011,
		40.706841, 51.987263, 52.794861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.660187, 52.393291, 53.530239>,  <40.110985, 52.237656, 53.063667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.660187, 52.393291, 53.530239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.817135, 52.344486, 53.165565>,  <40.911304, 52.315205, 52.946762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.817135, 52.344486, 53.165565>,  <40.660187, 52.393291, 53.530239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.817135, 52.344486, 53.165565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540856, 0.832311, 0.121380,
		0.743991, -0.540713, 0.392563,
		0.392367, -0.122014, -0.911680,
		40.934845, 52.307880, 52.892063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.055622, 52.982784, 53.377159>,  <40.660187, 52.393291, 53.530239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.055622, 52.982784, 53.377159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.185421, 52.736584, 53.089867>,  <41.263298, 52.588863, 52.917492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.185421, 52.736584, 53.089867>,  <41.055622, 52.982784, 53.377159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.185421, 52.736584, 53.089867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604449, 0.718992, -0.343061,
		0.727560, -0.322815, 0.605348,
		0.324495, -0.615500, -0.718236,
		41.282768, 52.551933, 52.874397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.814281, 53.139103, 53.221359>,  <41.055622, 52.982784, 53.377159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.814281, 53.139103, 53.221359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.673504, 52.947632, 52.899612>,  <41.589039, 52.832748, 52.706566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.673504, 52.947632, 52.899612>,  <41.814281, 53.139103, 53.221359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.673504, 52.947632, 52.899612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552605, 0.587347, -0.591313,
		0.755491, -0.652604, 0.057807,
		-0.351940, -0.478676, -0.804368,
		41.567921, 52.804028, 52.658302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.354912, 52.850292, 52.833378>,  <41.814281, 53.139103, 53.221359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.354912, 52.850292, 52.833378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.053013, 52.988064, 52.610046>,  <41.871872, 53.070724, 52.476048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.053013, 52.988064, 52.610046>,  <42.354912, 52.850292, 52.833378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.053013, 52.988064, 52.610046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654777, 0.343200, -0.673410,
		-0.040322, -0.873833, -0.484551,
		-0.754746, 0.344426, -0.558327,
		41.826588, 53.091393, 52.442547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.514805, 52.722691, 52.120323>,  <42.354912, 52.850292, 52.833378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.514805, 52.722691, 52.120323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.252922, 53.024174, 52.143253>,  <42.095791, 53.205063, 52.157009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.252922, 53.024174, 52.143253>,  <42.514805, 52.722691, 52.120323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.252922, 53.024174, 52.143253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609047, 0.570923, -0.550554,
		-0.447680, -0.325542, -0.832830,
		-0.654710, 0.753704, 0.057321,
		42.056511, 53.250286, 52.160450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.239155, 52.819061, 52.108116>,  <42.514805, 52.722691, 52.120323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.239155, 52.819061, 52.108116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.384087, 53.191730, 52.097549>,  <43.471046, 53.415333, 52.091209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.384087, 53.191730, 52.097549>,  <43.239155, 52.819061, 52.108116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.384087, 53.191730, 52.097549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931946, -0.361720, 0.025215,
		0.013937, -0.033753, -0.999333,
		0.362330, 0.931675, -0.026415,
		43.492786, 53.471233, 52.089626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.789539, 53.261219, 51.614059>,  <43.239155, 52.819061, 52.108116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.789539, 53.261219, 51.614059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.796543, 53.357006, 52.002357>,  <43.800743, 53.414478, 52.235336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.796543, 53.357006, 52.002357>,  <43.789539, 53.261219, 51.614059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.796543, 53.357006, 52.002357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934753, -0.348513, 0.069112,
		0.354868, 0.906199, -0.229940,
		0.017507, 0.239462, 0.970748,
		43.801796, 53.428844, 52.293583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.528534, 53.458157, 51.860245>,  <43.789539, 53.261219, 51.614059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.528534, 53.458157, 51.860245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.344971, 53.412144, 52.212646>,  <44.234833, 53.384537, 52.424088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.344971, 53.412144, 52.212646>,  <44.528534, 53.458157, 51.860245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.344971, 53.412144, 52.212646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888439, -0.069161, 0.453754,
		0.008735, 0.990951, 0.133938,
		-0.458912, -0.115033, 0.881004,
		44.207298, 53.377632, 52.476948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.644871, 53.954353, 52.345490>,  <44.528534, 53.458157, 51.860245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.644871, 53.954353, 52.345490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.593052, 53.605507, 52.534225>,  <44.561962, 53.396198, 52.647465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.593052, 53.605507, 52.534225>,  <44.644871, 53.954353, 52.345490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.593052, 53.605507, 52.534225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870382, 0.127951, 0.475462,
		-0.475030, 0.472272, 0.742499,
		-0.129544, -0.872117, 0.471837,
		44.554188, 53.343872, 52.675777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.851791, 54.148575, 53.020935>,  <44.644871, 53.954353, 52.345490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.851791, 54.148575, 53.020935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.879841, 53.749603, 53.026756>,  <44.896671, 53.510220, 53.030247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.879841, 53.749603, 53.026756>,  <44.851791, 54.148575, 53.020935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.879841, 53.749603, 53.026756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968705, 0.071574, 0.237669,
		-0.238101, -0.002572, 0.971237,
		0.070127, -0.997432, 0.014551,
		44.900879, 53.450375, 53.031120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.860035, 53.848991, 53.662571>,  <44.851791, 54.148575, 53.020935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.860035, 53.848991, 53.662571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.076019, 53.657429, 53.385704>,  <45.205608, 53.542492, 53.219585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.076019, 53.657429, 53.385704>,  <44.860035, 53.848991, 53.662571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.076019, 53.657429, 53.385704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840971, 0.272972, 0.467176,
		-0.034790, -0.834348, 0.550138,
		0.539960, -0.478903, -0.692166,
		45.238007, 53.513760, 53.178055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.399517, 53.583767, 54.029072>,  <44.860035, 53.848991, 53.662571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.399517, 53.583767, 54.029072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.544231, 53.594238, 53.656315>,  <45.631062, 53.600521, 53.432659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.544231, 53.594238, 53.656315>,  <45.399517, 53.583767, 54.029072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.544231, 53.594238, 53.656315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897518, 0.260569, 0.355760,
		0.252135, -0.965101, 0.070779,
		0.361787, 0.026174, -0.931893,
		45.652767, 53.602093, 53.376747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.006573, 53.052410, 53.832504>,  <45.399517, 53.583767, 54.029072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.006573, 53.052410, 53.832504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.012691, 53.402657, 53.639397>,  <46.016361, 53.612804, 53.523533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.012691, 53.402657, 53.639397>,  <46.006573, 53.052410, 53.832504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.012691, 53.402657, 53.639397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722625, 0.324021, 0.610593,
		0.691071, -0.358199, -0.627785,
		0.015298, 0.875616, -0.482765,
		46.017281, 53.665340, 53.494568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.641281, 53.177704, 53.446201>,  <46.006573, 53.052410, 53.832504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.641281, 53.177704, 53.446201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.465042, 53.504326, 53.595394>,  <46.359299, 53.700298, 53.684910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.465042, 53.504326, 53.595394>,  <46.641281, 53.177704, 53.446201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.465042, 53.504326, 53.595394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806601, 0.177721, 0.563746,
		0.394040, 0.549235, -0.736935,
		-0.440598, 0.816551, 0.372984,
		46.332863, 53.749290, 53.707291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.215275, 53.540936, 53.539890>,  <46.641281, 53.177704, 53.446201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.215275, 53.540936, 53.539890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.935947, 53.727264, 53.757278>,  <46.768353, 53.839062, 53.887711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.935947, 53.727264, 53.757278>,  <47.215275, 53.540936, 53.539890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.935947, 53.727264, 53.757278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715725, 0.444387, 0.538756,
		0.009452, 0.765200, -0.643723,
		-0.698318, 0.465821, 0.543472,
		46.726452, 53.867012, 53.920319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.225506, 54.333828, 53.591957>,  <47.215275, 53.540936, 53.539890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.225506, 54.333828, 53.591957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.059135, 54.153923, 53.908112>,  <46.959312, 54.045979, 54.097805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.059135, 54.153923, 53.908112>,  <47.225506, 54.333828, 53.591957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.059135, 54.153923, 53.908112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621369, 0.494054, 0.608121,
		-0.664007, 0.744057, 0.073981,
		-0.415926, -0.449766, 0.790390,
		46.934357, 54.018993, 54.145229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.242287, 54.763275, 54.189476>,  <47.225506, 54.333828, 53.591957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.242287, 54.763275, 54.189476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.194092, 54.412983, 54.376488>,  <47.165176, 54.202808, 54.488693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.194092, 54.412983, 54.376488>,  <47.242287, 54.763275, 54.189476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.194092, 54.412983, 54.376488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552980, 0.331918, 0.764228,
		-0.824437, 0.350609, 0.444270,
		-0.120484, -0.875730, 0.467526,
		47.157948, 54.150265, 54.516747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.865658, 54.759075, 54.861988>,  <47.242287, 54.763275, 54.189476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.865658, 54.759075, 54.861988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.148247, 54.476322, 54.848000>,  <47.317799, 54.306671, 54.839607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.148247, 54.476322, 54.848000>,  <46.865658, 54.759075, 54.861988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.148247, 54.476322, 54.848000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298284, 0.252571, 0.920454,
		-0.641817, -0.660703, 0.389285,
		0.706468, -0.706880, -0.034973,
		47.360188, 54.264259, 54.837509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.704594, 54.264980, 55.344093>,  <46.865658, 54.759075, 54.861988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.704594, 54.264980, 55.344093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.096760, 54.295532, 55.271477>,  <47.332058, 54.313862, 55.227909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.096760, 54.295532, 55.271477>,  <46.704594, 54.264980, 55.344093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.096760, 54.295532, 55.271477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144355, 0.348387, 0.926169,
		0.133985, -0.934234, 0.330538,
		0.980413, 0.076378, -0.181539,
		47.390884, 54.318447, 55.217014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.244839, 54.340591, 55.784664>,  <46.704594, 54.264980, 55.344093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.244839, 54.340591, 55.784664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.362816, 53.959301, 55.811127>,  <47.433601, 53.730526, 55.827003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.362816, 53.959301, 55.811127>,  <47.244839, 54.340591, 55.784664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.362816, 53.959301, 55.811127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908274, 0.301189, 0.290385,
		-0.296726, -0.025563, 0.954620,
		0.294945, -0.953222, 0.066152,
		47.451298, 53.673336, 55.830971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.700077, 54.291927, 56.351711>,  <47.244839, 54.340591, 55.784664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.700077, 54.291927, 56.351711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.792805, 53.946159, 56.173256>,  <47.848442, 53.738701, 56.066181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.792805, 53.946159, 56.173256>,  <47.700077, 54.291927, 56.351711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.792805, 53.946159, 56.173256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966408, 0.152339, 0.206997,
		-0.110968, -0.479138, 0.870696,
		0.231821, -0.864419, -0.446139,
		47.862350, 53.686832, 56.039413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.589111, 55.013527, 56.038368>,  <47.700077, 54.291927, 56.351711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.589111, 55.013527, 56.038368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.445412, 54.960304, 55.668884>,  <47.359192, 54.928371, 55.447193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.445412, 54.960304, 55.668884>,  <47.589111, 55.013527, 56.038368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.445412, 54.960304, 55.668884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779875, 0.500830, -0.375452,
		0.512576, -0.855258, -0.076158,
		-0.359250, -0.133054, -0.923707,
		47.337635, 54.920387, 55.391773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.011402, 54.664509, 55.628456>,  <47.589111, 55.013527, 56.038368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.011402, 54.664509, 55.628456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.790794, 54.884212, 55.377335>,  <47.658428, 55.016033, 55.226662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.790794, 54.884212, 55.377335>,  <48.011402, 54.664509, 55.628456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.790794, 54.884212, 55.377335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833068, 0.401179, -0.380859,
		0.042673, -0.733057, -0.678827,
		-0.551523, 0.549256, -0.627806,
		47.625336, 55.048988, 55.188992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.286839, 54.594486, 54.982510>,  <48.011402, 54.664509, 55.628456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.286839, 54.594486, 54.982510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.127876, 54.959564, 55.020584>,  <48.032501, 55.178612, 55.043430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.127876, 54.959564, 55.020584>,  <48.286839, 54.594486, 54.982510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.127876, 54.959564, 55.020584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848123, 0.404920, -0.341653,
		-0.350369, -0.055040, -0.934993,
		-0.397402, 0.912694, 0.095191,
		48.008656, 55.233372, 55.049141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.531559, 55.033394, 54.317261>,  <48.286839, 54.594486, 54.982510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.531559, 55.033394, 54.317261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.443787, 55.247299, 54.643665>,  <48.391125, 55.375645, 54.839508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.443787, 55.247299, 54.643665>,  <48.531559, 55.033394, 54.317261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.443787, 55.247299, 54.643665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887407, 0.456955, -0.060830,
		-0.405410, 0.710787, -0.574825,
		-0.219432, 0.534765, 0.816012,
		48.377956, 55.407730, 54.888470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.761532, 55.693298, 54.221256>,  <48.531559, 55.033394, 54.317261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.761532, 55.693298, 54.221256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.757427, 55.655910, 54.619484>,  <48.754967, 55.633476, 54.858421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.757427, 55.655910, 54.619484>,  <48.761532, 55.693298, 54.221256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.757427, 55.655910, 54.619484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931342, 0.361533, 0.043541,
		-0.364001, 0.927662, 0.083346,
		-0.010258, -0.093473, 0.995569,
		48.754349, 55.627869, 54.918156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.808365, 56.401035, 54.579662>,  <48.761532, 55.693298, 54.221256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.808365, 56.401035, 54.579662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.976501, 56.092182, 54.770294>,  <49.077385, 55.906872, 54.884674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.976501, 56.092182, 54.770294>,  <48.808365, 56.401035, 54.579662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.976501, 56.092182, 54.770294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851891, 0.516659, 0.085701,
		-0.312403, 0.369972, 0.874942,
		0.420340, -0.772129, 0.476582,
		49.102604, 55.860542, 54.913269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.027092, 56.596718, 55.398342>,  <48.808365, 56.401035, 54.579662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.027092, 56.596718, 55.398342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.255653, 56.371235, 55.159767>,  <49.392792, 56.235947, 55.016621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.255653, 56.371235, 55.159767>,  <49.027092, 56.596718, 55.398342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.255653, 56.371235, 55.159767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758308, 0.640553, 0.121083,
		0.313794, -0.521470, 0.793475,
		0.571404, -0.563703, -0.596437,
		49.427074, 56.202126, 54.980835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.676910, 56.565670, 55.795391>,  <49.027092, 56.596718, 55.398342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.676910, 56.565670, 55.795391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.740799, 56.463989, 55.413841>,  <49.779133, 56.402981, 55.184914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.740799, 56.463989, 55.413841>,  <49.676910, 56.565670, 55.795391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.740799, 56.463989, 55.413841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907889, 0.417216, 0.040832,
		0.387591, -0.872532, 0.297424,
		0.159718, -0.254202, -0.953872,
		49.788715, 56.387730, 55.127678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.377884, 56.201458, 55.611252>,  <49.676910, 56.565670, 55.795391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.377884, 56.201458, 55.611252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.226974, 56.465378, 55.351303>,  <50.136429, 56.623730, 55.195335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.226974, 56.465378, 55.351303>,  <50.377884, 56.201458, 55.611252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.226974, 56.465378, 55.351303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892221, 0.447026, -0.064103,
		0.248214, -0.604011, -0.757338,
		-0.377269, 0.659802, -0.649869,
		50.113792, 56.663319, 55.156342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.886826, 56.186752, 54.977482>,  <50.377884, 56.201458, 55.611252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.886826, 56.186752, 54.977482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.656933, 56.513916, 54.966888>,  <50.518997, 56.710217, 54.960533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.656933, 56.513916, 54.966888>,  <50.886826, 56.186752, 54.977482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.656933, 56.513916, 54.966888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794936, 0.550320, -0.255392,
		-0.194316, -0.167832, -0.966475,
		-0.574733, 0.817912, -0.026480,
		50.484512, 56.759289, 54.958946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.820633, 56.466076, 54.291801>,  <50.886826, 56.186752, 54.977482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.820633, 56.466076, 54.291801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.788807, 56.739307, 54.582199>,  <50.769711, 56.903248, 54.756439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.788807, 56.739307, 54.582199>,  <50.820633, 56.466076, 54.291801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.788807, 56.739307, 54.582199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831813, 0.446844, -0.329268,
		-0.549323, 0.577692, -0.603752,
		-0.079567, 0.683083, 0.725993,
		50.764938, 56.944233, 54.799995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.545391, 56.467381, 54.672699>,  <50.820633, 56.466076, 54.291801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.545391, 56.467381, 54.672699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.862099, 56.584648, 54.458351>,  <52.052124, 56.655010, 54.329742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.862099, 56.584648, 54.458351>,  <51.545391, 56.467381, 54.672699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.862099, 56.584648, 54.458351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600956, -0.530923, 0.597472,
		-0.109346, -0.795094, -0.596548,
		0.791767, 0.293168, -0.535871,
		52.099628, 56.672600, 54.297588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.006718, 55.823589, 54.446041>,  <51.545391, 56.467381, 54.672699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.006718, 55.823589, 54.446041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.203735, 56.169258, 54.487228>,  <52.321945, 56.376659, 54.511940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.203735, 56.169258, 54.487228>,  <52.006718, 55.823589, 54.446041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.203735, 56.169258, 54.487228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696663, -0.462418, 0.548480,
		0.521598, -0.198414, -0.829800,
		0.492540, 0.864177, 0.102968,
		52.351498, 56.428513, 54.518120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.021645, 55.030899, 54.335423>,  <52.006718, 55.823589, 54.446041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.021645, 55.030899, 54.335423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.115059, 55.199883, 53.985111>,  <52.171108, 55.301273, 53.774925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.115059, 55.199883, 53.985111>,  <52.021645, 55.030899, 54.335423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.115059, 55.199883, 53.985111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779236, 0.457415, 0.428441,
		0.581595, -0.782494, -0.222376,
		0.233534, 0.422463, -0.875778,
		52.185120, 55.326622, 53.722378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.696087, 54.892670, 54.046917>,  <52.021645, 55.030899, 54.335423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.696087, 54.892670, 54.046917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.602333, 55.273090, 53.966358>,  <52.546082, 55.501343, 53.918022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.602333, 55.273090, 53.966358>,  <52.696087, 54.892670, 54.046917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.602333, 55.273090, 53.966358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800718, 0.306343, 0.514787,
		0.551286, -0.040604, -0.833327,
		-0.234382, 0.951055, -0.201395,
		52.532017, 55.558407, 53.905941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.232159, 55.144924, 53.636253>,  <52.696087, 54.892670, 54.046917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.232159, 55.144924, 53.636253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.044827, 55.416054, 53.862961>,  <52.932426, 55.578732, 53.998985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.044827, 55.416054, 53.862961>,  <53.232159, 55.144924, 53.636253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.044827, 55.416054, 53.862961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825168, 0.106217, 0.554812,
		0.315863, 0.727514, -0.609060,
		-0.468326, 0.677821, 0.566771,
		52.904327, 55.619400, 54.032993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.731579, 55.696392, 53.797329>,  <53.232159, 55.144924, 53.636253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.731579, 55.696392, 53.797329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.454220, 55.712944, 54.085075>,  <53.287804, 55.722874, 54.257721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.454220, 55.712944, 54.085075>,  <53.731579, 55.696392, 53.797329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.454220, 55.712944, 54.085075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720358, 0.016688, 0.693401,
		0.016688, 0.999004, -0.041379,
		-0.693401, 0.041379, 0.719363,
		53.246201, 55.725357, 54.300884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.777443, 56.357746, 54.214317>,  <53.731579, 55.696392, 53.797329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.777443, 56.357746, 54.214317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.670010, 56.021969, 54.403290>,  <53.605549, 55.820503, 54.516674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.670010, 56.021969, 54.403290>,  <53.777443, 56.357746, 54.214317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.670010, 56.021969, 54.403290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800053, 0.078736, 0.594740,
		-0.536450, 0.537707, 0.650456,
		-0.268581, -0.839448, 0.472432,
		53.589436, 55.770134, 54.545021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.507851, 56.552959, 54.927971>,  <53.777443, 56.357746, 54.214317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.507851, 56.552959, 54.927971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.710251, 56.212193, 54.874012>,  <53.831692, 56.007732, 54.841637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.710251, 56.212193, 54.874012>,  <53.507851, 56.552959, 54.927971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.710251, 56.212193, 54.874012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668244, 0.288310, 0.685804,
		-0.545360, -0.437158, 0.715175,
		0.505997, -0.851921, -0.134895,
		53.862049, 55.956615, 54.833542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.788788, 56.390350, 55.635742>,  <53.507851, 56.552959, 54.927971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.788788, 56.390350, 55.635742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.016426, 56.186466, 55.377647>,  <54.153008, 56.064137, 55.222790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.016426, 56.186466, 55.377647>,  <53.788788, 56.390350, 55.635742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.016426, 56.186466, 55.377647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802775, 0.174544, 0.570164,
		-0.177996, -0.842455, 0.508514,
		0.569096, -0.509709, -0.645234,
		54.187157, 56.033554, 55.184078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.165234, 55.807774, 55.942875>,  <53.788788, 56.390350, 55.635742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.165234, 55.807774, 55.942875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.397827, 55.979317, 55.666336>,  <54.537384, 56.082245, 55.500412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.397827, 55.979317, 55.666336>,  <54.165234, 55.807774, 55.942875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.397827, 55.979317, 55.666336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772019, -0.022799, 0.635191,
		0.256646, -0.903083, -0.344345,
		0.581481, 0.428860, -0.691346,
		54.572273, 56.107975, 55.458931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.697872, 55.597290, 56.198494>,  <54.165234, 55.807774, 55.942875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.697872, 55.597290, 56.198494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.786156, 55.878563, 55.928139>,  <54.839127, 56.047325, 55.765926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.786156, 55.878563, 55.928139>,  <54.697872, 55.597290, 56.198494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.786156, 55.878563, 55.928139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641514, 0.417323, 0.643662,
		0.734675, -0.575653, -0.358994,
		0.220710, 0.703182, -0.675886,
		54.852367, 56.089516, 55.725372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.434090, 55.614006, 55.965324>,  <54.697872, 55.597290, 56.198494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.434090, 55.614006, 55.965324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.223396, 55.953842, 55.976318>,  <55.096981, 56.157742, 55.982914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.223396, 55.953842, 55.976318>,  <55.434090, 55.614006, 55.965324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.223396, 55.953842, 55.976318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810052, 0.491895, 0.319146,
		0.257621, 0.190371, -0.947307,
		-0.526732, 0.849587, 0.027487,
		55.065376, 56.208717, 55.984566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.610935, 56.361340, 55.496838>,  <55.434090, 55.614006, 55.965324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.610935, 56.361340, 55.496838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.459694, 56.388351, 55.866158>,  <55.368950, 56.404560, 56.087749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.459694, 56.388351, 55.866158>,  <55.610935, 56.361340, 55.496838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.459694, 56.388351, 55.866158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846183, 0.429761, 0.315087,
		-0.375520, 0.900414, -0.219636,
		-0.378100, 0.067531, 0.923298,
		55.346264, 56.408611, 56.143147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.524071, 57.084145, 55.646931>,  <55.610935, 56.361340, 55.496838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.524071, 57.084145, 55.646931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.628197, 56.826977, 55.935066>,  <55.690674, 56.672676, 56.107948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.628197, 56.826977, 55.935066>,  <55.524071, 57.084145, 55.646931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.628197, 56.826977, 55.935066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916958, 0.398257, 0.024080,
		-0.302361, 0.654253, 0.693203,
		0.260319, -0.642919, 0.720340,
		55.706291, 56.634102, 56.151169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.566563, 57.467018, 56.208679>,  <55.524071, 57.084145, 55.646931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.566563, 57.467018, 56.208679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.812828, 57.154633, 56.166634>,  <55.960587, 56.967201, 56.141407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.812828, 57.154633, 56.166634>,  <55.566563, 57.467018, 56.208679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.812828, 57.154633, 56.166634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785924, 0.618244, 0.009893,
		0.057260, -0.088703, 0.994411,
		0.615666, -0.780965, -0.105114,
		55.997528, 56.920341, 56.135098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.915421, 57.272285, 56.804218>,  <55.566563, 57.467018, 56.208679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.915421, 57.272285, 56.804218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.173737, 57.194088, 56.508995>,  <56.328728, 57.147171, 56.331860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.173737, 57.194088, 56.508995>,  <55.915421, 57.272285, 56.804218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.173737, 57.194088, 56.508995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683714, 0.578324, 0.445058,
		0.339832, -0.792038, 0.507140,
		0.645793, -0.195494, -0.738060,
		56.367474, 57.135441, 56.287579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.535183, 57.000183, 57.075966>,  <55.915421, 57.272285, 56.804218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.535183, 57.000183, 57.075966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.571915, 57.240765, 56.758522>,  <56.593956, 57.385113, 56.568054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.571915, 57.240765, 56.758522>,  <56.535183, 57.000183, 57.075966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.571915, 57.240765, 56.758522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596939, 0.604648, 0.527319,
		0.797014, -0.522161, -0.303507,
		0.091831, 0.601456, -0.793611,
		56.599464, 57.421200, 56.520439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.230949, 57.083321, 56.892452>,  <56.535183, 57.000183, 57.075966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.230949, 57.083321, 56.892452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.062248, 57.397724, 56.711647>,  <56.961029, 57.586365, 56.603165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.062248, 57.397724, 56.711647>,  <57.230949, 57.083321, 56.892452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.062248, 57.397724, 56.711647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678347, 0.604316, 0.417909,
		0.601640, -0.130371, -0.788056,
		-0.421752, 0.786006, -0.452017,
		56.935722, 57.633526, 56.576042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.632671, 57.278095, 56.379253>,  <57.230949, 57.083321, 56.892452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.632671, 57.278095, 56.379253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.428734, 57.563381, 56.571663>,  <57.306370, 57.734550, 56.687111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.428734, 57.563381, 56.571663>,  <57.632671, 57.278095, 56.379253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.428734, 57.563381, 56.571663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853518, 0.489275, 0.179211,
		-0.107540, 0.501936, -0.858193,
		-0.509845, 0.713211, 0.481028,
		57.275780, 57.777344, 56.715973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.640087, 58.003532, 56.110840>,  <57.632671, 57.278095, 56.379253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.640087, 58.003532, 56.110840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.640388, 57.925758, 56.503204>,  <57.640572, 57.879093, 56.738625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.640388, 57.925758, 56.503204>,  <57.640087, 58.003532, 56.110840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.640388, 57.925758, 56.503204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910174, 0.406454, 0.079865,
		-0.414226, 0.892743, 0.177276,
		0.000756, -0.194435, 0.980915,
		57.640614, 57.867428, 56.797478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.865044, 58.615700, 56.472591>,  <57.640087, 58.003532, 56.110840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.865044, 58.615700, 56.472591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.946228, 58.253403, 56.621422>,  <57.994938, 58.036026, 56.710720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.946228, 58.253403, 56.621422>,  <57.865044, 58.615700, 56.472591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.946228, 58.253403, 56.621422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952355, 0.270934, 0.140054,
		-0.227660, 0.325921, 0.917576,
		0.202956, -0.905743, 0.372073,
		58.007114, 57.981678, 56.733044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.219521, 58.621799, 57.108215>,  <57.865044, 58.615700, 56.472591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.219521, 58.621799, 57.108215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.298386, 58.270409, 56.934135>,  <58.345703, 58.059574, 56.829685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.298386, 58.270409, 56.934135>,  <58.219521, 58.621799, 57.108215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.298386, 58.270409, 56.934135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976157, 0.134789, 0.170148,
		-0.090811, -0.458374, 0.884108,
		0.197159, -0.878479, -0.435204,
		58.357533, 58.006866, 56.803574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.711349, 58.287651, 57.577927>,  <58.219521, 58.621799, 57.108215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.711349, 58.287651, 57.577927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.766327, 58.087364, 57.236076>,  <58.799313, 57.967194, 57.030964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.766327, 58.087364, 57.236076>,  <58.711349, 58.287651, 57.577927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.766327, 58.087364, 57.236076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989243, 0.113006, 0.092882,
		0.050070, -0.858203, 0.510863,
		0.137442, -0.500717, -0.854630,
		58.807560, 57.937149, 56.979687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.317963, 58.089661, 57.798813>,  <58.711349, 58.287651, 57.577927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.317963, 58.089661, 57.798813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.276428, 57.976772, 57.417328>,  <59.251507, 57.909039, 57.188438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.276428, 57.976772, 57.417328>,  <59.317963, 58.089661, 57.798813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.276428, 57.976772, 57.417328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939262, -0.343200, -0.000706,
		-0.327116, -0.895860, 0.300716,
		-0.103838, -0.282220, -0.953714,
		59.245277, 57.892105, 57.131214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.675285, 57.394100, 57.669361>,  <59.317963, 58.089661, 57.798813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.675285, 57.394100, 57.669361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.672752, 57.665947, 57.375946>,  <59.671234, 57.829056, 57.199898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.672752, 57.665947, 57.375946>,  <59.675285, 57.394100, 57.669361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.672752, 57.665947, 57.375946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967627, -0.180918, -0.175972,
		-0.252304, -0.710908, -0.656470,
		-0.006332, 0.679617, -0.733540,
		59.670853, 57.869831, 57.155884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.753460, 56.969482, 56.991501>,  <59.675285, 57.394100, 57.669361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.753460, 56.969482, 56.991501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.868256, 57.352631, 56.986938>,  <59.937134, 57.582520, 56.984203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.868256, 57.352631, 56.986938>,  <59.753460, 56.969482, 56.991501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.868256, 57.352631, 56.986938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934574, -0.282583, -0.216142,
		-0.210258, 0.051373, -0.976295,
		0.286988, 0.957866, -0.011404,
		59.954353, 57.639992, 56.983517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.027157, 57.148502, 56.378418>,  <59.753460, 56.969482, 56.991501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.027157, 57.148502, 56.378418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.200661, 57.400394, 56.636192>,  <60.304764, 57.551529, 56.790855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.200661, 57.400394, 56.636192>,  <60.027157, 57.148502, 56.378418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.200661, 57.400394, 56.636192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900483, -0.327881, -0.285700,
		0.031383, 0.704225, -0.709283,
		0.433757, 0.629731, 0.644433,
		60.330788, 57.589314, 56.829521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.653385, 57.318119, 56.077129>,  <60.027157, 57.148502, 56.378418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.653385, 57.318119, 56.077129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.712494, 57.415665, 56.460526>,  <60.747959, 57.474190, 56.690563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.712494, 57.415665, 56.460526>,  <60.653385, 57.318119, 56.077129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.712494, 57.415665, 56.460526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962891, -0.256772, -0.083120,
		0.225843, 0.935200, -0.272755,
		0.147770, 0.243861, 0.958486,
		60.756824, 57.488823, 56.748070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.349922, 57.682072, 56.155674>,  <60.653385, 57.318119, 56.077129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.349922, 57.682072, 56.155674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.313072, 57.522842, 56.520760>,  <61.290962, 57.427307, 56.739811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.313072, 57.522842, 56.520760>,  <61.349922, 57.682072, 56.155674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.313072, 57.522842, 56.520760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929057, -0.364172, -0.065053,
		0.358282, 0.841974, 0.403379,
		-0.092127, -0.398069, 0.912718,
		61.285435, 57.403423, 56.794575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.836620, 58.168709, 56.210766>,  <61.349922, 57.682072, 56.155674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.836620, 58.168709, 56.210766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.112274, 57.926369, 56.369781>,  <62.277664, 57.780964, 56.465191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.112274, 57.926369, 56.369781>,  <61.836620, 58.168709, 56.210766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.112274, 57.926369, 56.369781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008870, 0.555615, 0.831392,
		-0.724581, -0.569413, 0.388266,
		0.689133, -0.605855, 0.397538,
		62.319016, 57.744614, 56.489044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.546593, 57.877808, 55.986019>,  <61.836620, 58.168709, 56.210766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.546593, 57.877808, 55.986019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.372284, 57.621708, 56.239059>,  <62.267696, 57.468048, 56.390884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.372284, 57.621708, 56.239059>,  <62.546593, 57.877808, 55.986019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.372284, 57.621708, 56.239059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720532, 0.173041, 0.671484,
		-0.539383, 0.748423, 0.385913,
		-0.435775, -0.640250, 0.632598,
		62.241550, 57.429634, 56.428841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.431534, 58.231194, 56.621449>,  <62.546593, 57.877808, 55.986019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.431534, 58.231194, 56.621449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.449265, 57.837135, 56.687813>,  <62.459904, 57.600700, 56.727631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.449265, 57.837135, 56.687813>,  <62.431534, 58.231194, 56.621449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.449265, 57.837135, 56.687813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706318, 0.148355, 0.692174,
		-0.706505, 0.086503, 0.702401,
		0.044330, -0.985144, 0.165912,
		62.462563, 57.541592, 56.737587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.281624, 57.923843, 57.310238>,  <62.431534, 58.231194, 56.621449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.281624, 57.923843, 57.310238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.573044, 57.713371, 57.134811>,  <62.747898, 57.587086, 57.029556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.573044, 57.713371, 57.134811>,  <62.281624, 57.923843, 57.310238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.573044, 57.713371, 57.134811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537949, 0.043154, 0.841872,
		-0.424054, -0.849274, 0.314501,
		0.728552, -0.526185, -0.438566,
		62.791611, 57.555515, 57.003242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.467430, 57.334869, 57.835945>,  <62.281624, 57.923843, 57.310238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.467430, 57.334869, 57.835945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.770294, 57.434422, 57.594360>,  <62.952011, 57.494152, 57.449409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.770294, 57.434422, 57.594360>,  <62.467430, 57.334869, 57.835945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.770294, 57.434422, 57.594360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650504, -0.202863, 0.731909,
		0.059634, -0.947052, -0.315496,
		0.757158, 0.248878, -0.603963,
		62.997440, 57.509087, 57.413170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.076607, 56.816399, 57.759056>,  <62.467430, 57.334869, 57.835945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.076607, 56.816399, 57.759056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.203606, 57.192295, 57.708328>,  <63.279804, 57.417831, 57.677891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.203606, 57.192295, 57.708328>,  <63.076607, 56.816399, 57.759056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.203606, 57.192295, 57.708328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654403, -0.120356, 0.746506,
		0.686259, -0.320005, -0.653181,
		0.317500, 0.939740, -0.126817,
		63.298855, 57.474216, 57.670284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.874683, 56.910568, 57.553387>,  <63.076607, 56.816399, 57.759056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.874683, 56.910568, 57.553387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.702042, 57.185085, 57.787560>,  <63.598457, 57.349796, 57.928062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.702042, 57.185085, 57.787560>,  <63.874683, 56.910568, 57.553387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.702042, 57.185085, 57.787560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670356, -0.190244, 0.717237,
		0.603607, 0.702007, -0.377949,
		-0.431603, 0.686290, 0.585427,
		63.572559, 57.390972, 57.963188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.417412, 57.207401, 57.805908>,  <63.874683, 56.910568, 57.553387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.417412, 57.207401, 57.805908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.101997, 57.299942, 58.033836>,  <63.912750, 57.355469, 58.170593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.101997, 57.299942, 58.033836>,  <64.417412, 57.207401, 57.805908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.101997, 57.299942, 58.033836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524950, -0.229486, 0.819612,
		0.320386, 0.945416, 0.059507,
		-0.788530, 0.231354, 0.569821,
		63.865437, 57.369347, 58.204784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.588638, 57.863586, 57.941338>,  <64.417412, 57.207401, 57.805908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.588638, 57.863586, 57.941338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.819099, 58.055935, 58.205704>,  <64.957375, 58.171345, 58.364323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.819099, 58.055935, 58.205704>,  <64.588638, 57.863586, 57.941338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.819099, 58.055935, 58.205704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691884, -0.717432, -0.081159,
		0.435136, 0.504038, -0.746058,
		0.576153, 0.480870, 0.660917,
		64.991943, 58.200195, 58.403980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.330940, 58.083561, 57.692307>,  <64.588638, 57.863586, 57.941338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.330940, 58.083561, 57.692307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.309578, 57.980984, 58.078339>,  <65.296761, 57.919437, 58.309959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.309578, 57.980984, 58.078339>,  <65.330940, 58.083561, 57.692307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.309578, 57.980984, 58.078339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764507, -0.632241, -0.125699,
		0.642400, 0.731100, 0.229814,
		-0.053399, -0.256444, 0.965083,
		65.293556, 57.904049, 58.367863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.008751, 58.143242, 58.055740>,  <65.330940, 58.083561, 57.692307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.008751, 58.143242, 58.055740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.784744, 57.860367, 58.228378>,  <65.650345, 57.690639, 58.331959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.784744, 57.860367, 58.228378>,  <66.008751, 58.143242, 58.055740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.784744, 57.860367, 58.228378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733973, -0.665119, -0.137478,
		0.384283, 0.239789, 0.891531,
		-0.560009, -0.707190, 0.431593,
		65.616745, 57.648209, 58.357857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.435547, 57.884422, 58.615585>,  <66.008751, 58.143242, 58.055740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.435547, 57.884422, 58.615585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.176537, 57.630901, 58.446350>,  <66.021133, 57.478786, 58.344810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.176537, 57.630901, 58.446350>,  <66.435547, 57.884422, 58.615585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.176537, 57.630901, 58.446350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746392, -0.639444, -0.184419,
		-0.153653, -0.435203, 0.887124,
		-0.647526, -0.633806, -0.423084,
		65.982277, 57.440758, 58.319424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.598457, 58.643528, 58.753376>,  <66.435547, 57.884422, 58.615585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.598457, 58.643528, 58.753376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.795685, 58.459621, 59.048805>,  <66.914024, 58.349277, 59.226063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.795685, 58.459621, 59.048805>,  <66.598457, 58.643528, 58.753376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.795685, 58.459621, 59.048805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821518, -0.033354, -0.569206,
		0.286337, 0.887412, 0.361262,
		0.493071, -0.459768, 0.738576,
		66.943604, 58.321690, 59.270378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.274353, 58.987057, 58.790161>,  <66.598457, 58.643528, 58.753376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.274353, 58.987057, 58.790161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.258598, 58.600193, 58.890602>,  <67.249146, 58.368076, 58.950867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.258598, 58.600193, 58.890602>,  <67.274353, 58.987057, 58.790161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.258598, 58.600193, 58.890602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765800, -0.190641, -0.614171,
		0.641871, 0.168101, 0.748160,
		-0.039387, -0.967160, 0.251099,
		67.246780, 58.310043, 58.965931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.919365, 58.762218, 58.512405>,  <67.274353, 58.987057, 58.790161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.919365, 58.762218, 58.512405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.692413, 58.435165, 58.551498>,  <67.556244, 58.238934, 58.574955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.692413, 58.435165, 58.551498>,  <67.919365, 58.762218, 58.512405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.692413, 58.435165, 58.551498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727614, -0.553378, -0.405402,
		0.385555, -0.158905, 0.908899,
		-0.567385, -0.817632, 0.097736,
		67.522202, 58.189877, 58.580818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.456192, 58.400555, 58.921925>,  <67.919365, 58.762218, 58.512405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.456192, 58.400555, 58.921925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.365616, 58.064869, 59.119690>,  <68.311272, 57.863457, 59.238350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.365616, 58.064869, 59.119690>,  <68.456192, 58.400555, 58.921925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.365616, 58.064869, 59.119690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922410, -0.021727, 0.385601,
		-0.312859, 0.543370, 0.779018,
		-0.226450, -0.839212, 0.494412,
		68.297684, 57.813107, 59.268013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.533165, 58.436596, 59.699406>,  <68.456192, 58.400555, 58.921925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.533165, 58.436596, 59.699406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.586517, 58.062363, 59.568626>,  <68.618530, 57.837822, 59.490158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.586517, 58.062363, 59.568626>,  <68.533165, 58.436596, 59.699406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.586517, 58.062363, 59.568626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935106, 0.009517, 0.354240,
		-0.328310, -0.352974, 0.876140,
		0.133376, -0.935585, -0.326944,
		68.626534, 57.781689, 59.470543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.849297, 59.164337, 59.947090>,  <68.533165, 58.436596, 59.699406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.849297, 59.164337, 59.947090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.924034, 59.555962, 59.979393>,  <68.968880, 59.790936, 59.998775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.924034, 59.555962, 59.979393>,  <68.849297, 59.164337, 59.947090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.924034, 59.555962, 59.979393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833873, -0.201527, 0.513850,
		0.519366, -0.028673, -0.854071,
		0.186852, 0.979063, 0.080756,
		68.980087, 59.849682, 60.003620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.357063, 58.511658, 59.813950>,  <68.849297, 59.164337, 59.947090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.357063, 58.511658, 59.813950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.461403, 58.513874, 59.427803>,  <69.524010, 58.515205, 59.196117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.461403, 58.513874, 59.427803>,  <69.357063, 58.511658, 59.813950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.461403, 58.513874, 59.427803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743105, -0.639482, 0.197122,
		-0.616239, -0.768786, -0.170931,
		0.260852, 0.005545, -0.965363,
		69.539658, 58.515537, 59.138195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.204689, 57.761742, 59.454174>,  <69.357063, 58.511658, 59.813950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.204689, 57.761742, 59.454174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.510078, 58.015640, 59.406509>,  <69.693314, 58.167980, 59.377911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.510078, 58.015640, 59.406509>,  <69.204689, 57.761742, 59.454174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.510078, 58.015640, 59.406509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605435, -0.639198, 0.474209,
		0.224831, -0.434195, -0.872310,
		0.763479, 0.634744, -0.119165,
		69.739120, 58.206062, 59.370758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.795723, 57.342690, 59.087780>,  <69.204689, 57.761742, 59.454174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.795723, 57.342690, 59.087780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.903770, 57.635506, 59.337952>,  <69.968597, 57.811195, 59.488052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.903770, 57.635506, 59.337952>,  <69.795723, 57.342690, 59.087780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.903770, 57.635506, 59.337952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561257, -0.647509, 0.515482,
		0.782322, 0.211786, -0.585764,
		0.270116, 0.732037, 0.625427,
		69.984802, 57.855118, 59.525581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.526047, 57.372231, 59.156246>,  <69.795723, 57.342690, 59.087780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.526047, 57.372231, 59.156246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.368561, 57.520889, 59.492546>,  <70.274071, 57.610085, 59.694328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.368561, 57.520889, 59.492546>,  <70.526047, 57.372231, 59.156246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.368561, 57.520889, 59.492546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496809, -0.683508, 0.534787,
		0.773414, 0.628248, 0.084469,
		-0.393715, 0.371647, 0.840754,
		70.250450, 57.632385, 59.744774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.927780, 57.949223, 59.111454>,  <70.526047, 57.372231, 59.156246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.927780, 57.949223, 59.111454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.249947, 58.185295, 59.089638>,  <71.443245, 58.326939, 59.076550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.249947, 58.185295, 59.089638>,  <70.927780, 57.949223, 59.111454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.249947, 58.185295, 59.089638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473462, -0.585311, 0.658213,
		0.356544, -0.555963, -0.750854,
		0.805425, 0.590183, -0.054539,
		71.491577, 58.362350, 59.073277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.500610, 57.510155, 58.945412>,  <70.927780, 57.949223, 59.111454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.500610, 57.510155, 58.945412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.623245, 57.827045, 59.156456>,  <71.696823, 58.017181, 59.283081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.623245, 57.827045, 59.156456>,  <71.500610, 57.510155, 58.945412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.623245, 57.827045, 59.156456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635718, -0.582979, 0.505962,
		0.708426, 0.180291, -0.682369,
		0.306587, 0.792231, 0.527612,
		71.715218, 58.064716, 59.314739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.312569, 57.635338, 58.842358>,  <71.500610, 57.510155, 58.945412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.312569, 57.635338, 58.842358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.152260, 57.767525, 59.184158>,  <72.056076, 57.846836, 59.389240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.152260, 57.767525, 59.184158>,  <72.312569, 57.635338, 58.842358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.152260, 57.767525, 59.184158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602458, -0.607616, 0.517539,
		0.690241, 0.722215, 0.044418,
		-0.400764, 0.330467, 0.854506,
		72.032028, 57.866665, 59.440510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.829185, 58.034214, 59.251316>,  <72.312569, 57.635338, 58.842358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.829185, 58.034214, 59.251316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.542786, 57.872814, 59.479187>,  <72.370949, 57.775974, 59.615910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.542786, 57.872814, 59.479187>,  <72.829185, 58.034214, 59.251316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.542786, 57.872814, 59.479187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683007, -0.573689, 0.452087,
		0.144402, 0.712789, 0.686353,
		-0.715996, -0.403502, 0.569681,
		72.327988, 57.751762, 59.650093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.035522, 58.055088, 60.030632>,  <72.829185, 58.034214, 59.251316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.035522, 58.055088, 60.030632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.789970, 57.750069, 59.948975>,  <72.642639, 57.567059, 59.899982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.789970, 57.750069, 59.948975>,  <73.035522, 58.055088, 60.030632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.789970, 57.750069, 59.948975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565988, -0.605441, 0.559552,
		-0.550280, 0.227957, 0.803260,
		-0.613881, -0.762546, -0.204141,
		72.605804, 57.521305, 59.887733>
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
