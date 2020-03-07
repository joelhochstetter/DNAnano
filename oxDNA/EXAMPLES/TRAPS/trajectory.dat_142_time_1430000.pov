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
	<36.429390, 53.522137, 50.158096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.576881, 53.782139, 49.892303>,  <36.665379, 53.938141, 49.732830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.576881, 53.782139, 49.892303>,  <36.429390, 53.522137, 50.158096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576881, 53.782139, 49.892303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781866, 0.169726, 0.599899,
		0.502716, -0.740734, -0.445633,
		0.368731, 0.650004, -0.664478,
		36.687500, 53.977139, 49.692959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122490, 53.404400, 49.885509>,  <36.429390, 53.522137, 50.158096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122490, 53.404400, 49.885509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.024651, 53.789276, 49.933434>,  <36.965946, 54.020203, 49.962189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.024651, 53.789276, 49.933434>,  <37.122490, 53.404400, 49.885509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024651, 53.789276, 49.933434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754297, 0.111183, 0.647050,
		0.609267, 0.248642, -0.752975,
		-0.244602, 0.962193, 0.119810,
		36.951271, 54.077934, 49.969376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555653, 52.953773, 49.318516>,  <37.122490, 53.404400, 49.885509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555653, 52.953773, 49.318516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.302139, 52.708370, 49.130081>,  <37.150032, 52.561127, 49.017021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.302139, 52.708370, 49.130081>,  <37.555653, 52.953773, 49.318516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302139, 52.708370, 49.130081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619953, -0.038684, -0.783685,
		0.462574, -0.788740, 0.404864,
		-0.633785, -0.613509, -0.471087,
		37.112003, 52.524319, 48.988754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905472, 52.299252, 49.006016>,  <37.555653, 52.953773, 49.318516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905472, 52.299252, 49.006016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.560085, 52.370358, 48.817200>,  <37.352852, 52.413021, 48.703911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.560085, 52.370358, 48.817200>,  <37.905472, 52.299252, 49.006016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560085, 52.370358, 48.817200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471792, -0.046427, -0.880487,
		-0.178438, -0.982977, -0.043782,
		-0.863466, 0.177768, -0.472045,
		37.301044, 52.423687, 48.675587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123936, 52.407272, 48.267406>,  <37.905472, 52.299252, 49.006016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123936, 52.407272, 48.267406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.188953, 52.801788, 48.278778>,  <38.227962, 53.038498, 48.285603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.188953, 52.801788, 48.278778>,  <38.123936, 52.407272, 48.267406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.188953, 52.801788, 48.278778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883463, 0.158309, -0.440943,
		-0.439400, 0.046554, 0.897084,
		0.162544, 0.986291, 0.028432,
		38.237717, 53.097675, 48.287308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795650, 52.793449, 48.399845>,  <38.123936, 52.407272, 48.267406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.795650, 52.793449, 48.399845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.725857, 52.555199, 48.713478>,  <38.683979, 52.412247, 48.901657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.725857, 52.555199, 48.713478>,  <38.795650, 52.793449, 48.399845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.725857, 52.555199, 48.713478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938978, 0.139076, 0.314607,
		-0.296435, 0.791131, 0.535012,
		-0.174488, -0.595625, 0.784082,
		38.673512, 52.376511, 48.948704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.013672, 53.158031, 49.105320>,  <38.795650, 52.793449, 48.399845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.013672, 53.158031, 49.105320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.039253, 52.759293, 49.086559>,  <39.054600, 52.520050, 49.075302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.039253, 52.759293, 49.086559>,  <39.013672, 53.158031, 49.105320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.039253, 52.759293, 49.086559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979629, 0.053741, 0.193494,
		-0.190364, -0.058322, 0.979980,
		0.063950, -0.996850, -0.046904,
		39.058437, 52.460236, 49.072487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384789, 53.024971, 49.717785>,  <39.013672, 53.158031, 49.105320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.384789, 53.024971, 49.717785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.443611, 52.753830, 49.429649>,  <39.478905, 52.591145, 49.256767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.443611, 52.753830, 49.429649>,  <39.384789, 53.024971, 49.717785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.443611, 52.753830, 49.429649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955759, -0.090183, 0.279986,
		-0.254751, -0.729646, 0.634601,
		0.147061, -0.677853, -0.720340,
		39.487728, 52.550476, 49.213547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501011, 52.397274, 49.997211>,  <39.384789, 53.024971, 49.717785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501011, 52.397274, 49.997211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.672455, 52.414707, 49.636238>,  <39.775322, 52.425167, 49.419655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.672455, 52.414707, 49.636238>,  <39.501011, 52.397274, 49.997211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.672455, 52.414707, 49.636238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903406, -0.034107, 0.427428,
		-0.012150, -0.998467, -0.053992,
		0.428614, 0.043583, -0.902436,
		39.801041, 52.427784, 49.365509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051044, 51.916477, 49.973751>,  <39.501011, 52.397274, 49.997211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.051044, 51.916477, 49.973751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.118584, 52.229691, 49.734299>,  <40.159107, 52.417618, 49.590630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.118584, 52.229691, 49.734299>,  <40.051044, 51.916477, 49.973751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.118584, 52.229691, 49.734299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944434, 0.045251, 0.325572,
		0.282021, -0.620334, -0.731881,
		0.168845, 0.783031, -0.598626,
		40.169235, 52.464600, 49.554710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.768101, 51.877884, 49.726440>,  <40.051044, 51.916477, 49.973751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.768101, 51.877884, 49.726440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.627033, 52.247917, 49.670097>,  <40.542393, 52.469936, 49.636292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.627033, 52.247917, 49.670097>,  <40.768101, 51.877884, 49.726440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.627033, 52.247917, 49.670097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814420, 0.377573, 0.440634,
		0.460808, 0.040681, -0.886567,
		-0.352669, 0.925086, -0.140857,
		40.521233, 52.525444, 49.627842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.207233, 52.314339, 49.513630>,  <40.768101, 51.877884, 49.726440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.207233, 52.314339, 49.513630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.983109, 52.510475, 49.780647>,  <40.848633, 52.628159, 49.940857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.983109, 52.510475, 49.780647>,  <41.207233, 52.314339, 49.513630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.983109, 52.510475, 49.780647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826213, 0.387774, 0.408660,
		-0.058473, 0.780510, -0.622402,
		-0.560315, 0.490341, 0.667542,
		40.815014, 52.657578, 49.980911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.508957, 53.076275, 49.571350>,  <41.207233, 52.314339, 49.513630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.508957, 53.076275, 49.571350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.279125, 53.007191, 49.891357>,  <41.141224, 52.965740, 50.083363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.279125, 53.007191, 49.891357>,  <41.508957, 53.076275, 49.571350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.279125, 53.007191, 49.891357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686181, 0.431133, 0.585901,
		-0.446104, 0.885605, -0.129211,
		-0.574584, -0.172711, 0.800015,
		41.106750, 52.955376, 50.131363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.325207, 53.674488, 50.034851>,  <41.508957, 53.076275, 49.571350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.325207, 53.674488, 50.034851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.654057, 53.471298, 50.137665>,  <41.851368, 53.349384, 50.199352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.654057, 53.471298, 50.137665>,  <41.325207, 53.674488, 50.034851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.654057, 53.471298, 50.137665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515397, 0.855875, 0.042950,
		-0.241809, 0.097166, 0.965447,
		0.822128, -0.507974, 0.257037,
		41.900696, 53.318905, 50.214775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.629551, 54.040718, 50.580650>,  <41.325207, 53.674488, 50.034851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.629551, 54.040718, 50.580650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.919537, 53.824490, 50.409904>,  <42.093529, 53.694752, 50.307457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.919537, 53.824490, 50.409904>,  <41.629551, 54.040718, 50.580650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.919537, 53.824490, 50.409904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664128, 0.712933, 0.225078,
		0.182656, -0.446666, 0.875857,
		0.724962, -0.540570, -0.426865,
		42.137024, 53.662319, 50.281845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.094936, 53.896950, 51.029148>,  <41.629551, 54.040718, 50.580650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.094936, 53.896950, 51.029148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.279236, 53.923119, 50.675102>,  <42.389816, 53.938820, 50.462673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.279236, 53.923119, 50.675102>,  <42.094936, 53.896950, 51.029148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.279236, 53.923119, 50.675102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709973, 0.571279, 0.411800,
		0.532589, -0.818145, 0.216769,
		0.460748, 0.065420, -0.885117,
		42.417461, 53.942745, 50.409569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.801212, 53.654865, 51.045780>,  <42.094936, 53.896950, 51.029148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.801212, 53.654865, 51.045780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.761707, 53.950420, 50.779160>,  <42.738007, 54.127754, 50.619186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.761707, 53.950420, 50.779160>,  <42.801212, 53.654865, 51.045780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.761707, 53.950420, 50.779160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858460, 0.402027, 0.318464,
		0.503281, -0.540755, -0.674012,
		-0.098760, 0.738890, -0.666549,
		42.732079, 54.172089, 50.579193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.455624, 53.662445, 50.700550>,  <42.801212, 53.654865, 51.045780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.455624, 53.662445, 50.700550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.289104, 54.025990, 50.710838>,  <43.189194, 54.244118, 50.717010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.289104, 54.025990, 50.710838>,  <43.455624, 53.662445, 50.700550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.289104, 54.025990, 50.710838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908542, 0.414723, 0.050556,
		0.035283, 0.044413, -0.998390,
		-0.416301, 0.908863, 0.025718,
		43.164215, 54.298649, 50.718555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.664612, 54.141171, 50.069576>,  <43.455624, 53.662445, 50.700550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.664612, 54.141171, 50.069576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.630486, 54.288109, 50.440041>,  <43.610012, 54.376270, 50.662319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.630486, 54.288109, 50.440041>,  <43.664612, 54.141171, 50.069576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.630486, 54.288109, 50.440041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916222, 0.394160, -0.071941,
		-0.391484, 0.842434, -0.370197,
		-0.085311, 0.367346, 0.926163,
		43.604893, 54.398312, 50.717888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.985821, 54.771347, 50.013489>,  <43.664612, 54.141171, 50.069576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.985821, 54.771347, 50.013489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.974014, 54.670162, 50.400299>,  <43.966930, 54.609451, 50.632385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.974014, 54.670162, 50.400299>,  <43.985821, 54.771347, 50.013489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.974014, 54.670162, 50.400299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885651, 0.441902, 0.142633,
		-0.463412, 0.860657, 0.210994,
		-0.029519, -0.252965, 0.967025,
		43.965160, 54.594273, 50.690407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.117268, 55.367920, 50.348625>,  <43.985821, 54.771347, 50.013489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.117268, 55.367920, 50.348625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.225052, 55.038818, 50.548813>,  <44.289722, 54.841358, 50.668926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.225052, 55.038818, 50.548813>,  <44.117268, 55.367920, 50.348625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.225052, 55.038818, 50.548813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940654, 0.336202, 0.046235,
		-0.206300, 0.458312, 0.864517,
		0.269462, -0.822750, 0.500472,
		44.305889, 54.791992, 50.698956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.513500, 55.683559, 50.997864>,  <44.117268, 55.367920, 50.348625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.513500, 55.683559, 50.997864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.599518, 55.307655, 50.891571>,  <44.651127, 55.082115, 50.827797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.599518, 55.307655, 50.891571>,  <44.513500, 55.683559, 50.997864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.599518, 55.307655, 50.891571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959765, 0.153049, 0.235429,
		-0.180576, -0.305667, 0.934858,
		0.215042, -0.939757, -0.265732,
		44.664032, 55.025726, 50.811852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.913296, 55.331409, 51.433895>,  <44.513500, 55.683559, 50.997864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.913296, 55.331409, 51.433895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.995380, 55.173111, 51.075840>,  <45.044632, 55.078133, 50.861008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.995380, 55.173111, 51.075840>,  <44.913296, 55.331409, 51.433895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.995380, 55.173111, 51.075840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977774, 0.123048, 0.169760,
		0.042964, -0.910081, 0.412198,
		0.205215, -0.395742, -0.895140,
		45.056946, 55.054390, 50.807297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.351379, 54.704742, 51.391270>,  <44.913296, 55.331409, 51.433895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.351379, 54.704742, 51.391270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.430187, 54.899536, 51.050911>,  <45.477470, 55.016411, 50.846695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.430187, 54.899536, 51.050911>,  <45.351379, 54.704742, 51.391270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.430187, 54.899536, 51.050911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958994, 0.084644, 0.270491,
		0.203749, -0.869300, -0.450338,
		0.197019, 0.486984, -0.850900,
		45.489292, 55.045631, 50.795643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.884708, 54.297081, 50.897942>,  <45.351379, 54.704742, 51.391270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.884708, 54.297081, 50.897942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.893120, 54.696835, 50.886765>,  <45.898167, 54.936687, 50.880058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.893120, 54.696835, 50.886765>,  <45.884708, 54.297081, 50.897942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.893120, 54.696835, 50.886765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992530, -0.017509, 0.120740,
		0.120177, -0.030274, -0.992291,
		0.021030, 0.999388, -0.027943,
		45.899429, 54.996651, 50.878380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.385124, 54.526058, 50.377712>,  <45.884708, 54.297081, 50.897942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.385124, 54.526058, 50.377712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.337990, 54.765488, 50.694653>,  <46.309708, 54.909145, 50.884815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.337990, 54.765488, 50.694653>,  <46.385124, 54.526058, 50.377712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.337990, 54.765488, 50.694653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990441, 0.013229, 0.137301,
		0.071704, 0.800955, -0.594415,
		-0.117836, 0.598578, 0.792350,
		46.302639, 54.945061, 50.932358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.870361, 55.120766, 50.174553>,  <46.385124, 54.526058, 50.377712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.870361, 55.120766, 50.174553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.816883, 55.096130, 50.570194>,  <46.784794, 55.081348, 50.807579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.816883, 55.096130, 50.570194>,  <46.870361, 55.120766, 50.174553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.816883, 55.096130, 50.570194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938508, 0.312712, 0.146333,
		-0.318319, 0.947849, 0.015995,
		-0.133700, -0.061592, 0.989106,
		46.776772, 55.077652, 50.866924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.990341, 55.808517, 50.612217>,  <46.870361, 55.120766, 50.174553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.990341, 55.808517, 50.612217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.088242, 55.470398, 50.802193>,  <47.146984, 55.267525, 50.916176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.088242, 55.470398, 50.802193>,  <46.990341, 55.808517, 50.612217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.088242, 55.470398, 50.802193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900120, 0.380162, 0.212744,
		-0.360386, 0.375431, 0.853917,
		0.244756, -0.845298, 0.474938,
		47.161667, 55.216808, 50.944675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.057381, 56.039425, 51.307186>,  <46.990341, 55.808517, 50.612217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.057381, 56.039425, 51.307186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.261803, 55.724037, 51.170288>,  <47.384457, 55.534805, 51.088150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.261803, 55.724037, 51.170288>,  <47.057381, 56.039425, 51.307186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.261803, 55.724037, 51.170288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859033, 0.482308, 0.171585,
		0.029779, -0.381691, 0.923810,
		0.511054, -0.788473, -0.342248,
		47.415119, 55.487495, 51.067616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.512405, 55.819202, 51.848171>,  <47.057381, 56.039425, 51.307186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.512405, 55.819202, 51.848171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.660248, 55.734051, 51.486382>,  <47.748955, 55.682961, 51.269310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.660248, 55.734051, 51.486382>,  <47.512405, 55.819202, 51.848171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.660248, 55.734051, 51.486382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884334, 0.379366, 0.272092,
		0.285203, -0.900424, 0.328474,
		0.369611, -0.212880, -0.904472,
		47.771130, 55.670185, 51.215038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.037022, 55.259327, 51.885586>,  <47.512405, 55.819202, 51.848171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.037022, 55.259327, 51.885586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.109825, 55.569248, 51.643410>,  <48.153507, 55.755199, 51.498104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.109825, 55.569248, 51.643410>,  <48.037022, 55.259327, 51.885586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.109825, 55.569248, 51.643410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917550, 0.087538, 0.387866,
		0.353518, -0.626113, -0.694987,
		0.182010, 0.774803, -0.605436,
		48.164429, 55.801689, 51.461781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.643349, 55.140106, 51.436432>,  <48.037022, 55.259327, 51.885586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.643349, 55.140106, 51.436432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.592632, 55.535156, 51.473373>,  <48.562202, 55.772186, 51.495537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.592632, 55.535156, 51.473373>,  <48.643349, 55.140106, 51.436432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.592632, 55.535156, 51.473373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947486, 0.093029, 0.305966,
		0.293587, 0.126295, -0.947553,
		-0.126792, 0.987621, 0.092351,
		48.554596, 55.831444, 51.501080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.021358, 55.478691, 50.891197>,  <48.643349, 55.140106, 51.436432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.021358, 55.478691, 50.891197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.968460, 55.693871, 51.224213>,  <48.936722, 55.822979, 51.424023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.968460, 55.693871, 51.224213>,  <49.021358, 55.478691, 50.891197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.968460, 55.693871, 51.224213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979145, 0.201587, 0.025273,
		-0.154234, 0.818520, -0.553386,
		-0.132242, 0.537947, 0.832541,
		48.928787, 55.855255, 51.473976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.245735, 56.220982, 50.806084>,  <49.021358, 55.478691, 50.891197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.245735, 56.220982, 50.806084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.302349, 56.096615, 51.182018>,  <49.336315, 56.021996, 51.407581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.302349, 56.096615, 51.182018>,  <49.245735, 56.220982, 50.806084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.302349, 56.096615, 51.182018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902770, 0.430076, 0.006330,
		-0.406171, 0.847563, 0.341560,
		0.141532, -0.310921, 0.939839,
		49.344810, 56.003338, 51.463970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.479370, 56.802547, 51.224800>,  <49.245735, 56.220982, 50.806084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.479370, 56.802547, 51.224800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.616776, 56.467445, 51.394585>,  <49.699219, 56.266384, 51.496456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.616776, 56.467445, 51.394585>,  <49.479370, 56.802547, 51.224800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.616776, 56.467445, 51.394585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921497, 0.387880, 0.019800,
		-0.181227, 0.384336, 0.905231,
		0.343511, -0.837756, 0.424459,
		49.719830, 56.216118, 51.521923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.701675, 56.905190, 51.848087>,  <49.479370, 56.802547, 51.224800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.701675, 56.905190, 51.848087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.929806, 56.596283, 51.736134>,  <50.066685, 56.410938, 51.668961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.929806, 56.596283, 51.736134>,  <49.701675, 56.905190, 51.848087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.929806, 56.596283, 51.736134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820608, 0.550799, 0.152395,
		0.036472, -0.316591, 0.947861,
		0.570327, -0.772263, -0.279886,
		50.100903, 56.364605, 51.652168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.159031, 56.618423, 52.411835>,  <49.701675, 56.905190, 51.848087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.159031, 56.618423, 52.411835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.327972, 56.551483, 52.055496>,  <50.429337, 56.511318, 51.841694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.327972, 56.551483, 52.055496>,  <50.159031, 56.618423, 52.411835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.327972, 56.551483, 52.055496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817228, 0.495463, 0.294373,
		0.392118, -0.852355, 0.346027,
		0.422354, -0.167354, -0.890848,
		50.454678, 56.501278, 51.788242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.842709, 56.535042, 52.593391>,  <50.159031, 56.618423, 52.411835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.842709, 56.535042, 52.593391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.831779, 56.625637, 52.203941>,  <50.825222, 56.679996, 51.970272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.831779, 56.625637, 52.203941>,  <50.842709, 56.535042, 52.593391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.831779, 56.625637, 52.203941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739504, 0.659931, 0.132762,
		0.672597, -0.716375, -0.185526,
		-0.027327, 0.226492, -0.973629,
		50.823582, 56.693584, 51.911854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.414692, 56.360840, 52.323132>,  <50.842709, 56.535042, 52.593391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.414692, 56.360840, 52.323132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.278824, 56.666626, 52.103966>,  <51.197304, 56.850098, 51.972466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.278824, 56.666626, 52.103966>,  <51.414692, 56.360840, 52.323132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.278824, 56.666626, 52.103966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925340, 0.375942, -0.049121,
		0.168433, -0.523695, -0.835089,
		-0.339669, 0.764468, -0.547917,
		51.176922, 56.895966, 51.939590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.781628, 56.452469, 51.537132>,  <51.414692, 56.360840, 52.323132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.781628, 56.452469, 51.537132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.649490, 56.784897, 51.716103>,  <51.570210, 56.984352, 51.823486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.649490, 56.784897, 51.716103>,  <51.781628, 56.452469, 51.537132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.649490, 56.784897, 51.716103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898540, 0.422029, -0.120485,
		-0.288960, 0.362231, -0.886166,
		-0.330345, 0.831071, 0.447429,
		51.550388, 57.034218, 51.850330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.792629, 57.151909, 51.171410>,  <51.781628, 56.452469, 51.537132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.792629, 57.151909, 51.171410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.867107, 57.147823, 51.564392>,  <51.911793, 57.145370, 51.800182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.867107, 57.147823, 51.564392>,  <51.792629, 57.151909, 51.171410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.867107, 57.147823, 51.564392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967373, 0.176770, -0.181496,
		-0.171815, 0.984199, 0.042797,
		0.186194, -0.010217, 0.982460,
		51.922966, 57.144756, 51.859131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.294270, 57.649826, 51.372875>,  <51.792629, 57.151909, 51.171410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.294270, 57.649826, 51.372875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.332310, 57.399303, 51.682377>,  <52.355133, 57.248989, 51.868076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.332310, 57.399303, 51.682377>,  <52.294270, 57.649826, 51.372875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.332310, 57.399303, 51.682377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975817, 0.212329, 0.051927,
		-0.196812, 0.750101, 0.631358,
		0.095105, -0.626310, 0.773751,
		52.360840, 57.211411, 51.914501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.620308, 58.102547, 51.911118>,  <52.294270, 57.649826, 51.372875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.620308, 58.102547, 51.911118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.669003, 57.708084, 51.956169>,  <52.698219, 57.471409, 51.983200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.669003, 57.708084, 51.956169>,  <52.620308, 58.102547, 51.911118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.669003, 57.708084, 51.956169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980863, 0.136894, 0.138447,
		-0.151948, 0.093618, 0.983945,
		0.121735, -0.986152, 0.112627,
		52.705524, 57.412239, 51.989956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.962933, 57.953747, 52.650173>,  <52.620308, 58.102547, 51.911118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.962933, 57.953747, 52.650173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.029114, 57.683281, 52.362999>,  <53.068821, 57.521004, 52.190693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.029114, 57.683281, 52.362999>,  <52.962933, 57.953747, 52.650173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.029114, 57.683281, 52.362999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982146, 0.046886, 0.182185,
		-0.089526, -0.735260, 0.671847,
		0.165453, -0.676162, -0.717935,
		53.078751, 57.480431, 52.147617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.479176, 57.548122, 52.901348>,  <52.962933, 57.953747, 52.650173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.479176, 57.548122, 52.901348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.479694, 57.510773, 52.503098>,  <53.480007, 57.488365, 52.264145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.479694, 57.510773, 52.503098>,  <53.479176, 57.548122, 52.901348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.479694, 57.510773, 52.503098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999543, -0.029959, 0.004114,
		-0.030212, -0.995180, 0.093291,
		0.001299, -0.093373, -0.995630,
		53.480083, 57.482761, 52.204407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.233746, 58.007427, 52.888912>,  <53.479176, 57.548122, 52.901348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.233746, 58.007427, 52.888912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.092636, 57.705620, 53.110275>,  <54.007969, 57.524536, 53.243092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.092636, 57.705620, 53.110275>,  <54.233746, 58.007427, 52.888912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.092636, 57.705620, 53.110275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178007, 0.526511, 0.831324,
		-0.918620, 0.391781, -0.051431,
		-0.352776, -0.754516, 0.553404,
		53.986805, 57.479263, 53.276295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.722073, 58.252937, 53.338123>,  <54.233746, 58.007427, 52.888912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.722073, 58.252937, 53.338123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.851368, 57.911057, 53.500603>,  <53.928944, 57.705929, 53.598091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.851368, 57.911057, 53.500603>,  <53.722073, 58.252937, 53.338123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.851368, 57.911057, 53.500603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117371, 0.389721, 0.913423,
		-0.939012, -0.342926, 0.025653,
		0.323234, -0.854704, 0.406202,
		53.948338, 57.654644, 53.622463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.157890, 58.722366, 53.161079>,  <53.722073, 58.252937, 53.338123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.157890, 58.722366, 53.161079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.414326, 59.017731, 53.077404>,  <53.568188, 59.194950, 53.027199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.414326, 59.017731, 53.077404>,  <53.157890, 58.722366, 53.161079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.414326, 59.017731, 53.077404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555941, 0.634718, 0.536715,
		0.529086, -0.227789, 0.817423,
		0.641090, 0.738407, -0.209183,
		53.606651, 59.239254, 53.014648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.449249, 59.108150, 53.775219>,  <53.157890, 58.722366, 53.161079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.449249, 59.108150, 53.775219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.429577, 59.361420, 53.466240>,  <53.417774, 59.513382, 53.280853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.429577, 59.361420, 53.466240>,  <53.449249, 59.108150, 53.775219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.429577, 59.361420, 53.466240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497991, 0.654847, 0.568490,
		0.865786, 0.412632, 0.283106,
		-0.049186, 0.633175, -0.772444,
		53.414822, 59.551373, 53.234509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.882133, 58.651478, 54.029060>,  <53.449249, 59.108150, 53.775219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.882133, 58.651478, 54.029060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.274124, 58.730965, 54.023930>,  <54.509319, 58.778656, 54.020851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.274124, 58.730965, 54.023930>,  <53.882133, 58.651478, 54.029060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.274124, 58.730965, 54.023930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084422, 0.472959, 0.877031,
		0.180346, -0.858384, 0.480263,
		0.979974, 0.198713, -0.012830,
		54.568115, 58.790577, 54.020081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.101078, 58.591152, 54.692787>,  <53.882133, 58.651478, 54.029060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.101078, 58.591152, 54.692787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.331696, 58.871082, 54.524101>,  <54.470066, 59.039040, 54.422890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.331696, 58.871082, 54.524101>,  <54.101078, 58.591152, 54.692787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.331696, 58.871082, 54.524101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056940, 0.480458, 0.875167,
		0.815082, -0.528582, 0.237155,
		0.576541, 0.699829, -0.421711,
		54.504658, 59.081032, 54.397587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.800331, 58.737694, 54.971889>,  <54.101078, 58.591152, 54.692787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.800331, 58.737694, 54.971889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.649994, 59.079010, 54.827309>,  <54.559792, 59.283798, 54.740562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.649994, 59.079010, 54.827309>,  <54.800331, 58.737694, 54.971889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.649994, 59.079010, 54.827309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026550, 0.399801, 0.916218,
		0.926305, 0.334754, -0.172915,
		-0.375839, 0.853288, -0.361450,
		54.537243, 59.334995, 54.718872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.439754, 58.643391, 54.544842>,  <54.800331, 58.737694, 54.971889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.439754, 58.643391, 54.544842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.661575, 58.976231, 54.548347>,  <55.794666, 59.175934, 54.550453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.661575, 58.976231, 54.548347>,  <55.439754, 58.643391, 54.544842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.661575, 58.976231, 54.548347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807371, -0.540563, 0.236523,
		0.201551, -0.124086, -0.971586,
		0.554553, 0.832102, 0.008768,
		55.827942, 59.225861, 54.550980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.989479, 58.533920, 54.096947>,  <55.439754, 58.643391, 54.544842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.989479, 58.533920, 54.096947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.105568, 58.800194, 54.371941>,  <56.175220, 58.959957, 54.536938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.105568, 58.800194, 54.371941>,  <55.989479, 58.533920, 54.096947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.105568, 58.800194, 54.371941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895909, -0.441494, 0.049292,
		0.336333, 0.601617, -0.724526,
		0.290219, 0.665688, 0.687483,
		56.192635, 58.999901, 54.578186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.657139, 58.997066, 53.914906>,  <55.989479, 58.533920, 54.096947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.657139, 58.997066, 53.914906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.577751, 58.901516, 54.295128>,  <56.530117, 58.844185, 54.523262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.577751, 58.901516, 54.295128>,  <56.657139, 58.997066, 53.914906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.577751, 58.901516, 54.295128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873714, -0.482580, 0.061152,
		0.444110, 0.842648, 0.304486,
		-0.198469, -0.238875, 0.950552,
		56.518211, 58.829853, 54.580292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.242535, 58.669357, 54.078659>,  <56.657139, 58.997066, 53.914906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.242535, 58.669357, 54.078659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.068138, 58.652229, 54.438232>,  <56.963501, 58.641953, 54.653976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.068138, 58.652229, 54.438232>,  <57.242535, 58.669357, 54.078659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.068138, 58.652229, 54.438232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782303, -0.511808, 0.355041,
		0.444878, 0.858032, 0.256641,
		-0.435988, -0.042822, 0.898933,
		56.937344, 58.639381, 54.707912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.793072, 58.736332, 54.511452>,  <57.242535, 58.669357, 54.078659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.793072, 58.736332, 54.511452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.490044, 58.566360, 54.709648>,  <57.308228, 58.464378, 54.828568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.490044, 58.566360, 54.709648>,  <57.793072, 58.736332, 54.511452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.490044, 58.566360, 54.709648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652101, -0.458841, 0.603514,
		-0.029100, 0.780318, 0.624705,
		-0.757573, -0.424933, 0.495494,
		57.262772, 58.438881, 54.858295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.883202, 58.810223, 55.150169>,  <57.793072, 58.736332, 54.511452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.883202, 58.810223, 55.150169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.686867, 58.468742, 55.080566>,  <57.569065, 58.263855, 55.038803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.686867, 58.468742, 55.080566>,  <57.883202, 58.810223, 55.150169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.686867, 58.468742, 55.080566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649339, -0.491612, 0.580239,
		-0.580895, 0.171810, 0.795640,
		-0.490837, -0.853697, -0.174011,
		57.539616, 58.212635, 55.028362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.998146, 58.134903, 55.420841>,  <57.883202, 58.810223, 55.150169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.998146, 58.134903, 55.420841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.275391, 58.091286, 55.135826>,  <58.441738, 58.065117, 54.964817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.275391, 58.091286, 55.135826>,  <57.998146, 58.134903, 55.420841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.275391, 58.091286, 55.135826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643269, 0.539622, 0.543151,
		0.325277, -0.834816, 0.444158,
		0.693109, -0.109039, -0.712538,
		58.483322, 58.058575, 54.922066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.622437, 57.784588, 55.677189>,  <57.998146, 58.134903, 55.420841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.622437, 57.784588, 55.677189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.709938, 58.045444, 55.386848>,  <58.762440, 58.201958, 55.212643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.709938, 58.045444, 55.386848>,  <58.622437, 57.784588, 55.677189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.709938, 58.045444, 55.386848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776935, 0.333642, 0.533905,
		0.590355, -0.680734, -0.433683,
		0.218752, 0.652138, -0.725854,
		58.775562, 58.241085, 55.169094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.570610, 57.463223, 55.048923>,  <58.622437, 57.784588, 55.677189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.570610, 57.463223, 55.048923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.477478, 57.427109, 54.661598>,  <58.421600, 57.405441, 54.429203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.477478, 57.427109, 54.661598>,  <58.570610, 57.463223, 55.048923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.477478, 57.427109, 54.661598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211278, 0.967205, -0.140983,
		0.949290, -0.237409, -0.206119,
		-0.232831, -0.090286, -0.968317,
		58.407627, 57.400024, 54.371101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.190746, 57.874470, 54.734898>,  <58.570610, 57.463223, 55.048923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.190746, 57.874470, 54.734898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.894234, 57.838699, 54.468811>,  <58.716328, 57.817238, 54.309158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.894234, 57.838699, 54.468811>,  <59.190746, 57.874470, 54.734898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.894234, 57.838699, 54.468811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194952, 0.919671, -0.340878,
		0.642262, -0.382371, -0.664298,
		-0.741278, -0.089427, -0.665214,
		58.671852, 57.811871, 54.269245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.500748, 57.385159, 55.257759>,  <59.190746, 57.874470, 54.734898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.500748, 57.385159, 55.257759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.453903, 56.987968, 55.264481>,  <59.425797, 56.749653, 55.268513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.453903, 56.987968, 55.264481>,  <59.500748, 57.385159, 55.257759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.453903, 56.987968, 55.264481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470107, -0.070338, -0.879802,
		0.874805, -0.095136, 0.475043,
		-0.117114, -0.992976, 0.016808,
		59.418770, 56.690075, 55.269524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.192451, 57.071304, 55.125294>,  <59.500748, 57.385159, 55.257759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.192451, 57.071304, 55.125294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.911392, 56.806137, 55.021889>,  <59.742756, 56.647038, 54.959846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.911392, 56.806137, 55.021889>,  <60.192451, 57.071304, 55.125294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.911392, 56.806137, 55.021889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370834, -0.031100, -0.928179,
		0.607265, -0.748047, 0.267684,
		-0.702646, -0.662917, -0.258515,
		59.700600, 56.607262, 54.944336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.537304, 57.381496, 55.671669>,  <60.192451, 57.071304, 55.125294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.537304, 57.381496, 55.671669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.546944, 57.405613, 55.272514>,  <60.552727, 57.420082, 55.033020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.546944, 57.405613, 55.272514>,  <60.537304, 57.381496, 55.671669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.546944, 57.405613, 55.272514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910198, 0.414161, 0.003041,
		0.413470, 0.908204, 0.064862,
		0.024101, 0.060295, -0.997890,
		60.554173, 57.423702, 54.973148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.394684, 57.099735, 56.387848>,  <60.537304, 57.381496, 55.671669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.394684, 57.099735, 56.387848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.222549, 56.825733, 56.152702>,  <60.119270, 56.661331, 56.011616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.222549, 56.825733, 56.152702>,  <60.394684, 57.099735, 56.387848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.222549, 56.825733, 56.152702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901963, -0.352096, -0.249984,
		-0.035743, -0.637805, 0.769368,
		-0.430332, -0.685006, -0.587862,
		60.093449, 56.620232, 55.976345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.811455, 56.402485, 56.330158>,  <60.394684, 57.099735, 56.387848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.811455, 56.402485, 56.330158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.594078, 56.420670, 55.994873>,  <60.463654, 56.431580, 55.793701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.594078, 56.420670, 55.994873>,  <60.811455, 56.402485, 56.330158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.594078, 56.420670, 55.994873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748651, -0.425443, -0.508448,
		-0.379728, -0.903842, 0.197167,
		-0.543441, 0.045463, -0.838216,
		60.431046, 56.434307, 55.743408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.823624, 55.743847, 56.005764>,  <60.811455, 56.402485, 56.330158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.823624, 55.743847, 56.005764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.743584, 56.039036, 55.747971>,  <60.695560, 56.216148, 55.593296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.743584, 56.039036, 55.747971>,  <60.823624, 55.743847, 56.005764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.743584, 56.039036, 55.747971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807414, -0.248414, -0.535138,
		-0.555015, -0.627446, -0.546141,
		-0.200102, 0.737972, -0.644482,
		60.683552, 56.260426, 55.554626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.622246, 55.590488, 55.244385>,  <60.823624, 55.743847, 56.005764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.622246, 55.590488, 55.244385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.816299, 55.937546, 55.287903>,  <60.932732, 56.145779, 55.314014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.816299, 55.937546, 55.287903>,  <60.622246, 55.590488, 55.244385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.816299, 55.937546, 55.287903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767038, -0.362505, -0.529379,
		-0.419872, 0.340273, -0.841381,
		0.485139, 0.867643, 0.108797,
		60.961842, 56.197838, 55.320541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.764996, 55.801266, 54.610359>,  <60.622246, 55.590488, 55.244385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.764996, 55.801266, 54.610359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.036270, 55.964661, 54.854721>,  <61.199036, 56.062698, 55.001339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.036270, 55.964661, 54.854721>,  <60.764996, 55.801266, 54.610359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.036270, 55.964661, 54.854721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728314, -0.484545, -0.484535,
		0.098087, 0.773536, -0.626116,
		0.678187, 0.408482, 0.610905,
		61.239727, 56.087204, 55.037991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.269127, 56.221085, 54.341049>,  <60.764996, 55.801266, 54.610359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.269127, 56.221085, 54.341049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.408455, 56.000725, 54.644413>,  <61.492050, 55.868507, 54.826431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.408455, 56.000725, 54.644413>,  <61.269127, 56.221085, 54.341049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.408455, 56.000725, 54.644413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497533, -0.577053, -0.647665,
		0.794441, 0.602927, 0.073094,
		0.348315, -0.550899, 0.758411,
		61.512951, 55.835457, 54.871937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.062019, 56.316780, 54.471577>,  <61.269127, 56.221085, 54.341049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.062019, 56.316780, 54.471577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.954887, 55.945450, 54.574707>,  <61.890610, 55.722652, 54.636585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.954887, 55.945450, 54.574707>,  <62.062019, 56.316780, 54.471577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.954887, 55.945450, 54.574707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833008, -0.357579, -0.422179,
		0.484114, 0.101702, 0.869074,
		-0.267827, -0.928329, 0.257828,
		61.874538, 55.666950, 54.652054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.380390, 55.821632, 54.949444>,  <62.062019, 56.316780, 54.471577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.380390, 55.821632, 54.949444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.252518, 55.542412, 54.693153>,  <62.175797, 55.374878, 54.539379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.252518, 55.542412, 54.693153>,  <62.380390, 55.821632, 54.949444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.252518, 55.542412, 54.693153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943945, -0.293353, -0.151365,
		-0.082299, -0.653200, 0.752700,
		-0.319678, -0.698050, -0.640728,
		62.156616, 55.332996, 54.500935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.453655, 55.562843, 55.604691>,  <62.380390, 55.821632, 54.949444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.453655, 55.562843, 55.604691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.453438, 55.348415, 55.942360>,  <62.453308, 55.219757, 56.144962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.453438, 55.348415, 55.942360>,  <62.453655, 55.562843, 55.604691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.453438, 55.348415, 55.942360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965548, 0.219393, 0.139942,
		-0.260225, 0.815164, 0.517485,
		-0.000543, -0.536073, 0.844171,
		62.453274, 55.187592, 56.195610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.526779, 56.041557, 56.274780>,  <62.453655, 55.562843, 55.604691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.526779, 56.041557, 56.274780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.664528, 55.666039, 56.278328>,  <62.747177, 55.440727, 56.280457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.664528, 55.666039, 56.278328>,  <62.526779, 56.041557, 56.274780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.664528, 55.666039, 56.278328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922577, 0.340142, 0.182087,
		-0.173959, -0.054521, 0.983242,
		0.344369, -0.938792, 0.008871,
		62.767838, 55.384399, 56.280991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.837048, 55.802944, 57.051819>,  <62.526779, 56.041557, 56.274780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.837048, 55.802944, 57.051819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.991806, 55.669952, 56.707779>,  <63.084660, 55.590157, 56.501354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.991806, 55.669952, 56.707779>,  <62.837048, 55.802944, 57.051819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.991806, 55.669952, 56.707779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891986, 0.371449, 0.257655,
		0.233819, -0.866883, 0.440276,
		0.386897, -0.332476, -0.860099,
		63.107876, 55.570210, 56.449749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.491104, 55.452850, 57.118992>,  <62.837048, 55.802944, 57.051819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.491104, 55.452850, 57.118992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.497681, 55.604507, 56.748917>,  <63.501625, 55.695503, 56.526871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.497681, 55.604507, 56.748917>,  <63.491104, 55.452850, 57.118992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.497681, 55.604507, 56.748917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895292, 0.406403, 0.182453,
		0.445177, -0.831317, -0.332761,
		0.016441, 0.379142, -0.925192,
		63.502613, 55.718250, 56.471359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.225227, 55.519325, 56.936432>,  <63.491104, 55.452850, 57.118992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.225227, 55.519325, 56.936432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.047028, 55.727383, 56.644958>,  <63.940105, 55.852219, 56.470074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.047028, 55.727383, 56.644958>,  <64.225227, 55.519325, 56.936432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.047028, 55.727383, 56.644958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815687, 0.571309, -0.090891,
		0.369025, -0.634868, -0.678795,
		-0.445505, 0.520143, -0.728681,
		63.913376, 55.883427, 56.426353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.668571, 55.541279, 56.434349>,  <64.225227, 55.519325, 56.936432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.668571, 55.541279, 56.434349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.442970, 55.871178, 56.417885>,  <64.307610, 56.069118, 56.408005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.442970, 55.871178, 56.417885>,  <64.668571, 55.541279, 56.434349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.442970, 55.871178, 56.417885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825743, 0.562824, -0.037120,
		-0.007446, -0.054927, -0.998463,
		-0.563997, 0.824750, -0.041165,
		64.273773, 56.118603, 56.405537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.012123, 56.083160, 56.244484>,  <64.668571, 55.541279, 56.434349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.012123, 56.083160, 56.244484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.720459, 56.354046, 56.283875>,  <64.545464, 56.516579, 56.307510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.720459, 56.354046, 56.283875>,  <65.012123, 56.083160, 56.244484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.720459, 56.354046, 56.283875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675479, 0.735313, -0.055166,
		-0.109774, 0.026297, -0.993609,
		-0.729162, 0.677218, 0.098481,
		64.501709, 56.557213, 56.313419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.937149, 56.481693, 55.586609>,  <65.012123, 56.083160, 56.244484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.937149, 56.481693, 55.586609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.848099, 56.649303, 55.938713>,  <64.794670, 56.749870, 56.149975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.848099, 56.649303, 55.938713>,  <64.937149, 56.481693, 55.586609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.848099, 56.649303, 55.938713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746364, 0.654144, -0.122626,
		-0.627199, 0.629694, -0.458374,
		-0.222625, 0.419025, 0.880259,
		64.781311, 56.775009, 56.202789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.086807, 57.170483, 55.536247>,  <64.937149, 56.481693, 55.586609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.086807, 57.170483, 55.536247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.048538, 57.182850, 55.934219>,  <65.025581, 57.190269, 56.173004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.048538, 57.182850, 55.934219>,  <65.086807, 57.170483, 55.536247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.048538, 57.182850, 55.934219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797119, 0.601034, 0.057966,
		-0.596196, 0.798625, -0.082143,
		-0.095664, 0.030919, 0.994933,
		65.019836, 57.192127, 56.232700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.940842, 57.836906, 55.722401>,  <65.086807, 57.170483, 55.536247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.940842, 57.836906, 55.722401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.108261, 57.679733, 56.049919>,  <65.208710, 57.585430, 56.246429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.108261, 57.679733, 56.049919>,  <64.940842, 57.836906, 55.722401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.108261, 57.679733, 56.049919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756844, 0.649242, -0.075312,
		-0.502005, 0.651223, 0.569121,
		0.418542, -0.392929, 0.818797,
		65.233826, 57.561855, 56.295559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.470016, 58.233746, 55.972626>,  <64.940842, 57.836906, 55.722401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.470016, 58.233746, 55.972626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.558907, 57.930397, 56.217735>,  <65.612244, 57.748386, 56.364799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.558907, 57.930397, 56.217735>,  <65.470016, 58.233746, 55.972626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.558907, 57.930397, 56.217735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948617, 0.313380, 0.043813,
		-0.225256, 0.571546, 0.789046,
		0.222231, -0.758372, 0.612769,
		65.625572, 57.702885, 56.401566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.734497, 58.350983, 56.714310>,  <65.470016, 58.233746, 55.972626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.734497, 58.350983, 56.714310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.876984, 58.001610, 56.581512>,  <65.962479, 57.791985, 56.501835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.876984, 58.001610, 56.581512>,  <65.734497, 58.350983, 56.714310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.876984, 58.001610, 56.581512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921138, 0.268600, 0.281705,
		-0.156878, -0.406161, 0.900235,
		0.356221, -0.873434, -0.331993,
		65.983849, 57.739578, 56.481915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.285072, 58.169827, 57.120453>,  <65.734497, 58.350983, 56.714310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.285072, 58.169827, 57.120453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.360512, 57.915298, 56.821251>,  <66.405777, 57.762581, 56.641727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.360512, 57.915298, 56.821251>,  <66.285072, 58.169827, 57.120453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.360512, 57.915298, 56.821251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949326, -0.076860, 0.304751,
		-0.251413, -0.767583, 0.589583,
		0.188607, -0.636325, -0.748009,
		66.417091, 57.724400, 56.596848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.944511, 58.142178, 57.528820>,  <66.285072, 58.169827, 57.120453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.944511, 58.142178, 57.528820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.172783, 57.881889, 57.328461>,  <67.309746, 57.725716, 57.208244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.172783, 57.881889, 57.328461>,  <66.944511, 58.142178, 57.528820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.172783, 57.881889, 57.328461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818616, 0.498954, 0.284452,
		0.064826, -0.572370, 0.817429,
		0.570671, -0.650720, -0.500896,
		67.343987, 57.686672, 57.178192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.291992, 57.766068, 57.998260>,  <66.944511, 58.142178, 57.528820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.291992, 57.766068, 57.998260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.510033, 57.798164, 57.664452>,  <67.640854, 57.817421, 57.464165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.510033, 57.798164, 57.664452>,  <67.291992, 57.766068, 57.998260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.510033, 57.798164, 57.664452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787161, 0.293574, 0.542394,
		0.288510, -0.952563, 0.096874,
		0.545105, 0.080231, -0.834520,
		67.673561, 57.822235, 57.414097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.897530, 57.302162, 57.908775>,  <67.291992, 57.766068, 57.998260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.897530, 57.302162, 57.908775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.934410, 57.682449, 57.790367>,  <67.956535, 57.910622, 57.719322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.934410, 57.682449, 57.790367>,  <67.897530, 57.302162, 57.908775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.934410, 57.682449, 57.790367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778774, 0.116408, 0.616409,
		0.620492, -0.287367, -0.729664,
		0.092197, 0.950721, -0.296024,
		67.962067, 57.967667, 57.701561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.499840, 57.463272, 58.222942>,  <67.897530, 57.302162, 57.908775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.499840, 57.463272, 58.222942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.356659, 57.833920, 58.176918>,  <68.270752, 58.056309, 58.149303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.356659, 57.833920, 58.176918>,  <68.499840, 57.463272, 58.222942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.356659, 57.833920, 58.176918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504129, 0.295514, 0.811496,
		0.785952, 0.232474, -0.572918,
		-0.357957, 0.926621, -0.115063,
		68.249275, 58.111904, 58.142399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.906075, 57.914604, 58.616089>,  <68.499840, 57.463272, 58.222942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.906075, 57.914604, 58.616089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.601562, 58.165405, 58.549980>,  <68.418854, 58.315887, 58.510315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.601562, 58.165405, 58.549980>,  <68.906075, 57.914604, 58.616089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.601562, 58.165405, 58.549980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226645, 0.496117, 0.838153,
		0.607518, 0.600614, -0.519793,
		-0.761284, 0.627001, -0.165274,
		68.373177, 58.353504, 58.500397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.376717, 57.487339, 58.779385>,  <68.906075, 57.914604, 58.616089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.376717, 57.487339, 58.779385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.187546, 57.311424, 59.084785>,  <69.074043, 57.205875, 59.268024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.187546, 57.311424, 59.084785>,  <69.376717, 57.487339, 58.779385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.187546, 57.311424, 59.084785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860434, -0.043923, 0.507665,
		-0.189728, 0.897028, 0.399179,
		-0.472923, -0.439785, 0.763500,
		69.045670, 57.179489, 59.313835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.934532, 57.093925, 58.287975>,  <69.376717, 57.487339, 58.779385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.934532, 57.093925, 58.287975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.306419, 57.240192, 58.305428>,  <70.529556, 57.327953, 58.315899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.306419, 57.240192, 58.305428>,  <69.934532, 57.093925, 58.287975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.306419, 57.240192, 58.305428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359014, -0.873631, -0.328447,
		-0.081986, 0.321028, -0.943514,
		0.929724, 0.365663, 0.043628,
		70.585335, 57.349892, 58.318516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.025444, 56.395599, 58.161255>,  <69.934532, 57.093925, 58.287975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.025444, 56.395599, 58.161255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.032661, 56.544365, 57.790016>,  <70.036995, 56.633625, 57.567272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.032661, 56.544365, 57.790016>,  <70.025444, 56.395599, 58.161255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.032661, 56.544365, 57.790016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984308, 0.169572, 0.048809,
		0.175531, 0.912649, 0.369136,
		0.018050, 0.371911, -0.928093,
		70.038078, 56.655937, 57.511589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.073357, 56.206364, 58.903404>,  <70.025444, 56.395599, 58.161255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.073357, 56.206364, 58.903404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.343178, 56.411362, 59.115936>,  <70.505074, 56.534363, 59.243458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.343178, 56.411362, 59.115936>,  <70.073357, 56.206364, 58.903404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.343178, 56.411362, 59.115936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345057, 0.417390, -0.840667,
		-0.652613, 0.750421, 0.104714,
		0.674560, 0.512498, 0.531332,
		70.545547, 56.565113, 59.275337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.487556, 56.853062, 58.859085>,  <70.073357, 56.206364, 58.903404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.487556, 56.853062, 58.859085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.667404, 56.507553, 58.950066>,  <70.775314, 56.300247, 59.004654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.667404, 56.507553, 58.950066>,  <70.487556, 56.853062, 58.859085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.667404, 56.507553, 58.950066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448508, -0.001893, -0.893776,
		0.772451, 0.503877, 0.386558,
		0.449622, -0.863773, 0.227456,
		70.802292, 56.248421, 59.018303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.355263, 56.866905, 58.778416>,  <70.487556, 56.853062, 58.859085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.355263, 56.866905, 58.778416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.187782, 56.522583, 58.662689>,  <71.087296, 56.315990, 58.593254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.187782, 56.522583, 58.662689>,  <71.355263, 56.866905, 58.778416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.187782, 56.522583, 58.662689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365032, 0.132184, -0.921564,
		0.831533, -0.491462, 0.258878,
		-0.418694, -0.860809, -0.289315,
		71.062172, 56.264339, 58.575893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.444145, 57.405186, 59.194126>,  <71.355263, 56.866905, 58.778416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.444145, 57.405186, 59.194126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.723984, 57.289387, 58.932816>,  <71.891884, 57.219906, 58.776031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.723984, 57.289387, 58.932816>,  <71.444145, 57.405186, 59.194126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.723984, 57.289387, 58.932816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210151, 0.790456, -0.575340,
		0.682942, 0.539789, 0.492158,
		0.699591, -0.289496, -0.653273,
		71.933861, 57.202538, 58.736835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.928726, 57.954773, 59.022541>,  <71.444145, 57.405186, 59.194126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.928726, 57.954773, 59.022541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.907913, 57.707977, 58.708443>,  <71.895424, 57.559902, 58.519981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.907913, 57.707977, 58.708443>,  <71.928726, 57.954773, 59.022541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.907913, 57.707977, 58.708443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242280, 0.770624, -0.589439,
		0.968810, 0.159575, -0.189588,
		-0.052041, -0.616987, -0.785251,
		71.892303, 57.522881, 58.472866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.417549, 57.921337, 59.648193>,  <71.928726, 57.954773, 59.022541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.417549, 57.921337, 59.648193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.731201, 58.017265, 59.877144>,  <72.919395, 58.074821, 60.014515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.731201, 58.017265, 59.877144>,  <72.417549, 57.921337, 59.648193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.731201, 58.017265, 59.877144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538262, -0.196219, 0.819617,
		0.308871, -0.950781, -0.024777,
		0.784138, 0.239820, 0.572375,
		72.966446, 58.089211, 60.048855>
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
