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
	<36.905968, 53.126358, 49.784904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.821697, 53.174828, 49.396896>,  <36.771133, 53.203907, 49.164093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.821697, 53.174828, 49.396896>,  <36.905968, 53.126358, 49.784904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.821697, 53.174828, 49.396896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945080, -0.228398, -0.233792,
		-0.249879, -0.965998, -0.066399,
		-0.210677, 0.121172, -0.970017,
		36.758495, 53.211178, 49.105892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012585, 52.511616, 49.368923>,  <36.905968, 53.126358, 49.784904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012585, 52.511616, 49.368923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.051132, 52.805473, 49.100292>,  <37.074261, 52.981789, 48.939114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.051132, 52.805473, 49.100292>,  <37.012585, 52.511616, 49.368923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051132, 52.805473, 49.100292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888475, -0.367648, -0.274676,
		-0.448692, -0.570209, -0.688141,
		0.096371, 0.734641, -0.671577,
		37.080044, 53.025864, 48.898819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387295, 52.219261, 48.685013>,  <37.012585, 52.511616, 49.368923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387295, 52.219261, 48.685013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.405537, 52.618645, 48.672310>,  <37.416481, 52.858273, 48.664688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.405537, 52.618645, 48.672310>,  <37.387295, 52.219261, 48.685013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405537, 52.618645, 48.672310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921963, -0.054309, -0.383451,
		-0.384583, -0.011788, -0.923015,
		0.045608, 0.998455, -0.031755,
		37.419220, 52.918182, 48.662785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878624, 52.462475, 47.999210>,  <37.387295, 52.219261, 48.685013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.878624, 52.462475, 47.999210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.829418, 52.750267, 48.272621>,  <37.799896, 52.922943, 48.436668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.829418, 52.750267, 48.272621>,  <37.878624, 52.462475, 47.999210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829418, 52.750267, 48.272621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933112, 0.318361, -0.167175,
		-0.337888, 0.617243, -0.710523,
		-0.123015, 0.719484, 0.683528,
		37.792515, 52.966114, 48.477680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981636, 53.063938, 47.740929>,  <37.878624, 52.462475, 47.999210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.981636, 53.063938, 47.740929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.086067, 53.094929, 48.125809>,  <38.148724, 53.113525, 48.356739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.086067, 53.094929, 48.125809>,  <37.981636, 53.063938, 47.740929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086067, 53.094929, 48.125809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891042, 0.364085, -0.271084,
		-0.371327, 0.928137, 0.026018,
		0.261076, 0.077478, 0.962204,
		38.164391, 53.118172, 48.414471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093342, 53.804520, 48.075390>,  <37.981636, 53.063938, 47.740929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.093342, 53.804520, 48.075390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.320713, 53.503593, 48.208603>,  <38.457138, 53.323040, 48.288532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.320713, 53.503593, 48.208603>,  <38.093342, 53.804520, 48.075390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.320713, 53.503593, 48.208603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820938, 0.491937, -0.289927,
		0.054284, 0.438204, 0.897235,
		0.568430, -0.752313, 0.333035,
		38.491241, 53.277901, 48.308514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.581425, 54.052406, 48.667488>,  <38.093342, 53.804520, 48.075390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.581425, 54.052406, 48.667488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.768391, 53.741508, 48.499001>,  <38.880569, 53.554970, 48.397907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.768391, 53.741508, 48.499001>,  <38.581425, 54.052406, 48.667488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.768391, 53.741508, 48.499001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881919, 0.442949, 0.161294,
		0.061214, -0.446870, 0.892502,
		0.467410, -0.777241, -0.421217,
		38.908615, 53.508335, 48.372635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321541, 53.953770, 49.001202>,  <38.581425, 54.052406, 48.667488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.321541, 53.953770, 49.001202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.331383, 53.774902, 48.643555>,  <39.337288, 53.667583, 48.428967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.331383, 53.774902, 48.643555>,  <39.321541, 53.953770, 49.001202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.331383, 53.774902, 48.643555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830710, 0.506717, -0.230562,
		0.556161, -0.737077, 0.383930,
		0.024602, -0.447165, -0.894113,
		39.338764, 53.640755, 48.375320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.824265, 53.579674, 49.134686>,  <39.321541, 53.953770, 49.001202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.824265, 53.579674, 49.134686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.773556, 53.682320, 48.751419>,  <39.743130, 53.743908, 48.521461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.773556, 53.682320, 48.751419>,  <39.824265, 53.579674, 49.134686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.773556, 53.682320, 48.751419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837884, 0.544724, 0.035028,
		0.530923, -0.798389, -0.284070,
		-0.126774, 0.256615, -0.958163,
		39.735523, 53.759304, 48.463970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.408192, 53.381798, 48.751686>,  <39.824265, 53.579674, 49.134686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.408192, 53.381798, 48.751686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.223064, 53.716381, 48.634289>,  <40.111988, 53.917130, 48.563850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.223064, 53.716381, 48.634289>,  <40.408192, 53.381798, 48.751686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.223064, 53.716381, 48.634289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878789, 0.476382, -0.028108,
		0.116304, -0.270929, -0.955547,
		-0.462821, 0.836456, -0.293495,
		40.084217, 53.967319, 48.546242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.732895, 53.585705, 48.154789>,  <40.408192, 53.381798, 48.751686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.732895, 53.585705, 48.154789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.580940, 53.899502, 48.350853>,  <40.489765, 54.087780, 48.468491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.580940, 53.899502, 48.350853>,  <40.732895, 53.585705, 48.154789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.580940, 53.899502, 48.350853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839583, 0.514848, -0.173300,
		-0.388309, 0.345693, -0.854232,
		-0.379891, 0.784493, 0.490157,
		40.466972, 54.134850, 48.497902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.651104, 54.286964, 47.744976>,  <40.732895, 53.585705, 48.154789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.651104, 54.286964, 47.744976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.757790, 54.317047, 48.129311>,  <40.821800, 54.335094, 48.359913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.757790, 54.317047, 48.129311>,  <40.651104, 54.286964, 47.744976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.757790, 54.317047, 48.129311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873758, 0.401840, -0.273992,
		-0.406708, 0.912617, 0.041467,
		0.266713, 0.075203, 0.960837,
		40.837803, 54.339607, 48.417561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.015057, 54.982227, 47.892487>,  <40.651104, 54.286964, 47.744976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.015057, 54.982227, 47.892487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.111755, 54.704754, 48.163887>,  <41.169773, 54.538269, 48.326725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.111755, 54.704754, 48.163887>,  <41.015057, 54.982227, 47.892487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.111755, 54.704754, 48.163887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968229, 0.218548, -0.121530,
		-0.063981, 0.686321, 0.724479,
		0.241742, -0.693686, 0.678498,
		41.184277, 54.496647, 48.367435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.618446, 55.240501, 48.254044>,  <41.015057, 54.982227, 47.892487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.618446, 55.240501, 48.254044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.621071, 54.849567, 48.338684>,  <41.622646, 54.615005, 48.389469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.621071, 54.849567, 48.338684>,  <41.618446, 55.240501, 48.254044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.621071, 54.849567, 48.338684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994553, -0.015632, -0.103051,
		0.104023, 0.211123, 0.971909,
		0.006564, -0.977335, 0.211599,
		41.623039, 54.556366, 48.402164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.997963, 55.050365, 48.862518>,  <41.618446, 55.240501, 48.254044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.997963, 55.050365, 48.862518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.965897, 54.830269, 48.530060>,  <41.946655, 54.698212, 48.330585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.965897, 54.830269, 48.530060>,  <41.997963, 55.050365, 48.862518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.965897, 54.830269, 48.530060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968597, 0.153877, -0.195298,
		0.235356, -0.820704, 0.520627,
		-0.080170, -0.550242, -0.831148,
		41.941845, 54.665195, 48.280716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.567379, 54.461308, 48.850922>,  <41.997963, 55.050365, 48.862518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.567379, 54.461308, 48.850922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.442272, 54.675728, 48.537277>,  <42.367207, 54.804379, 48.349091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.442272, 54.675728, 48.537277>,  <42.567379, 54.461308, 48.850922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.442272, 54.675728, 48.537277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934937, 0.319355, -0.154609,
		0.167531, -0.781449, -0.601058,
		-0.312770, 0.536049, -0.784108,
		42.348442, 54.836544, 48.302044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.061211, 54.408222, 48.236866>,  <42.567379, 54.461308, 48.850922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.061211, 54.408222, 48.236866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.875519, 54.761620, 48.211777>,  <42.764103, 54.973660, 48.196724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.875519, 54.761620, 48.211777>,  <43.061211, 54.408222, 48.236866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.875519, 54.761620, 48.211777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884918, 0.465651, 0.009514,
		0.037615, -0.051092, -0.997985,
		-0.464226, 0.883493, -0.062727,
		42.736252, 55.026669, 48.192959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.277851, 54.787598, 47.590103>,  <43.061211, 54.408222, 48.236866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.277851, 54.787598, 47.590103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.190937, 55.045322, 47.883400>,  <43.138786, 55.199959, 48.059380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.190937, 55.045322, 47.883400>,  <43.277851, 54.787598, 47.590103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.190937, 55.045322, 47.883400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967615, 0.241056, 0.074922,
		-0.128479, 0.725776, -0.675828,
		-0.217289, 0.644315, 0.733242,
		43.125751, 55.238617, 48.103371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.431503, 55.516441, 47.383820>,  <43.277851, 54.787598, 47.590103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.431503, 55.516441, 47.383820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.485405, 55.466419, 47.777000>,  <43.517746, 55.436405, 48.012909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.485405, 55.466419, 47.777000>,  <43.431503, 55.516441, 47.383820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.485405, 55.466419, 47.777000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932454, 0.351602, -0.083098,
		-0.335217, 0.927759, 0.163989,
		0.134754, -0.125057, 0.982956,
		43.525829, 55.428902, 48.071888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.700146, 56.121510, 47.632866>,  <43.431503, 55.516441, 47.383820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.700146, 56.121510, 47.632866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.817680, 55.796867, 47.834843>,  <43.888199, 55.602081, 47.956028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.817680, 55.796867, 47.834843>,  <43.700146, 56.121510, 47.632866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.817680, 55.796867, 47.834843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954723, 0.223475, -0.196374,
		0.046537, 0.539778, 0.840520,
		0.293834, -0.811603, 0.504938,
		43.905830, 55.553387, 47.986324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.181885, 56.345417, 47.997429>,  <43.700146, 56.121510, 47.632866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.181885, 56.345417, 47.997429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.252384, 55.956970, 47.933094>,  <44.294685, 55.723904, 47.894493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.252384, 55.956970, 47.933094>,  <44.181885, 56.345417, 47.997429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.252384, 55.956970, 47.933094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981696, 0.185393, -0.043620,
		0.072178, -0.150203, 0.986017,
		0.176249, -0.971117, -0.160835,
		44.305260, 55.665634, 47.884842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.490723, 55.889309, 47.423416>,  <44.181885, 56.345417, 47.997429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.490723, 55.889309, 47.423416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.585941, 55.830784, 47.807484>,  <44.643074, 55.795670, 48.037926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.585941, 55.830784, 47.807484>,  <44.490723, 55.889309, 47.423416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.585941, 55.830784, 47.807484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965471, -0.072067, -0.250345,
		0.105825, 0.986610, 0.124106,
		0.238049, -0.146314, 0.960169,
		44.657356, 55.786888, 48.095535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.888466, 56.420681, 47.549076>,  <44.490723, 55.889309, 47.423416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.888466, 56.420681, 47.549076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.965038, 56.104912, 47.782372>,  <45.010983, 55.915451, 47.922348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.965038, 56.104912, 47.782372>,  <44.888466, 56.420681, 47.549076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.965038, 56.104912, 47.782372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980459, 0.126364, -0.150771,
		0.045322, 0.600700, 0.798189,
		0.191431, -0.789425, 0.583235,
		45.022469, 55.868084, 47.957340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.341061, 56.490597, 48.142323>,  <44.888466, 56.420681, 47.549076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.341061, 56.490597, 48.142323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.372444, 56.096649, 48.080505>,  <45.391273, 55.860283, 48.043415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.372444, 56.096649, 48.080505>,  <45.341061, 56.490597, 48.142323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.372444, 56.096649, 48.080505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996479, 0.082070, -0.017131,
		0.029555, -0.152652, 0.987838,
		0.078457, -0.984867, -0.154540,
		45.395981, 55.801189, 48.034142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.673710, 56.070904, 48.759560>,  <45.341061, 56.490597, 48.142323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.673710, 56.070904, 48.759560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.741821, 55.975883, 48.377026>,  <45.782688, 55.918869, 48.147507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.741821, 55.975883, 48.377026>,  <45.673710, 56.070904, 48.759560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.741821, 55.975883, 48.377026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982272, 0.118142, 0.145551,
		0.078407, -0.964163, 0.253461,
		0.170279, -0.237555, -0.956333,
		45.792904, 55.904617, 48.090126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.158916, 55.522266, 48.744884>,  <45.673710, 56.070904, 48.759560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.158916, 55.522266, 48.744884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.194798, 55.730030, 48.404961>,  <46.216324, 55.854687, 48.201008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.194798, 55.730030, 48.404961>,  <46.158916, 55.522266, 48.744884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.194798, 55.730030, 48.404961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968477, 0.153601, 0.196109,
		0.232391, -0.840609, -0.489255,
		0.089701, 0.519407, -0.849806,
		46.221706, 55.885853, 48.150021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.708744, 55.196846, 48.326721>,  <46.158916, 55.522266, 48.744884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.708744, 55.196846, 48.326721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.682732, 55.590702, 48.261917>,  <46.667126, 55.827015, 48.223034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.682732, 55.590702, 48.261917>,  <46.708744, 55.196846, 48.326721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.682732, 55.590702, 48.261917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977934, 0.095183, 0.185970,
		0.198535, -0.146342, -0.969107,
		-0.065027, 0.984644, -0.162010,
		46.663223, 55.886097, 48.213314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.024467, 55.422573, 47.736790>,  <46.708744, 55.196846, 48.326721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.024467, 55.422573, 47.736790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.037144, 55.725147, 47.998108>,  <47.044750, 55.906693, 48.154900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.037144, 55.725147, 47.998108>,  <47.024467, 55.422573, 47.736790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.037144, 55.725147, 47.998108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999277, -0.010226, -0.036628,
		-0.021026, 0.653987, -0.756213,
		0.031687, 0.756436, 0.653299,
		47.046650, 55.952080, 48.194099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.676369, 55.574085, 47.705227>,  <47.024467, 55.422573, 47.736790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.676369, 55.574085, 47.705227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.580978, 55.793541, 48.025757>,  <47.523746, 55.925217, 48.218075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.580978, 55.793541, 48.025757>,  <47.676369, 55.574085, 47.705227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.580978, 55.793541, 48.025757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908438, -0.165680, 0.383784,
		0.343324, 0.819477, -0.458896,
		-0.238473, 0.548641, 0.801326,
		47.509438, 55.958134, 48.266155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.339840, 55.956055, 47.847046>,  <47.676369, 55.574085, 47.705227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.339840, 55.956055, 47.847046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.117146, 55.852890, 48.162903>,  <47.983528, 55.790993, 48.352417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.117146, 55.852890, 48.162903>,  <48.339840, 55.956055, 47.847046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.117146, 55.852890, 48.162903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814995, -0.353502, 0.459150,
		0.160718, 0.899176, 0.407004,
		-0.556733, -0.257912, 0.789639,
		47.950127, 55.775517, 48.399796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.586956, 56.447941, 48.301659>,  <48.339840, 55.956055, 47.847046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.586956, 56.447941, 48.301659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.268204, 56.685642, 48.258125>,  <48.076954, 56.828262, 48.232006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.268204, 56.685642, 48.258125>,  <48.586956, 56.447941, 48.301659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.268204, 56.685642, 48.258125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037236, -0.228118, -0.972921,
		-0.602993, -0.771246, 0.203910,
		-0.796877, 0.594257, -0.108836,
		48.029140, 56.863918, 48.225475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.548019, 56.739315, 48.935802>,  <48.586956, 56.447941, 48.301659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.548019, 56.739315, 48.935802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.855507, 56.563477, 48.749973>,  <49.040001, 56.457973, 48.638474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.855507, 56.563477, 48.749973>,  <48.548019, 56.739315, 48.935802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.855507, 56.563477, 48.749973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404350, 0.896812, -0.179523,
		0.495555, -0.049850, 0.867145,
		0.768717, -0.439593, -0.464577,
		49.086121, 56.431599, 48.610600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.344917, 57.377285, 49.374969>,  <48.548019, 56.739315, 48.935802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.344917, 57.377285, 49.374969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.361130, 57.484085, 49.760109>,  <48.370857, 57.548164, 49.991192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.361130, 57.484085, 49.760109>,  <48.344917, 57.377285, 49.374969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.361130, 57.484085, 49.760109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900229, -0.427864, 0.080750,
		0.433526, 0.863507, -0.257703,
		0.040534, 0.266999, 0.962844,
		48.373291, 57.564186, 50.048962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.898739, 57.728905, 49.418602>,  <48.344917, 57.377285, 49.374969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.898739, 57.728905, 49.418602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.866318, 57.557858, 49.778728>,  <48.846867, 57.455227, 49.994804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.866318, 57.557858, 49.778728>,  <48.898739, 57.728905, 49.418602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.866318, 57.557858, 49.778728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970670, -0.238993, -0.026127,
		0.226342, 0.871793, 0.434449,
		-0.081052, -0.427620, 0.900317,
		48.842003, 57.429573, 50.048824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.329987, 58.109974, 50.026535>,  <48.898739, 57.728905, 49.418602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.329987, 58.109974, 50.026535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.292530, 57.712784, 49.997581>,  <49.270058, 57.474472, 49.980209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.292530, 57.712784, 49.997581>,  <49.329987, 58.109974, 50.026535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.292530, 57.712784, 49.997581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995411, -0.091932, -0.026568,
		0.019727, -0.074542, 0.997023,
		-0.093639, -0.992971, -0.072386,
		49.264439, 57.414894, 49.975864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.632301, 57.773529, 50.639141>,  <49.329987, 58.109974, 50.026535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.632301, 57.773529, 50.639141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.614666, 57.501854, 50.346085>,  <49.604084, 57.338848, 50.170250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.614666, 57.501854, 50.346085>,  <49.632301, 57.773529, 50.639141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.614666, 57.501854, 50.346085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921113, -0.311565, 0.233406,
		-0.386792, -0.664556, 0.639341,
		-0.044085, -0.679185, -0.732642,
		49.601440, 57.298100, 50.126293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.775181, 57.129181, 50.958424>,  <49.632301, 57.773529, 50.639141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.775181, 57.129181, 50.958424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.889416, 57.182354, 50.578789>,  <49.957958, 57.214256, 50.351009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.889416, 57.182354, 50.578789>,  <49.775181, 57.129181, 50.958424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.889416, 57.182354, 50.578789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941722, 0.144765, 0.303648,
		0.177760, -0.980496, -0.083841,
		0.285588, 0.132931, -0.949088,
		49.975094, 57.222233, 50.294064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.284740, 57.281273, 51.558632>,  <49.775181, 57.129181, 50.958424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.284740, 57.281273, 51.558632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.403049, 57.648277, 51.664978>,  <50.474033, 57.868481, 51.728786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.403049, 57.648277, 51.664978>,  <50.284740, 57.281273, 51.558632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.403049, 57.648277, 51.664978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722130, -0.032558, -0.690990,
		-0.625337, 0.396368, -0.672195,
		0.295772, 0.917514, 0.265869,
		50.491779, 57.923531, 51.744740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.578461, 57.589073, 51.008171>,  <50.284740, 57.281273, 51.558632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.578461, 57.589073, 51.008171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.742699, 57.793495, 51.310226>,  <50.841240, 57.916149, 51.491459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.742699, 57.793495, 51.310226>,  <50.578461, 57.589073, 51.008171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.742699, 57.793495, 51.310226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862124, 0.052083, -0.504014,
		-0.296908, 0.857969, -0.419207,
		0.410595, 0.511054, 0.755139,
		50.865875, 57.946812, 51.536770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.863335, 58.272663, 50.763290>,  <50.578461, 57.589073, 51.008171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.863335, 58.272663, 50.763290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.045418, 58.096443, 51.072792>,  <51.154667, 57.990711, 51.258495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.045418, 58.096443, 51.072792>,  <50.863335, 58.272663, 50.763290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.045418, 58.096443, 51.072792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858556, -0.013103, -0.512553,
		0.235946, 0.897631, 0.372275,
		0.455205, -0.440554, 0.773758,
		51.181980, 57.964275, 51.304920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.239746, 58.867794, 50.922688>,  <50.863335, 58.272663, 50.763290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.239746, 58.867794, 50.922688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.359718, 58.499619, 51.022949>,  <51.431702, 58.278713, 51.083107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.359718, 58.499619, 51.022949>,  <51.239746, 58.867794, 50.922688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.359718, 58.499619, 51.022949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810822, 0.107534, -0.575329,
		0.502603, 0.375795, 0.778568,
		0.299928, -0.920443, 0.250656,
		51.449696, 58.223484, 51.098145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.859257, 58.363659, 50.679691>,  <51.239746, 58.867794, 50.922688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.859257, 58.363659, 50.679691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.218639, 58.477005, 50.813843>,  <52.434269, 58.545013, 50.894333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.218639, 58.477005, 50.813843>,  <51.859257, 58.363659, 50.679691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.218639, 58.477005, 50.813843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434155, 0.687286, 0.582364,
		-0.065482, -0.668836, 0.740520,
		0.898455, 0.283367, 0.335383,
		52.488174, 58.562016, 50.914459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.878765, 58.421307, 51.388897>,  <51.859257, 58.363659, 50.679691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.878765, 58.421307, 51.388897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.131813, 58.669838, 51.203964>,  <52.283642, 58.818958, 51.093006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.131813, 58.669838, 51.203964>,  <51.878765, 58.421307, 51.388897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.131813, 58.669838, 51.203964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501354, 0.783551, 0.367004,
		0.590289, -0.000381, 0.807192,
		0.632616, 0.621328, -0.462330,
		52.321598, 58.856236, 51.065266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.371246, 58.788136, 51.741505>,  <51.878765, 58.421307, 51.388897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.371246, 58.788136, 51.741505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.244587, 59.002327, 51.428329>,  <52.168591, 59.130840, 51.240425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.244587, 59.002327, 51.428329>,  <52.371246, 58.788136, 51.741505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.244587, 59.002327, 51.428329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354098, 0.699012, 0.621286,
		0.879970, 0.473968, -0.031731,
		-0.316650, 0.535478, -0.782941,
		52.149593, 59.162971, 51.193447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.877846, 58.337791, 51.509277>,  <52.371246, 58.788136, 51.741505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.877846, 58.337791, 51.509277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.955956, 57.949051, 51.561985>,  <53.002823, 57.715805, 51.593609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.955956, 57.949051, 51.561985>,  <52.877846, 58.337791, 51.509277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.955956, 57.949051, 51.561985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870585, 0.233638, 0.433007,
		-0.451608, 0.030165, 0.891706,
		0.195275, -0.971856, 0.131774,
		53.014538, 57.657494, 51.601517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.999088, 58.123901, 52.233089>,  <52.877846, 58.337791, 51.509277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.999088, 58.123901, 52.233089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.201202, 57.872440, 51.996624>,  <53.322472, 57.721561, 51.854744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.201202, 57.872440, 51.996624>,  <52.999088, 58.123901, 52.233089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.201202, 57.872440, 51.996624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852866, 0.259378, 0.453147,
		-0.131539, -0.733153, 0.667221,
		0.505288, -0.628657, -0.591164,
		53.352791, 57.683842, 51.819275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.338501, 57.590443, 52.559700>,  <52.999088, 58.123901, 52.233089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.338501, 57.590443, 52.559700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.581676, 57.672928, 52.253006>,  <53.727581, 57.722420, 52.068989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.581676, 57.672928, 52.253006>,  <53.338501, 57.590443, 52.559700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.581676, 57.672928, 52.253006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716084, 0.274737, 0.641672,
		0.342973, -0.939146, 0.019358,
		0.607942, 0.206214, -0.766735,
		53.764061, 57.734791, 52.022987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.981556, 57.349117, 52.699142>,  <53.338501, 57.590443, 52.559700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.981556, 57.349117, 52.699142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.071762, 57.632710, 52.431866>,  <54.125885, 57.802864, 52.271500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.071762, 57.632710, 52.431866>,  <53.981556, 57.349117, 52.699142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.071762, 57.632710, 52.431866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860118, 0.177217, 0.478321,
		0.457538, -0.682594, -0.569845,
		0.225513, 0.708984, -0.668195,
		54.139416, 57.845406, 52.231407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.526814, 57.348282, 52.204182>,  <53.981556, 57.349117, 52.699142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.526814, 57.348282, 52.204182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.487839, 57.706829, 52.377174>,  <54.464455, 57.921955, 52.480968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.487839, 57.706829, 52.377174>,  <54.526814, 57.348282, 52.204182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.487839, 57.706829, 52.377174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931906, -0.070370, 0.355809,
		0.349368, 0.437699, -0.828470,
		-0.097438, 0.896364, 0.432479,
		54.458607, 57.975739, 52.506916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.085995, 57.771484, 52.057423>,  <54.526814, 57.348282, 52.204182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.085995, 57.771484, 52.057423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.956535, 57.920258, 52.405426>,  <54.878860, 58.009521, 52.614227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.956535, 57.920258, 52.405426>,  <55.085995, 57.771484, 52.057423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.956535, 57.920258, 52.405426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944965, 0.080512, 0.317111,
		0.047896, 0.924763, -0.377517,
		-0.323647, 0.371929, 0.870012,
		54.859440, 58.031837, 52.666431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.479576, 58.401833, 52.146336>,  <55.085995, 57.771484, 52.057423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.479576, 58.401833, 52.146336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.394096, 58.222851, 52.493694>,  <55.342808, 58.115463, 52.702110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.394096, 58.222851, 52.493694>,  <55.479576, 58.401833, 52.146336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.394096, 58.222851, 52.493694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956246, 0.086019, 0.279634,
		-0.199822, 0.890161, 0.409494,
		-0.213695, -0.447454, 0.868401,
		55.329987, 58.088615, 52.754215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.030666, 58.734272, 52.509167>,  <55.479576, 58.401833, 52.146336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.030666, 58.734272, 52.509167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.893013, 58.470627, 52.776642>,  <55.810421, 58.312439, 52.937126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.893013, 58.470627, 52.776642>,  <56.030666, 58.734272, 52.509167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.893013, 58.470627, 52.776642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888463, 0.001729, 0.458946,
		-0.303652, 0.752043, 0.585001,
		-0.344136, -0.659111, 0.668687,
		55.789772, 58.272892, 52.977249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.103703, 59.002880, 53.167145>,  <56.030666, 58.734272, 52.509167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.103703, 59.002880, 53.167145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.163887, 58.607487, 53.173710>,  <56.199997, 58.370251, 53.177647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.163887, 58.607487, 53.173710>,  <56.103703, 59.002880, 53.167145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.163887, 58.607487, 53.173710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908671, 0.144814, 0.391594,
		-0.389459, -0.044010, 0.919992,
		0.150461, -0.988480, 0.016409,
		56.209026, 58.310944, 53.178631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.020500, 58.595161, 53.855892>,  <56.103703, 59.002880, 53.167145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.020500, 58.595161, 53.855892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.291870, 58.437496, 53.607903>,  <56.454693, 58.342899, 53.459106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.291870, 58.437496, 53.607903>,  <56.020500, 58.595161, 53.855892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.291870, 58.437496, 53.607903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732835, 0.303528, 0.608953,
		-0.051844, -0.867473, 0.494775,
		0.678429, -0.394159, -0.619978,
		56.495399, 58.319248, 53.421909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.572292, 58.201927, 54.373417>,  <56.020500, 58.595161, 53.855892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.572292, 58.201927, 54.373417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.722359, 58.228157, 54.003563>,  <56.812401, 58.243893, 53.781651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.722359, 58.228157, 54.003563>,  <56.572292, 58.201927, 54.373417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.722359, 58.228157, 54.003563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889970, 0.253480, 0.379079,
		0.259235, -0.965115, 0.036736,
		0.375167, 0.065577, -0.924635,
		56.834908, 58.247829, 53.726173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.966812, 57.587444, 54.273945>,  <56.572292, 58.201927, 54.373417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.966812, 57.587444, 54.273945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.058655, 57.931427, 54.091625>,  <57.113758, 58.137817, 53.982235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.058655, 57.931427, 54.091625>,  <56.966812, 57.587444, 54.273945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.058655, 57.931427, 54.091625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802430, 0.097773, 0.588682,
		0.550808, -0.500910, -0.667608,
		0.229603, 0.859959, -0.455799,
		57.127537, 58.189415, 53.954884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.691898, 57.557827, 54.147232>,  <56.966812, 57.587444, 54.273945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.691898, 57.557827, 54.147232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.599274, 57.946793, 54.135967>,  <57.543701, 58.180172, 54.129208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.599274, 57.946793, 54.135967>,  <57.691898, 57.557827, 54.147232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.599274, 57.946793, 54.135967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775115, 0.201916, 0.598688,
		0.587859, 0.116800, -0.800487,
		-0.231558, 0.972413, -0.028164,
		57.529808, 58.238518, 54.127518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.231789, 58.105640, 53.894699>,  <57.691898, 57.557827, 54.147232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.231789, 58.105640, 53.894699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.970703, 58.223705, 54.173798>,  <57.814053, 58.294544, 54.341255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.970703, 58.223705, 54.173798>,  <58.231789, 58.105640, 53.894699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.970703, 58.223705, 54.173798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738493, 0.042301, 0.672933,
		0.169106, 0.954512, -0.245582,
		-0.652711, 0.295158, 0.697747,
		57.774891, 58.312252, 54.383121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.513351, 58.709435, 54.222149>,  <58.231789, 58.105640, 53.894699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.513351, 58.709435, 54.222149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.287636, 58.490570, 54.469437>,  <58.152206, 58.359253, 54.617809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.287636, 58.490570, 54.469437>,  <58.513351, 58.709435, 54.222149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.287636, 58.490570, 54.469437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811434, -0.229554, 0.537476,
		-0.152170, 0.804935, 0.573519,
		-0.564287, -0.547160, 0.618220,
		58.118351, 58.326424, 54.654903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.100807, 58.765404, 54.569988>,  <58.513351, 58.709435, 54.222149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.100807, 58.765404, 54.569988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.319649, 59.058479, 54.731895>,  <59.450954, 59.234325, 54.829041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.319649, 59.058479, 54.731895>,  <59.100807, 58.765404, 54.569988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.319649, 59.058479, 54.731895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809115, -0.586809, -0.031433,
		0.214488, 0.344698, -0.913881,
		0.547108, 0.732693, 0.404764,
		59.483780, 59.278286, 54.853325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.699215, 58.864384, 54.118416>,  <59.100807, 58.765404, 54.569988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.699215, 58.864384, 54.118416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.767525, 58.941151, 54.504990>,  <59.808510, 58.987213, 54.736935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.767525, 58.941151, 54.504990>,  <59.699215, 58.864384, 54.118416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.767525, 58.941151, 54.504990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772468, -0.634968, -0.010403,
		0.611661, 0.748319, -0.256689,
		0.170774, 0.191921, 0.966438,
		59.818756, 58.998726, 54.794922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.372894, 58.634563, 54.215572>,  <59.699215, 58.864384, 54.118416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.372894, 58.634563, 54.215572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.235733, 58.700603, 54.585472>,  <60.153435, 58.740227, 54.807411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.235733, 58.700603, 54.585472>,  <60.372894, 58.634563, 54.215572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.235733, 58.700603, 54.585472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714780, -0.592893, 0.370900,
		0.609514, 0.788174, 0.085292,
		-0.342903, 0.165104, 0.924748,
		60.132862, 58.750134, 54.862896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.960323, 58.655033, 54.596313>,  <60.372894, 58.634563, 54.215572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.960323, 58.655033, 54.596313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.658249, 58.588352, 54.849899>,  <60.477005, 58.548344, 55.002052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.658249, 58.588352, 54.849899>,  <60.960323, 58.655033, 54.596313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.658249, 58.588352, 54.849899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563214, -0.659836, 0.497399,
		0.335397, 0.732685, 0.592184,
		-0.755182, -0.166700, 0.633965,
		60.431694, 58.538342, 55.040089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.770569, 59.047962, 55.185658>,  <60.960323, 58.655033, 54.596313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.770569, 59.047962, 55.185658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.116234, 59.239109, 55.122597>,  <61.323635, 59.353798, 55.084759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.116234, 59.239109, 55.122597>,  <60.770569, 59.047962, 55.185658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.116234, 59.239109, 55.122597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009992, 0.329533, 0.944091,
		0.503106, -0.814277, 0.289546,
		0.864167, 0.477871, -0.157654,
		61.375484, 59.382469, 55.075302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.144974, 58.830681, 55.768993>,  <60.770569, 59.047962, 55.185658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.144974, 58.830681, 55.768993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.343330, 59.158249, 55.653435>,  <61.462345, 59.354790, 55.584099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.343330, 59.158249, 55.653435>,  <61.144974, 58.830681, 55.768993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.343330, 59.158249, 55.653435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173284, 0.419311, 0.891151,
		0.850921, -0.391850, 0.349837,
		0.495889, 0.818921, -0.288900,
		61.492096, 59.403927, 55.566765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.649555, 58.742455, 56.306137>,  <61.144974, 58.830681, 55.768993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.649555, 58.742455, 56.306137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.772659, 58.376251, 56.202499>,  <61.846519, 58.156528, 56.140316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.772659, 58.376251, 56.202499>,  <61.649555, 58.742455, 56.306137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.772659, 58.376251, 56.202499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357965, -0.140893, 0.923044,
		-0.881560, -0.376819, 0.284359,
		0.307757, -0.915509, -0.259093,
		61.864986, 58.101597, 56.124771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.604031, 58.405693, 56.968929>,  <61.649555, 58.742455, 56.306137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.604031, 58.405693, 56.968929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.849472, 58.237984, 56.701286>,  <61.996738, 58.137360, 56.540703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.849472, 58.237984, 56.701286>,  <61.604031, 58.405693, 56.968929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.849472, 58.237984, 56.701286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634782, -0.242051, 0.733800,
		-0.469620, -0.874998, 0.117624,
		0.613603, -0.419272, -0.669105,
		62.033554, 58.112202, 56.500553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.573769, 57.693146, 57.047161>,  <61.604031, 58.405693, 56.968929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.573769, 57.693146, 57.047161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.927742, 57.843849, 56.937660>,  <62.140125, 57.934269, 56.871960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.927742, 57.843849, 56.937660>,  <61.573769, 57.693146, 57.047161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.927742, 57.843849, 56.937660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382691, -0.253310, 0.888472,
		0.265394, -0.891004, -0.368345,
		0.884937, 0.376757, -0.273752,
		62.193222, 57.956875, 56.855534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.091957, 57.149509, 57.245285>,  <61.573769, 57.693146, 57.047161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.091957, 57.149509, 57.245285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.273613, 57.505547, 57.229843>,  <62.382607, 57.719170, 57.220577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.273613, 57.505547, 57.229843>,  <62.091957, 57.149509, 57.245285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.273613, 57.505547, 57.229843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471766, -0.203500, 0.857919,
		0.755771, -0.407829, -0.512333,
		0.454144, 0.890092, -0.038601,
		62.409855, 57.772575, 57.218262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.758678, 56.961201, 57.204475>,  <62.091957, 57.149509, 57.245285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.758678, 56.961201, 57.204475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.680893, 57.319996, 57.363266>,  <62.634224, 57.535275, 57.458542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.680893, 57.319996, 57.363266>,  <62.758678, 56.961201, 57.204475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.680893, 57.319996, 57.363266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556082, -0.232577, 0.797923,
		0.808058, 0.375916, -0.453574,
		-0.194461, 0.896992, 0.396976,
		62.622555, 57.589092, 57.482357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.261673, 57.577347, 57.245884>,  <62.758678, 56.961201, 57.204475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.261673, 57.577347, 57.245884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.983414, 57.469582, 57.512268>,  <62.816460, 57.404922, 57.672096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.983414, 57.469582, 57.512268>,  <63.261673, 57.577347, 57.245884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.983414, 57.469582, 57.512268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703123, -0.445412, 0.554280,
		0.147297, 0.853831, 0.499275,
		-0.695644, -0.269408, 0.665957,
		62.774719, 57.388760, 57.712055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.620556, 57.648376, 57.762825>,  <63.261673, 57.577347, 57.245884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.620556, 57.648376, 57.762825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.347778, 57.379368, 57.877838>,  <63.184113, 57.217964, 57.946846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.347778, 57.379368, 57.877838>,  <63.620556, 57.648376, 57.762825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.347778, 57.379368, 57.877838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723222, -0.561364, 0.402268,
		-0.109123, 0.482272, 0.869198,
		-0.681940, -0.672520, 0.287532,
		63.143196, 57.177612, 57.964096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.701084, 57.365898, 58.529255>,  <63.620556, 57.648376, 57.762825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.701084, 57.365898, 58.529255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.525627, 57.089058, 58.299965>,  <63.420353, 56.922955, 58.162392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.525627, 57.089058, 58.299965>,  <63.701084, 57.365898, 58.529255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.525627, 57.089058, 58.299965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716430, -0.654390, 0.241872,
		-0.542513, -0.304580, 0.782887,
		-0.438644, -0.692102, -0.573225,
		63.394035, 56.881428, 58.127998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.437004, 57.082703, 58.678005>,  <63.701084, 57.365898, 58.529255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.437004, 57.082703, 58.678005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.307327, 57.250446, 59.017189>,  <64.229523, 57.351093, 59.220699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.307327, 57.250446, 59.017189>,  <64.437004, 57.082703, 58.678005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.307327, 57.250446, 59.017189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936335, 0.270013, 0.224434,
		-0.134843, 0.866736, -0.480194,
		-0.324183, 0.419359, 0.847964,
		64.210075, 57.376255, 59.271580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.532539, 57.805790, 58.723835>,  <64.437004, 57.082703, 58.678005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.532539, 57.805790, 58.723835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.573776, 57.587589, 59.056534>,  <64.598518, 57.456669, 59.256153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.573776, 57.587589, 59.056534>,  <64.532539, 57.805790, 58.723835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.573776, 57.587589, 59.056534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990263, 0.134925, -0.034256,
		-0.093537, 0.827180, 0.554098,
		0.103098, -0.545499, 0.831746,
		64.604706, 57.423939, 59.306057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.837624, 58.191792, 59.382854>,  <64.532539, 57.805790, 58.723835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.837624, 58.191792, 59.382854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.941200, 57.806847, 59.349838>,  <65.003349, 57.575882, 59.330029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.941200, 57.806847, 59.349838>,  <64.837624, 58.191792, 59.382854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.941200, 57.806847, 59.349838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965837, 0.258893, 0.011511,
		0.010292, -0.082706, 0.996521,
		0.258944, -0.962359, -0.082545,
		65.018883, 57.518139, 59.325073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.378929, 57.793865, 59.908241>,  <64.837624, 58.191792, 59.382854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.378929, 57.793865, 59.908241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.422020, 57.614597, 59.553268>,  <65.447876, 57.507038, 59.340282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.422020, 57.614597, 59.553268>,  <65.378929, 57.793865, 59.908241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.422020, 57.614597, 59.553268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993286, 0.010660, 0.115196,
		-0.042167, -0.893887, 0.446305,
		0.107729, -0.448165, -0.887436,
		65.454338, 57.480148, 59.287037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.916656, 57.218586, 59.862793>,  <65.378929, 57.793865, 59.908241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.916656, 57.218586, 59.862793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.866859, 57.445915, 59.537460>,  <65.836983, 57.582314, 59.342262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.866859, 57.445915, 59.537460>,  <65.916656, 57.218586, 59.862793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.866859, 57.445915, 59.537460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935729, 0.339888, 0.094268,
		0.330017, -0.749323, -0.574112,
		-0.124497, 0.568324, -0.813332,
		65.829514, 57.616413, 59.293461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.377357, 57.000618, 59.448826>,  <65.916656, 57.218586, 59.862793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.377357, 57.000618, 59.448826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.264610, 57.383968, 59.430656>,  <66.196960, 57.613979, 59.419754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.264610, 57.383968, 59.430656>,  <66.377357, 57.000618, 59.448826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.264610, 57.383968, 59.430656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933044, 0.284833, 0.219769,
		0.223560, 0.019562, -0.974494,
		-0.281867, 0.958378, -0.045425,
		66.180054, 57.671482, 59.417030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.964188, 57.325714, 59.106895>,  <66.377357, 57.000618, 59.448826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.964188, 57.325714, 59.106895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.735252, 57.569725, 59.326096>,  <66.597893, 57.716133, 59.457615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.735252, 57.569725, 59.326096>,  <66.964188, 57.325714, 59.106895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.735252, 57.569725, 59.326096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804755, 0.546191, 0.232474,
		-0.157496, 0.574056, -0.803526,
		-0.572332, 0.610028, 0.547998,
		66.563553, 57.752735, 59.490494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.928719, 58.051907, 58.904976>,  <66.964188, 57.325714, 59.106895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.928719, 58.051907, 58.904976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.892105, 58.008038, 59.300873>,  <66.870140, 57.981716, 59.538410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.892105, 58.008038, 59.300873>,  <66.928719, 58.051907, 58.904976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.892105, 58.008038, 59.300873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974845, 0.192969, 0.111534,
		-0.203221, 0.975057, 0.089246,
		-0.091530, -0.109668, 0.989745,
		66.864647, 57.975136, 59.597797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.123962, 58.793945, 59.357071>,  <66.928719, 58.051907, 58.904976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.123962, 58.793945, 59.357071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.226929, 58.440022, 59.512428>,  <67.288712, 58.227669, 59.605640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.226929, 58.440022, 59.512428>,  <67.123962, 58.793945, 59.357071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.226929, 58.440022, 59.512428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963463, 0.265796, -0.033045,
		-0.073994, 0.382706, 0.920902,
		0.257418, -0.884810, 0.388390,
		67.304153, 58.174580, 59.628944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.664352, 58.924580, 59.958179>,  <67.123962, 58.793945, 59.357071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.664352, 58.924580, 59.958179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.671127, 58.552956, 59.810364>,  <67.675194, 58.329983, 59.721676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.671127, 58.552956, 59.810364>,  <67.664352, 58.924580, 59.958179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.671127, 58.552956, 59.810364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990204, 0.066822, -0.122600,
		0.138596, -0.363842, 0.921092,
		0.016942, -0.929061, -0.369539,
		67.676208, 58.274239, 59.699501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.347961, 58.592529, 60.196270>,  <67.664352, 58.924580, 59.958179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.347961, 58.592529, 60.196270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.243294, 58.371265, 59.879906>,  <68.180496, 58.238506, 59.690086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.243294, 58.371265, 59.879906>,  <68.347961, 58.592529, 60.196270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.243294, 58.371265, 59.879906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962189, -0.085282, -0.258688,
		0.075646, -0.828697, 0.554562,
		-0.261669, -0.553162, -0.790912,
		68.164795, 58.205318, 59.642632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.117615, 58.611717, 60.271118>,  <68.347961, 58.592529, 60.196270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.117615, 58.611717, 60.271118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.354561, 58.634682, 59.949669>,  <69.496727, 58.648460, 59.756802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.354561, 58.634682, 59.949669>,  <69.117615, 58.611717, 60.271118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.354561, 58.634682, 59.949669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108734, -0.994029, 0.009141,
		-0.798296, -0.092796, -0.595073,
		0.592368, 0.057407, -0.803620,
		69.532272, 58.651905, 59.708584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.834198, 58.313171, 59.705070>,  <69.117615, 58.611717, 60.271118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.834198, 58.313171, 59.705070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.226761, 58.291382, 59.631470>,  <69.462303, 58.278309, 59.587311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.226761, 58.291382, 59.631470>,  <68.834198, 58.313171, 59.705070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.226761, 58.291382, 59.631470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075536, -0.991115, -0.109475,
		-0.176404, 0.121339, -0.976810,
		0.981415, -0.054472, -0.184002,
		69.521187, 58.275040, 59.576267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.906708, 57.970737, 59.077282>,  <68.834198, 58.313171, 59.705070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.906708, 57.970737, 59.077282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.248688, 57.922821, 59.279160>,  <69.453873, 57.894073, 59.400284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.248688, 57.922821, 59.279160>,  <68.906708, 57.970737, 59.077282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.248688, 57.922821, 59.279160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000931, -0.972613, -0.232426,
		0.518711, 0.199182, -0.831423,
		0.854949, -0.119788, 0.504691,
		69.505173, 57.886883, 59.430569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.003632, 57.494476, 59.726547>,  <68.906708, 57.970737, 59.077282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.003632, 57.494476, 59.726547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.088547, 57.170780, 59.507431>,  <69.139496, 56.976562, 59.375961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.088547, 57.170780, 59.507431>,  <69.003632, 57.494476, 59.726547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.088547, 57.170780, 59.507431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977050, -0.185840, -0.104103,
		-0.017557, 0.557316, -0.830115,
		0.212287, -0.809236, -0.547788,
		69.152229, 56.928009, 59.343094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.408081, 57.798290, 60.166801>,  <69.003632, 57.494476, 59.726547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.408081, 57.798290, 60.166801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.325325, 57.896828, 60.545540>,  <69.275673, 57.955948, 60.772781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.325325, 57.896828, 60.545540>,  <69.408081, 57.798290, 60.166801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.325325, 57.896828, 60.545540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947153, -0.192069, 0.256924,
		0.245151, 0.949961, -0.193586,
		-0.206886, 0.246341, 0.946844,
		69.263260, 57.970730, 60.829594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.848312, 58.332607, 60.462410>,  <69.408081, 57.798290, 60.166801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.848312, 58.332607, 60.462410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.726051, 58.100025, 60.764000>,  <69.652695, 57.960476, 60.944954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.726051, 58.100025, 60.764000>,  <69.848312, 58.332607, 60.462410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.726051, 58.100025, 60.764000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949954, -0.132562, 0.282868,
		-0.064528, 0.802703, 0.592878,
		-0.305652, -0.581459, 0.753977,
		69.634354, 57.925587, 60.990192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.076401, 58.585773, 61.177460>,  <69.848312, 58.332607, 60.462410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.076401, 58.585773, 61.177460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.026924, 58.190567, 61.140511>,  <69.997238, 57.953445, 61.118340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.026924, 58.190567, 61.140511>,  <70.076401, 58.585773, 61.177460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.026924, 58.190567, 61.140511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980747, -0.135889, 0.140247,
		-0.151118, -0.073249, 0.985798,
		-0.123686, -0.988013, -0.092374,
		69.989815, 57.894165, 61.112797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.605736, 58.224274, 61.580460>,  <70.076401, 58.585773, 61.177460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.605736, 58.224274, 61.580460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.486977, 57.965424, 61.299583>,  <70.415718, 57.810112, 61.131058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.486977, 57.965424, 61.299583>,  <70.605736, 58.224274, 61.580460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.486977, 57.965424, 61.299583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949713, -0.276718, -0.146534,
		-0.099483, -0.710387, 0.696744,
		-0.296898, -0.647130, -0.702193,
		70.397911, 57.771286, 61.088924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.026817, 57.746498, 62.060566>,  <70.605736, 58.224274, 61.580460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.026817, 57.746498, 62.060566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.248131, 57.453777, 62.219734>,  <71.380920, 57.278145, 62.315235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.248131, 57.453777, 62.219734>,  <71.026817, 57.746498, 62.060566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.248131, 57.453777, 62.219734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796585, 0.325144, -0.509641,
		0.243574, 0.598955, 0.762840,
		0.553285, -0.731802, 0.397922,
		71.414116, 57.234238, 62.339111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.732033, 57.973217, 62.317947>,  <71.026817, 57.746498, 62.060566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.732033, 57.973217, 62.317947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.724709, 57.601791, 62.169662>,  <71.720314, 57.378937, 62.080692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.724709, 57.601791, 62.169662>,  <71.732033, 57.973217, 62.317947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.724709, 57.601791, 62.169662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762612, 0.226806, -0.605791,
		0.646597, -0.293802, 0.703983,
		-0.018315, -0.928568, -0.370709,
		71.719215, 57.323219, 62.058449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.338623, 57.736847, 62.463070>,  <71.732033, 57.973217, 62.317947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.338623, 57.736847, 62.463070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.192299, 57.520714, 62.159958>,  <72.104500, 57.391033, 61.978092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.192299, 57.520714, 62.159958>,  <72.338623, 57.736847, 62.463070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.192299, 57.520714, 62.159958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834533, 0.169989, -0.524079,
		0.411989, -0.824105, 0.388737,
		-0.365815, -0.540328, -0.757776,
		72.082558, 57.358616, 61.932625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.816925, 57.114040, 62.248909>,  <72.338623, 57.736847, 62.463070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.816925, 57.114040, 62.248909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.605293, 57.284523, 61.955399>,  <72.478317, 57.386810, 61.779293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.605293, 57.284523, 61.955399>,  <72.816925, 57.114040, 62.248909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.605293, 57.284523, 61.955399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788547, -0.072518, -0.610684,
		-0.313488, -0.901716, -0.297715,
		-0.529074, 0.426204, -0.733779,
		72.446571, 57.412384, 61.735264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.788040, 56.638035, 61.568565>,  <72.816925, 57.114040, 62.248909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.788040, 56.638035, 61.568565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.721146, 57.021751, 61.477531>,  <72.681007, 57.251980, 61.422913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.721146, 57.021751, 61.477531>,  <72.788040, 56.638035, 61.568565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.721146, 57.021751, 61.477531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614340, -0.079149, -0.785062,
		-0.771115, -0.271107, -0.576093,
		-0.167238, 0.959290, -0.227585,
		72.670975, 57.309540, 61.409256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.507988, 56.790150, 60.812469>,  <72.788040, 56.638035, 61.568565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.507988, 56.790150, 60.812469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.723785, 57.096661, 60.952049>,  <72.853264, 57.280567, 61.035797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.723785, 57.096661, 60.952049>,  <72.507988, 56.790150, 60.812469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.723785, 57.096661, 60.952049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559132, -0.016179, -0.828921,
		-0.629540, 0.642302, -0.437180,
		0.539491, 0.766281, 0.348946,
		72.885635, 57.326546, 61.056732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.446701, 57.316311, 60.326363>,  <72.507988, 56.790150, 60.812469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.446701, 57.316311, 60.326363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.804375, 57.325745, 60.505196>,  <73.018982, 57.331406, 60.612495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.804375, 57.325745, 60.505196>,  <72.446701, 57.316311, 60.326363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.804375, 57.325745, 60.505196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416786, 0.320798, -0.850517,
		-0.163481, 0.946854, 0.277022,
		0.894183, 0.023585, 0.447080,
		73.072632, 57.332821, 60.639320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.735100, 57.936295, 60.120110>,  <72.446701, 57.316311, 60.326363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.735100, 57.936295, 60.120110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.010002, 57.649914, 60.169266>,  <73.174942, 57.478085, 60.198757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.010002, 57.649914, 60.169266>,  <72.735100, 57.936295, 60.120110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.010002, 57.649914, 60.169266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447166, 0.283633, -0.848290,
		0.572481, 0.637936, 0.515076,
		0.687247, -0.715954, 0.122888,
		73.216179, 57.435127, 60.206131>
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
