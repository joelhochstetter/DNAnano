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
	sky <0, 0.179814, -0.983701>
	up <0, 0.179814, -0.983701>
	right 1.6 * <1, 0, 0>
	location <35, 94.9851, 44.8844>
	look_at <35, 29.7336, 32.9568>
	direction <0, -65.2515, -11.9276>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 56
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16352, -0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16352, 0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<24.027491, 35.095192, 35.268925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.399862, 35.022831, 35.142029>,  <24.623285, 34.979416, 35.065891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.399862, 35.022831, 35.142029>,  <24.027491, 35.095192, 35.268925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.399862, 35.022831, 35.142029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021165, 0.893956, -0.447655,
		0.364583, 0.410021, 0.836039,
		0.930930, -0.180903, -0.317243,
		24.679142, 34.968559, 35.046856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.533979, 35.613777, 35.401569>,  <24.027491, 35.095192, 35.268925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.533979, 35.613777, 35.401569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.653130, 35.420151, 35.072460>,  <24.724619, 35.303974, 34.874996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.653130, 35.420151, 35.072460>,  <24.533979, 35.613777, 35.401569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.653130, 35.420151, 35.072460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052764, 0.868928, -0.492118,
		0.953146, 0.103176, 0.284373,
		0.297875, -0.484065, -0.822771,
		24.742493, 35.274933, 34.825630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.286118, 35.678921, 35.260944>,  <24.533979, 35.613777, 35.401569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.286118, 35.678921, 35.260944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.183153, 35.575752, 34.888447>,  <25.121374, 35.513851, 34.664948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.183153, 35.575752, 34.888447>,  <25.286118, 35.678921, 35.260944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.183153, 35.575752, 34.888447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311832, 0.889989, -0.332686,
		0.914605, -0.376028, -0.148664,
		-0.257408, -0.257919, -0.931246,
		25.105930, 35.498375, 34.609074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.861351, 35.765068, 34.758392>,  <25.286118, 35.678921, 35.260944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.861351, 35.765068, 34.758392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.497501, 35.826900, 34.604153>,  <25.279190, 35.863998, 34.511608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.497501, 35.826900, 34.604153>,  <25.861351, 35.765068, 34.758392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.497501, 35.826900, 34.604153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277628, 0.916675, -0.287454,
		0.309034, -0.368528, -0.876747,
		-0.909626, 0.154577, -0.385598,
		25.224613, 35.873272, 34.488472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.076183, 35.794132, 34.073574>,  <25.861351, 35.765068, 34.758392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.076183, 35.794132, 34.073574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.762125, 35.993973, 34.219963>,  <25.573690, 36.113876, 34.307796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.762125, 35.993973, 34.219963>,  <26.076183, 35.794132, 34.073574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.762125, 35.993973, 34.219963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352239, 0.846299, -0.399632,
		-0.509384, -0.184858, -0.840449,
		-0.785147, 0.499605, 0.365977,
		25.526581, 36.143856, 34.329758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.945467, 36.489395, 33.768070>,  <26.076183, 35.794132, 34.073574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.945467, 36.489395, 33.768070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.097494, 36.827415, 33.918507>,  <26.188711, 37.030228, 34.008770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.097494, 36.827415, 33.918507>,  <25.945467, 36.489395, 33.768070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.097494, 36.827415, 33.918507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155122, 0.459077, -0.874749,
		-0.911858, 0.274124, 0.305565,
		0.380068, 0.845047, 0.376090,
		26.211514, 37.080929, 34.031334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.431732, 37.061882, 33.598888>,  <25.945467, 36.489395, 33.768070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.431732, 37.061882, 33.598888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.803091, 37.207554, 33.628403>,  <26.025908, 37.294956, 33.646111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.803091, 37.207554, 33.628403>,  <25.431732, 37.061882, 33.598888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.803091, 37.207554, 33.628403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139656, 0.526001, -0.838939,
		-0.344341, 0.768566, 0.539199,
		0.928399, 0.364184, 0.073789,
		26.081612, 37.316811, 33.650539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.377453, 37.825474, 33.571060>,  <25.431732, 37.061882, 33.598888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.377453, 37.825474, 33.571060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.750702, 37.715958, 33.477829>,  <25.974651, 37.650249, 33.421890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.750702, 37.715958, 33.477829>,  <25.377453, 37.825474, 33.571060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.750702, 37.715958, 33.477829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013889, 0.620292, -0.784248,
		0.359290, 0.735037, 0.575006,
		0.933123, -0.273787, -0.233074,
		26.030638, 37.633823, 33.407906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.766655, 38.396595, 33.525459>,  <25.377453, 37.825474, 33.571060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.766655, 38.396595, 33.525459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.009747, 38.169426, 33.303421>,  <26.155602, 38.033123, 33.170200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.009747, 38.169426, 33.303421>,  <25.766655, 38.396595, 33.525459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.009747, 38.169426, 33.303421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020644, 0.687446, -0.725942,
		0.793876, 0.452635, 0.406056,
		0.607729, -0.567925, -0.555091,
		26.192066, 37.999050, 33.136894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.175098, 38.878975, 33.134068>,  <25.766655, 38.396595, 33.525459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.175098, 38.878975, 33.134068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.221842, 38.523933, 32.955853>,  <26.249887, 38.310909, 32.848923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.221842, 38.523933, 32.955853>,  <26.175098, 38.878975, 33.134068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.221842, 38.523933, 32.955853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130065, 0.458421, -0.879166,
		0.984595, 0.044790, 0.169017,
		0.116859, -0.887606, -0.445534,
		26.256899, 38.257652, 32.822193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.849291, 38.838329, 32.840824>,  <26.175098, 38.878975, 33.134068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.849291, 38.838329, 32.840824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.604979, 38.588581, 32.646046>,  <26.458391, 38.438732, 32.529179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.604979, 38.588581, 32.646046>,  <26.849291, 38.838329, 32.840824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.604979, 38.588581, 32.646046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209732, 0.465445, -0.859868,
		0.763519, -0.627317, -0.153334,
		-0.610779, -0.624367, -0.486945,
		26.421745, 38.401272, 32.499962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.176004, 38.846466, 32.219738>,  <26.849291, 38.838329, 32.840824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.176004, 38.846466, 32.219738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.830376, 38.662128, 32.138737>,  <26.622999, 38.551525, 32.090134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.830376, 38.662128, 32.138737>,  <27.176004, 38.846466, 32.219738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.830376, 38.662128, 32.138737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075522, 0.279062, -0.957299,
		0.497674, -0.842467, -0.206326,
		-0.864070, -0.460841, -0.202506,
		26.571154, 38.523876, 32.077984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.351759, 38.312954, 31.805050>,  <27.176004, 38.846466, 32.219738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.351759, 38.312954, 31.805050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.980864, 38.452915, 31.751682>,  <26.758327, 38.536892, 31.719662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.980864, 38.452915, 31.751682>,  <27.351759, 38.312954, 31.805050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.980864, 38.452915, 31.751682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163908, 0.058882, -0.984717,
		-0.336699, -0.934934, -0.111950,
		-0.927237, 0.349903, -0.133418,
		26.702692, 38.557884, 31.711657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.037203, 38.035580, 31.186361>,  <27.351759, 38.312954, 31.805050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.037203, 38.035580, 31.186361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.846025, 38.381615, 31.247274>,  <26.731319, 38.589237, 31.283823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.846025, 38.381615, 31.247274>,  <27.037203, 38.035580, 31.186361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.846025, 38.381615, 31.247274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157664, 0.255038, -0.953990,
		-0.864125, -0.431944, -0.258287,
		-0.477944, 0.865090, 0.152283,
		26.702642, 38.641140, 31.292959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.484243, 37.984901, 30.774195>,  <27.037203, 38.035580, 31.186361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.484243, 37.984901, 30.774195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.498234, 38.379219, 30.839909>,  <26.506628, 38.615810, 30.879337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.498234, 38.379219, 30.839909>,  <26.484243, 37.984901, 30.774195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.498234, 38.379219, 30.839909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083309, 0.160939, -0.983442,
		-0.995910, 0.048085, -0.076496,
		0.034977, 0.985792, 0.164287,
		26.508726, 38.674957, 30.889194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.005774, 38.229637, 30.249186>,  <26.484243, 37.984901, 30.774195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.005774, 38.229637, 30.249186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.235266, 38.535107, 30.367603>,  <26.372961, 38.718388, 30.438654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.235266, 38.535107, 30.367603>,  <26.005774, 38.229637, 30.249186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.235266, 38.535107, 30.367603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000779, 0.360943, -0.932588,
		-0.819045, 0.535283, 0.206489,
		0.573729, 0.763670, 0.296045,
		26.407385, 38.764206, 30.456417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.761850, 38.763325, 29.816734>,  <26.005774, 38.229637, 30.249186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.761850, 38.763325, 29.816734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.099066, 38.923504, 29.960361>,  <26.301395, 39.019611, 30.046537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.099066, 38.923504, 29.960361>,  <25.761850, 38.763325, 29.816734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.099066, 38.923504, 29.960361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083279, 0.562353, -0.822693,
		-0.531369, 0.723464, 0.440735,
		0.843037, 0.400450, 0.359067,
		26.351976, 39.043640, 30.068081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.687683, 39.533752, 29.931801>,  <25.761850, 38.763325, 29.816734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.687683, 39.533752, 29.931801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.081175, 39.480930, 29.883081>,  <26.317270, 39.449238, 29.853849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.081175, 39.480930, 29.883081>,  <25.687683, 39.533752, 29.931801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.081175, 39.480930, 29.883081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042205, 0.489132, -0.871188,
		0.174621, 0.862155, 0.475601,
		0.983731, -0.132055, -0.121800,
		26.376293, 39.441315, 29.846540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.828671, 40.059795, 29.486513>,  <25.687683, 39.533752, 29.931801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.828671, 40.059795, 29.486513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.188890, 39.887604, 29.462217>,  <26.405024, 39.784286, 29.447639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.188890, 39.887604, 29.462217>,  <25.828671, 40.059795, 29.486513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.188890, 39.887604, 29.462217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261371, 0.647750, -0.715615,
		0.347406, 0.628572, 0.695849,
		0.900552, -0.430484, -0.060741,
		26.459057, 39.758457, 29.443995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.300375, 40.590771, 29.507561>,  <25.828671, 40.059795, 29.486513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.300375, 40.590771, 29.507561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.511030, 40.283009, 29.362968>,  <26.637424, 40.098351, 29.276213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.511030, 40.283009, 29.362968>,  <26.300375, 40.590771, 29.507561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.511030, 40.283009, 29.362968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448157, 0.612624, -0.651035,
		0.722361, 0.180860, 0.667446,
		0.526640, -0.769403, -0.361482,
		26.669022, 40.052189, 29.254524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.880659, 40.780315, 29.665981>,  <26.300375, 40.590771, 29.507561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.880659, 40.780315, 29.665981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.937954, 40.517166, 29.370228>,  <26.972330, 40.359276, 29.192776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.937954, 40.517166, 29.370228>,  <26.880659, 40.780315, 29.665981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.937954, 40.517166, 29.370228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398434, 0.722201, -0.565398,
		0.905943, -0.213609, 0.365565,
		0.143237, -0.657872, -0.739383,
		26.980925, 40.319805, 29.148413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.628780, 40.645939, 29.538151>,  <26.880659, 40.780315, 29.665981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.628780, 40.645939, 29.538151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.414682, 40.583679, 29.206059>,  <27.286224, 40.546322, 29.006804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.414682, 40.583679, 29.206059>,  <27.628780, 40.645939, 29.538151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.414682, 40.583679, 29.206059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516253, 0.717667, -0.467372,
		0.668577, -0.678768, -0.303773,
		-0.535245, -0.155651, -0.830232,
		27.254108, 40.536983, 28.956989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.165899, 40.793598, 28.944199>,  <27.628780, 40.645939, 29.538151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.165899, 40.793598, 28.944199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.796619, 40.781994, 28.790909>,  <27.575052, 40.775032, 28.698935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.796619, 40.781994, 28.790909>,  <28.165899, 40.793598, 28.944199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.796619, 40.781994, 28.790909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208338, 0.800138, -0.562471,
		0.322952, -0.599113, -0.732643,
		-0.923199, -0.029014, -0.383225,
		27.519659, 40.773289, 28.675941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.251863, 40.927368, 28.206709>,  <28.165899, 40.793598, 28.944199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.251863, 40.927368, 28.206709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.868807, 40.998627, 28.297209>,  <27.638973, 41.041382, 28.351509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.868807, 40.998627, 28.297209>,  <28.251863, 40.927368, 28.206709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.868807, 40.998627, 28.297209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065986, 0.900520, -0.429778,
		-0.280307, -0.396643, -0.874129,
		-0.957639, 0.178150, 0.226250,
		27.581514, 41.052071, 28.365084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.010468, 41.354656, 27.661800>,  <28.251863, 40.927368, 28.206709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.010468, 41.354656, 27.661800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.768688, 41.443394, 27.967852>,  <27.623621, 41.496635, 28.151484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.768688, 41.443394, 27.967852>,  <28.010468, 41.354656, 27.661800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.768688, 41.443394, 27.967852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073341, 0.971861, -0.223847,
		-0.793260, -0.079189, -0.603712,
		-0.604450, 0.221845, 0.765130,
		27.587353, 41.509949, 28.197392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.521021, 41.842556, 27.469824>,  <28.010468, 41.354656, 27.661800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.521021, 41.842556, 27.469824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.583498, 41.874542, 27.863617>,  <27.620983, 41.893734, 28.099894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.583498, 41.874542, 27.863617>,  <27.521021, 41.842556, 27.469824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.583498, 41.874542, 27.863617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055608, 0.994425, -0.089597,
		-0.986160, 0.068739, 0.150874,
		0.156192, 0.079967, 0.984484,
		27.630356, 41.898533, 28.158962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.027782, 42.276241, 27.709826>,  <27.521021, 41.842556, 27.469824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.027782, 42.276241, 27.709826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.343985, 42.285446, 27.954634>,  <27.533707, 42.290970, 28.101519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.343985, 42.285446, 27.954634>,  <27.027782, 42.276241, 27.709826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.343985, 42.285446, 27.954634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086824, 0.984991, -0.149177,
		-0.606267, 0.171064, 0.776645,
		0.790507, 0.023010, 0.612020,
		27.581137, 42.292351, 28.138239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.957371, 42.852360, 28.265242>,  <27.027782, 42.276241, 27.709826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.957371, 42.852360, 28.265242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.326910, 42.739613, 28.161663>,  <27.548634, 42.671967, 28.099516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.326910, 42.739613, 28.161663>,  <26.957371, 42.852360, 28.265242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.326910, 42.739613, 28.161663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208855, 0.938171, -0.276070,
		0.320751, 0.200965, 0.925598,
		0.923850, -0.281865, -0.258947,
		27.604065, 42.655052, 28.083979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.552788, 43.169189, 28.622887>,  <26.957371, 42.852360, 28.265242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.552788, 43.169189, 28.622887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.687176, 43.106365, 28.251413>,  <27.767809, 43.068672, 28.028528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.687176, 43.106365, 28.251413>,  <27.552788, 43.169189, 28.622887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.687176, 43.106365, 28.251413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091182, 0.986791, -0.133899,
		0.937449, -0.039693, 0.345853,
		0.335970, -0.157059, -0.928685,
		27.787968, 43.059246, 27.972807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.270624, 43.397530, 28.561728>,  <27.552788, 43.169189, 28.622887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.270624, 43.397530, 28.561728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.092030, 43.417870, 28.204390>,  <27.984873, 43.430073, 27.989986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.092030, 43.417870, 28.204390>,  <28.270624, 43.397530, 28.561728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.092030, 43.417870, 28.204390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201974, 0.978345, -0.045262,
		0.871697, -0.200641, -0.447089,
		-0.446488, 0.050846, -0.893344,
		27.958082, 43.433125, 27.936386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.988426, 44.094688, 28.847958>,  <28.270624, 43.397530, 28.561728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.988426, 44.094688, 28.847958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.308804, 44.331680, 28.882509>,  <28.501030, 44.473873, 28.903240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.308804, 44.331680, 28.882509>,  <27.988426, 44.094688, 28.847958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.308804, 44.331680, 28.882509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584751, 0.805050, -0.099798,
		-0.128666, 0.029423, 0.991251,
		0.800944, 0.592476, 0.086378,
		28.549088, 44.509422, 28.908422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.767776, 44.608334, 29.339270>,  <27.988426, 44.094688, 28.847958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.767776, 44.608334, 29.339270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.070864, 44.758114, 29.125484>,  <28.252716, 44.847984, 28.997213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.070864, 44.758114, 29.125484>,  <27.767776, 44.608334, 29.339270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.070864, 44.758114, 29.125484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547887, 0.809950, -0.209286,
		0.354520, 0.451405, 0.818871,
		0.757717, 0.374452, -0.534463,
		28.298180, 44.870449, 28.965145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.970289, 45.208439, 29.525686>,  <27.767776, 44.608334, 29.339270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.970289, 45.208439, 29.525686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.056543, 45.255516, 29.137943>,  <28.108295, 45.283760, 28.905298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.056543, 45.255516, 29.137943>,  <27.970289, 45.208439, 29.525686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.056543, 45.255516, 29.137943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748058, 0.657969, -0.086523,
		0.627623, 0.743792, 0.229920,
		0.215635, 0.117689, -0.969356,
		28.121235, 45.290821, 28.847137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.050489, 44.731659, 30.035580>,  <27.970289, 45.208439, 29.525686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.050489, 44.731659, 30.035580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.341576, 44.873360, 29.800653>,  <28.516228, 44.958378, 29.659698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.341576, 44.873360, 29.800653>,  <28.050489, 44.731659, 30.035580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.341576, 44.873360, 29.800653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518444, -0.276521, -0.809168,
		-0.449051, 0.893333, -0.017570,
		0.727715, 0.354249, -0.587315,
		28.559891, 44.979633, 29.624458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.477083, 45.132126, 30.453722>,  <28.050489, 44.731659, 30.035580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.477083, 45.132126, 30.453722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.651333, 45.216122, 30.803839>,  <27.755882, 45.266518, 31.013908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.651333, 45.216122, 30.803839>,  <27.477083, 45.132126, 30.453722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.651333, 45.216122, 30.803839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311333, -0.877241, 0.365404,
		0.844574, -0.431686, -0.316769,
		0.435623, 0.209990, 0.875293,
		27.782021, 45.279118, 31.066427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.964617, 44.559929, 30.717922>,  <27.477083, 45.132126, 30.453722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.964617, 44.559929, 30.717922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.861332, 44.783615, 31.033037>,  <27.799360, 44.917828, 31.222105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.861332, 44.783615, 31.033037>,  <27.964617, 44.559929, 30.717922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.861332, 44.783615, 31.033037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390336, -0.806306, 0.444419,
		0.883722, -0.192747, 0.426479,
		-0.258213, 0.559213, 0.787786,
		27.783869, 44.951378, 31.269373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.264015, 44.269192, 31.373642>,  <27.964617, 44.559929, 30.717922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.264015, 44.269192, 31.373642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.958546, 44.493820, 31.501040>,  <27.775263, 44.628597, 31.577478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.958546, 44.493820, 31.501040>,  <28.264015, 44.269192, 31.373642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.958546, 44.493820, 31.501040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376761, -0.788271, 0.486499,
		0.524264, 0.251530, 0.813560,
		-0.763675, 0.561571, 0.318495,
		27.729443, 44.662292, 31.596588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.252241, 44.218166, 32.136650>,  <28.264015, 44.269192, 31.373642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.252241, 44.218166, 32.136650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.891552, 44.328007, 32.003086>,  <27.675138, 44.393909, 31.922949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.891552, 44.328007, 32.003086>,  <28.252241, 44.218166, 32.136650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.891552, 44.328007, 32.003086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418625, -0.747451, 0.515819,
		-0.107938, 0.604908, 0.788946,
		-0.901722, 0.274597, -0.333908,
		27.621035, 44.410385, 31.902914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.826426, 44.263367, 32.740364>,  <28.252241, 44.218166, 32.136650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.826426, 44.263367, 32.740364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.586407, 44.227333, 32.422413>,  <27.442396, 44.205715, 32.231644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.586407, 44.227333, 32.422413>,  <27.826426, 44.263367, 32.740364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.586407, 44.227333, 32.422413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309694, -0.890001, 0.334645,
		-0.737587, 0.446971, 0.506145,
		-0.600046, -0.090080, -0.794878,
		27.406393, 44.200310, 32.183949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.190746, 44.087563, 33.136181>,  <27.826426, 44.263367, 32.740364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.190746, 44.087563, 33.136181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.147093, 43.980263, 32.753323>,  <27.120901, 43.915882, 32.523609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.147093, 43.980263, 32.753323>,  <27.190746, 44.087563, 33.136181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.147093, 43.980263, 32.753323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506386, -0.813583, 0.285755,
		-0.855373, 0.515871, -0.047052,
		-0.109132, -0.268254, -0.957147,
		27.114353, 43.899788, 32.466179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.524168, 43.906425, 32.932201>,  <27.190746, 44.087563, 33.136181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.524168, 43.906425, 32.932201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.742599, 43.717796, 32.655243>,  <26.873659, 43.604618, 32.489067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.742599, 43.717796, 32.655243>,  <26.524168, 43.906425, 32.932201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.742599, 43.717796, 32.655243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308271, -0.881636, 0.357333,
		-0.778951, 0.018313, -0.626817,
		0.546081, -0.471575, -0.692396,
		26.906424, 43.576324, 32.447525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.100309, 43.410698, 32.739738>,  <26.524168, 43.906425, 32.932201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.100309, 43.410698, 32.739738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.453510, 43.263504, 32.623192>,  <26.665430, 43.175186, 32.553265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.453510, 43.263504, 32.623192>,  <26.100309, 43.410698, 32.739738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.453510, 43.263504, 32.623192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308585, -0.922877, 0.230378,
		-0.353668, -0.113514, -0.928457,
		0.883003, -0.367985, -0.291364,
		26.718410, 43.153107, 32.535782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.917177, 42.779324, 32.499111>,  <26.100309, 43.410698, 32.739738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.917177, 42.779324, 32.499111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.309542, 42.752125, 32.571987>,  <26.544960, 42.735806, 32.615711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.309542, 42.752125, 32.571987>,  <25.917177, 42.779324, 32.499111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.309542, 42.752125, 32.571987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095959, -0.984114, 0.149368,
		0.169138, -0.163999, -0.971852,
		0.980910, -0.067994, 0.182189,
		26.603815, 42.731728, 32.626644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.245146, 42.172997, 32.114799>,  <25.917177, 42.779324, 32.499111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.245146, 42.172997, 32.114799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.509315, 42.252907, 32.404331>,  <26.667818, 42.300854, 32.578049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.509315, 42.252907, 32.404331>,  <26.245146, 42.172997, 32.114799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.509315, 42.252907, 32.404331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117755, -0.979587, 0.162921,
		0.741602, -0.022363, -0.670467,
		0.660424, 0.199773, 0.723830,
		26.707443, 42.312840, 32.621479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.765171, 41.556210, 32.107601>,  <26.245146, 42.172997, 32.114799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.765171, 41.556210, 32.107601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.848707, 41.717720, 32.463882>,  <26.898829, 41.814625, 32.677650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.848707, 41.717720, 32.463882>,  <26.765171, 41.556210, 32.107601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.848707, 41.717720, 32.463882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103293, -0.914798, 0.390481,
		0.972479, 0.010455, -0.232754,
		0.208841, 0.403777, 0.890702,
		26.911360, 41.838852, 32.731094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.420084, 41.163994, 32.322308>,  <26.765171, 41.556210, 32.107601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.420084, 41.163994, 32.322308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.282801, 41.320969, 32.663647>,  <27.200430, 41.415154, 32.868450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.282801, 41.320969, 32.663647>,  <27.420084, 41.163994, 32.322308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.282801, 41.320969, 32.663647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092399, -0.890020, 0.446460,
		0.934703, 0.232078, 0.269204,
		-0.343211, 0.392433, 0.853348,
		27.179838, 41.438698, 32.919651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.913967, 41.078220, 32.830189>,  <27.420084, 41.163994, 32.322308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.913967, 41.078220, 32.830189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.575607, 41.126720, 33.037941>,  <27.372591, 41.155819, 33.162594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.575607, 41.126720, 33.037941>,  <27.913967, 41.078220, 32.830189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.575607, 41.126720, 33.037941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147167, -0.882946, 0.445811,
		0.512639, 0.453546, 0.729038,
		-0.845898, 0.121249, 0.519380,
		27.321838, 41.163094, 33.193756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.110100, 41.061127, 33.535553>,  <27.913967, 41.078220, 32.830189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.110100, 41.061127, 33.535553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.719334, 40.975975, 33.542721>,  <27.484875, 40.924885, 33.547020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.719334, 40.975975, 33.542721>,  <28.110100, 41.061127, 33.535553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.719334, 40.975975, 33.542721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177473, -0.762021, 0.622757,
		-0.118915, 0.611561, 0.782210,
		-0.976915, -0.212876, 0.017920,
		27.426260, 40.912113, 33.548096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.906624, 40.858906, 34.271950>,  <28.110100, 41.061127, 33.535553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.906624, 40.858906, 34.271950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.620230, 40.711094, 34.035030>,  <27.448393, 40.622406, 33.892879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.620230, 40.711094, 34.035030>,  <27.906624, 40.858906, 34.271950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.620230, 40.711094, 34.035030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127772, -0.903454, 0.409200,
		-0.686324, 0.217301, 0.694074,
		-0.715984, -0.369528, -0.592297,
		27.405434, 40.600235, 33.857342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.473568, 40.459793, 34.746738>,  <27.906624, 40.858906, 34.271950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.473568, 40.459793, 34.746738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.403170, 40.323734, 34.377235>,  <27.360931, 40.242100, 34.155533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.403170, 40.323734, 34.377235>,  <27.473568, 40.459793, 34.746738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.403170, 40.323734, 34.377235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337315, -0.902429, 0.268030,
		-0.924794, -0.264425, 0.273560,
		-0.175995, -0.340148, -0.923756,
		27.350370, 40.221691, 34.100109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.119228, 39.853844, 34.855354>,  <27.473568, 40.459793, 34.746738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.119228, 39.853844, 34.855354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.289572, 39.843266, 34.493591>,  <27.391777, 39.836918, 34.276535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.289572, 39.843266, 34.493591>,  <27.119228, 39.853844, 34.855354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.289572, 39.843266, 34.493591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342603, -0.920430, 0.188232,
		-0.837417, -0.390012, -0.382914,
		0.425858, -0.026441, -0.904404,
		27.417330, 39.835335, 34.222271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.813200, 39.329651, 34.463902>,  <27.119228, 39.853844, 34.855354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.813200, 39.329651, 34.463902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.157701, 39.387783, 34.269119>,  <27.364403, 39.422665, 34.152252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.157701, 39.387783, 34.269119>,  <26.813200, 39.329651, 34.463902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.157701, 39.387783, 34.269119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218499, -0.971041, 0.096635,
		-0.458805, -0.189625, -0.868067,
		0.861253, 0.145335, -0.486951,
		27.416077, 39.431385, 34.123035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.840702, 38.730366, 34.129387>,  <26.813200, 39.329651, 34.463902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.840702, 38.730366, 34.129387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.213581, 38.859482, 34.063885>,  <27.437307, 38.936951, 34.024582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.213581, 38.859482, 34.063885>,  <26.840702, 38.730366, 34.129387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.213581, 38.859482, 34.063885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338094, -0.938077, 0.075527,
		-0.129237, -0.125772, -0.983605,
		0.932197, 0.322790, -0.163757,
		27.493240, 38.956318, 34.014759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.098019, 38.429749, 33.487003>,  <26.840702, 38.730366, 34.129387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.098019, 38.429749, 33.487003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.427485, 38.534473, 33.688213>,  <27.625164, 38.597309, 33.808937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.427485, 38.534473, 33.688213>,  <27.098019, 38.429749, 33.487003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.427485, 38.534473, 33.688213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217140, -0.965050, 0.146727,
		0.523854, -0.011628, -0.851729,
		0.823667, 0.261808, 0.503020,
		27.674585, 38.613014, 33.839119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.720337, 38.118595, 33.192219>,  <27.098019, 38.429749, 33.487003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.720337, 38.118595, 33.192219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.792170, 38.205067, 33.576096>,  <27.835270, 38.256950, 33.806423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.792170, 38.205067, 33.576096>,  <27.720337, 38.118595, 33.192219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.792170, 38.205067, 33.576096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393807, -0.909775, 0.131246,
		0.901480, 0.354366, -0.248512,
		0.179581, 0.216181, 0.959696,
		27.846045, 38.269920, 33.864006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.332497, 37.765198, 33.354015>,  <27.720337, 38.118595, 33.192219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.332497, 37.765198, 33.354015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.191616, 37.841530, 33.720520>,  <28.107088, 37.887329, 33.940422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.191616, 37.841530, 33.720520>,  <28.332497, 37.765198, 33.354015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.191616, 37.841530, 33.720520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304249, -0.902477, 0.304906,
		0.885091, 0.386161, 0.259796,
		-0.352203, 0.190827, 0.916263,
		28.085955, 37.898777, 33.995399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.753689, 37.524044, 33.750282>,  <28.332497, 37.765198, 33.354015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.753689, 37.524044, 33.750282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.418459, 37.526897, 33.968487>,  <28.217321, 37.528610, 34.099407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.418459, 37.526897, 33.968487>,  <28.753689, 37.524044, 33.750282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.418459, 37.526897, 33.968487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120006, -0.973014, 0.197088,
		0.532193, 0.230638, 0.814602,
		-0.838075, 0.007132, 0.545509,
		28.167036, 37.529037, 34.132141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.888222, 37.099216, 34.370415>,  <28.753689, 37.524044, 33.750282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.888222, 37.099216, 34.370415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.493587, 37.088676, 34.305973>,  <28.256807, 37.082352, 34.267307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.493587, 37.088676, 34.305973>,  <28.888222, 37.099216, 34.370415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.493587, 37.088676, 34.305973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018718, -0.998638, 0.048695,
		-0.162168, 0.045026, 0.985735,
		-0.986586, -0.026348, -0.161104,
		28.197613, 37.080772, 34.257641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.466963, 36.905872, 34.994049>,  <28.888222, 37.099216, 34.370415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.466963, 36.905872, 34.994049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.325964, 36.815857, 34.630707>,  <28.241365, 36.761848, 34.412701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.325964, 36.815857, 34.630707>,  <28.466963, 36.905872, 34.994049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.325964, 36.815857, 34.630707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173983, -0.937972, 0.299896,
		-0.919497, 0.263750, 0.291479,
		-0.352497, -0.225041, -0.908351,
		28.220215, 36.748344, 34.358200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.980364, 36.437824, 34.725124>,  <28.466963, 36.905872, 34.994049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.980364, 36.437824, 34.725124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.926346, 36.201523, 34.406937>,  <27.893934, 36.059742, 34.216022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.926346, 36.201523, 34.406937>,  <27.980364, 36.437824, 34.725124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.926346, 36.201523, 34.406937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960627, -0.274801, 0.040993,
		-0.242813, -0.758617, 0.604601,
		-0.135047, -0.590750, -0.795473,
		27.885832, 36.024300, 34.168293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.138052, 35.710255, 34.875317>,  <27.980364, 36.437824, 34.725124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.138052, 35.710255, 34.875317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.221416, 35.773666, 34.489273>,  <28.271435, 35.811714, 34.257648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.221416, 35.773666, 34.489273>,  <28.138052, 35.710255, 34.875317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.221416, 35.773666, 34.489273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966367, -0.185386, 0.178233,
		-0.150663, -0.969794, -0.191832,
		0.208412, 0.158527, -0.965108,
		28.283939, 35.821224, 34.199741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.520445, 35.193741, 34.507172>,  <28.138052, 35.710255, 34.875317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.520445, 35.193741, 34.507172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.621889, 35.551819, 34.360577>,  <28.682755, 35.766666, 34.272621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.621889, 35.551819, 34.360577>,  <28.520445, 35.193741, 34.507172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.621889, 35.551819, 34.360577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966570, -0.219741, 0.132120,
		0.037742, -0.387738, -0.920997,
		0.253609, 0.895195, -0.366483,
		28.697971, 35.820377, 34.250633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.861317, 35.128113, 33.887539>,  <28.520445, 35.193741, 34.507172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.861317, 35.128113, 33.887539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.984283, 35.440952, 34.104359>,  <29.058064, 35.628654, 34.234451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.984283, 35.440952, 34.104359>,  <28.861317, 35.128113, 33.887539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.984283, 35.440952, 34.104359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902814, -0.419724, 0.093585,
		0.300704, 0.460601, -0.835119,
		0.307415, 0.782099, 0.542049,
		29.076508, 35.675583, 34.266975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.529591, 35.550777, 33.544292>,  <28.861317, 35.128113, 33.887539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.529591, 35.550777, 33.544292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.458033, 35.518272, 33.936497>,  <29.415098, 35.498768, 34.171818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.458033, 35.518272, 33.936497>,  <29.529591, 35.550777, 33.544292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.458033, 35.518272, 33.936497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933825, -0.327813, 0.143208,
		0.309786, 0.941241, 0.134527,
		-0.178893, -0.081261, 0.980507,
		29.404364, 35.493893, 34.230648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.103907, 35.749672, 33.668900>,  <29.529591, 35.550777, 33.544292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.103907, 35.749672, 33.668900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.927885, 35.564503, 33.976681>,  <29.822271, 35.453400, 34.161350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.927885, 35.564503, 33.976681>,  <30.103907, 35.749672, 33.668900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.927885, 35.564503, 33.976681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844022, -0.505759, 0.178423,
		0.306560, 0.727948, 0.613280,
		-0.440055, -0.462924, 0.769450,
		29.795868, 35.425625, 34.207516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.710821, 35.396488, 33.461685>,  <30.103907, 35.749672, 33.668900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.710821, 35.396488, 33.461685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.036646, 35.171185, 33.517147>,  <31.232141, 35.036003, 33.550423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.036646, 35.171185, 33.517147>,  <30.710821, 35.396488, 33.461685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.036646, 35.171185, 33.517147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179305, -0.017163, 0.983644,
		-0.551670, -0.826100, -0.114976,
		0.814561, -0.563263, 0.138656,
		31.281013, 35.002205, 33.558743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.569798, 34.919159, 34.053181>,  <30.710821, 35.396488, 33.461685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.569798, 34.919159, 34.053181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.967960, 34.947735, 34.027683>,  <31.206858, 34.964882, 34.012386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.967960, 34.947735, 34.027683>,  <30.569798, 34.919159, 34.053181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.967960, 34.947735, 34.027683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051560, 0.160999, 0.985607,
		0.080676, -0.984366, 0.156576,
		0.995406, 0.071441, -0.063743,
		31.266582, 34.969170, 34.008560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.892519, 34.457405, 34.485863>,  <30.569798, 34.919159, 34.053181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.892519, 34.457405, 34.485863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.190767, 34.719685, 34.438362>,  <31.369717, 34.877052, 34.409863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.190767, 34.719685, 34.438362>,  <30.892519, 34.457405, 34.485863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.190767, 34.719685, 34.438362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127124, 0.034966, 0.991270,
		0.654131, -0.754209, -0.057284,
		0.745622, 0.655703, -0.118751,
		31.414454, 34.916397, 34.402737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.365791, 34.208923, 34.936253>,  <30.892519, 34.457405, 34.485863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.365791, 34.208923, 34.936253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.487360, 34.583344, 34.865322>,  <31.560301, 34.807995, 34.822765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.487360, 34.583344, 34.865322>,  <31.365791, 34.208923, 34.936253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.487360, 34.583344, 34.865322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211997, 0.115016, 0.970479,
		0.928811, -0.332542, -0.163483,
		0.303921, 0.936049, -0.177326,
		31.578537, 34.864159, 34.812126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.969452, 34.328857, 35.374897>,  <31.365791, 34.208923, 34.936253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.969452, 34.328857, 35.374897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835169, 34.701244, 35.317482>,  <31.754599, 34.924675, 35.283031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835169, 34.701244, 35.317482>,  <31.969452, 34.328857, 35.374897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.835169, 34.701244, 35.317482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287688, 0.246434, 0.925476,
		0.896960, 0.269393, -0.350557,
		-0.335706, 0.930966, -0.143541,
		31.734457, 34.980534, 35.274418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.573833, 34.836418, 35.516972>,  <31.969452, 34.328857, 35.374897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.573833, 34.836418, 35.516972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.236038, 35.049366, 35.540379>,  <32.033363, 35.177135, 35.554424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.236038, 35.049366, 35.540379>,  <32.573833, 34.836418, 35.516972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.236038, 35.049366, 35.540379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166488, 0.157088, 0.973450,
		0.509045, 0.831807, -0.221292,
		-0.844485, 0.532372, 0.058521,
		31.982693, 35.209076, 35.557934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.798893, 35.247849, 36.104652>,  <32.573833, 34.836418, 35.516972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.798893, 35.247849, 36.104652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403931, 35.267273, 36.044437>,  <32.166954, 35.278927, 36.008308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403931, 35.267273, 36.044437>,  <32.798893, 35.247849, 36.104652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403931, 35.267273, 36.044437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150691, 0.000569, 0.988581,
		0.048094, 0.998820, 0.006756,
		-0.987410, 0.048563, -0.150540,
		32.107708, 35.281841, 35.999275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609707, 35.805386, 36.487259>,  <32.798893, 35.247849, 36.104652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609707, 35.805386, 36.487259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263508, 35.611942, 36.435047>,  <32.055786, 35.495876, 36.403721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263508, 35.611942, 36.435047>,  <32.609707, 35.805386, 36.487259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.263508, 35.611942, 36.435047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216614, 0.126396, 0.968041,
		-0.451652, 0.866112, -0.214152,
		-0.865499, -0.483605, -0.130525,
		32.003857, 35.466862, 36.395889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.004299, 36.237637, 36.877590>,  <32.609707, 35.805386, 36.487259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.004299, 36.237637, 36.877590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.909380, 35.852234, 36.828037>,  <31.852430, 35.620991, 36.798306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.909380, 35.852234, 36.828037>,  <32.004299, 36.237637, 36.877590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.909380, 35.852234, 36.828037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185411, -0.080262, 0.979378,
		-0.953580, 0.255370, -0.159599,
		-0.237294, -0.963506, -0.123885,
		31.838192, 35.563183, 36.790871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.485302, 36.251198, 37.228203>,  <32.004299, 36.237637, 36.877590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.485302, 36.251198, 37.228203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.583286, 35.863419, 37.223038>,  <31.642076, 35.630753, 37.219936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.583286, 35.863419, 37.223038>,  <31.485302, 36.251198, 37.228203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.583286, 35.863419, 37.223038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480133, -0.132874, 0.867074,
		-0.842298, -0.206198, -0.498012,
		0.244962, -0.969447, -0.012917,
		31.656775, 35.572586, 37.219162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.906206, 35.845219, 37.554562>,  <31.485302, 36.251198, 37.228203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.906206, 35.845219, 37.554562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.205135, 35.579765, 37.541321>,  <31.384493, 35.420494, 37.533375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.205135, 35.579765, 37.541321>,  <30.906206, 35.845219, 37.554562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.205135, 35.579765, 37.541321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246687, -0.323363, 0.913555,
		-0.616970, -0.674556, -0.405367,
		0.747325, -0.663634, -0.033101,
		31.429333, 35.380676, 37.531391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.642466, 35.194233, 37.636189>,  <30.906206, 35.845219, 37.554562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.642466, 35.194233, 37.636189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.026569, 35.156452, 37.741249>,  <31.257030, 35.133781, 37.804283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.026569, 35.156452, 37.741249>,  <30.642466, 35.194233, 37.636189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.026569, 35.156452, 37.741249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278932, -0.290620, 0.915280,
		-0.010121, -0.952165, -0.305416,
		0.960258, -0.094454, 0.262648,
		31.314646, 35.128117, 37.820042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.717436, 34.520554, 37.912636>,  <30.642466, 35.194233, 37.636189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.717436, 34.520554, 37.912636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.043148, 34.710587, 38.046051>,  <31.238575, 34.824608, 38.126099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.043148, 34.710587, 38.046051>,  <30.717436, 34.520554, 37.912636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.043148, 34.710587, 38.046051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138036, -0.399627, 0.906225,
		0.563824, -0.783959, -0.259829,
		0.814278, 0.475086, 0.333534,
		31.287432, 34.853111, 38.146111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.268272, 34.107414, 38.067497>,  <30.717436, 34.520554, 37.912636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.268272, 34.107414, 38.067497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.330912, 34.432095, 38.292572>,  <31.368496, 34.626904, 38.427616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.330912, 34.432095, 38.292572>,  <31.268272, 34.107414, 38.067497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.330912, 34.432095, 38.292572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266244, -0.513933, 0.815467,
		0.951100, -0.277514, 0.135629,
		0.156599, 0.811701, 0.562688,
		31.377892, 34.675606, 38.461380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.498760, 33.894726, 38.712692>,  <31.268272, 34.107414, 38.067497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.498760, 33.894726, 38.712692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.467289, 34.278687, 38.820316>,  <31.448406, 34.509064, 38.884892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.467289, 34.278687, 38.820316>,  <31.498760, 33.894726, 38.712692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.467289, 34.278687, 38.820316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036138, -0.272468, 0.961486,
		0.996245, 0.065925, 0.056126,
		-0.078679, 0.959904, 0.269063,
		31.443686, 34.566658, 38.901035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.107937, 34.127712, 39.123222>,  <31.498760, 33.894726, 38.712692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.107937, 34.127712, 39.123222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.773260, 34.329067, 39.209518>,  <31.572454, 34.449879, 39.261295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.773260, 34.329067, 39.209518>,  <32.107937, 34.127712, 39.123222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.773260, 34.329067, 39.209518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022678, -0.425433, 0.904706,
		0.547203, 0.752068, 0.367372,
		-0.836693, 0.503389, 0.215743,
		31.522253, 34.480083, 39.274242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.167381, 34.510754, 39.820244>,  <32.107937, 34.127712, 39.123222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.167381, 34.510754, 39.820244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.781651, 34.441479, 39.740173>,  <31.550211, 34.399914, 39.692131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.781651, 34.441479, 39.740173>,  <32.167381, 34.510754, 39.820244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.781651, 34.441479, 39.740173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136311, -0.323354, 0.936409,
		-0.226902, 0.930295, 0.288213,
		-0.964331, -0.173186, -0.200179,
		31.492352, 34.389523, 39.680119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.871149, 34.813267, 40.476292>,  <32.167381, 34.510754, 39.820244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.871149, 34.813267, 40.476292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.574078, 34.628826, 40.282047>,  <31.395836, 34.518162, 40.165501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.574078, 34.628826, 40.282047>,  <31.871149, 34.813267, 40.476292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.574078, 34.628826, 40.282047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332630, -0.375372, 0.865132,
		-0.581195, 0.804043, 0.125405,
		-0.742677, -0.461097, -0.485613,
		31.351274, 34.490498, 40.136364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.327873, 34.889214, 40.864670>,  <31.871149, 34.813267, 40.476292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.327873, 34.889214, 40.864670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.215151, 34.582813, 40.633560>,  <31.147518, 34.398972, 40.494896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.215151, 34.582813, 40.633560>,  <31.327873, 34.889214, 40.864670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.215151, 34.582813, 40.633560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509802, -0.390602, 0.766506,
		-0.812827, 0.510556, -0.280437,
		-0.281805, -0.766005, -0.577774,
		31.130610, 34.353012, 40.460228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.581287, 34.829502, 40.926525>,  <31.327873, 34.889214, 40.864670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.581287, 34.829502, 40.926525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.719591, 34.466888, 40.829659>,  <30.802574, 34.249321, 40.771538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.719591, 34.466888, 40.829659>,  <30.581287, 34.829502, 40.926525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.719591, 34.466888, 40.829659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485464, -0.393685, 0.780601,
		-0.802979, -0.152338, -0.576210,
		0.345760, -0.906535, -0.242166,
		30.823318, 34.194927, 40.757008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.056170, 34.223202, 41.176739>,  <30.581287, 34.829502, 40.926525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.056170, 34.223202, 41.176739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.408283, 34.052288, 41.094246>,  <30.619551, 33.949741, 41.044750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.408283, 34.052288, 41.094246>,  <30.056170, 34.223202, 41.176739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.408283, 34.052288, 41.094246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057683, -0.527837, 0.847385,
		-0.470925, -0.734044, -0.489294,
		0.880285, -0.427279, -0.206230,
		30.672369, 33.924103, 41.032375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.967550, 33.500324, 41.293964>,  <30.056170, 34.223202, 41.176739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.967550, 33.500324, 41.293964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.365944, 33.531208, 41.312111>,  <30.604980, 33.549740, 41.322998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.365944, 33.531208, 41.312111>,  <29.967550, 33.500324, 41.293964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.365944, 33.531208, 41.312111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009838, -0.597862, 0.801539,
		0.089010, -0.797872, -0.596220,
		0.995982, 0.077210, 0.045366,
		30.664738, 33.554371, 41.325722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.302917, 32.802509, 41.379280>,  <29.967550, 33.500324, 41.293964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.302917, 32.802509, 41.379280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.560154, 33.073917, 41.521290>,  <30.714497, 33.236763, 41.606495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.560154, 33.073917, 41.521290>,  <30.302917, 32.802509, 41.379280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.560154, 33.073917, 41.521290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128808, -0.552841, 0.823271,
		0.754878, -0.483710, -0.442927,
		0.643093, 0.678522, 0.355022,
		30.753082, 33.277473, 41.627796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.788572, 32.419205, 41.727463>,  <30.302917, 32.802509, 41.379280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.788572, 32.419205, 41.727463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.831268, 32.792812, 41.863819>,  <30.856886, 33.016979, 41.945633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.831268, 32.792812, 41.863819>,  <30.788572, 32.419205, 41.727463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.831268, 32.792812, 41.863819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017567, -0.344570, 0.938596,
		0.994132, -0.094198, -0.053187,
		0.106740, 0.934023, 0.340893,
		30.863291, 33.073021, 41.966087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.219023, 32.321682, 42.242062>,  <30.788572, 32.419205, 41.727463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.219023, 32.321682, 42.242062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.104885, 32.693851, 42.334049>,  <31.036404, 32.917152, 42.389240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.104885, 32.693851, 42.334049>,  <31.219023, 32.321682, 42.242062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.104885, 32.693851, 42.334049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065554, -0.220434, 0.973197,
		0.956181, 0.292770, 0.001906,
		-0.285343, 0.930427, 0.229967,
		31.019281, 32.972980, 42.403038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.656578, 32.593224, 42.829292>,  <31.219023, 32.321682, 42.242062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.656578, 32.593224, 42.829292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.305851, 32.784798, 42.846313>,  <31.095415, 32.899742, 42.856525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.305851, 32.784798, 42.846313>,  <31.656578, 32.593224, 42.829292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.305851, 32.784798, 42.846313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090405, -0.251137, 0.963720,
		0.472251, 0.841158, 0.263500,
		-0.876816, 0.478939, 0.042555,
		31.042807, 32.928478, 42.859081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.583677, 32.990562, 43.423687>,  <31.656578, 32.593224, 42.829292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.583677, 32.990562, 43.423687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.202658, 32.913246, 43.329628>,  <30.974047, 32.866856, 43.273193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.202658, 32.913246, 43.329628>,  <31.583677, 32.990562, 43.423687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.202658, 32.913246, 43.329628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161216, -0.334910, 0.928356,
		-0.258191, 0.922212, 0.287857,
		-0.952547, -0.193286, -0.235147,
		30.916893, 32.855259, 43.259083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.208311, 33.245712, 43.991035>,  <31.583677, 32.990562, 43.423687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.208311, 33.245712, 43.991035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.991816, 32.959530, 43.814316>,  <30.861919, 32.787823, 43.708282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.991816, 32.959530, 43.814316>,  <31.208311, 33.245712, 43.991035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.991816, 32.959530, 43.814316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250324, -0.364497, 0.896928,
		-0.802745, 0.596045, 0.018185,
		-0.541237, -0.715453, -0.441803,
		30.829445, 32.744896, 43.681774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.619030, 33.310493, 44.323956>,  <31.208311, 33.245712, 43.991035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.619030, 33.310493, 44.323956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.622715, 32.945526, 44.160294>,  <30.624926, 32.726547, 44.062096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.622715, 32.945526, 44.160294>,  <30.619030, 33.310493, 44.323956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.622715, 32.945526, 44.160294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200829, -0.402527, 0.893107,
		-0.979583, 0.073942, -0.186948,
		0.009213, -0.912417, -0.409158,
		30.625479, 32.671803, 44.037544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.080055, 33.020596, 44.565071>,  <30.619030, 33.310493, 44.323956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.080055, 33.020596, 44.565071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.284449, 32.700878, 44.438564>,  <30.407084, 32.509048, 44.362659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.284449, 32.700878, 44.438564>,  <30.080055, 33.020596, 44.565071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.284449, 32.700878, 44.438564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195492, -0.466347, 0.862730,
		-0.837067, -0.379011, -0.394551,
		0.510982, -0.799294, -0.316270,
		30.437742, 32.461090, 44.343685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.663563, 32.443489, 44.763073>,  <30.080055, 33.020596, 44.565071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.663563, 32.443489, 44.763073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.041185, 32.317039, 44.725494>,  <30.267759, 32.241169, 44.702946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.041185, 32.317039, 44.725494>,  <29.663563, 32.443489, 44.763073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.041185, 32.317039, 44.725494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042614, -0.399429, 0.915773,
		-0.327023, -0.860536, -0.390554,
		0.944055, -0.316122, -0.093952,
		30.324402, 32.222202, 44.697308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.697556, 31.849939, 45.104313>,  <29.663563, 32.443489, 44.763073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.697556, 31.849939, 45.104313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.090532, 31.919228, 45.076591>,  <30.326319, 31.960800, 45.059959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.090532, 31.919228, 45.076591>,  <29.697556, 31.849939, 45.104313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.090532, 31.919228, 45.076591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118859, -0.294796, 0.948139,
		0.143807, -0.939729, -0.310209,
		0.982442, 0.173221, -0.069302,
		30.385265, 31.971193, 45.055801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.051670, 31.310848, 45.374622>,  <29.697556, 31.849939, 45.104313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.051670, 31.310848, 45.374622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.271612, 31.641483, 45.422642>,  <30.403578, 31.839865, 45.451454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.271612, 31.641483, 45.422642>,  <30.051670, 31.310848, 45.374622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.271612, 31.641483, 45.422642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132437, -0.228188, 0.964568,
		0.824692, -0.514476, -0.234942,
		0.549857, 0.826586, 0.120049,
		30.436569, 31.889460, 45.458656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.561769, 31.034027, 45.770321>,  <30.051670, 31.310848, 45.374622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.561769, 31.034027, 45.770321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.608374, 31.428661, 45.816063>,  <30.636337, 31.665442, 45.843510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.608374, 31.428661, 45.816063>,  <30.561769, 31.034027, 45.770321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.608374, 31.428661, 45.816063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158702, -0.132155, 0.978442,
		0.980428, -0.095852, -0.171971,
		0.116512, 0.986584, 0.114357,
		30.643328, 31.724636, 45.850368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.075243, 31.084082, 46.116077>,  <30.561769, 31.034027, 45.770321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.075243, 31.084082, 46.116077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.903458, 31.437290, 46.191803>,  <30.800386, 31.649216, 46.237240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.903458, 31.437290, 46.191803>,  <31.075243, 31.084082, 46.116077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.903458, 31.437290, 46.191803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005290, -0.212085, 0.977237,
		0.903070, 0.418684, 0.095753,
		-0.429461, 0.883020, 0.189313,
		30.774620, 31.702196, 46.248596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.310909, 31.363146, 46.725266>,  <31.075243, 31.084082, 46.116077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.310909, 31.363146, 46.725266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.954618, 31.535025, 46.665985>,  <30.740843, 31.638151, 46.630417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.954618, 31.535025, 46.665985>,  <31.310909, 31.363146, 46.725266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.954618, 31.535025, 46.665985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218413, -0.118685, 0.968612,
		0.398620, 0.895140, 0.199567,
		-0.890729, 0.429696, -0.148200,
		30.687399, 31.663933, 46.621525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.206503, 31.813025, 47.292637>,  <31.310909, 31.363146, 46.725266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.206503, 31.813025, 47.292637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.838051, 31.734110, 47.158413>,  <30.616980, 31.686762, 47.077877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.838051, 31.734110, 47.158413>,  <31.206503, 31.813025, 47.292637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.838051, 31.734110, 47.158413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280922, -0.259811, 0.923894,
		-0.269454, 0.945292, 0.183897,
		-0.921128, -0.197286, -0.335561,
		30.561712, 31.674925, 47.057743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.710526, 31.977911, 47.945194>,  <31.206503, 31.813025, 47.292637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.710526, 31.977911, 47.945194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.486370, 31.765696, 47.690796>,  <30.351877, 31.638367, 47.538155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.486370, 31.765696, 47.690796>,  <30.710526, 31.977911, 47.945194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.486370, 31.765696, 47.690796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399862, -0.499173, 0.768724,
		-0.725312, 0.685095, 0.067587,
		-0.560386, -0.530539, -0.636000,
		30.318254, 31.606533, 47.499996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.960918, 32.035381, 48.187859>,  <30.710526, 31.977911, 47.945194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.960918, 32.035381, 48.187859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.004671, 31.728149, 47.935482>,  <30.030922, 31.543810, 47.784054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.004671, 31.728149, 47.935482>,  <29.960918, 32.035381, 48.187859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.004671, 31.728149, 47.935482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576617, -0.566067, 0.589136,
		-0.809659, 0.299373, -0.504805,
		0.109382, -0.768078, -0.630945,
		30.037485, 31.497726, 47.746201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.295219, 31.817385, 48.045837>,  <29.960918, 32.035381, 48.187859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.295219, 31.817385, 48.045837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.539680, 31.507015, 47.983315>,  <29.686357, 31.320793, 47.945801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.539680, 31.507015, 47.983315>,  <29.295219, 31.817385, 48.045837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.539680, 31.507015, 47.983315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652103, -0.605526, 0.456180,
		-0.448611, -0.176866, -0.876052,
		0.611155, -0.775923, -0.156311,
		29.723026, 31.274239, 47.936420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.901752, 31.217140, 47.692459>,  <29.295219, 31.817385, 48.045837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.901752, 31.217140, 47.692459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.188734, 31.111238, 47.950191>,  <29.360924, 31.047699, 48.104832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.188734, 31.111238, 47.950191>,  <28.901752, 31.217140, 47.692459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.188734, 31.111238, 47.950191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633641, -0.632310, 0.445740,
		0.289407, -0.728073, -0.621412,
		0.717456, -0.264752, 0.644332,
		29.403971, 31.031813, 48.143490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.963833, 30.472019, 47.721191>,  <28.901752, 31.217140, 47.692459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.963833, 30.472019, 47.721191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.107765, 30.605278, 48.069798>,  <29.194124, 30.685234, 48.278961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.107765, 30.605278, 48.069798>,  <28.963833, 30.472019, 47.721191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.107765, 30.605278, 48.069798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592898, -0.639588, 0.489284,
		0.720414, -0.692777, -0.032620,
		0.359828, 0.333147, 0.871514,
		29.215714, 30.705221, 48.331253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.311359, 29.914465, 48.231941>,  <28.963833, 30.472019, 47.721191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.311359, 29.914465, 48.231941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.168505, 30.211845, 48.458122>,  <29.082792, 30.390274, 48.593830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.168505, 30.211845, 48.458122>,  <29.311359, 29.914465, 48.231941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.168505, 30.211845, 48.458122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341898, -0.667412, 0.661564,
		0.869228, 0.042943, 0.492542,
		-0.357138, 0.743450, 0.565451,
		29.061363, 30.434879, 48.627758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.528118, 29.853418, 48.870880>,  <29.311359, 29.914465, 48.231941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.528118, 29.853418, 48.870880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.193729, 30.067133, 48.920986>,  <28.993097, 30.195362, 48.951050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.193729, 30.067133, 48.920986>,  <29.528118, 29.853418, 48.870880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.193729, 30.067133, 48.920986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379235, -0.727439, 0.571850,
		0.396654, 0.430545, 0.810738,
		-0.835970, 0.534287, 0.125264,
		28.942938, 30.227419, 48.958565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.338970, 29.810144, 49.546448>,  <29.528118, 29.853418, 48.870880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.338970, 29.810144, 49.546448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.011141, 29.893099, 49.332798>,  <28.814442, 29.942871, 49.204609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.011141, 29.893099, 49.332798>,  <29.338970, 29.810144, 49.546448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.011141, 29.893099, 49.332798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543627, -0.575948, 0.610536,
		-0.181011, 0.790744, 0.584772,
		-0.819576, 0.207384, -0.534123,
		28.765268, 29.955315, 49.172562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.453012, 29.176239, 49.335625>,  <29.338970, 29.810144, 49.546448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.453012, 29.176239, 49.335625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.666502, 28.983427, 49.613556>,  <29.794596, 28.867741, 49.780315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.666502, 28.983427, 49.613556>,  <29.453012, 29.176239, 49.335625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.666502, 28.983427, 49.613556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479285, -0.504516, -0.718157,
		0.696725, 0.716318, -0.038243,
		0.533723, -0.482029, 0.694830,
		29.826618, 28.838818, 49.822006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.183233, 29.078257, 49.129272>,  <29.453012, 29.176239, 49.335625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.183233, 29.078257, 49.129272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.103613, 28.778130, 49.381432>,  <30.055841, 28.598053, 49.532726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.103613, 28.778130, 49.381432>,  <30.183233, 29.078257, 49.129272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.103613, 28.778130, 49.381432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541835, -0.620268, -0.567171,
		0.816575, 0.228679, 0.530011,
		-0.199049, -0.750315, 0.630401,
		30.043898, 28.553036, 49.570553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.783442, 29.000534, 49.488461>,  <30.183233, 29.078257, 49.129272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.783442, 29.000534, 49.488461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.542917, 28.694887, 49.395035>,  <30.398603, 28.511499, 49.338978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.542917, 28.694887, 49.395035>,  <30.783442, 29.000534, 49.488461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.542917, 28.694887, 49.395035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662318, -0.313149, -0.680642,
		0.446948, -0.563972, 0.694387,
		-0.601309, -0.764116, -0.233567,
		30.362524, 28.465652, 49.324966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.160954, 28.421690, 49.616238>,  <30.783442, 29.000534, 49.488461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.160954, 28.421690, 49.616238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.884321, 28.459658, 49.329823>,  <30.718342, 28.482439, 49.157974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.884321, 28.459658, 49.329823>,  <31.160954, 28.421690, 49.616238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.884321, 28.459658, 49.329823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718492, -0.011229, -0.695444,
		-0.074051, -0.995422, -0.060432,
		-0.691582, 0.094919, -0.716034,
		30.676847, 28.488132, 49.115013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.381098, 28.004906, 49.056339>,  <31.160954, 28.421690, 49.616238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.381098, 28.004906, 49.056339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.130548, 28.278875, 48.907459>,  <30.980219, 28.443256, 48.818130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.130548, 28.278875, 48.907459>,  <31.381098, 28.004906, 49.056339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.130548, 28.278875, 48.907459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567589, 0.073452, -0.820029,
		-0.534319, -0.724902, -0.434763,
		-0.626375, 0.684924, -0.372200,
		30.942636, 28.484352, 48.795799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.380724, 27.958426, 48.343628>,  <31.381098, 28.004906, 49.056339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.380724, 27.958426, 48.343628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.187738, 28.306295, 48.301884>,  <31.071947, 28.515018, 48.276836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.187738, 28.306295, 48.301884>,  <31.380724, 27.958426, 48.343628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.187738, 28.306295, 48.301884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328783, 0.069377, -0.941854,
		-0.811868, -0.488723, -0.319407,
		-0.482465, 0.869676, -0.104359,
		31.042999, 28.567198, 48.270576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.014065, 27.914032, 47.746727>,  <31.380724, 27.958426, 48.343628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.014065, 27.914032, 47.746727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.076017, 28.303730, 47.812283>,  <31.113190, 28.537548, 47.851616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.076017, 28.303730, 47.812283>,  <31.014065, 27.914032, 47.746727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.076017, 28.303730, 47.812283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174265, 0.136346, -0.975214,
		-0.972442, 0.179603, -0.148660,
		0.154883, 0.974244, 0.163887,
		31.122482, 28.596003, 47.861450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.791479, 28.262333, 47.140995>,  <31.014065, 27.914032, 47.746727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.791479, 28.262333, 47.140995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.000572, 28.552101, 47.320755>,  <31.126028, 28.725962, 47.428612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.000572, 28.552101, 47.320755>,  <30.791479, 28.262333, 47.140995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.000572, 28.552101, 47.320755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342161, 0.304552, -0.888917,
		-0.780818, 0.618434, -0.088670,
		0.522732, 0.724422, 0.449404,
		31.157393, 28.769428, 47.455578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.726358, 28.885946, 46.726818>,  <30.791479, 28.262333, 47.140995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.726358, 28.885946, 46.726818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.043938, 28.971031, 46.954643>,  <31.234486, 29.022083, 47.091339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.043938, 28.971031, 46.954643>,  <30.726358, 28.885946, 46.726818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.043938, 28.971031, 46.954643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393016, 0.535199, -0.747730,
		-0.463881, 0.817505, 0.341320,
		0.793947, 0.212713, 0.569562,
		31.282122, 29.034845, 47.125511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.835918, 29.633743, 46.796448>,  <30.726358, 28.885946, 46.726818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.835918, 29.633743, 46.796448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.195398, 29.466988, 46.850918>,  <31.411085, 29.366934, 46.883598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.195398, 29.466988, 46.850918>,  <30.835918, 29.633743, 46.796448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.195398, 29.466988, 46.850918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393998, 0.631080, -0.668210,
		0.192631, 0.654172, 0.731404,
		0.898698, -0.416890, 0.136177,
		31.465008, 29.341921, 46.891769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.324896, 30.061693, 46.611015>,  <30.835918, 29.633743, 46.796448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.324896, 30.061693, 46.611015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.582106, 29.756081, 46.632072>,  <31.736431, 29.572712, 46.644707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.582106, 29.756081, 46.632072>,  <31.324896, 30.061693, 46.611015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.582106, 29.756081, 46.632072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491477, 0.358961, -0.793472,
		0.587340, 0.536098, 0.606325,
		0.643026, -0.764033, 0.052647,
		31.775013, 29.526871, 46.647865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.014820, 30.331718, 46.438084>,  <31.324896, 30.061693, 46.611015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.014820, 30.331718, 46.438084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.030422, 29.934654, 46.392292>,  <32.039783, 29.696415, 46.364819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.030422, 29.934654, 46.392292>,  <32.014820, 30.331718, 46.438084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.030422, 29.934654, 46.392292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495817, 0.118692, -0.860278,
		0.867550, -0.023201, 0.496808,
		0.039008, -0.992660, -0.114474,
		32.042126, 29.636856, 46.357948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.699055, 30.284315, 46.194061>,  <32.014820, 30.331718, 46.438084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.699055, 30.284315, 46.194061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.447144, 29.991283, 46.090755>,  <32.295998, 29.815464, 46.028770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.447144, 29.991283, 46.090755>,  <32.699055, 30.284315, 46.194061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.447144, 29.991283, 46.090755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246085, 0.127194, -0.960866,
		0.736763, -0.668690, 0.100173,
		-0.629780, -0.732581, -0.258267,
		32.258209, 29.771509, 46.013275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120651, 29.833921, 45.835453>,  <32.699055, 30.284315, 46.194061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120651, 29.833921, 45.835453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746689, 29.753222, 45.718666>,  <32.522312, 29.704802, 45.648594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746689, 29.753222, 45.718666>,  <33.120651, 29.833921, 45.835453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746689, 29.753222, 45.718666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246839, 0.221432, -0.943418,
		0.254986, -0.954078, -0.157219,
		-0.934908, -0.201751, -0.291965,
		32.466217, 29.692698, 45.631077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.141136, 29.337725, 45.249332>,  <33.120651, 29.833921, 45.835453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.141136, 29.337725, 45.249332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.802040, 29.548782, 45.227676>,  <32.598583, 29.675417, 45.214684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.802040, 29.548782, 45.227676>,  <33.141136, 29.337725, 45.249332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.802040, 29.548782, 45.227676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307057, 0.404959, -0.861234,
		-0.432500, -0.746726, -0.505316,
		-0.847738, 0.527645, -0.054143,
		32.547718, 29.707075, 45.211433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.080315, 29.245377, 44.624718>,  <33.141136, 29.337725, 45.249332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.080315, 29.245377, 44.624718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.808701, 29.529909, 44.697296>,  <32.645733, 29.700628, 44.740841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.808701, 29.529909, 44.697296>,  <33.080315, 29.245377, 44.624718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.808701, 29.529909, 44.697296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176365, 0.397994, -0.900275,
		-0.712608, -0.579316, -0.395705,
		-0.679033, 0.711332, 0.181443,
		32.604992, 29.743309, 44.751728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.635559, 29.336222, 43.948463>,  <33.080315, 29.245377, 44.624718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.635559, 29.336222, 43.948463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598335, 29.668705, 44.167713>,  <32.576000, 29.868195, 44.299263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598335, 29.668705, 44.167713>,  <32.635559, 29.336222, 43.948463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598335, 29.668705, 44.167713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020990, 0.552025, -0.833564,
		-0.995439, -0.066065, -0.068818,
		-0.093059, 0.831207, 0.548120,
		32.570419, 29.918066, 44.332150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.190720, 29.642200, 43.655792>,  <32.635559, 29.336222, 43.948463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.190720, 29.642200, 43.655792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.351357, 29.948122, 43.857304>,  <32.447739, 30.131676, 43.978210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.351357, 29.948122, 43.857304>,  <32.190720, 29.642200, 43.655792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.351357, 29.948122, 43.857304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007957, 0.552981, -0.833156,
		-0.915783, 0.330582, 0.228159,
		0.401595, 0.764805, 0.503780,
		32.471836, 30.177563, 44.008438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853241, 30.294376, 43.503597>,  <32.190720, 29.642200, 43.655792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853241, 30.294376, 43.503597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.223343, 30.401644, 43.610916>,  <32.445404, 30.466003, 43.675308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.223343, 30.401644, 43.610916>,  <31.853241, 30.294376, 43.503597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.223343, 30.401644, 43.610916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096018, 0.518688, -0.849555,
		-0.366989, 0.811818, 0.454171,
		0.925257, 0.268169, 0.268302,
		32.500919, 30.482094, 43.691406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.781002, 30.874928, 43.284756>,  <31.853241, 30.294376, 43.503597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.781002, 30.874928, 43.284756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.172791, 30.895313, 43.362766>,  <32.407864, 30.907545, 43.409573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.172791, 30.895313, 43.362766>,  <31.781002, 30.874928, 43.284756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.172791, 30.895313, 43.362766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118951, 0.634958, -0.763334,
		-0.162734, 0.770864, 0.615862,
		0.979474, 0.050963, 0.195024,
		32.466633, 30.910603, 43.421272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.968199, 31.611973, 43.342968>,  <31.781002, 30.874928, 43.284756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.968199, 31.611973, 43.342968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.287529, 31.391436, 43.246059>,  <32.479126, 31.259113, 43.187912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.287529, 31.391436, 43.246059>,  <31.968199, 31.611973, 43.342968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.287529, 31.391436, 43.246059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306993, 0.718678, -0.623904,
		0.518101, 0.423704, 0.742999,
		0.798328, -0.551341, -0.242274,
		32.527027, 31.226034, 43.173378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.490231, 32.187962, 43.232742>,  <31.968199, 31.611973, 43.342968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.490231, 32.187962, 43.232742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.618240, 31.862001, 43.039444>,  <32.695045, 31.666426, 42.923466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.618240, 31.862001, 43.039444>,  <32.490231, 32.187962, 43.232742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.618240, 31.862001, 43.039444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419724, 0.579229, -0.698803,
		0.849364, 0.020801, 0.527398,
		0.320020, -0.814900, -0.483245,
		32.714245, 31.617531, 42.894470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095497, 32.458549, 42.848427>,  <32.490231, 32.187962, 43.232742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095497, 32.458549, 42.848427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.019772, 32.110760, 42.665924>,  <32.974339, 31.902084, 42.556423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.019772, 32.110760, 42.665924>,  <33.095497, 32.458549, 42.848427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.019772, 32.110760, 42.665924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436669, 0.341633, -0.832230,
		0.879478, -0.356782, 0.315000,
		-0.189310, -0.869479, -0.456254,
		32.962978, 31.849916, 42.529049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.638985, 32.212864, 42.368416>,  <33.095497, 32.458549, 42.848427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.638985, 32.212864, 42.368416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.330475, 32.006950, 42.218674>,  <33.145370, 31.883402, 42.128830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.330475, 32.006950, 42.218674>,  <33.638985, 32.212864, 42.368416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.330475, 32.006950, 42.218674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315335, 0.201859, -0.927263,
		0.552905, -0.833218, 0.006640,
		-0.771272, -0.514782, -0.374352,
		33.099094, 31.852516, 42.106369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830021, 31.991789, 41.706264>,  <33.638985, 32.212864, 42.368416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.830021, 31.991789, 41.706264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437069, 31.932100, 41.661266>,  <33.201298, 31.896286, 41.634266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437069, 31.932100, 41.661266>,  <33.830021, 31.991789, 41.706264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437069, 31.932100, 41.661266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110701, 0.020306, -0.993646,
		0.150561, -0.988595, -0.003429,
		-0.982383, -0.149225, -0.112496,
		33.142353, 31.887333, 41.627518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750782, 31.389906, 41.269398>,  <33.830021, 31.991789, 41.706264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750782, 31.389906, 41.269398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.443214, 31.643194, 41.234066>,  <33.258675, 31.795168, 41.212868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.443214, 31.643194, 41.234066>,  <33.750782, 31.389906, 41.269398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.443214, 31.643194, 41.234066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105307, -0.010841, -0.994381,
		-0.630620, -0.773895, -0.058346,
		-0.768914, 0.633221, -0.088333,
		33.212540, 31.833160, 41.207565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.346603, 31.144703, 40.684113>,  <33.750782, 31.389906, 41.269398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.346603, 31.144703, 40.684113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168427, 31.500778, 40.722370>,  <33.061520, 31.714424, 40.745327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168427, 31.500778, 40.722370>,  <33.346603, 31.144703, 40.684113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.168427, 31.500778, 40.722370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073186, 0.070270, -0.994840,
		-0.892315, -0.450142, 0.033848,
		-0.445440, 0.890188, 0.095647,
		33.034794, 31.767834, 40.751064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.651596, 31.153919, 40.366867>,  <33.346603, 31.144703, 40.684113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.651596, 31.153919, 40.366867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.774128, 31.534473, 40.379669>,  <32.847649, 31.762806, 40.387352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.774128, 31.534473, 40.379669>,  <32.651596, 31.153919, 40.366867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.774128, 31.534473, 40.379669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114427, 0.070185, -0.990949,
		-0.945022, 0.299898, 0.130364,
		0.306334, 0.951386, 0.032010,
		32.866028, 31.819889, 40.389271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.133671, 31.529802, 40.042610>,  <32.651596, 31.153919, 40.366867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.133671, 31.529802, 40.042610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.443138, 31.782513, 40.023449>,  <32.628819, 31.934139, 40.011951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.443138, 31.782513, 40.023449>,  <32.133671, 31.529802, 40.042610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.443138, 31.782513, 40.023449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237481, 0.219066, -0.946368,
		-0.587402, 0.743550, 0.319520,
		0.773668, 0.631778, -0.047899,
		32.675240, 31.972046, 40.009079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.978508, 32.111549, 39.615887>,  <32.133671, 31.529802, 40.042610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.978508, 32.111549, 39.615887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.378223, 32.100018, 39.606133>,  <32.618053, 32.093098, 39.600281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.378223, 32.100018, 39.606133>,  <31.978508, 32.111549, 39.615887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.378223, 32.100018, 39.606133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020490, 0.128317, -0.991521,
		0.031714, 0.991314, 0.127635,
		0.999287, -0.028830, -0.024382,
		32.678009, 32.091370, 39.598820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.001938, 32.399761, 39.063450>,  <31.978508, 32.111549, 39.615887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.001938, 32.399761, 39.063450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381592, 32.294327, 39.132351>,  <32.609383, 32.231068, 39.173691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381592, 32.294327, 39.132351>,  <32.001938, 32.399761, 39.063450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.381592, 32.294327, 39.132351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160461, -0.065806, -0.984846,
		0.270925, 0.962389, -0.020164,
		0.949132, -0.263584, 0.172254,
		32.666332, 32.215252, 39.184029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.428871, 32.807831, 38.581017>,  <32.001938, 32.399761, 39.063450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.428871, 32.807831, 38.581017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.643539, 32.484303, 38.677170>,  <32.772343, 32.290184, 38.734863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.643539, 32.484303, 38.677170>,  <32.428871, 32.807831, 38.581017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.643539, 32.484303, 38.677170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183588, -0.166131, -0.968863,
		0.823575, 0.564096, 0.059332,
		0.536675, -0.808824, 0.240382,
		32.804543, 32.241657, 38.749283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.069157, 32.999763, 38.283764>,  <32.428871, 32.807831, 38.581017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.069157, 32.999763, 38.283764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.038673, 32.602470, 38.318802>,  <33.020382, 32.364094, 38.339825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.038673, 32.602470, 38.318802>,  <33.069157, 32.999763, 38.283764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.038673, 32.602470, 38.318802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077620, -0.093495, -0.992589,
		0.994066, -0.068843, 0.084220,
		-0.076207, -0.993237, 0.087597,
		33.015812, 32.304501, 38.345081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623661, 32.797695, 38.022606>,  <33.069157, 32.999763, 38.283764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623661, 32.797695, 38.022606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421494, 32.452568, 38.018879>,  <33.300194, 32.245491, 38.016644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421494, 32.452568, 38.018879>,  <33.623661, 32.797695, 38.022606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.421494, 32.452568, 38.018879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325582, -0.180700, -0.928086,
		0.799090, -0.472107, 0.372249,
		-0.505422, -0.862822, -0.009314,
		33.269867, 32.193722, 38.016087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084225, 32.264862, 37.842266>,  <33.623661, 32.797695, 38.022606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084225, 32.264862, 37.842266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713070, 32.164352, 37.732079>,  <33.490376, 32.104046, 37.665966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713070, 32.164352, 37.732079>,  <34.084225, 32.264862, 37.842266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713070, 32.164352, 37.732079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326798, -0.192364, -0.925310,
		0.179512, -0.948609, 0.260607,
		-0.927890, -0.251270, -0.275472,
		33.434704, 32.088970, 37.649437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.151207, 31.741076, 37.398239>,  <34.084225, 32.264862, 37.842266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.151207, 31.741076, 37.398239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.794029, 31.891563, 37.299362>,  <33.579723, 31.981857, 37.240036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.794029, 31.891563, 37.299362>,  <34.151207, 31.741076, 37.398239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.794029, 31.891563, 37.299362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238353, -0.070699, -0.968602,
		-0.381886, -0.923828, -0.026543,
		-0.892945, 0.376222, -0.247196,
		33.526146, 32.004429, 37.225204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953373, 31.376093, 36.807091>,  <34.151207, 31.741076, 37.398239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953373, 31.376093, 36.807091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.715675, 31.697332, 36.789639>,  <33.573055, 31.890076, 36.779167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.715675, 31.697332, 36.789639>,  <33.953373, 31.376093, 36.807091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715675, 31.697332, 36.789639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042905, -0.085822, -0.995386,
		-0.803137, -0.589634, 0.085456,
		-0.594248, 0.803098, -0.043629,
		33.537399, 31.938261, 36.776550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.353153, 31.135878, 36.351749>,  <33.953373, 31.376093, 36.807091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.353153, 31.135878, 36.351749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.411198, 31.531622, 36.355873>,  <33.446026, 31.769068, 36.358345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.411198, 31.531622, 36.355873>,  <33.353153, 31.135878, 36.351749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.411198, 31.531622, 36.355873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021706, 0.007231, -0.999738,
		-0.989177, 0.145301, -0.020425,
		0.145116, 0.989361, 0.010307,
		33.454731, 31.828430, 36.358967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.892368, 31.422661, 35.812130>,  <33.353153, 31.135878, 36.351749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.892368, 31.422661, 35.812130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.143185, 31.727423, 35.877018>,  <33.293674, 31.910280, 35.915951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.143185, 31.727423, 35.877018>,  <32.892368, 31.422661, 35.812130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.143185, 31.727423, 35.877018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011087, 0.216957, -0.976118,
		-0.778905, 0.610271, 0.144489,
		0.627044, 0.761905, 0.162223,
		33.331299, 31.955994, 35.925686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.533356, 31.956942, 35.539440>,  <32.892368, 31.422661, 35.812130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.533356, 31.956942, 35.539440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.907425, 32.097637, 35.556046>,  <33.131866, 32.182053, 35.566010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.907425, 32.097637, 35.556046>,  <32.533356, 31.956942, 35.539440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.907425, 32.097637, 35.556046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050506, 0.248460, -0.967324,
		-0.350560, 0.902523, 0.250120,
		0.935177, 0.351738, 0.041517,
		33.187977, 32.203159, 35.568501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.634075, 32.618237, 35.094040>,  <32.533356, 31.956942, 35.539440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.634075, 32.618237, 35.094040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007324, 32.477634, 35.124302>,  <33.231274, 32.393272, 35.142460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007324, 32.477634, 35.124302>,  <32.634075, 32.618237, 35.094040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007324, 32.477634, 35.124302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149609, 0.188232, -0.970663,
		0.326948, 0.917069, 0.228231,
		0.933125, -0.351501, 0.075660,
		33.287262, 32.372185, 35.146999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.951488, 33.087887, 34.784714>,  <32.634075, 32.618237, 35.094040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.951488, 33.087887, 34.784714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.237030, 32.807850, 34.791538>,  <33.408356, 32.639828, 34.795631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.237030, 32.807850, 34.791538>,  <32.951488, 33.087887, 34.784714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.237030, 32.807850, 34.791538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335850, 0.320875, -0.885576,
		0.614509, 0.637898, 0.464182,
		0.713852, -0.700089, 0.017057,
		33.451187, 32.597824, 34.796654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504108, 33.417248, 34.540703>,  <32.951488, 33.087887, 34.784714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504108, 33.417248, 34.540703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.587921, 33.027966, 34.502804>,  <33.638210, 32.794395, 34.480064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.587921, 33.027966, 34.502804>,  <33.504108, 33.417248, 34.540703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.587921, 33.027966, 34.502804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350606, 0.165228, -0.921833,
		0.912783, 0.159935, 0.375830,
		0.209531, -0.973201, -0.094743,
		33.650780, 32.736004, 34.474380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166794, 33.456291, 34.271435>,  <33.504108, 33.417248, 34.540703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166794, 33.456291, 34.271435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.974705, 33.119194, 34.174129>,  <33.859451, 32.916935, 34.115746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.974705, 33.119194, 34.174129>,  <34.166794, 33.456291, 34.271435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.974705, 33.119194, 34.174129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130564, 0.205565, -0.969895,
		0.867377, -0.497522, 0.011316,
		-0.480218, -0.842743, -0.243261,
		33.830639, 32.866371, 34.101151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558159, 33.194584, 33.757904>,  <34.166794, 33.456291, 34.271435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558159, 33.194584, 33.757904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230015, 32.980408, 33.677593>,  <34.033127, 32.851902, 33.629406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230015, 32.980408, 33.677593>,  <34.558159, 33.194584, 33.757904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.230015, 32.980408, 33.677593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167654, 0.110466, -0.979637,
		0.546718, -0.837317, -0.000852,
		-0.820361, -0.535442, -0.200773,
		33.983906, 32.819775, 33.617363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932392, 33.024067, 34.433056>,  <34.558159, 33.194584, 33.757904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932392, 33.024067, 34.433056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289593, 33.194603, 34.375393>,  <35.503914, 33.296925, 34.340797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289593, 33.194603, 34.375393>,  <34.932392, 33.024067, 34.433056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.289593, 33.194603, 34.375393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175701, -0.035372, 0.983808,
		0.414341, -0.903869, -0.106497,
		0.893001, 0.426344, -0.144155,
		35.557491, 33.322506, 34.332146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453957, 32.534317, 34.581913>,  <34.932392, 33.024067, 34.433056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.453957, 32.534317, 34.581913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.571121, 32.909210, 34.657585>,  <35.641422, 33.134148, 34.702988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.571121, 32.909210, 34.657585>,  <35.453957, 32.534317, 34.581913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.571121, 32.909210, 34.657585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100972, -0.227076, 0.968628,
		0.950792, -0.264625, -0.161149,
		0.292916, 0.937235, 0.189182,
		35.658997, 33.190380, 34.714340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929497, 32.389622, 35.084400>,  <35.453957, 32.534317, 34.581913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929497, 32.389622, 35.084400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.899998, 32.784019, 35.144241>,  <35.882298, 33.020657, 35.180145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.899998, 32.784019, 35.144241>,  <35.929497, 32.389622, 35.084400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899998, 32.784019, 35.144241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232780, -0.128845, 0.963957,
		0.969729, 0.105915, -0.220017,
		-0.073750, 0.985992, 0.149600,
		35.877872, 33.079819, 35.189121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387203, 32.532051, 35.575233>,  <35.929497, 32.389622, 35.084400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.387203, 32.532051, 35.575233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.201714, 32.885738, 35.597591>,  <36.090420, 33.097950, 35.611004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.201714, 32.885738, 35.597591>,  <36.387203, 32.532051, 35.575233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201714, 32.885738, 35.597591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105762, -0.007386, 0.994364,
		0.879644, 0.467023, -0.090091,
		-0.463726, 0.884214, 0.055890,
		36.062595, 33.151001, 35.614357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830158, 33.034748, 36.027435>,  <36.387203, 32.532051, 35.575233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.830158, 33.034748, 36.027435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.452587, 33.164856, 36.050079>,  <36.226044, 33.242920, 36.063667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.452587, 33.164856, 36.050079>,  <36.830158, 33.034748, 36.027435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452587, 33.164856, 36.050079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027228, -0.094191, 0.995182,
		0.329033, 0.940919, 0.080053,
		-0.943926, 0.325268, 0.056612,
		36.169411, 33.262436, 36.067062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823959, 33.647930, 36.495003>,  <36.830158, 33.034748, 36.027435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823959, 33.647930, 36.495003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.464088, 33.473351, 36.491283>,  <36.248165, 33.368603, 36.489052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.464088, 33.473351, 36.491283>,  <36.823959, 33.647930, 36.495003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.464088, 33.473351, 36.491283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136567, -0.301625, 0.943595,
		-0.414639, 0.847663, 0.330971,
		-0.899680, -0.436451, -0.009302,
		36.194183, 33.342415, 36.488491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.581245, 33.654968, 37.135460>,  <36.823959, 33.647930, 36.495003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.581245, 33.654968, 37.135460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.299171, 33.399376, 37.012550>,  <36.129925, 33.246021, 36.938805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.299171, 33.399376, 37.012550>,  <36.581245, 33.654968, 37.135460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.299171, 33.399376, 37.012550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007602, -0.426541, 0.904436,
		-0.708980, 0.640133, 0.295933,
		-0.705188, -0.638977, -0.307275,
		36.087616, 33.207684, 36.920368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043072, 33.647053, 37.612194>,  <36.581245, 33.654968, 37.135460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043072, 33.647053, 37.612194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.993999, 33.288101, 37.442650>,  <35.964554, 33.072731, 37.340923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.993999, 33.288101, 37.442650>,  <36.043072, 33.647053, 37.612194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.993999, 33.288101, 37.442650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042113, -0.421994, 0.905620,
		-0.991552, 0.128954, 0.013980,
		-0.122683, -0.897380, -0.423860,
		35.957195, 33.018887, 37.315491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.551086, 33.308029, 38.032074>,  <36.043072, 33.647053, 37.612194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.551086, 33.308029, 38.032074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.699295, 32.988373, 37.842720>,  <35.788219, 32.796581, 37.729107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.699295, 32.988373, 37.842720>,  <35.551086, 33.308029, 38.032074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699295, 32.988373, 37.842720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009808, -0.512995, 0.858335,
		-0.928770, -0.313392, -0.197916,
		0.370525, -0.799137, -0.473381,
		35.810452, 32.748631, 37.700706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155033, 32.716793, 38.178040>,  <35.551086, 33.308029, 38.032074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.155033, 32.716793, 38.178040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.499550, 32.563992, 38.044029>,  <35.706261, 32.472313, 37.963623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.499550, 32.563992, 38.044029>,  <35.155033, 32.716793, 38.178040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.499550, 32.563992, 38.044029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143416, -0.815335, 0.560946,
		-0.487442, -0.435093, -0.757030,
		0.861297, -0.381999, -0.335029,
		35.757938, 32.449390, 37.943520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933712, 32.131798, 38.059921>,  <35.155033, 32.716793, 38.178040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933712, 32.131798, 38.059921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.329857, 32.106850, 38.109375>,  <35.567543, 32.091881, 38.139046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.329857, 32.106850, 38.109375>,  <34.933712, 32.131798, 38.059921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329857, 32.106850, 38.109375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128421, -0.747653, 0.651554,
		0.051798, -0.661154, -0.748460,
		0.990366, -0.062368, 0.123633,
		35.626968, 32.088139, 38.146465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144993, 31.406969, 37.981461>,  <34.933712, 32.131798, 38.059921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144993, 31.406969, 37.981461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.430492, 31.600389, 38.184139>,  <35.601791, 31.716442, 38.305748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.430492, 31.600389, 38.184139>,  <35.144993, 31.406969, 37.981461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430492, 31.600389, 38.184139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032389, -0.699874, 0.713532,
		0.699654, -0.525693, -0.483871,
		0.713747, 0.483553, 0.506696,
		35.644615, 31.745455, 38.336147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444714, 30.854328, 38.324738>,  <35.144993, 31.406969, 37.981461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.444714, 30.854328, 38.324738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.628765, 31.142435, 38.532391>,  <35.739197, 31.315298, 38.656982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.628765, 31.142435, 38.532391>,  <35.444714, 30.854328, 38.324738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.628765, 31.142435, 38.532391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049358, -0.563048, 0.824949,
		0.886478, -0.405208, -0.223525,
		0.460131, 0.720266, 0.519130,
		35.766804, 31.358515, 38.688129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.838619, 30.489166, 38.846535>,  <35.444714, 30.854328, 38.324738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.838619, 30.489166, 38.846535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.835480, 30.860340, 38.995602>,  <35.833595, 31.083044, 39.085041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.835480, 30.860340, 38.995602>,  <35.838619, 30.489166, 38.846535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.835480, 30.860340, 38.995602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042091, -0.372654, 0.927016,
		0.999083, -0.008413, 0.041981,
		-0.007846, 0.927933, 0.372666,
		35.833126, 31.138720, 39.107403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295139, 30.496408, 39.381931>,  <35.838619, 30.489166, 38.846535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.295139, 30.496408, 39.381931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029129, 30.788691, 39.443661>,  <35.869522, 30.964060, 39.480698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029129, 30.788691, 39.443661>,  <36.295139, 30.496408, 39.381931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029129, 30.788691, 39.443661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083706, -0.278264, 0.956850,
		0.742117, 0.623409, 0.246216,
		-0.665022, 0.730705, 0.154321,
		35.829620, 31.007902, 39.489956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490639, 30.745447, 39.993595>,  <36.295139, 30.496408, 39.381931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490639, 30.745447, 39.993595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114216, 30.870211, 39.941261>,  <35.888363, 30.945068, 39.909863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114216, 30.870211, 39.941261>,  <36.490639, 30.745447, 39.993595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114216, 30.870211, 39.941261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169225, -0.099266, 0.980566,
		0.292862, 0.944912, 0.146198,
		-0.941060, 0.311911, -0.130831,
		35.831898, 30.963783, 39.902012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408318, 31.297165, 40.508045>,  <36.490639, 30.745447, 39.993595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.408318, 31.297165, 40.508045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.044102, 31.179241, 40.392117>,  <35.825573, 31.108486, 40.322559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.044102, 31.179241, 40.392117>,  <36.408318, 31.297165, 40.508045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044102, 31.179241, 40.392117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305002, 0.005803, 0.952334,
		-0.279075, 0.955538, -0.095201,
		-0.910544, -0.294809, -0.289822,
		35.770939, 31.090797, 40.305168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047825, 31.700335, 40.854534>,  <36.408318, 31.297165, 40.508045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047825, 31.700335, 40.854534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.771358, 31.423090, 40.772675>,  <35.605476, 31.256744, 40.723557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.771358, 31.423090, 40.772675>,  <36.047825, 31.700335, 40.854534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771358, 31.423090, 40.772675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275576, -0.009014, 0.961237,
		-0.668088, 0.720775, -0.184774,
		-0.691170, -0.693110, -0.204651,
		35.564007, 31.215157, 40.711281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.533474, 31.879736, 41.259159>,  <36.047825, 31.700335, 40.854534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.533474, 31.879736, 41.259159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.453396, 31.492641, 41.197960>,  <35.405350, 31.260386, 41.161240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.453396, 31.492641, 41.197960>,  <35.533474, 31.879736, 41.259159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.453396, 31.492641, 41.197960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281971, -0.092638, 0.954940,
		-0.938303, 0.234319, -0.254327,
		-0.200200, -0.967736, -0.152994,
		35.393337, 31.202320, 41.152061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038681, 31.716606, 41.718945>,  <35.533474, 31.879736, 41.259159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038681, 31.716606, 41.718945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143631, 31.337458, 41.646618>,  <35.206600, 31.109968, 41.603222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143631, 31.337458, 41.646618>,  <35.038681, 31.716606, 41.718945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143631, 31.337458, 41.646618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171644, -0.230237, 0.957878,
		-0.949577, -0.220291, -0.223106,
		0.262379, -0.947873, -0.180816,
		35.222343, 31.053095, 41.592373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.551876, 31.283009, 42.059582>,  <35.038681, 31.716606, 41.718945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.551876, 31.283009, 42.059582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.847500, 31.020550, 41.998577>,  <35.024876, 30.863073, 41.961975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.847500, 31.020550, 41.998577>,  <34.551876, 31.283009, 42.059582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.847500, 31.020550, 41.998577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177339, -0.407927, 0.895626,
		-0.649880, -0.634873, -0.417843,
		0.739058, -0.656150, -0.152516,
		35.069218, 30.823706, 41.952824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313194, 30.488026, 42.124722>,  <34.551876, 31.283009, 42.059582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313194, 30.488026, 42.124722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.699123, 30.529259, 42.221455>,  <34.930683, 30.553999, 42.279495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.699123, 30.529259, 42.221455>,  <34.313194, 30.488026, 42.124722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.699123, 30.529259, 42.221455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163310, -0.485857, 0.858646,
		0.206008, -0.867938, -0.451934,
		0.964827, 0.103082, 0.241834,
		34.988571, 30.560183, 42.294006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479790, 29.913580, 42.399860>,  <34.313194, 30.488026, 42.124722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479790, 29.913580, 42.399860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.753437, 30.176327, 42.526672>,  <34.917625, 30.333975, 42.602760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.753437, 30.176327, 42.526672>,  <34.479790, 29.913580, 42.399860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753437, 30.176327, 42.526672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104402, -0.341992, 0.933885,
		0.721859, -0.671988, -0.165385,
		0.684120, 0.656867, 0.317027,
		34.958672, 30.373386, 42.621780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877747, 29.546791, 42.902626>,  <34.479790, 29.913580, 42.399860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877747, 29.546791, 42.902626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007069, 29.921272, 42.957752>,  <35.084663, 30.145962, 42.990829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007069, 29.921272, 42.957752>,  <34.877747, 29.546791, 42.902626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007069, 29.921272, 42.957752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188479, -0.206432, 0.960136,
		0.927333, -0.284445, -0.243196,
		0.323309, 0.936203, 0.137820,
		35.104061, 30.202133, 42.999100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572296, 29.474157, 43.322689>,  <34.877747, 29.546791, 42.902626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572296, 29.474157, 43.322689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.418304, 29.829760, 43.421852>,  <35.325909, 30.043121, 43.481350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.418304, 29.829760, 43.421852>,  <35.572296, 29.474157, 43.322689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418304, 29.829760, 43.421852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227652, -0.168840, 0.958993,
		0.894409, 0.425628, -0.137385,
		-0.384978, 0.889008, 0.247907,
		35.302811, 30.096462, 43.496223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801895, 29.654442, 43.887192>,  <35.572296, 29.474157, 43.322689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.801895, 29.654442, 43.887192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.537037, 29.954191, 43.887112>,  <35.378120, 30.134041, 43.887062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.537037, 29.954191, 43.887112>,  <35.801895, 29.654442, 43.887192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537037, 29.954191, 43.887112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013491, -0.011651, 0.999841,
		0.749252, 0.662046, 0.017825,
		-0.662148, 0.749373, -0.000202,
		35.338394, 30.179003, 43.887051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.953506, 30.231750, 44.329632>,  <35.801895, 29.654442, 43.887192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.953506, 30.231750, 44.329632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.554764, 30.258186, 44.312176>,  <35.315517, 30.274048, 44.301701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.554764, 30.258186, 44.312176>,  <35.953506, 30.231750, 44.329632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554764, 30.258186, 44.312176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040301, 0.051027, 0.997884,
		0.068175, 0.996508, -0.048204,
		-0.996859, 0.066088, -0.043639,
		35.255707, 30.278013, 44.299084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842411, 30.710020, 44.929756>,  <35.953506, 30.231750, 44.329632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842411, 30.710020, 44.929756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.535713, 30.475168, 44.825928>,  <35.351692, 30.334257, 44.763630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.535713, 30.475168, 44.825928>,  <35.842411, 30.710020, 44.929756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.535713, 30.475168, 44.825928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387664, 0.101191, 0.916230,
		-0.511678, 0.803145, -0.305196,
		-0.766748, -0.587128, -0.259573,
		35.305687, 30.299030, 44.748055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265015, 31.090199, 45.170956>,  <35.842411, 30.710020, 44.929756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265015, 31.090199, 45.170956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.166512, 30.704779, 45.129139>,  <35.107410, 30.473526, 45.104050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.166512, 30.704779, 45.129139>,  <35.265015, 31.090199, 45.170956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166512, 30.704779, 45.129139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443998, 0.016278, 0.895880,
		-0.861523, 0.267034, -0.431822,
		-0.246259, -0.963550, -0.104539,
		35.092632, 30.415714, 45.097778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.501308, 30.978678, 45.417217>,  <35.265015, 31.090199, 45.170956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.501308, 30.978678, 45.417217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.682983, 30.622858, 45.436855>,  <34.791988, 30.409367, 45.448639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.682983, 30.622858, 45.436855>,  <34.501308, 30.978678, 45.417217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.682983, 30.622858, 45.436855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322749, -0.112927, 0.939724,
		-0.830388, -0.442659, -0.338392,
		0.454190, -0.889551, 0.049095,
		34.819241, 30.355993, 45.451584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037453, 30.516874, 45.683769>,  <34.501308, 30.978678, 45.417217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037453, 30.516874, 45.683769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.390949, 30.343271, 45.753784>,  <34.603046, 30.239109, 45.795795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.390949, 30.343271, 45.753784>,  <34.037453, 30.516874, 45.683769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.390949, 30.343271, 45.753784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287807, -0.209110, 0.934580,
		-0.369014, -0.876304, -0.309710,
		0.883740, -0.434010, 0.175042,
		34.656071, 30.213068, 45.806297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.884598, 29.924822, 46.078697>,  <34.037453, 30.516874, 45.683769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.884598, 29.924822, 46.078697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.268341, 30.015717, 46.145626>,  <34.498589, 30.070253, 46.185783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.268341, 30.015717, 46.145626>,  <33.884598, 29.924822, 46.078697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.268341, 30.015717, 46.145626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105975, -0.259423, 0.959932,
		0.261538, -0.938650, -0.224798,
		0.959358, 0.227236, 0.167322,
		34.556149, 30.083887, 46.195824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.042374, 29.498812, 46.614838>,  <33.884598, 29.924822, 46.078697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.042374, 29.498812, 46.614838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.359852, 29.742048, 46.621445>,  <34.550339, 29.887991, 46.625408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.359852, 29.742048, 46.621445>,  <34.042374, 29.498812, 46.614838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359852, 29.742048, 46.621445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081849, -0.133656, 0.987642,
		0.602786, -0.782533, -0.155854,
		0.793693, 0.608094, 0.016516,
		34.597961, 29.924477, 46.626400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.317017, 29.389879, 47.289722>,  <34.042374, 29.498812, 46.614838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.317017, 29.389879, 47.289722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.527409, 29.708941, 47.171677>,  <34.653645, 29.900377, 47.100849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.527409, 29.708941, 47.171677>,  <34.317017, 29.389879, 47.289722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527409, 29.708941, 47.171677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175086, 0.238006, 0.955352,
		0.832281, -0.554165, -0.014472,
		0.525978, 0.797655, -0.295114,
		34.685204, 29.948236, 47.083141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.052082, 29.420626, 47.656548>,  <34.317017, 29.389879, 47.289722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.052082, 29.420626, 47.656548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939419, 29.784607, 47.534790>,  <34.871822, 30.002996, 47.461735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939419, 29.784607, 47.534790>,  <35.052082, 29.420626, 47.656548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939419, 29.784607, 47.534790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058916, 0.300233, 0.952045,
		0.957705, 0.286081, -0.030951,
		-0.281654, 0.909955, -0.304389,
		34.854923, 30.057594, 47.443474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.403862, 29.900198, 48.032955>,  <35.052082, 29.420626, 47.656548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.403862, 29.900198, 48.032955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.072010, 30.094927, 47.923622>,  <34.872898, 30.211765, 47.858021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.072010, 30.094927, 47.923622>,  <35.403862, 29.900198, 48.032955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072010, 30.094927, 47.923622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184500, 0.223006, 0.957198,
		0.526941, 0.844554, -0.095194,
		-0.829634, 0.486823, -0.273331,
		34.823120, 30.240974, 47.841621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428101, 30.687397, 48.186180>,  <35.403862, 29.900198, 48.032955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.428101, 30.687397, 48.186180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046993, 30.568090, 48.163330>,  <34.818329, 30.496508, 48.149620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046993, 30.568090, 48.163330>,  <35.428101, 30.687397, 48.186180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046993, 30.568090, 48.163330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123592, 0.209008, 0.970072,
		-0.277399, 0.931318, -0.236000,
		-0.952772, -0.298265, -0.057125,
		34.761162, 30.478611, 48.146194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.093452, 31.309908, 48.352509>,  <35.428101, 30.687397, 48.186180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.093452, 31.309908, 48.352509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.876675, 30.983358, 48.432346>,  <34.746609, 30.787430, 48.480247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.876675, 30.983358, 48.432346>,  <35.093452, 31.309908, 48.352509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.876675, 30.983358, 48.432346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117326, 0.308659, 0.943909,
		-0.832187, 0.488125, -0.263056,
		-0.541940, -0.816372, 0.199592,
		34.714092, 30.738447, 48.492226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571529, 31.814945, 48.102337>,  <35.093452, 31.309908, 48.352509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571529, 31.814945, 48.102337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651016, 32.126320, 48.340511>,  <34.698708, 32.313145, 48.483418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651016, 32.126320, 48.340511>,  <34.571529, 31.814945, 48.102337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651016, 32.126320, 48.340511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637871, 0.358532, -0.681598,
		-0.744065, 0.515256, -0.425297,
		0.198715, 0.778438, 0.595438,
		34.710632, 32.359852, 48.519142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265926, 32.392937, 47.784599>,  <34.571529, 31.814945, 48.102337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265926, 32.392937, 47.784599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.550522, 32.515926, 48.037342>,  <34.721279, 32.589718, 48.188988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.550522, 32.515926, 48.037342>,  <34.265926, 32.392937, 47.784599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550522, 32.515926, 48.037342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383212, 0.583937, -0.715658,
		-0.589009, 0.751319, 0.297638,
		0.711489, 0.307471, 0.631858,
		34.763969, 32.608166, 48.226898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.212818, 33.064754, 47.756233>,  <34.265926, 32.392937, 47.784599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.212818, 33.064754, 47.756233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.581055, 33.020660, 47.906094>,  <34.801998, 32.994205, 47.996010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.581055, 33.020660, 47.906094>,  <34.212818, 33.064754, 47.756233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.581055, 33.020660, 47.906094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359926, 0.611750, -0.704425,
		-0.151540, 0.783333, 0.602848,
		0.920592, -0.110232, 0.374646,
		34.857231, 32.987591, 48.018486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484390, 33.664345, 47.697887>,  <34.212818, 33.064754, 47.756233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484390, 33.664345, 47.697887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.808826, 33.440758, 47.766796>,  <35.003490, 33.306606, 47.808140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.808826, 33.440758, 47.766796>,  <34.484390, 33.664345, 47.697887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.808826, 33.440758, 47.766796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498456, 0.506443, -0.703603,
		0.306051, 0.656556, 0.689396,
		0.811095, -0.558972, 0.172267,
		35.052155, 33.273067, 47.818478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.105133, 34.063587, 47.841957>,  <34.484390, 33.664345, 47.697887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.105133, 34.063587, 47.841957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224102, 33.708595, 47.701153>,  <35.295483, 33.495598, 47.616669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224102, 33.708595, 47.701153>,  <35.105133, 34.063587, 47.841957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224102, 33.708595, 47.701153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571343, 0.460842, -0.679111,
		0.764922, 0.000864, 0.644123,
		0.297426, -0.887482, -0.352015,
		35.313328, 33.442352, 47.595547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824024, 34.089333, 47.589966>,  <35.105133, 34.063587, 47.841957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824024, 34.089333, 47.589966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.678173, 33.767464, 47.402538>,  <35.590664, 33.574345, 47.290081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.678173, 33.767464, 47.402538>,  <35.824024, 34.089333, 47.589966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.678173, 33.767464, 47.402538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495415, 0.258431, -0.829324,
		0.788424, -0.534527, 0.304415,
		-0.364626, -0.804670, -0.468566,
		35.568787, 33.526062, 47.261967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.263229, 34.204815, 47.054157>,  <35.824024, 34.089333, 47.589966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.263229, 34.204815, 47.054157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033070, 33.899612, 46.936356>,  <35.894974, 33.716492, 46.865673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033070, 33.899612, 46.936356>,  <36.263229, 34.204815, 47.054157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033070, 33.899612, 46.936356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438995, 0.015689, -0.898352,
		0.690073, -0.646195, 0.325931,
		-0.575398, -0.763011, -0.294503,
		35.860451, 33.670708, 46.848003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669853, 33.668987, 46.751659>,  <36.263229, 34.204815, 47.054157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669853, 33.668987, 46.751659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.301174, 33.636745, 46.599884>,  <36.079967, 33.617401, 46.508820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.301174, 33.636745, 46.599884>,  <36.669853, 33.668987, 46.751659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301174, 33.636745, 46.599884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387303, -0.136847, -0.911740,
		0.021563, -0.987308, 0.157350,
		-0.921700, -0.080602, -0.379437,
		36.024666, 33.612564, 46.486053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774235, 33.195271, 46.244461>,  <36.669853, 33.668987, 46.751659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.774235, 33.195271, 46.244461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.413925, 33.327816, 46.132175>,  <36.197739, 33.407341, 46.064804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.413925, 33.327816, 46.132175>,  <36.774235, 33.195271, 46.244461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.413925, 33.327816, 46.132175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176184, -0.311969, -0.933614,
		-0.396937, -0.890436, 0.222634,
		-0.900778, 0.331361, -0.280712,
		36.143692, 33.427223, 46.047962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461880, 32.679737, 45.865589>,  <36.774235, 33.195271, 46.244461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461880, 32.679737, 45.865589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.298397, 33.021343, 45.736832>,  <36.200306, 33.226307, 45.659576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.298397, 33.021343, 45.736832>,  <36.461880, 32.679737, 45.865589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298397, 33.021343, 45.736832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148078, -0.285974, -0.946727,
		-0.900573, -0.434598, -0.009582,
		-0.408706, 0.854016, -0.321895,
		36.175785, 33.277550, 45.640263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.973743, 32.430298, 45.345486>,  <36.461880, 32.679737, 45.865589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.973743, 32.430298, 45.345486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.043232, 32.822098, 45.304684>,  <36.084927, 33.057178, 45.280201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.043232, 32.822098, 45.304684>,  <35.973743, 32.430298, 45.345486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043232, 32.822098, 45.304684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190710, -0.135084, -0.972307,
		-0.966152, 0.149460, -0.210268,
		0.173725, 0.979497, -0.102008,
		36.095348, 33.115948, 45.274082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555176, 32.596325, 44.794334>,  <35.973743, 32.430298, 45.345486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.555176, 32.596325, 44.794334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.846428, 32.870461, 44.789555>,  <36.021179, 33.034943, 44.786686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.846428, 32.870461, 44.789555>,  <35.555176, 32.596325, 44.794334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.846428, 32.870461, 44.789555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036498, -0.056176, -0.997754,
		-0.684466, 0.726059, -0.065917,
		0.728131, 0.685334, -0.011950,
		36.064869, 33.076061, 44.785969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327160, 33.157288, 44.356789>,  <35.555176, 32.596325, 44.794334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327160, 33.157288, 44.356789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724861, 33.188744, 44.385834>,  <35.963482, 33.207619, 44.403259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724861, 33.188744, 44.385834>,  <35.327160, 33.157288, 44.356789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.724861, 33.188744, 44.385834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052818, 0.229570, -0.971858,
		-0.093095, 0.970110, 0.224098,
		0.994255, 0.078639, 0.072612,
		36.023136, 33.212334, 44.407616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583645, 33.784199, 43.892792>,  <35.327160, 33.157288, 44.356789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.583645, 33.784199, 43.892792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.938057, 33.605618, 43.942799>,  <36.150703, 33.498466, 43.972801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.938057, 33.605618, 43.942799>,  <35.583645, 33.784199, 43.892792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938057, 33.605618, 43.942799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192529, 0.109017, -0.975217,
		0.421763, 0.888140, 0.182548,
		0.886030, -0.446456, 0.125013,
		36.203865, 33.471680, 43.980301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.076714, 34.220150, 43.684086>,  <35.583645, 33.784199, 43.892792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.076714, 34.220150, 43.684086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.285454, 33.878956, 43.680141>,  <36.410698, 33.674240, 43.677776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.285454, 33.878956, 43.680141>,  <36.076714, 34.220150, 43.684086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285454, 33.878956, 43.680141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281245, 0.182952, -0.942035,
		0.805342, 0.488827, 0.335370,
		0.521848, -0.852981, -0.009859,
		36.442009, 33.623062, 43.677185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633270, 34.384640, 43.274879>,  <36.076714, 34.220150, 43.684086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633270, 34.384640, 43.274879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.620186, 33.984917, 43.267857>,  <36.612335, 33.745083, 43.263645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.620186, 33.984917, 43.267857>,  <36.633270, 34.384640, 43.274879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.620186, 33.984917, 43.267857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063196, 0.015459, -0.997881,
		0.997465, -0.033753, 0.062647,
		-0.032713, -0.999311, -0.017553,
		36.610371, 33.685123, 43.262592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293430, 34.106682, 42.958920>,  <36.633270, 34.384640, 43.274879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293430, 34.106682, 42.958920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.028034, 33.809837, 42.920860>,  <36.868797, 33.631733, 42.898026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.028034, 33.809837, 42.920860>,  <37.293430, 34.106682, 42.958920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.028034, 33.809837, 42.920860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108150, 0.030711, -0.993660,
		0.740324, -0.669578, 0.059882,
		-0.663493, -0.742107, -0.095151,
		36.828987, 33.587204, 42.892315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638630, 33.554199, 42.584309>,  <37.293430, 34.106682, 42.958920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.638630, 33.554199, 42.584309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.250443, 33.466965, 42.543079>,  <37.017529, 33.414623, 42.518341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.250443, 33.466965, 42.543079>,  <37.638630, 33.554199, 42.584309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.250443, 33.466965, 42.543079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088052, 0.077553, -0.993092,
		0.224572, -0.972844, -0.056060,
		-0.970471, -0.218085, -0.103077,
		36.959301, 33.401539, 42.512157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508568, 33.001255, 42.066853>,  <37.638630, 33.554199, 42.584309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508568, 33.001255, 42.066853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.148613, 33.174809, 42.084507>,  <36.932640, 33.278938, 42.095100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.148613, 33.174809, 42.084507>,  <37.508568, 33.001255, 42.066853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.148613, 33.174809, 42.084507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044043, 0.191094, -0.980583,
		-0.433890, -0.880472, -0.191073,
		-0.899889, 0.433880, 0.044135,
		36.878647, 33.304974, 42.097748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121765, 32.709564, 41.605064>,  <37.508568, 33.001255, 42.066853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.121765, 32.709564, 41.605064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.949978, 33.066772, 41.658829>,  <36.846905, 33.281097, 41.691090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.949978, 33.066772, 41.658829>,  <37.121765, 32.709564, 41.605064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.949978, 33.066772, 41.658829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092378, 0.104618, -0.990213,
		-0.898344, -0.437683, 0.037565,
		-0.429470, 0.893022, 0.134415,
		36.821136, 33.334679, 41.699154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446552, 32.637642, 41.217751>,  <37.121765, 32.709564, 41.605064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.446552, 32.637642, 41.217751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.598629, 33.007492, 41.226936>,  <36.689877, 33.229401, 41.232449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.598629, 33.007492, 41.226936>,  <36.446552, 32.637642, 41.217751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598629, 33.007492, 41.226936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196569, 0.105040, -0.974847,
		-0.903778, 0.366114, 0.221687,
		0.380192, 0.924623, 0.022966,
		36.712685, 33.284878, 41.233826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046612, 32.938068, 40.710022>,  <36.446552, 32.637642, 41.217751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046612, 32.938068, 40.710022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.339321, 33.200825, 40.782692>,  <36.514946, 33.358479, 40.826294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.339321, 33.200825, 40.782692>,  <36.046612, 32.938068, 40.710022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.339321, 33.200825, 40.782692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038152, 0.305628, -0.951386,
		-0.680480, 0.689267, 0.248712,
		0.731773, 0.656888, 0.181677,
		36.558853, 33.397892, 40.837196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861946, 33.582031, 40.314423>,  <36.046612, 32.938068, 40.710022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861946, 33.582031, 40.314423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.257763, 33.604507, 40.367561>,  <36.495255, 33.617992, 40.399445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.257763, 33.604507, 40.367561>,  <35.861946, 33.582031, 40.314423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257763, 33.604507, 40.367561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121719, 0.168926, -0.978084,
		-0.077403, 0.984026, 0.160320,
		0.989542, 0.056193, 0.132850,
		36.554626, 33.621365, 40.407417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033653, 34.047516, 39.793182>,  <35.861946, 33.582031, 40.314423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033653, 34.047516, 39.793182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380959, 33.881435, 39.901787>,  <36.589344, 33.781788, 39.966949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380959, 33.881435, 39.901787>,  <36.033653, 34.047516, 39.793182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380959, 33.881435, 39.901787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324136, 0.060485, -0.944075,
		0.375562, 0.907715, 0.187100,
		0.868268, -0.415205, 0.271507,
		36.641438, 33.756874, 39.983238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544647, 34.535007, 39.599598>,  <36.033653, 34.047516, 39.793182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.544647, 34.535007, 39.599598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.728344, 34.180103, 39.616886>,  <36.838562, 33.967159, 39.627258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.728344, 34.180103, 39.616886>,  <36.544647, 34.535007, 39.599598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728344, 34.180103, 39.616886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513619, 0.225515, -0.827852,
		0.724774, 0.402381, 0.559279,
		0.459238, -0.887261, 0.043223,
		36.866116, 33.913925, 39.629852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252285, 34.640602, 39.217262>,  <36.544647, 34.535007, 39.599598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.252285, 34.640602, 39.217262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.225197, 34.243008, 39.251694>,  <37.208942, 34.004452, 39.272354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.225197, 34.243008, 39.251694>,  <37.252285, 34.640602, 39.217262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.225197, 34.243008, 39.251694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550420, -0.109183, -0.827718,
		0.832137, -0.008678, 0.554503,
		-0.067725, -0.993984, 0.086079,
		37.204880, 33.944813, 39.277519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898251, 34.355362, 39.200275>,  <37.252285, 34.640602, 39.217262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.898251, 34.355362, 39.200275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.653252, 34.061337, 39.083977>,  <37.506252, 33.884922, 39.014198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.653252, 34.061337, 39.083977>,  <37.898251, 34.355362, 39.200275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653252, 34.061337, 39.083977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555322, -0.138373, -0.820043,
		0.562551, -0.663731, 0.492948,
		-0.612498, -0.735061, -0.290743,
		37.469501, 33.840816, 38.996754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317677, 33.821953, 39.016235>,  <37.898251, 34.355362, 39.200275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317677, 33.821953, 39.016235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.969723, 33.753178, 38.831310>,  <37.760948, 33.711910, 38.720356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.969723, 33.753178, 38.831310>,  <38.317677, 33.821953, 39.016235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969723, 33.753178, 38.831310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490707, -0.206566, -0.846485,
		0.050049, -0.963206, 0.264062,
		-0.869887, -0.171943, -0.462313,
		37.708755, 33.701595, 38.692616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404385, 33.228863, 38.726589>,  <38.317677, 33.821953, 39.016235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.404385, 33.228863, 38.726589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.125641, 33.426369, 38.518520>,  <37.958393, 33.544872, 38.393681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.125641, 33.426369, 38.518520>,  <38.404385, 33.228863, 38.726589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.125641, 33.426369, 38.518520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503899, -0.179029, -0.845005,
		-0.510363, -0.850965, -0.124051,
		-0.696861, 0.493769, -0.520170,
		37.916584, 33.574501, 38.362469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304039, 32.817146, 38.077717>,  <38.404385, 33.228863, 38.726589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304039, 32.817146, 38.077717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.138859, 33.169224, 37.984135>,  <38.039753, 33.380470, 37.927986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.138859, 33.169224, 37.984135>,  <38.304039, 32.817146, 38.077717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.138859, 33.169224, 37.984135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454829, -0.023247, -0.890275,
		-0.789054, -0.474043, -0.390739,
		-0.412946, 0.880195, -0.233952,
		38.014977, 33.433281, 37.913948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.280552, 32.762539, 37.284214>,  <38.304039, 32.817146, 38.077717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.280552, 32.762539, 37.284214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.222160, 33.147568, 37.375553>,  <38.187126, 33.378586, 37.430355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.222160, 33.147568, 37.375553>,  <38.280552, 32.762539, 37.284214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222160, 33.147568, 37.375553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433137, 0.269707, -0.860029,
		-0.889428, -0.026641, -0.456298,
		-0.145979, 0.962574, 0.228346,
		38.178368, 33.436340, 37.444057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815250, 33.005257, 36.815170>,  <38.280552, 32.762539, 37.284214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815250, 33.005257, 36.815170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.063435, 33.275345, 36.974724>,  <38.212345, 33.437397, 37.070454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.063435, 33.275345, 36.974724>,  <37.815250, 33.005257, 36.815170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.063435, 33.275345, 36.974724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409406, 0.154933, -0.899101,
		-0.668894, 0.721158, -0.180312,
		0.620457, 0.675224, 0.398880,
		38.249573, 33.477913, 37.094387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725220, 33.494762, 36.399628>,  <37.815250, 33.005257, 36.815170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725220, 33.494762, 36.399628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.066238, 33.603683, 36.578075>,  <38.270847, 33.669037, 36.685143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.066238, 33.603683, 36.578075>,  <37.725220, 33.494762, 36.399628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066238, 33.603683, 36.578075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321091, 0.400613, -0.858143,
		-0.412395, 0.874849, 0.254106,
		0.852544, 0.272303, 0.446117,
		38.322002, 33.685375, 36.711910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925613, 34.044659, 36.065102>,  <37.725220, 33.494762, 36.399628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.925613, 34.044659, 36.065102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.263214, 33.942524, 36.253769>,  <38.465775, 33.881241, 36.366970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.263214, 33.942524, 36.253769>,  <37.925613, 34.044659, 36.065102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263214, 33.942524, 36.253769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535091, 0.461008, -0.707919,
		-0.036682, 0.849867, 0.525719,
		0.843998, -0.255340, 0.471667,
		38.516415, 33.865921, 36.395267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.291702, 34.590496, 36.235256>,  <37.925613, 34.044659, 36.065102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.291702, 34.590496, 36.235256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.566006, 34.299427, 36.241215>,  <38.730587, 34.124786, 36.244789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.566006, 34.299427, 36.241215>,  <38.291702, 34.590496, 36.235256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.566006, 34.299427, 36.241215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608997, 0.562473, -0.559238,
		0.398565, 0.392575, 0.828873,
		0.685761, -0.727674, 0.014895,
		38.771732, 34.081123, 36.245682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969063, 34.904972, 36.384899>,  <38.291702, 34.590496, 36.235256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.969063, 34.904972, 36.384899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.011585, 34.545868, 36.213913>,  <39.037098, 34.330406, 36.111320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.011585, 34.545868, 36.213913>,  <38.969063, 34.904972, 36.384899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.011585, 34.545868, 36.213913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571548, 0.406950, -0.712548,
		0.813653, -0.168568, 0.556375,
		0.106304, -0.897762, -0.427461,
		39.043476, 34.276539, 36.085674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626415, 34.960087, 36.289505>,  <38.969063, 34.904972, 36.384899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626415, 34.960087, 36.289505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.518074, 34.662338, 36.045357>,  <39.453068, 34.483688, 35.898869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.518074, 34.662338, 36.045357>,  <39.626415, 34.960087, 36.289505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.518074, 34.662338, 36.045357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745552, 0.238880, -0.622164,
		0.608925, -0.623580, 0.490264,
		-0.270855, -0.744368, -0.610371,
		39.436817, 34.439026, 35.862244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198090, 34.519936, 36.061310>,  <39.626415, 34.960087, 36.289505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.198090, 34.519936, 36.061310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.922287, 34.475159, 35.775078>,  <39.756805, 34.448292, 35.603340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.922287, 34.475159, 35.775078>,  <40.198090, 34.519936, 36.061310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.922287, 34.475159, 35.775078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655216, 0.324639, -0.682130,
		0.308659, -0.939191, -0.150500,
		-0.689508, -0.111936, -0.715576,
		39.715435, 34.441578, 35.560406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.581493, 34.289818, 35.566479>,  <40.198090, 34.519936, 36.061310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.581493, 34.289818, 35.566479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.254032, 34.313854, 35.338020>,  <40.057556, 34.328278, 35.200947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.254032, 34.313854, 35.338020>,  <40.581493, 34.289818, 35.566479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.254032, 34.313854, 35.338020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570128, 0.204634, -0.795663,
		0.069059, -0.976992, -0.201785,
		-0.818648, 0.060096, -0.571142,
		40.008438, 34.331882, 35.166679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.723442, 33.821896, 35.025085>,  <40.581493, 34.289818, 35.566479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.723442, 33.821896, 35.025085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.458687, 34.098694, 34.909813>,  <40.299835, 34.264774, 34.840649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.458687, 34.098694, 34.909813>,  <40.723442, 33.821896, 35.025085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.458687, 34.098694, 34.909813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509393, 0.133173, -0.850167,
		-0.549935, -0.709511, -0.440643,
		-0.661884, 0.691997, -0.288183,
		40.260120, 34.306293, 34.823357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.576344, 33.783253, 34.241669>,  <40.723442, 33.821896, 35.025085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.576344, 33.783253, 34.241669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.510094, 34.165173, 34.340408>,  <40.470345, 34.394325, 34.399651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.510094, 34.165173, 34.340408>,  <40.576344, 33.783253, 34.241669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.510094, 34.165173, 34.340408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410671, 0.294345, -0.862966,
		-0.896615, -0.041552, -0.440857,
		-0.165622, 0.954796, 0.246850,
		40.460407, 34.451611, 34.414463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.323009, 34.182430, 33.696903>,  <40.576344, 33.783253, 34.241669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.323009, 34.182430, 33.696903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.573624, 34.390293, 33.929249>,  <40.723991, 34.515011, 34.068657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.573624, 34.390293, 33.929249>,  <40.323009, 34.182430, 33.696903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.573624, 34.390293, 33.929249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419330, 0.403465, -0.813251,
		-0.656970, 0.753109, 0.034879,
		0.626540, 0.519656, 0.580866,
		40.761585, 34.546188, 34.103508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184410, 34.880680, 33.633755>,  <40.323009, 34.182430, 33.696903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.184410, 34.880680, 33.633755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.564095, 34.787628, 33.718491>,  <40.791904, 34.731796, 33.769333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.564095, 34.787628, 33.718491>,  <40.184410, 34.880680, 33.633755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.564095, 34.787628, 33.718491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310968, 0.591208, -0.744159,
		0.047874, 0.772241, 0.633523,
		0.949214, -0.232631, 0.211839,
		40.848858, 34.717838, 33.782043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.703747, 35.436268, 33.674141>,  <40.184410, 34.880680, 33.633755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.703747, 35.436268, 33.674141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.868183, 35.095814, 33.543556>,  <40.966846, 34.891541, 33.465206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.868183, 35.095814, 33.543556>,  <40.703747, 35.436268, 33.674141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.868183, 35.095814, 33.543556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384220, 0.486533, -0.784640,
		0.826668, 0.197126, 0.527031,
		0.411091, -0.851133, -0.326462,
		40.991512, 34.840473, 33.445618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.327801, 35.365292, 33.900257>,  <40.703747, 35.436268, 33.674141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.327801, 35.365292, 33.900257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.221027, 35.208256, 33.548206>,  <41.156963, 35.114033, 33.336975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.221027, 35.208256, 33.548206>,  <41.327801, 35.365292, 33.900257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.221027, 35.208256, 33.548206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422504, 0.773143, -0.473011,
		0.866163, -0.498117, -0.040502,
		-0.266929, -0.392593, -0.880125,
		41.140949, 35.090477, 33.284168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.926315, 35.190350, 33.571289>,  <41.327801, 35.365292, 33.900257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.926315, 35.190350, 33.571289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.622486, 35.284706, 33.328835>,  <41.440189, 35.341320, 33.183361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.622486, 35.284706, 33.328835>,  <41.926315, 35.190350, 33.571289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.622486, 35.284706, 33.328835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542084, 0.744585, -0.389537,
		0.359434, -0.624460, -0.693439,
		-0.759574, 0.235889, -0.606139,
		41.394615, 35.355473, 33.146992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.207439, 35.214592, 32.856754>,  <41.926315, 35.190350, 33.571289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.207439, 35.214592, 32.856754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.855713, 35.405087, 32.857239>,  <41.644676, 35.519382, 32.857529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.855713, 35.405087, 32.857239>,  <42.207439, 35.214592, 32.856754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.855713, 35.405087, 32.857239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363313, 0.672460, -0.644826,
		-0.307899, -0.566569, -0.764328,
		-0.879319, 0.476232, 0.001208,
		41.591919, 35.547955, 32.857601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.820164, 35.557011, 33.098022>,  <42.207439, 35.214592, 32.856754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.820164, 35.557011, 33.098022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.180443, 35.582260, 33.269958>,  <43.396610, 35.597412, 33.373119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.180443, 35.582260, 33.269958>,  <42.820164, 35.557011, 33.098022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.180443, 35.582260, 33.269958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374685, -0.387944, 0.842087,
		0.219916, -0.919518, -0.325765,
		0.900694, 0.063129, 0.429845,
		43.450649, 35.601200, 33.398911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.935917, 34.912868, 33.543217>,  <42.820164, 35.557011, 33.098022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.935917, 34.912868, 33.543217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.177685, 35.191723, 33.697449>,  <43.322746, 35.359035, 33.789989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.177685, 35.191723, 33.697449>,  <42.935917, 34.912868, 33.543217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.177685, 35.191723, 33.697449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287190, -0.260786, 0.921690,
		0.743097, -0.667827, 0.042585,
		0.604424, 0.697135, 0.385583,
		43.359013, 35.400864, 33.813122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.081364, 34.624706, 34.093933>,  <42.935917, 34.912868, 33.543217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.081364, 34.624706, 34.093933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.187256, 35.005409, 34.156006>,  <43.250790, 35.233829, 34.193249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.187256, 35.005409, 34.156006>,  <43.081364, 34.624706, 34.093933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.187256, 35.005409, 34.156006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483857, -0.008104, 0.875109,
		0.834146, -0.306755, 0.458368,
		0.264729, 0.951754, 0.155186,
		43.266674, 35.290936, 34.202560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.031948, 34.601116, 34.834492>,  <43.081364, 34.624706, 34.093933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.031948, 34.601116, 34.834492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.055832, 34.990826, 34.747559>,  <43.070164, 35.224651, 34.695400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.055832, 34.990826, 34.747559>,  <43.031948, 34.601116, 34.834492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.055832, 34.990826, 34.747559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467387, 0.219666, 0.856327,
		0.882034, 0.050444, 0.468478,
		0.059713, 0.974270, -0.217330,
		43.073746, 35.283108, 34.682358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.171185, 34.892368, 35.554195>,  <43.031948, 34.601116, 34.834492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.171185, 34.892368, 35.554195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.029812, 35.194870, 35.333954>,  <42.944988, 35.376369, 35.201809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.029812, 35.194870, 35.333954>,  <43.171185, 34.892368, 35.554195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.029812, 35.194870, 35.333954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455058, 0.375267, 0.807525,
		0.817316, 0.535967, 0.211505,
		-0.353436, 0.756250, -0.550608,
		42.923782, 35.421745, 35.168770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.273792, 35.557224, 35.865356>,  <43.171185, 34.892368, 35.554195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.273792, 35.557224, 35.865356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.971970, 35.630634, 35.613338>,  <42.790874, 35.674683, 35.462128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.971970, 35.630634, 35.613338>,  <43.273792, 35.557224, 35.865356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.971970, 35.630634, 35.613338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494686, 0.471777, 0.729871,
		0.431193, 0.862406, -0.265195,
		-0.754558, 0.183528, -0.630047,
		42.745602, 35.685692, 35.424324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.021469, 36.227005, 36.001137>,  <43.273792, 35.557224, 35.865356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.021469, 36.227005, 36.001137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.704094, 36.071270, 35.813999>,  <42.513668, 35.977829, 35.701717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.704094, 36.071270, 35.813999>,  <43.021469, 36.227005, 36.001137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.704094, 36.071270, 35.813999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603635, 0.404817, 0.686839,
		-0.078018, 0.827371, -0.556211,
		-0.793434, -0.389334, -0.467847,
		42.466064, 35.954472, 35.673645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.488911, 36.788910, 35.901142>,  <43.021469, 36.227005, 36.001137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.488911, 36.788910, 35.901142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.292828, 36.440273, 35.902775>,  <42.175179, 36.231091, 35.903755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.292828, 36.440273, 35.902775>,  <42.488911, 36.788910, 35.901142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.292828, 36.440273, 35.902775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568473, 0.323264, 0.756531,
		-0.660707, 0.368541, -0.653945,
		-0.490209, -0.871596, 0.004077,
		42.145763, 36.178795, 35.903999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.839539, 36.971992, 35.790134>,  <42.488911, 36.788910, 35.901142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.839539, 36.971992, 35.790134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.787422, 36.604706, 35.939747>,  <41.756153, 36.384335, 36.029514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.787422, 36.604706, 35.939747>,  <41.839539, 36.971992, 35.790134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.787422, 36.604706, 35.939747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708102, 0.350235, 0.613129,
		-0.693984, -0.184965, -0.695826,
		-0.130295, -0.918218, 0.374032,
		41.748333, 36.329239, 36.051956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.075741, 36.987614, 36.044594>,  <41.839539, 36.971992, 35.790134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.075741, 36.987614, 36.044594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.206684, 36.652794, 36.219948>,  <41.285252, 36.451900, 36.325161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.206684, 36.652794, 36.219948>,  <41.075741, 36.987614, 36.044594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.206684, 36.652794, 36.219948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536740, 0.217107, 0.815337,
		-0.777655, -0.502208, -0.378206,
		0.327358, -0.837050, 0.438389,
		41.304890, 36.401680, 36.351463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.518810, 36.540924, 36.319515>,  <41.075741, 36.987614, 36.044594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.518810, 36.540924, 36.319515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.831043, 36.406502, 36.530327>,  <41.018383, 36.325848, 36.656815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.831043, 36.406502, 36.530327>,  <40.518810, 36.540924, 36.319515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.831043, 36.406502, 36.530327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473756, 0.231929, 0.849567,
		-0.407736, -0.912839, 0.021831,
		0.780581, -0.336057, 0.527029,
		41.065216, 36.305683, 36.688435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.126854, 36.231117, 36.850796>,  <40.518810, 36.540924, 36.319515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.126854, 36.231117, 36.850796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.504677, 36.309998, 36.955803>,  <40.731373, 36.357327, 37.018806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.504677, 36.309998, 36.955803>,  <40.126854, 36.231117, 36.850796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.504677, 36.309998, 36.955803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296586, 0.169431, 0.939856,
		0.140848, -0.965614, 0.218521,
		0.944563, 0.197187, 0.262523,
		40.788044, 36.369156, 37.034561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.129757, 35.902729, 37.546135>,  <40.126854, 36.231117, 36.850796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.129757, 35.902729, 37.546135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.413334, 36.176479, 37.477985>,  <40.583481, 36.340729, 37.437096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.413334, 36.176479, 37.477985>,  <40.129757, 35.902729, 37.546135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.413334, 36.176479, 37.477985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294128, 0.506473, 0.810539,
		0.641006, -0.524513, 0.560355,
		0.708943, 0.684376, -0.170378,
		40.626019, 36.381790, 37.426872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.468582, 35.907692, 38.228664>,  <40.129757, 35.902729, 37.546135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.468582, 35.907692, 38.228664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.563248, 36.256447, 38.057171>,  <40.620049, 36.465698, 37.954277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.563248, 36.256447, 38.057171>,  <40.468582, 35.907692, 38.228664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.563248, 36.256447, 38.057171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421641, 0.489714, 0.763151,
		0.875334, 0.000161, 0.483518,
		0.236663, 0.871883, -0.428731,
		40.634247, 36.518013, 37.928551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.854099, 36.384323, 38.752880>,  <40.468582, 35.907692, 38.228664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.854099, 36.384323, 38.752880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.685505, 36.626717, 38.483025>,  <40.584347, 36.772152, 38.321114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.685505, 36.626717, 38.483025>,  <40.854099, 36.384323, 38.752880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.685505, 36.626717, 38.483025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297246, 0.610522, 0.734104,
		0.856734, 0.509948, -0.077202,
		-0.421489, 0.605984, -0.674634,
		40.559059, 36.808510, 38.280636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.068317, 37.022602, 38.920208>,  <40.854099, 36.384323, 38.752880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.068317, 37.022602, 38.920208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.741859, 37.089855, 38.699066>,  <40.545986, 37.130207, 38.566383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.741859, 37.089855, 38.699066>,  <41.068317, 37.022602, 38.920208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.741859, 37.089855, 38.699066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371750, 0.579699, 0.725087,
		0.442394, 0.797297, -0.410615,
		-0.816143, 0.168128, -0.552850,
		40.497017, 37.140293, 38.533211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.019089, 37.748371, 38.849403>,  <41.068317, 37.022602, 38.920208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.019089, 37.748371, 38.849403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.652668, 37.618298, 38.755501>,  <40.432816, 37.540253, 38.699158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.652668, 37.618298, 38.755501>,  <41.019089, 37.748371, 38.849403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.652668, 37.618298, 38.755501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399956, 0.697111, 0.595039,
		-0.029842, 0.638978, -0.768646,
		-0.916048, -0.325182, -0.234760,
		40.377853, 37.520744, 38.685074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.608177, 38.330456, 38.554302>,  <41.019089, 37.748371, 38.849403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.608177, 38.330456, 38.554302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.311417, 38.083664, 38.659309>,  <40.133362, 37.935589, 38.722313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.311417, 38.083664, 38.659309>,  <40.608177, 38.330456, 38.554302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.311417, 38.083664, 38.659309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509277, 0.773187, 0.377914,
		-0.436142, 0.146680, -0.887843,
		-0.741901, -0.616982, 0.262519,
		40.088848, 37.898571, 38.738064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942284, 38.699493, 38.590912>,  <40.608177, 38.330456, 38.554302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.942284, 38.699493, 38.590912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.823822, 38.397057, 38.824360>,  <39.752747, 38.215595, 38.964428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.823822, 38.397057, 38.824360>,  <39.942284, 38.699493, 38.590912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.823822, 38.397057, 38.824360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491561, 0.644550, 0.585596,
		-0.818939, -0.113460, -0.562553,
		-0.296152, -0.756096, 0.583620,
		39.734978, 38.170227, 38.999447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252831, 38.861465, 38.802582>,  <39.942284, 38.699493, 38.590912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252831, 38.861465, 38.802582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.374603, 38.576515, 39.055515>,  <39.447666, 38.405544, 39.207275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.374603, 38.576515, 39.055515>,  <39.252831, 38.861465, 38.802582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.374603, 38.576515, 39.055515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506560, 0.441114, 0.740821,
		-0.806673, -0.545842, -0.226572,
		0.304427, -0.712373, 0.632336,
		39.465931, 38.362804, 39.245216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677692, 38.615005, 39.147640>,  <39.252831, 38.861465, 38.802582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.677692, 38.615005, 39.147640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.990643, 38.542732, 39.386051>,  <39.178413, 38.499367, 39.529099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.990643, 38.542732, 39.386051>,  <38.677692, 38.615005, 39.147640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.990643, 38.542732, 39.386051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354310, 0.657922, 0.664532,
		-0.512209, -0.731090, 0.450722,
		0.782372, -0.180684, 0.596026,
		39.225353, 38.488525, 39.564857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.037415, 38.431057, 39.723270>,  <38.677692, 38.615005, 39.147640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.037415, 38.431057, 39.723270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.313103, 38.192341, 39.887619>,  <38.478516, 38.049110, 39.986229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.313103, 38.192341, 39.887619>,  <38.037415, 38.431057, 39.723270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.313103, 38.192341, 39.887619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722131, 0.612114, -0.322247,
		-0.059183, 0.518800, 0.852844,
		0.689220, -0.596794, 0.410869,
		38.519867, 38.013302, 40.010880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454350, 38.804127, 40.193653>,  <38.037415, 38.431057, 39.723270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454350, 38.804127, 40.193653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.667473, 38.492832, 40.060711>,  <38.795345, 38.306053, 39.980946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.667473, 38.492832, 40.060711>,  <38.454350, 38.804127, 40.193653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667473, 38.492832, 40.060711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746125, 0.617331, -0.249398,
		0.399264, -0.115098, 0.909583,
		0.532809, -0.778238, -0.332356,
		38.827316, 38.259361, 39.961002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.350143, 39.321747, 40.617027>,  <38.454350, 38.804127, 40.193653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.350143, 39.321747, 40.617027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.444901, 39.529259, 40.945599>,  <38.501755, 39.653767, 41.142742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.444901, 39.529259, 40.945599>,  <38.350143, 39.321747, 40.617027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.444901, 39.529259, 40.945599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962039, -0.243182, -0.123864,
		0.135500, 0.819592, -0.556694,
		0.236896, 0.518778, 0.821431,
		38.515968, 39.684891, 41.192028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041592, 39.233498, 40.214005>,  <38.350143, 39.321747, 40.617027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041592, 39.233498, 40.214005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.416828, 39.317429, 40.103760>,  <39.641968, 39.367786, 40.037613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.416828, 39.317429, 40.103760>,  <39.041592, 39.233498, 40.214005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.416828, 39.317429, 40.103760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144449, 0.960139, 0.239308,
		0.314842, -0.184680, 0.931004,
		0.938088, 0.209826, -0.275615,
		39.698254, 39.380375, 40.021076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414860, 39.555214, 40.732712>,  <39.041592, 39.233498, 40.214005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.414860, 39.555214, 40.732712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.545006, 39.708927, 40.387119>,  <39.623093, 39.801155, 40.179764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.545006, 39.708927, 40.387119>,  <39.414860, 39.555214, 40.732712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.545006, 39.708927, 40.387119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133146, 0.923212, 0.360489,
		0.936167, -0.002256, 0.351547,
		0.325366, 0.384285, -0.863980,
		39.642616, 39.824211, 40.127926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376980, 40.278618, 40.814102>,  <39.414860, 39.555214, 40.732712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.376980, 40.278618, 40.814102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.054340, 40.242378, 41.047749>,  <38.860756, 40.220634, 41.187939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.054340, 40.242378, 41.047749>,  <39.376980, 40.278618, 40.814102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.054340, 40.242378, 41.047749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578986, -0.077982, -0.811600,
		0.119082, -0.992829, 0.010444,
		-0.806595, -0.090601, 0.584120,
		38.812363, 40.215199, 41.222984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.828285, 40.381313, 41.338055>,  <39.376980, 40.278618, 40.814102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.828285, 40.381313, 41.338055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.077095, 40.606594, 41.120472>,  <40.226379, 40.741764, 40.989922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.077095, 40.606594, 41.120472>,  <39.828285, 40.381313, 41.338055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.077095, 40.606594, 41.120472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506173, 0.240796, 0.828134,
		0.597389, -0.790457, -0.135296,
		0.622026, 0.563201, -0.543956,
		40.263702, 40.775555, 40.957287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.239716, 39.952980, 40.870255>,  <39.828285, 40.381313, 41.338055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.239716, 39.952980, 40.870255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.314991, 39.734951, 41.197052>,  <40.360157, 39.604134, 41.393131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.314991, 39.734951, 41.197052>,  <40.239716, 39.952980, 40.870255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.314991, 39.734951, 41.197052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721906, -0.487250, -0.491365,
		0.665911, 0.682261, 0.301798,
		0.188189, -0.545075, 0.816993,
		40.371449, 39.571430, 41.442150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.978592, 39.972591, 41.196129>,  <40.239716, 39.952980, 40.870255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.978592, 39.972591, 41.196129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.790844, 39.624912, 41.258339>,  <40.678196, 39.416306, 41.295666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.790844, 39.624912, 41.258339>,  <40.978592, 39.972591, 41.196129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.790844, 39.624912, 41.258339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708655, -0.475881, -0.520909,
		0.526785, -0.134283, 0.839324,
		-0.469368, -0.869198, 0.155527,
		40.650032, 39.364151, 41.304996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.526386, 39.500908, 41.435062>,  <40.978592, 39.972591, 41.196129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.526386, 39.500908, 41.435062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.220619, 39.292358, 41.283363>,  <41.037159, 39.167229, 41.192345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.220619, 39.292358, 41.283363>,  <41.526386, 39.500908, 41.435062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.220619, 39.292358, 41.283363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601959, -0.366512, -0.709447,
		0.230888, -0.770609, 0.594015,
		-0.764419, -0.521375, -0.379252,
		40.991295, 39.135944, 41.169586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.696465, 38.821377, 41.392330>,  <41.526386, 39.500908, 41.435062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.696465, 38.821377, 41.392330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.426693, 38.956554, 41.129745>,  <41.264832, 39.037663, 40.972195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.426693, 38.956554, 41.129745>,  <41.696465, 38.821377, 41.392330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.426693, 38.956554, 41.129745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560814, -0.343839, -0.753168,
		-0.480247, -0.876109, 0.042370,
		-0.674427, 0.337945, -0.656462,
		41.224365, 39.057938, 40.932808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.677311, 38.321636, 41.013645>,  <41.696465, 38.821377, 41.392330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.677311, 38.321636, 41.013645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.542339, 38.627651, 40.794243>,  <41.461357, 38.811260, 40.662601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.542339, 38.627651, 40.794243>,  <41.677311, 38.321636, 41.013645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.542339, 38.627651, 40.794243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473211, -0.365857, -0.801386,
		-0.813765, -0.529972, -0.238573,
		-0.337429, 0.765035, -0.548510,
		41.441109, 38.857162, 40.629688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.380527, 38.118126, 40.468597>,  <41.677311, 38.321636, 41.013645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.380527, 38.118126, 40.468597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.474987, 38.485123, 40.340572>,  <41.531662, 38.705322, 40.263760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.474987, 38.485123, 40.340572>,  <41.380527, 38.118126, 40.468597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.474987, 38.485123, 40.340572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346892, -0.387271, -0.854217,
		-0.907689, 0.090696, -0.409725,
		0.236148, 0.917494, -0.320060,
		41.545830, 38.760372, 40.244553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.315666, 37.973320, 39.819263>,  <41.380527, 38.118126, 40.468597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.315666, 37.973320, 39.819263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.493286, 38.331455, 39.833103>,  <41.599857, 38.546337, 39.841408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.493286, 38.331455, 39.833103>,  <41.315666, 37.973320, 39.819263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.493286, 38.331455, 39.833103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625104, -0.281900, -0.727858,
		-0.641922, 0.344834, -0.684855,
		0.444050, 0.895334, 0.034599,
		41.626503, 38.600056, 39.843483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.278183, 38.371178, 39.114418>,  <41.315666, 37.973320, 39.819263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.278183, 38.371178, 39.114418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.588577, 38.492382, 39.335697>,  <41.774815, 38.565105, 39.468464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.588577, 38.492382, 39.335697>,  <41.278183, 38.371178, 39.114418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.588577, 38.492382, 39.335697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621109, -0.214324, -0.753849,
		-0.109862, 0.928573, -0.354516,
		0.775986, 0.303012, 0.553199,
		41.821373, 38.583286, 39.501656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.704071, 38.849861, 38.696510>,  <41.278183, 38.371178, 39.114418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.704071, 38.849861, 38.696510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.949158, 38.711361, 38.980675>,  <42.096210, 38.628262, 39.151173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.949158, 38.711361, 38.980675>,  <41.704071, 38.849861, 38.696510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.949158, 38.711361, 38.980675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651544, -0.287447, -0.702043,
		0.447290, 0.893019, 0.049475,
		0.612717, -0.346253, 0.710413,
		42.132973, 38.607487, 39.193798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.407768, 38.798363, 38.362396>,  <41.704071, 38.849861, 38.696510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.407768, 38.798363, 38.362396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.486568, 38.596378, 38.698540>,  <42.533848, 38.475189, 38.900227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.486568, 38.596378, 38.698540>,  <42.407768, 38.798363, 38.362396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.486568, 38.596378, 38.698540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624039, -0.596512, -0.504726,
		0.756152, 0.623848, 0.197604,
		0.196999, -0.504962, 0.840360,
		42.545670, 38.444889, 38.950649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.021729, 38.892387, 38.437542>,  <42.407768, 38.798363, 38.362396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.021729, 38.892387, 38.437542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.922352, 38.566193, 38.646637>,  <42.862724, 38.370476, 38.772095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.922352, 38.566193, 38.646637>,  <43.021729, 38.892387, 38.437542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.922352, 38.566193, 38.646637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559413, -0.561356, -0.609866,
		0.790781, 0.140909, 0.595660,
		-0.248442, -0.815490, 0.522736,
		42.847820, 38.321545, 38.803459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.662804, 38.520554, 38.635307>,  <43.021729, 38.892387, 38.437542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.662804, 38.520554, 38.635307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.348000, 38.275566, 38.605663>,  <43.159119, 38.128574, 38.587875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.348000, 38.275566, 38.605663>,  <43.662804, 38.520554, 38.635307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.348000, 38.275566, 38.605663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552755, -0.646676, -0.525617,
		0.274000, -0.454630, 0.847487,
		-0.787011, -0.612472, -0.074110,
		43.111897, 38.091824, 38.583431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.901001, 37.849438, 38.890182>,  <43.662804, 38.520554, 38.635307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.901001, 37.849438, 38.890182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.588589, 37.759850, 38.657005>,  <43.401142, 37.706097, 38.517101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.588589, 37.759850, 38.657005>,  <43.901001, 37.849438, 38.890182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.588589, 37.759850, 38.657005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533696, -0.724110, -0.436845,
		-0.324271, -0.652304, 0.685089,
		-0.781035, -0.223974, -0.582941,
		43.354279, 37.692657, 38.482124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.015282, 37.131245, 38.801800>,  <43.901001, 37.849438, 38.890182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.015282, 37.131245, 38.801800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.745487, 37.200974, 38.514835>,  <43.583611, 37.242809, 38.342655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.745487, 37.200974, 38.514835>,  <44.015282, 37.131245, 38.801800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.745487, 37.200974, 38.514835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423636, -0.704449, -0.569459,
		-0.604646, -0.688015, 0.401296,
		-0.674489, 0.174318, -0.717410,
		43.543140, 37.253269, 38.299610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.937840, 36.503853, 38.428638>,  <44.015282, 37.131245, 38.801800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.937840, 36.503853, 38.428638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.768684, 36.761276, 38.173454>,  <43.667191, 36.915730, 38.020344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.768684, 36.761276, 38.173454>,  <43.937840, 36.503853, 38.428638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.768684, 36.761276, 38.173454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373039, -0.517959, -0.769780,
		-0.825838, -0.563515, -0.021035,
		-0.422888, 0.643560, -0.637963,
		43.641819, 36.954346, 37.982067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.653755, 36.107430, 37.974823>,  <43.937840, 36.503853, 38.428638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.653755, 36.107430, 37.974823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.700336, 36.454983, 37.782372>,  <43.728287, 36.663513, 37.666901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.700336, 36.454983, 37.782372>,  <43.653755, 36.107430, 37.974823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.700336, 36.454983, 37.782372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626222, -0.440234, -0.643460,
		-0.770898, -0.226358, -0.595380,
		0.116454, 0.868882, -0.481126,
		43.735271, 36.715649, 37.638035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.605564, 36.001232, 37.189144>,  <43.653755, 36.107430, 37.974823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.605564, 36.001232, 37.189144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.790379, 36.353729, 37.229015>,  <43.901268, 36.565228, 37.252937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.790379, 36.353729, 37.229015>,  <43.605564, 36.001232, 37.189144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.790379, 36.353729, 37.229015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642601, -0.255191, -0.722455,
		-0.611221, 0.397854, -0.684194,
		0.462032, 0.881244, 0.099683,
		43.928989, 36.618103, 37.258919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.508167, 36.339752, 36.607357>,  <43.605564, 36.001232, 37.189144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.508167, 36.339752, 36.607357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.835735, 36.518383, 36.751537>,  <44.032276, 36.625561, 36.838047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.835735, 36.518383, 36.751537>,  <43.508167, 36.339752, 36.607357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.835735, 36.518383, 36.751537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525803, -0.332143, -0.783078,
		-0.229986, 0.830810, -0.506814,
		0.818925, 0.446581, 0.360454,
		44.081413, 36.652359, 36.859673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.746078, 36.729191, 36.004467>,  <43.508167, 36.339752, 36.607357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.746078, 36.729191, 36.004467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.052433, 36.696133, 36.259525>,  <44.236244, 36.676296, 36.412560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.052433, 36.696133, 36.259525>,  <43.746078, 36.729191, 36.004467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.052433, 36.696133, 36.259525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597443, -0.275074, -0.753257,
		0.237652, 0.957864, -0.161299,
		0.765887, -0.082647, 0.637641,
		44.282200, 36.671337, 36.450817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.325867, 37.188702, 35.753498>,  <43.746078, 36.729191, 36.004467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.325867, 37.188702, 35.753498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.472248, 36.896912, 35.984650>,  <44.560078, 36.721836, 36.123341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.472248, 36.896912, 35.984650>,  <44.325867, 37.188702, 35.753498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.472248, 36.896912, 35.984650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614619, -0.276821, -0.738656,
		0.698802, 0.625488, 0.347047,
		0.365950, -0.729476, 0.577880,
		44.582035, 36.678070, 36.158012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.122540, 37.361622, 35.754894>,  <44.325867, 37.188702, 35.753498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.122540, 37.361622, 35.754894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.099434, 36.977379, 35.863636>,  <45.085571, 36.746834, 35.928879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.099434, 36.977379, 35.863636>,  <45.122540, 37.361622, 35.754894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.099434, 36.977379, 35.863636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784977, -0.211947, -0.582142,
		0.616826, 0.179770, 0.766295,
		-0.057763, -0.960605, 0.271850,
		45.082104, 36.689198, 35.945190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.829887, 37.093208, 35.872715>,  <45.122540, 37.361622, 35.754894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.829887, 37.093208, 35.872715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.645191, 36.740284, 35.836208>,  <45.534374, 36.528530, 35.814304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.645191, 36.740284, 35.836208>,  <45.829887, 37.093208, 35.872715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.645191, 36.740284, 35.836208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705379, -0.302857, -0.640873,
		0.537807, -0.360293, 0.762203,
		-0.461741, -0.882307, -0.091265,
		45.506668, 36.475594, 35.808830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.259636, 36.590057, 36.078613>,  <45.829887, 37.093208, 35.872715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.259636, 36.590057, 36.078613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.009548, 36.395336, 35.834606>,  <45.859497, 36.278503, 35.688202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.009548, 36.395336, 35.834606>,  <46.259636, 36.590057, 36.078613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.009548, 36.395336, 35.834606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774259, -0.288619, -0.563225,
		0.098120, -0.824450, 0.557365,
		-0.625217, -0.486808, -0.610018,
		45.821983, 36.249294, 35.651600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.566681, 35.972458, 35.997856>,  <46.259636, 36.590057, 36.078613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.566681, 35.972458, 35.997856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.320080, 35.929371, 35.685879>,  <46.172119, 35.903519, 35.498692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.320080, 35.929371, 35.685879>,  <46.566681, 35.972458, 35.997856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.320080, 35.929371, 35.685879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720016, -0.477959, -0.503123,
		-0.318587, -0.871753, 0.372223,
		-0.616506, -0.107718, -0.779947,
		46.135128, 35.897057, 35.451893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.510368, 35.179642, 35.744915>,  <46.566681, 35.972458, 35.997856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.510368, 35.179642, 35.744915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.440556, 35.433491, 35.443775>,  <46.398666, 35.585800, 35.263092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.440556, 35.433491, 35.443775>,  <46.510368, 35.179642, 35.744915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.440556, 35.433491, 35.443775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820344, -0.329157, -0.467646,
		-0.544586, -0.699219, -0.463161,
		-0.174534, 0.634625, -0.752854,
		46.388195, 35.623878, 35.217918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.582573, 34.768559, 35.205914>,  <46.510368, 35.179642, 35.744915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.582573, 34.768559, 35.205914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.665878, 35.154194, 35.139992>,  <46.715862, 35.385574, 35.100437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.665878, 35.154194, 35.139992>,  <46.582573, 34.768559, 35.205914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.665878, 35.154194, 35.139992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836734, -0.262874, -0.480388,
		-0.506460, -0.037850, -0.861433,
		0.208266, 0.964087, -0.164806,
		46.728359, 35.443420, 35.090549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.448479, 34.984329, 34.522568>,  <46.582573, 34.768559, 35.205914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.448479, 34.984329, 34.522568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.762192, 35.142570, 34.713734>,  <46.950420, 35.237514, 34.828434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.762192, 35.142570, 34.713734>,  <46.448479, 34.984329, 34.522568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.762192, 35.142570, 34.713734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601205, -0.294454, -0.742866,
		-0.153160, 0.869938, -0.468775,
		0.784280, 0.395607, 0.477912,
		46.997475, 35.261253, 34.857109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.232578, 34.857681, 34.610825>,  <46.448479, 34.984329, 34.522568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.232578, 34.857681, 34.610825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.531723, 34.948345, 34.860409>,  <47.711208, 35.002743, 35.010159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.531723, 34.948345, 34.860409>,  <47.232578, 34.857681, 34.610825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.531723, 34.948345, 34.860409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065711, 0.960568, -0.270170,
		-0.660594, 0.161048, 0.733266,
		0.747862, 0.226657, 0.623963,
		47.756081, 35.016342, 35.047596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.362095, 36.812695, 42.440804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.014641, 36.618637, 42.400589>,  <32.806168, 36.502201, 42.376461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.014641, 36.618637, 42.400589>,  <33.362095, 36.812695, 42.440804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014641, 36.618637, 42.400589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054662, 0.107844, -0.992664,
		0.492431, -0.867756, -0.067158,
		-0.868633, -0.485148, -0.100539,
		32.754051, 36.473091, 42.370426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515236, 36.237347, 41.846916>,  <33.362095, 36.812695, 42.440804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515236, 36.237347, 41.846916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.121910, 36.303631, 41.876942>,  <32.885914, 36.343403, 41.894955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.121910, 36.303631, 41.876942>,  <33.515236, 36.237347, 41.846916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.121910, 36.303631, 41.876942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052825, 0.134738, -0.989472,
		-0.174084, -0.976926, -0.123736,
		-0.983313, 0.165715, 0.075062,
		32.826916, 36.353344, 41.899460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149940, 35.786610, 41.270580>,  <33.515236, 36.237347, 41.846916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149940, 35.786610, 41.270580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.903412, 36.069542, 41.409046>,  <32.755493, 36.239300, 41.492126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.903412, 36.069542, 41.409046>,  <33.149940, 35.786610, 41.270580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.903412, 36.069542, 41.409046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110393, 0.357630, -0.927316,
		-0.779716, -0.609742, -0.142332,
		-0.616326, 0.707330, 0.346160,
		32.718513, 36.281742, 41.512894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599186, 35.674839, 41.068604>,  <33.149940, 35.786610, 41.270580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.599186, 35.674839, 41.068604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.534561, 36.062977, 41.140522>,  <32.495785, 36.295860, 41.183674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.534561, 36.062977, 41.140522>,  <32.599186, 35.674839, 41.068604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.534561, 36.062977, 41.140522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127840, 0.160074, -0.978792,
		-0.978547, -0.181121, 0.098187,
		-0.161563, 0.970346, 0.179794,
		32.486092, 36.354080, 41.194462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.002880, 35.950897, 40.647587>,  <32.599186, 35.674839, 41.068604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.002880, 35.950897, 40.647587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.220196, 36.277363, 40.726299>,  <32.350586, 36.473240, 40.773525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.220196, 36.277363, 40.726299>,  <32.002880, 35.950897, 40.647587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.220196, 36.277363, 40.726299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139641, 0.318969, -0.937422,
		-0.827854, 0.481808, 0.287261,
		0.543285, 0.816161, 0.196780,
		32.383183, 36.522213, 40.785332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.697874, 36.405556, 40.272835>,  <32.002880, 35.950897, 40.647587>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.697874, 36.405556, 40.272835> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.056564, 36.566250, 40.347118>,  <32.271778, 36.662666, 40.391689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.056564, 36.566250, 40.347118>,  <31.697874, 36.405556, 40.272835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.056564, 36.566250, 40.347118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124999, 0.172626, -0.977024,
		-0.424564, 0.899337, 0.104582,
		0.896728, 0.401736, 0.185707,
		32.325584, 36.686771, 40.402832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799498, 36.741283, 39.682751>,  <31.697874, 36.405556, 40.272835>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.799498, 36.741283, 39.682751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.169979, 36.719105, 39.831921>,  <32.392269, 36.705799, 39.921421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.169979, 36.719105, 39.831921>,  <31.799498, 36.741283, 39.682751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.169979, 36.719105, 39.831921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373966, 0.009449, -0.927394,
		0.047894, 0.998417, 0.029485,
		0.926205, -0.055443, 0.372922,
		32.447842, 36.702473, 39.943798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.282604, 37.168488, 39.288570>,  <31.799498, 36.741283, 39.682751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.282604, 37.168488, 39.288570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.541611, 36.922974, 39.469231>,  <32.697014, 36.775665, 39.577625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.541611, 36.922974, 39.469231>,  <32.282604, 37.168488, 39.288570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.541611, 36.922974, 39.469231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567311, -0.007453, -0.823470,
		0.508799, 0.789439, 0.343381,
		0.647519, -0.613784, 0.451650,
		32.735867, 36.738838, 39.604725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.018272, 37.437622, 39.167854>,  <32.282604, 37.168488, 39.288570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.018272, 37.437622, 39.167854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.064194, 37.058746, 39.287621>,  <33.091747, 36.831421, 39.359482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.064194, 37.058746, 39.287621>,  <33.018272, 37.437622, 39.167854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.064194, 37.058746, 39.287621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772834, -0.104207, -0.625994,
		0.624137, 0.303267, 0.720057,
		0.114808, -0.947191, 0.299414,
		33.098637, 36.774590, 39.377445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724930, 37.373783, 39.401192>,  <33.018272, 37.437622, 39.167854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724930, 37.373783, 39.401192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.586643, 37.017082, 39.284397>,  <33.503674, 36.803062, 39.214321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.586643, 37.017082, 39.284397>,  <33.724930, 37.373783, 39.401192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586643, 37.017082, 39.284397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778135, -0.098552, -0.620318,
		0.524395, -0.441658, 0.727976,
		-0.345712, -0.891754, -0.291990,
		33.482929, 36.749557, 39.196800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.330112, 36.974300, 39.369267>,  <33.724930, 37.373783, 39.401192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.330112, 36.974300, 39.369267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.050873, 36.784256, 39.155003>,  <33.883331, 36.670227, 39.026443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.050873, 36.784256, 39.155003>,  <34.330112, 36.974300, 39.369267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.050873, 36.784256, 39.155003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674743, -0.186238, -0.714169,
		0.239553, -0.859988, 0.450593,
		-0.698094, -0.475116, -0.535657,
		33.841446, 36.641720, 38.994305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714314, 36.407253, 39.050240>,  <34.330112, 36.974300, 39.369267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714314, 36.407253, 39.050240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.382893, 36.384457, 38.827438>,  <34.184040, 36.370777, 38.693756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.382893, 36.384457, 38.827438>,  <34.714314, 36.407253, 39.050240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382893, 36.384457, 38.827438> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550920, -0.260549, -0.792844,
		-0.099942, -0.963777, 0.247276,
		-0.828552, -0.056992, -0.557004,
		34.134327, 36.367359, 38.660336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.889900, 35.898994, 38.648365>,  <34.714314, 36.407253, 39.050240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.889900, 35.898994, 38.648365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.597965, 36.089405, 38.452103>,  <34.422806, 36.203651, 38.334343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.597965, 36.089405, 38.452103>,  <34.889900, 35.898994, 38.648365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.597965, 36.089405, 38.452103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507804, -0.103024, -0.855290,
		-0.457687, -0.873378, -0.166536,
		-0.729834, 0.476022, -0.490658,
		34.379017, 36.232212, 38.304905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835606, 35.523941, 38.064667>,  <34.889900, 35.898994, 38.648365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835606, 35.523941, 38.064667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.644272, 35.859829, 37.961853>,  <34.529472, 36.061363, 37.900166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.644272, 35.859829, 37.961853>,  <34.835606, 35.523941, 38.064667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644272, 35.859829, 37.961853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385312, -0.062330, -0.920679,
		-0.789133, -0.539432, -0.293739,
		-0.478334, 0.839719, -0.257037,
		34.500771, 36.111744, 37.884743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571350, 35.391041, 37.318760>,  <34.835606, 35.523941, 38.064667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571350, 35.391041, 37.318760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.601017, 35.777660, 37.416962>,  <34.618816, 36.009632, 37.475883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.601017, 35.777660, 37.416962>,  <34.571350, 35.391041, 37.318760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.601017, 35.777660, 37.416962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511789, 0.174399, -0.841224,
		-0.855904, 0.188040, -0.481736,
		0.074169, 0.966554, 0.245506,
		34.623268, 36.067627, 37.490612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.279362, 35.731346, 36.720085>,  <34.571350, 35.391041, 37.318760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.279362, 35.731346, 36.720085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.514572, 35.996662, 36.905243>,  <34.655697, 36.155853, 37.016338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.514572, 35.996662, 36.905243>,  <34.279362, 35.731346, 36.720085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514572, 35.996662, 36.905243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364157, 0.293915, -0.883744,
		-0.722231, 0.688231, -0.068713,
		0.588024, 0.663289, 0.462898,
		34.690979, 36.195648, 37.044113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.217556, 36.376392, 36.355064>,  <34.279362, 35.731346, 36.720085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.217556, 36.376392, 36.355064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.560612, 36.368671, 36.560619>,  <34.766445, 36.364040, 36.683952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.560612, 36.368671, 36.560619>,  <34.217556, 36.376392, 36.355064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560612, 36.368671, 36.560619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510404, 0.153906, -0.846050,
		-0.062761, 0.987897, 0.141847,
		0.857642, -0.019301, 0.513885,
		34.817905, 36.362881, 36.714787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557091, 36.818993, 36.007793>,  <34.217556, 36.376392, 36.355064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557091, 36.818993, 36.007793> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.843533, 36.618874, 36.202480>,  <35.015396, 36.498802, 36.319294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.843533, 36.618874, 36.202480>,  <34.557091, 36.818993, 36.007793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843533, 36.618874, 36.202480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594696, 0.072254, -0.800697,
		0.365422, 0.862832, 0.349268,
		0.716103, -0.500301, 0.486720,
		35.058365, 36.468784, 36.348495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156250, 37.215996, 35.862644>,  <34.557091, 36.818993, 36.007793>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156250, 37.215996, 35.862644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.306606, 36.870895, 35.997921>,  <35.396820, 36.663837, 36.079086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.306606, 36.870895, 35.997921>,  <35.156250, 37.215996, 35.862644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.306606, 36.870895, 35.997921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566494, -0.074879, -0.820657,
		0.733343, 0.500060, 0.460595,
		0.375889, -0.862747, 0.338193,
		35.419373, 36.612072, 36.099380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846401, 37.228081, 35.654057>,  <35.156250, 37.215996, 35.862644>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846401, 37.228081, 35.654057> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.794373, 36.840149, 35.736530>,  <35.763157, 36.607391, 35.786015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.794373, 36.840149, 35.736530>,  <35.846401, 37.228081, 35.654057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.794373, 36.840149, 35.736530> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550749, -0.243593, -0.798334,
		0.824474, 0.009718, 0.565817,
		-0.130071, -0.969829, 0.206189,
		35.755352, 36.549202, 35.798386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554806, 36.923763, 35.583374>,  <35.846401, 37.228081, 35.654057>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554806, 36.923763, 35.583374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.294872, 36.619987, 35.570930>,  <36.138912, 36.437721, 35.563465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.294872, 36.619987, 35.570930>,  <36.554806, 36.923763, 35.583374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294872, 36.619987, 35.570930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542712, -0.434961, -0.718521,
		0.532141, -0.483804, 0.694809,
		-0.649838, -0.759436, -0.031105,
		36.099922, 36.392159, 35.561600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873951, 36.228504, 35.585999>,  <36.554806, 36.923763, 35.583374>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.873951, 36.228504, 35.585999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.515175, 36.163277, 35.421604>,  <36.299908, 36.124142, 35.322968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.515175, 36.163277, 35.421604>,  <36.873951, 36.228504, 35.585999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515175, 36.163277, 35.421604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429904, -0.538901, -0.724409,
		-0.103355, -0.826435, 0.553464,
		-0.896939, -0.163065, -0.410986,
		36.246094, 36.114357, 35.298309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.519016, 35.940418, 35.142956>,  <36.873951, 36.228504, 35.585999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.519016, 35.940418, 35.142956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.889702, 36.071999, 35.215618>,  <38.112114, 36.150948, 35.259216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.889702, 36.071999, 35.215618>,  <37.519016, 35.940418, 35.142956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.889702, 36.071999, 35.215618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238899, 0.142608, 0.960516,
		0.290056, -0.933518, 0.210742,
		0.926712, 0.328950, 0.181652,
		38.167717, 36.170685, 35.270115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715649, 35.596386, 35.708275>,  <37.519016, 35.940418, 35.142956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715649, 35.596386, 35.708275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.953022, 35.917809, 35.689770>,  <38.095448, 36.110661, 35.678669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.953022, 35.917809, 35.689770>,  <37.715649, 35.596386, 35.708275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953022, 35.917809, 35.689770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138661, 0.158679, 0.977545,
		0.792849, -0.573694, 0.205587,
		0.593433, 0.803552, -0.046260,
		38.131054, 36.158875, 35.675892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316429, 35.516293, 36.207310>,  <37.715649, 35.596386, 35.708275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.316429, 35.516293, 36.207310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.285645, 35.906853, 36.126591>,  <38.267174, 36.141190, 36.078159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.285645, 35.906853, 36.126591>,  <38.316429, 35.516293, 36.207310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285645, 35.906853, 36.126591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226449, 0.179995, 0.957247,
		0.970978, 0.119369, 0.207251,
		-0.076961, 0.976398, -0.201802,
		38.262558, 36.199772, 36.066051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610081, 35.736507, 36.784397>,  <38.316429, 35.516293, 36.207310>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.610081, 35.736507, 36.784397> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.383808, 36.033512, 36.640907>,  <38.248047, 36.211716, 36.554813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.383808, 36.033512, 36.640907>,  <38.610081, 35.736507, 36.784397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.383808, 36.033512, 36.640907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270727, 0.243678, 0.931304,
		0.778919, 0.623935, 0.063175,
		-0.565679, 0.742513, -0.358721,
		38.214104, 36.256268, 36.533291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843258, 36.341686, 37.081066>,  <38.610081, 35.736507, 36.784397>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.843258, 36.341686, 37.081066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.473328, 36.434055, 36.960152>,  <38.251369, 36.489475, 36.887604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.473328, 36.434055, 36.960152>,  <38.843258, 36.341686, 37.081066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473328, 36.434055, 36.960152> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249604, 0.231265, 0.940327,
		0.287051, 0.945088, -0.156240,
		-0.924824, 0.230924, -0.302282,
		38.195881, 36.503334, 36.869469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580070, 36.833469, 37.484852>,  <38.843258, 36.341686, 37.081066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580070, 36.833469, 37.484852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.209236, 36.749371, 37.360718>,  <37.986736, 36.698910, 37.286236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.209236, 36.749371, 37.360718>,  <38.580070, 36.833469, 37.484852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.209236, 36.749371, 37.360718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358444, 0.254959, 0.898061,
		-0.109690, 0.943818, -0.311730,
		-0.927085, -0.210246, -0.310339,
		37.931110, 36.686298, 37.267616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039825, 37.414082, 37.688438>,  <38.580070, 36.833469, 37.484852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039825, 37.414082, 37.688438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.814178, 37.091156, 37.619141>,  <37.678791, 36.897400, 37.577560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.814178, 37.091156, 37.619141>,  <38.039825, 37.414082, 37.688438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.814178, 37.091156, 37.619141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357032, 0.049305, 0.932790,
		-0.744514, 0.588057, -0.316052,
		-0.564116, -0.807316, -0.173247,
		37.644943, 36.848961, 37.567165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414143, 37.646030, 37.953133>,  <38.039825, 37.414082, 37.688438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414143, 37.646030, 37.953133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.341469, 37.255322, 37.907696>,  <37.297867, 37.020897, 37.880432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.341469, 37.255322, 37.907696>,  <37.414143, 37.646030, 37.953133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.341469, 37.255322, 37.907696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589089, 0.015615, 0.807917,
		-0.787379, 0.213702, -0.578244,
		-0.181683, -0.976774, -0.113595,
		37.286964, 36.962288, 37.873619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715633, 37.593285, 38.085236>,  <37.414143, 37.646030, 37.953133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715633, 37.593285, 38.085236> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.841446, 37.214855, 38.116268>,  <36.916935, 36.987797, 38.134888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.841446, 37.214855, 38.116268>,  <36.715633, 37.593285, 38.085236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.841446, 37.214855, 38.116268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661922, -0.160015, 0.732294,
		-0.680389, -0.281680, -0.676555,
		0.314532, -0.946072, 0.077578,
		36.935806, 36.931034, 38.139542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156059, 37.227776, 38.237305>,  <36.715633, 37.593285, 38.085236>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156059, 37.227776, 38.237305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.467068, 37.014023, 38.369900>,  <36.653675, 36.885769, 38.449459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.467068, 37.014023, 38.369900>,  <36.156059, 37.227776, 38.237305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.467068, 37.014023, 38.369900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449904, -0.104408, 0.886953,
		-0.439365, -0.838767, -0.321602,
		0.777525, -0.534386, 0.331492,
		36.700325, 36.853706, 38.469349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.885384, 36.591331, 38.455940>,  <36.156059, 37.227776, 38.237305>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.885384, 36.591331, 38.455940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.231613, 36.574348, 38.655529>,  <36.439350, 36.564159, 38.775284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.231613, 36.574348, 38.655529>,  <35.885384, 36.591331, 38.455940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.231613, 36.574348, 38.655529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498503, -0.167901, 0.850473,
		0.047674, -0.984889, -0.166494,
		0.865576, -0.042452, 0.498975,
		36.491287, 36.561611, 38.805222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835979, 36.047531, 38.786800>,  <35.885384, 36.591331, 38.455940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835979, 36.047531, 38.786800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.115982, 36.247307, 38.990978>,  <36.283985, 36.367172, 39.113483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.115982, 36.247307, 38.990978>,  <35.835979, 36.047531, 38.786800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115982, 36.247307, 38.990978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466541, -0.221328, 0.856360,
		0.540675, -0.837600, 0.078078,
		0.700007, 0.499439, 0.510442,
		36.325985, 36.397137, 39.144112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101036, 35.575367, 39.331089>,  <35.835979, 36.047531, 38.786800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.101036, 35.575367, 39.331089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.207672, 35.935532, 39.468605>,  <36.271652, 36.151630, 39.551113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.207672, 35.935532, 39.468605>,  <36.101036, 35.575367, 39.331089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207672, 35.935532, 39.468605> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389060, -0.225810, 0.893108,
		0.881795, -0.371848, 0.290115,
		0.266590, 0.900411, 0.343789,
		36.287647, 36.205654, 39.571743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514141, 35.532413, 39.930447>,  <36.101036, 35.575367, 39.331089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514141, 35.532413, 39.930447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.355633, 35.896088, 39.981602>,  <36.260529, 36.114292, 40.012295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.355633, 35.896088, 39.981602>,  <36.514141, 35.532413, 39.930447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355633, 35.896088, 39.981602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111066, -0.185733, 0.976303,
		0.911392, 0.372674, 0.174580,
		-0.396268, 0.909185, 0.127884,
		36.236752, 36.168842, 40.019966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884842, 35.791332, 40.533161>,  <36.514141, 35.532413, 39.930447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884842, 35.791332, 40.533161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.573734, 36.039070, 40.490292>,  <36.387070, 36.187714, 40.464569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.573734, 36.039070, 40.490292>,  <36.884842, 35.791332, 40.533161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573734, 36.039070, 40.490292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156667, -0.025896, 0.987312,
		0.608708, 0.784694, 0.117171,
		-0.777772, 0.619342, -0.107173,
		36.340401, 36.224873, 40.458141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017967, 36.360641, 41.072609>,  <36.884842, 35.791332, 40.533161>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017967, 36.360641, 41.072609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.630249, 36.355633, 40.974373>,  <36.397617, 36.352627, 40.915432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.630249, 36.355633, 40.974373>,  <37.017967, 36.360641, 41.072609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630249, 36.355633, 40.974373> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245267, -0.023144, 0.969179,
		-0.017819, 0.999654, 0.019363,
		-0.969292, -0.012521, -0.245595,
		36.339462, 36.351875, 40.900696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.702793, 36.895428, 41.396572>,  <37.017967, 36.360641, 41.072609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.702793, 36.895428, 41.396572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.403873, 36.638916, 41.326942>,  <36.224522, 36.485008, 41.285164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.403873, 36.638916, 41.326942>,  <36.702793, 36.895428, 41.396572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403873, 36.638916, 41.326942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246893, 0.024758, 0.968726,
		-0.616919, 0.766904, -0.176831,
		-0.747298, -0.641284, -0.174070,
		36.179684, 36.446529, 41.274723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067059, 37.071217, 41.923100>,  <36.702793, 36.895428, 41.396572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.067059, 37.071217, 41.923100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.996536, 36.701233, 41.788422>,  <35.954224, 36.479244, 41.707615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.996536, 36.701233, 41.788422>,  <36.067059, 37.071217, 41.923100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.996536, 36.701233, 41.788422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358432, -0.258247, 0.897126,
		-0.916757, 0.278849, -0.286006,
		-0.176303, -0.924960, -0.336698,
		35.943645, 36.423744, 41.687412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.322628, 37.025509, 41.971710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.430775, 36.641392, 41.944180>,  <35.495663, 36.410923, 41.927662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.430775, 36.641392, 41.944180>,  <35.322628, 37.025509, 41.971710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430775, 36.641392, 41.944180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455304, -0.190526, 0.869711,
		-0.848292, -0.203805, -0.488738,
		0.270369, -0.960293, -0.068829,
		35.511887, 36.353302, 41.923531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.710159, 36.681156, 42.133392>,  <35.322628, 37.025509, 41.971710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.710159, 36.681156, 42.133392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.988327, 36.398060, 42.183193>,  <35.155228, 36.228203, 42.213074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.988327, 36.398060, 42.183193>,  <34.710159, 36.681156, 42.133392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988327, 36.398060, 42.183193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337692, -0.168925, 0.925974,
		-0.634315, -0.685983, -0.356471,
		0.695419, -0.707737, 0.124500,
		35.196953, 36.185738, 42.220543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.375427, 36.034538, 42.317848>,  <34.710159, 36.681156, 42.133392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.375427, 36.034538, 42.317848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.756962, 36.003647, 42.433937>,  <34.985882, 35.985111, 42.503590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.756962, 36.003647, 42.433937>,  <34.375427, 36.034538, 42.317848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756962, 36.003647, 42.433937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300247, -0.266753, 0.915803,
		0.006694, -0.960666, -0.277626,
		0.953838, -0.077226, 0.290223,
		35.043114, 35.980480, 42.521004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441387, 35.354900, 42.665661>,  <34.375427, 36.034538, 42.317848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441387, 35.354900, 42.665661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.716789, 35.608322, 42.806835>,  <34.882030, 35.760376, 42.891541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.716789, 35.608322, 42.806835>,  <34.441387, 35.354900, 42.665661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.716789, 35.608322, 42.806835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316302, -0.175605, 0.932264,
		0.652618, -0.753505, 0.079490,
		0.688507, 0.633555, 0.352938,
		34.923340, 35.798389, 42.912716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620949, 35.072453, 43.307419>,  <34.441387, 35.354900, 42.665661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.620949, 35.072453, 43.307419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.774017, 35.441875, 43.317329>,  <34.865856, 35.663528, 43.323277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.774017, 35.441875, 43.317329>,  <34.620949, 35.072453, 43.307419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774017, 35.441875, 43.317329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237787, 0.072544, 0.968605,
		0.892761, -0.376545, 0.247369,
		0.382668, 0.923554, 0.024773,
		34.888817, 35.718941, 43.324760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016552, 35.104809, 43.901646>,  <34.620949, 35.072453, 43.307419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016552, 35.104809, 43.901646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.945908, 35.485409, 43.800880>,  <34.903519, 35.713768, 43.740421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.945908, 35.485409, 43.800880>,  <35.016552, 35.104809, 43.901646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.945908, 35.485409, 43.800880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180027, 0.220391, 0.958655,
		0.967676, 0.214664, 0.132371,
		-0.176615, 0.951498, -0.251912,
		34.892921, 35.770859, 43.725307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343983, 35.445633, 44.407223>,  <35.016552, 35.104809, 43.901646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343983, 35.445633, 44.407223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.070923, 35.698368, 44.260376>,  <34.907089, 35.850010, 44.172268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.070923, 35.698368, 44.260376>,  <35.343983, 35.445633, 44.407223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070923, 35.698368, 44.260376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320244, 0.192898, 0.927488,
		0.656839, 0.750713, 0.070662,
		-0.682647, 0.631839, -0.367114,
		34.866127, 35.887920, 44.150242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485672, 36.034790, 44.724827>,  <35.343983, 35.445633, 44.407223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485672, 36.034790, 44.724827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.103111, 36.073059, 44.614452>,  <34.873573, 36.096020, 44.548229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.103111, 36.073059, 44.614452>,  <35.485672, 36.034790, 44.724827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103111, 36.073059, 44.614452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261378, 0.141098, 0.954868,
		0.130293, 0.985362, -0.109938,
		-0.956402, 0.095677, -0.275936,
		34.816189, 36.101761, 44.531670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208252, 36.601879, 45.058571>,  <35.485672, 36.034790, 44.724827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.208252, 36.601879, 45.058571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.876865, 36.403534, 44.954449>,  <34.678032, 36.284527, 44.891975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.876865, 36.403534, 44.954449>,  <35.208252, 36.601879, 45.058571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.876865, 36.403534, 44.954449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399418, 0.197345, 0.895277,
		-0.392564, 0.845680, -0.361550,
		-0.828467, -0.495863, -0.260309,
		34.628326, 36.254776, 44.876354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.631496, 36.968361, 45.351597>,  <35.208252, 36.601879, 45.058571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.631496, 36.968361, 45.351597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.473171, 36.611908, 45.262852>,  <34.378178, 36.398037, 45.209602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.473171, 36.611908, 45.262852>,  <34.631496, 36.968361, 45.351597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473171, 36.611908, 45.262852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435921, -0.030322, 0.899474,
		-0.808275, 0.452735, -0.376461,
		-0.395808, -0.891129, -0.221865,
		34.354427, 36.344570, 45.196293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968880, 37.079315, 45.659290>,  <34.631496, 36.968361, 45.351597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.968880, 37.079315, 45.659290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.067856, 36.698994, 45.584740>,  <34.127239, 36.470798, 45.540009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.067856, 36.698994, 45.584740>,  <33.968880, 37.079315, 45.659290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067856, 36.698994, 45.584740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279798, -0.254287, 0.925771,
		-0.927625, -0.176922, -0.328955,
		0.247438, -0.950808, -0.186380,
		34.142086, 36.413750, 45.528824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.381283, 36.801170, 45.901871>,  <33.968880, 37.079315, 45.659290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.381283, 36.801170, 45.901871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.661148, 36.516109, 45.881504>,  <33.829067, 36.345074, 45.869282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.661148, 36.516109, 45.881504>,  <33.381283, 36.801170, 45.901871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661148, 36.516109, 45.881504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270136, -0.329843, 0.904561,
		-0.661434, -0.619135, -0.423293,
		0.699665, -0.712654, -0.050919,
		33.871048, 36.302315, 45.866230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.127480, 36.179005, 46.140182>,  <33.381283, 36.801170, 45.901871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.127480, 36.179005, 46.140182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.517342, 36.095058, 46.171154>,  <33.751259, 36.044689, 46.189735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.517342, 36.095058, 46.171154>,  <33.127480, 36.179005, 46.140182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517342, 36.095058, 46.171154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160535, -0.415196, 0.895455,
		-0.155781, -0.885193, -0.438366,
		0.974660, -0.209868, 0.077425,
		33.809738, 36.032097, 46.194382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.163868, 35.550110, 46.352062>,  <33.127480, 36.179005, 46.140182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.163868, 35.550110, 46.352062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.524677, 35.688938, 46.454742>,  <33.741161, 35.772236, 46.516350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.524677, 35.688938, 46.454742>,  <33.163868, 35.550110, 46.352062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524677, 35.688938, 46.454742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104803, -0.400797, 0.910153,
		0.418771, -0.847883, -0.325155,
		0.902024, 0.347068, 0.256702,
		33.795284, 35.793060, 46.531754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.558590, 35.063156, 46.580917>,  <33.163868, 35.550110, 46.352062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.558590, 35.063156, 46.580917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.733994, 35.381325, 46.748257>,  <33.839233, 35.572227, 46.848660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.733994, 35.381325, 46.748257>,  <33.558590, 35.063156, 46.580917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733994, 35.381325, 46.748257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084273, -0.427043, 0.900296,
		0.894768, -0.430041, -0.120228,
		0.438506, 0.795424, 0.418345,
		33.865547, 35.619953, 46.873760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.102436, 34.814789, 46.927921>,  <33.558590, 35.063156, 46.580917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.102436, 34.814789, 46.927921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.056026, 35.166317, 47.113052>,  <34.028179, 35.377235, 47.224133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.056026, 35.166317, 47.113052>,  <34.102436, 34.814789, 46.927921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.056026, 35.166317, 47.113052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010576, -0.467040, 0.884173,
		0.993190, 0.097689, 0.063482,
		-0.116023, 0.878823, 0.462826,
		34.021221, 35.429962, 47.251900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.667309, 34.906662, 47.438534>,  <34.102436, 34.814789, 46.927921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.667309, 34.906662, 47.438534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.360516, 35.136250, 47.553291>,  <34.176441, 35.274002, 47.622147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.360516, 35.136250, 47.553291>,  <34.667309, 34.906662, 47.438534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.360516, 35.136250, 47.553291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049887, -0.499084, 0.865116,
		0.639731, 0.649214, 0.411420,
		-0.766979, 0.573966, 0.286892,
		34.130421, 35.308441, 47.639359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795319, 35.089722, 48.227768>,  <34.667309, 34.906662, 47.438534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795319, 35.089722, 48.227768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.413651, 35.193848, 48.168716>,  <34.184650, 35.256325, 48.133286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.413651, 35.193848, 48.168716>,  <34.795319, 35.089722, 48.227768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.413651, 35.193848, 48.168716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248123, -0.412345, 0.876588,
		0.167315, 0.873045, 0.458038,
		-0.954170, 0.260316, -0.147631,
		34.127399, 35.271942, 48.124428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.527561, 35.357052, 48.822323>,  <34.795319, 35.089722, 48.227768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.527561, 35.357052, 48.822323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.184757, 35.277561, 48.632149>,  <33.979073, 35.229866, 48.518044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.184757, 35.277561, 48.632149>,  <34.527561, 35.357052, 48.822323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.184757, 35.277561, 48.632149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408161, -0.301381, 0.861728,
		-0.314534, 0.932565, 0.177175,
		-0.857014, -0.198727, -0.475431,
		33.927654, 35.217945, 48.489521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999561, 35.633995, 49.274132>,  <34.527561, 35.357052, 48.822323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999561, 35.633995, 49.274132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.833534, 35.351723, 49.044445>,  <33.733917, 35.182358, 48.906631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.833534, 35.351723, 49.044445>,  <33.999561, 35.633995, 49.274132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.833534, 35.351723, 49.044445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476196, -0.369277, 0.798042,
		-0.775211, 0.604685, -0.182767,
		-0.415072, -0.705684, -0.574216,
		33.709011, 35.140018, 48.872181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366596, 35.589161, 49.650890>,  <33.999561, 35.633995, 49.274132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366596, 35.589161, 49.650890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.374737, 35.251724, 49.436253>,  <33.379620, 35.049263, 49.307468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.374737, 35.251724, 49.436253>,  <33.366596, 35.589161, 49.650890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.374737, 35.251724, 49.436253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572977, -0.449665, 0.685199,
		-0.819318, 0.293516, -0.492509,
		0.020347, -0.843593, -0.536597,
		33.380840, 34.998646, 49.275272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.720802, 35.378311, 49.744553>,  <33.366596, 35.589161, 49.650890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.720802, 35.378311, 49.744553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.883865, 35.051342, 49.581760>,  <32.981705, 34.855160, 49.484085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.883865, 35.051342, 49.581760>,  <32.720802, 35.378311, 49.744553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883865, 35.051342, 49.581760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482953, -0.571263, 0.663637,
		-0.774967, -0.073983, -0.627657,
		0.407655, -0.817425, -0.406979,
		33.006161, 34.806114, 49.459667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315594, 34.976707, 49.425312>,  <32.720802, 35.378311, 49.744553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315594, 34.976707, 49.425312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.609760, 34.746456, 49.568317>,  <32.786259, 34.608307, 49.654121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.609760, 34.746456, 49.568317>,  <32.315594, 34.976707, 49.425312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.609760, 34.746456, 49.568317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564613, -0.228823, 0.793002,
		-0.374666, -0.785044, -0.493287,
		0.735417, -0.575627, 0.357514,
		32.830387, 34.573769, 49.675571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.101582, 34.236351, 49.478600>,  <32.315594, 34.976707, 49.425312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.101582, 34.236351, 49.478600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.366837, 34.374630, 49.744152>,  <32.525990, 34.457596, 49.903484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.366837, 34.374630, 49.744152>,  <32.101582, 34.236351, 49.478600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366837, 34.374630, 49.744152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558971, -0.361156, 0.746403,
		0.497796, -0.866060, -0.046261,
		0.663137, 0.345698, 0.663884,
		32.565777, 34.478340, 49.943317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.085655, 33.435253, 49.668175>,  <32.101582, 34.236351, 49.478600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.085655, 33.435253, 49.668175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.711544, 33.314270, 49.594669>,  <31.487078, 33.241680, 49.550568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.711544, 33.314270, 49.594669>,  <32.085655, 33.435253, 49.668175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.711544, 33.314270, 49.594669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092202, 0.293067, -0.951636,
		0.341691, -0.906988, -0.246212,
		-0.935279, -0.302464, -0.183765,
		31.430960, 33.223534, 49.539539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.019325, 32.966904, 49.026211>,  <32.085655, 33.435253, 49.668175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.019325, 32.966904, 49.026211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.658108, 33.134167, 49.065510>,  <31.441378, 33.234524, 49.089088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.658108, 33.134167, 49.065510>,  <32.019325, 32.966904, 49.026211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.658108, 33.134167, 49.065510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023427, 0.276334, -0.960776,
		-0.428905, -0.865323, -0.259339,
		-0.903046, 0.418157, 0.098249,
		31.387194, 33.259613, 49.094986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.596170, 32.695396, 48.522770>,  <32.019325, 32.966904, 49.026211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.596170, 32.695396, 48.522770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.416229, 33.037098, 48.626987>,  <31.308264, 33.242119, 48.689518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.416229, 33.037098, 48.626987>,  <31.596170, 32.695396, 48.522770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.416229, 33.037098, 48.626987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080676, 0.251665, -0.964446,
		-0.889452, -0.454878, -0.044294,
		-0.449852, 0.854254, 0.260542,
		31.281273, 33.293373, 48.705151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.167152, 32.741749, 48.083038>,  <31.596170, 32.695396, 48.522770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.167152, 32.741749, 48.083038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.148596, 33.119446, 48.213428>,  <31.137463, 33.346062, 48.291664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.148596, 33.119446, 48.213428>,  <31.167152, 32.741749, 48.083038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.148596, 33.119446, 48.213428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193036, 0.311705, -0.930364,
		-0.980094, -0.106086, 0.167812,
		-0.046391, 0.944238, 0.325979,
		31.134678, 33.402718, 48.311222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.661716, 32.956131, 47.748211>,  <31.167152, 32.741749, 48.083038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.661716, 32.956131, 47.748211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.848635, 33.286751, 47.873722>,  <30.960785, 33.485123, 47.949028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.848635, 33.286751, 47.873722>,  <30.661716, 32.956131, 47.748211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.848635, 33.286751, 47.873722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244969, 0.462065, -0.852341,
		-0.849486, 0.321428, 0.418399,
		0.467294, 0.826547, 0.313778,
		30.988823, 33.534714, 47.967857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.259447, 33.513744, 47.406509>,  <30.661716, 32.956131, 47.748211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.259447, 33.513744, 47.406509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.612314, 33.670719, 47.510647>,  <30.824034, 33.764904, 47.573128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.612314, 33.670719, 47.510647>,  <30.259447, 33.513744, 47.406509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.612314, 33.670719, 47.510647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042139, 0.484822, -0.873597,
		-0.469050, 0.781628, 0.411157,
		0.882166, 0.392435, 0.260343,
		30.876965, 33.788448, 47.588749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.346800, 34.245445, 47.142117>,  <30.259447, 33.513744, 47.406509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.346800, 34.245445, 47.142117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.718277, 34.107899, 47.197670>,  <30.941164, 34.025372, 47.231003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.718277, 34.107899, 47.197670>,  <30.346800, 34.245445, 47.142117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.718277, 34.107899, 47.197670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269212, 0.367530, -0.890194,
		0.255060, 0.864106, 0.433895,
		0.928692, -0.343863, 0.138885,
		30.996885, 34.004742, 47.239334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.807211, 34.720940, 46.889400>,  <30.346800, 34.245445, 47.142117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.807211, 34.720940, 46.889400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.084087, 34.433033, 46.910583>,  <31.250214, 34.260288, 46.923294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.084087, 34.433033, 46.910583>,  <30.807211, 34.720940, 46.889400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.084087, 34.433033, 46.910583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486845, 0.411496, -0.770489,
		0.532780, 0.559109, 0.635249,
		0.692190, -0.719769, 0.052962,
		31.291744, 34.217102, 46.926472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.400137, 35.065907, 46.801140>,  <30.807211, 34.720940, 46.889400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.400137, 35.065907, 46.801140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.465193, 34.684818, 46.698479>,  <31.504227, 34.456165, 46.636883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.465193, 34.684818, 46.698479>,  <31.400137, 35.065907, 46.801140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.465193, 34.684818, 46.698479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373654, 0.300209, -0.877643,
		0.913199, 0.046841, 0.404814,
		0.162638, -0.952723, -0.256648,
		31.513985, 34.399002, 46.621483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.992979, 35.085976, 46.594055>,  <31.400137, 35.065907, 46.801140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.992979, 35.085976, 46.594055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.848539, 34.755775, 46.420544>,  <31.761875, 34.557655, 46.316437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.848539, 34.755775, 46.420544>,  <31.992979, 35.085976, 46.594055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.848539, 34.755775, 46.420544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242986, 0.365802, -0.898413,
		0.900314, -0.429817, 0.068493,
		-0.361098, -0.825498, -0.433777,
		31.740210, 34.508125, 46.290409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.517757, 34.883110, 46.234081>,  <31.992979, 35.085976, 46.594055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.517757, 34.883110, 46.234081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.199486, 34.718929, 46.055901>,  <32.008522, 34.620422, 45.948994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.199486, 34.718929, 46.055901>,  <32.517757, 34.883110, 46.234081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.199486, 34.718929, 46.055901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225977, 0.481167, -0.847002,
		0.561989, -0.774603, -0.290101,
		-0.795677, -0.410450, -0.445453,
		31.960783, 34.595795, 45.922264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.749023, 34.627762, 45.604057>,  <32.517757, 34.883110, 46.234081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.749023, 34.627762, 45.604057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.355564, 34.629845, 45.532055>,  <32.119488, 34.631092, 45.488853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.355564, 34.629845, 45.532055>,  <32.749023, 34.627762, 45.604057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.355564, 34.629845, 45.532055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169438, 0.365263, -0.915354,
		0.060986, -0.930890, -0.360174,
		-0.983652, 0.005203, -0.180004,
		32.060467, 34.631405, 45.478054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.641064, 34.239883, 44.932106>,  <32.749023, 34.627762, 45.604057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.641064, 34.239883, 44.932106> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.321789, 34.474251, 44.988094>,  <32.130222, 34.614872, 45.021687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.321789, 34.474251, 44.988094>,  <32.641064, 34.239883, 44.932106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.321789, 34.474251, 44.988094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140506, 0.407020, -0.902548,
		-0.585790, -0.700739, -0.407204,
		-0.798190, 0.585919, 0.139970,
		32.082333, 34.650028, 45.030087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.302040, 34.323437, 44.362095>,  <32.641064, 34.239883, 44.932106>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.302040, 34.323437, 44.362095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.114201, 34.641525, 44.515511>,  <32.001495, 34.832378, 44.607559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.114201, 34.641525, 44.515511>,  <32.302040, 34.323437, 44.362095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.114201, 34.641525, 44.515511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030653, 0.448842, -0.893085,
		-0.882348, -0.407635, -0.235151,
		-0.469598, 0.795220, 0.383539,
		31.973322, 34.880093, 44.630573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.716534, 34.587383, 43.973969>,  <32.302040, 34.323437, 44.362095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.716534, 34.587383, 43.973969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.834225, 34.915184, 44.170681>,  <31.904839, 35.111862, 44.288708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.834225, 34.915184, 44.170681>,  <31.716534, 34.587383, 43.973969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.834225, 34.915184, 44.170681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012353, 0.511256, -0.859339,
		-0.955656, 0.258915, 0.140302,
		0.294226, 0.819500, 0.491783,
		31.922493, 35.161034, 44.318214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.404896, 35.102367, 43.607998>,  <31.716534, 34.587383, 43.973969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.404896, 35.102367, 43.607998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.709799, 35.261044, 43.812584>,  <31.892740, 35.356251, 43.935337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.709799, 35.261044, 43.812584>,  <31.404896, 35.102367, 43.607998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.709799, 35.261044, 43.812584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265608, 0.528890, -0.806057,
		-0.590265, 0.750273, 0.297787,
		0.762259, 0.396693, 0.511464,
		31.938477, 35.380051, 43.966022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.297674, 35.824085, 43.645123>,  <31.404896, 35.102367, 43.607998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.297674, 35.824085, 43.645123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.686001, 35.756290, 43.712990>,  <31.918997, 35.715614, 43.753712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.686001, 35.756290, 43.712990>,  <31.297674, 35.824085, 43.645123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.686001, 35.756290, 43.712990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236071, 0.550738, -0.800599,
		0.042248, 0.817289, 0.574677,
		0.970817, -0.169488, 0.169670,
		31.977245, 35.705444, 43.763889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.639259, 36.562744, 43.614170>,  <31.297674, 35.824085, 43.645123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.639259, 36.562744, 43.614170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.914351, 36.284733, 43.530300>,  <32.079407, 36.117924, 43.479980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.914351, 36.284733, 43.530300>,  <31.639259, 36.562744, 43.614170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.914351, 36.284733, 43.530300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354640, 0.573652, -0.738345,
		0.633450, 0.433424, 0.641003,
		0.687729, -0.695030, -0.209670,
		32.120670, 36.076225, 43.467400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.205635, 36.954720, 43.455551>,  <31.639259, 36.562744, 43.614170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.205635, 36.954720, 43.455551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.307072, 36.597012, 43.308052>,  <32.367935, 36.382389, 43.219555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.307072, 36.597012, 43.308052>,  <32.205635, 36.954720, 43.455551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.307072, 36.597012, 43.308052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314833, 0.436757, -0.842688,
		0.914642, 0.097609, 0.392305,
		0.253596, -0.894268, -0.368746,
		32.383152, 36.328732, 43.197430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.993088, 37.008392, 43.065273>,  <32.205635, 36.954720, 43.455551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.993088, 37.008392, 43.065273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.806782, 36.684120, 42.923363>,  <32.695000, 36.489559, 42.838215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.806782, 36.684120, 42.923363>,  <32.993088, 37.008392, 43.065273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.806782, 36.684120, 42.923363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142911, 0.326751, -0.934243,
		0.873294, -0.485837, -0.036334,
		-0.465762, -0.810676, -0.354781,
		32.667053, 36.440918, 42.816929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.228394, 38.213223, 40.333904> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.906197, 38.289902, 40.109608>,  <39.712879, 38.335907, 39.975029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.906197, 38.289902, 40.109608>,  <40.228394, 38.213223, 40.333904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.906197, 38.289902, 40.109608> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266744, -0.727675, -0.631931,
		-0.529177, -0.658591, 0.535004,
		-0.805493, 0.191694, -0.560744,
		39.664547, 38.347412, 39.941383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.817963, 37.566521, 40.223743>,  <40.228394, 38.213223, 40.333904>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.817963, 37.566521, 40.223743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.723579, 37.813450, 39.923550>,  <39.666950, 37.961609, 39.743431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.723579, 37.813450, 39.923550>,  <39.817963, 37.566521, 40.223743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.723579, 37.813450, 39.923550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276134, -0.697865, -0.660859,
		-0.931704, -0.363172, -0.005795,
		-0.235961, 0.617325, -0.750488,
		39.652790, 37.998646, 39.698402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587231, 37.150631, 39.768742>,  <39.817963, 37.566521, 40.223743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.587231, 37.150631, 39.768742> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.633389, 37.462280, 39.522278>,  <39.661083, 37.649269, 39.374397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.633389, 37.462280, 39.522278>,  <39.587231, 37.150631, 39.768742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.633389, 37.462280, 39.522278> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235667, -0.624067, -0.744984,
		-0.964959, -0.059245, -0.255625,
		0.115390, 0.779121, -0.616161,
		39.668007, 37.696018, 39.337429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199261, 37.102253, 39.242619>,  <39.587231, 37.150631, 39.768742>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.199261, 37.102253, 39.242619> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.479538, 37.344765, 39.092175>,  <39.647705, 37.490273, 39.001907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.479538, 37.344765, 39.092175>,  <39.199261, 37.102253, 39.242619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.479538, 37.344765, 39.092175> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085204, -0.594491, -0.799576,
		-0.708360, 0.528208, -0.468211,
		0.700689, 0.606281, -0.376108,
		39.689743, 37.526649, 38.979343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279270, 36.971600, 38.390152>,  <39.199261, 37.102253, 39.242619>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.279270, 36.971600, 38.390152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.608513, 37.188133, 38.458801>,  <39.806057, 37.318054, 38.499992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.608513, 37.188133, 38.458801>,  <39.279270, 36.971600, 38.390152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.608513, 37.188133, 38.458801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464012, -0.466865, -0.752814,
		-0.327401, 0.699280, -0.635465,
		0.823104, 0.541336, 0.171622,
		39.855446, 37.350533, 38.510288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463116, 37.336525, 37.766430>,  <39.279270, 36.971600, 38.390152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.463116, 37.336525, 37.766430> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.794758, 37.305374, 37.987885>,  <39.993744, 37.286686, 38.120758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.794758, 37.305374, 37.987885>,  <39.463116, 37.336525, 37.766430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.794758, 37.305374, 37.987885> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510850, -0.296860, -0.806787,
		0.227182, 0.951740, -0.206347,
		0.829108, -0.077875, 0.553638,
		40.043491, 37.282013, 38.153976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.080708, 37.569675, 37.383842>,  <39.463116, 37.336525, 37.766430>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.080708, 37.569675, 37.383842> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.222782, 37.321564, 37.663586>,  <40.308029, 37.172699, 37.831432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.222782, 37.321564, 37.663586>,  <40.080708, 37.569675, 37.383842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.222782, 37.321564, 37.663586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572732, -0.446876, -0.687227,
		0.738796, 0.644638, 0.196527,
		0.355189, -0.620277, 0.699354,
		40.329338, 37.135479, 37.873390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.833881, 37.608372, 37.261993>,  <40.080708, 37.569675, 37.383842>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.833881, 37.608372, 37.261993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.784855, 37.268631, 37.467350>,  <40.755440, 37.064785, 37.590565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.784855, 37.268631, 37.467350>,  <40.833881, 37.608372, 37.261993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.784855, 37.268631, 37.467350> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540456, -0.490986, -0.683257,
		0.832397, 0.193725, 0.519216,
		-0.122564, -0.849355, 0.513395,
		40.748085, 37.013824, 37.621368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.535461, 37.368359, 37.200035>,  <40.833881, 37.608372, 37.261993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.535461, 37.368359, 37.200035> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.287170, 37.064251, 37.276653>,  <41.138195, 36.881786, 37.322624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.287170, 37.064251, 37.276653>,  <41.535461, 37.368359, 37.200035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.287170, 37.064251, 37.276653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498718, -0.571387, -0.651764,
		0.604964, -0.309039, 0.733835,
		-0.620724, -0.760271, 0.191545,
		41.100952, 36.836170, 37.334118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.988598, 36.817837, 37.385979>,  <41.535461, 37.368359, 37.200035>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.988598, 36.817837, 37.385979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.632992, 36.656078, 37.300083>,  <41.419628, 36.559025, 37.248547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.632992, 36.656078, 37.300083>,  <41.988598, 36.817837, 37.385979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.632992, 36.656078, 37.300083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417236, -0.522353, -0.743681,
		0.188571, -0.750742, 0.633109,
		-0.889019, -0.404393, -0.214736,
		41.366287, 36.534760, 37.235661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.125725, 36.116478, 37.389961>,  <41.988598, 36.817837, 37.385979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.125725, 36.116478, 37.389961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.795734, 36.171185, 37.170612>,  <41.597740, 36.204010, 37.039005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.795734, 36.171185, 37.170612>,  <42.125725, 36.116478, 37.389961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.795734, 36.171185, 37.170612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400129, -0.543892, -0.737616,
		-0.399137, -0.827934, 0.393973,
		-0.824976, 0.136770, -0.548368,
		41.548241, 36.212215, 37.006104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.776695, 35.438042, 37.130993>,  <42.125725, 36.116478, 37.389961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.776695, 35.438042, 37.130993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.670563, 35.742012, 36.893639>,  <41.606884, 35.924393, 36.751225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.670563, 35.742012, 36.893639>,  <41.776695, 35.438042, 37.130993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.670563, 35.742012, 36.893639> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331319, -0.506104, -0.796295,
		-0.905443, -0.407884, -0.117492,
		-0.265333, 0.759927, -0.593388,
		41.590961, 35.969990, 36.715622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.609276, 35.102242, 36.538750>,  <41.776695, 35.438042, 37.130993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.609276, 35.102242, 36.538750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.652935, 35.482056, 36.421127>,  <41.679131, 35.709946, 36.350552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.652935, 35.482056, 36.421127>,  <41.609276, 35.102242, 36.538750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.652935, 35.482056, 36.421127> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424040, -0.312036, -0.850190,
		-0.899042, -0.031899, -0.436698,
		0.109145, 0.949535, -0.294060,
		41.685680, 35.766914, 36.332909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.550793, 35.056679, 35.849545>,  <41.609276, 35.102242, 36.538750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.550793, 35.056679, 35.849545> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.733803, 35.412315, 35.855064>,  <41.843609, 35.625698, 35.858376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.733803, 35.412315, 35.855064>,  <41.550793, 35.056679, 35.849545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.733803, 35.412315, 35.855064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573867, -0.283385, -0.768355,
		-0.679225, 0.359463, -0.639875,
		0.457526, 0.889089, 0.013802,
		41.871059, 35.679043, 35.859203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.474850, 35.353790, 35.148003>,  <41.550793, 35.056679, 35.849545>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.474850, 35.353790, 35.148003> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.778603, 35.554405, 35.313793>,  <41.960854, 35.674774, 35.413269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.778603, 35.554405, 35.313793>,  <41.474850, 35.353790, 35.148003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.778603, 35.554405, 35.313793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549899, -0.154235, -0.820867,
		-0.347770, 0.851276, -0.392919,
		0.759387, 0.501538, 0.414477,
		42.006420, 35.704868, 35.438137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.700745, 35.934681, 34.672977>,  <41.474850, 35.353790, 35.148003>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.700745, 35.934681, 34.672977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.023514, 35.849106, 34.893200>,  <42.217175, 35.797760, 35.025333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.023514, 35.849106, 34.893200>,  <41.700745, 35.934681, 34.672977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.023514, 35.849106, 34.893200> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527500, -0.158364, -0.834664,
		0.265755, 0.963925, -0.014934,
		0.806919, -0.213939, 0.550557,
		42.265591, 35.784924, 35.058369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.214455, 36.193459, 34.331360>,  <41.700745, 35.934681, 34.672977>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.214455, 36.193459, 34.331360> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.429592, 35.967960, 34.582092>,  <42.558674, 35.832661, 34.732533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.429592, 35.967960, 34.582092>,  <42.214455, 36.193459, 34.331360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.429592, 35.967960, 34.582092> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745900, -0.028287, -0.665457,
		0.392880, 0.825464, 0.405284,
		0.537847, -0.563746, 0.626827,
		42.590946, 35.798836, 34.770142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.924980, 36.574253, 34.482357>,  <42.214455, 36.193459, 34.331360>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.924980, 36.574253, 34.482357> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.973537, 36.180756, 34.535278>,  <43.002670, 35.944656, 34.567032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.973537, 36.180756, 34.535278>,  <42.924980, 36.574253, 34.482357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.973537, 36.180756, 34.535278> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605708, -0.032182, -0.795036,
		0.786372, 0.176652, 0.591956,
		0.121395, -0.983747, 0.132307,
		43.009956, 35.885632, 34.574970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.667175, 36.495068, 34.441833>,  <42.924980, 36.574253, 34.482357>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.667175, 36.495068, 34.441833> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.567329, 36.112179, 34.383289>,  <43.507420, 35.882446, 34.348164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.567329, 36.112179, 34.383289>,  <43.667175, 36.495068, 34.441833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.567329, 36.112179, 34.383289> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535528, -0.010531, -0.844452,
		0.806785, -0.289170, 0.515247,
		-0.249617, -0.957220, -0.146362,
		43.492443, 35.825012, 34.339382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.270264, 36.241795, 34.326218>,  <43.667175, 36.495068, 34.441833>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.270264, 36.241795, 34.326218> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.002068, 35.990654, 34.168102>,  <43.841148, 35.839970, 34.073235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.002068, 35.990654, 34.168102>,  <44.270264, 36.241795, 34.326218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.002068, 35.990654, 34.168102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509448, -0.002288, -0.860498,
		0.539357, -0.778333, 0.321390,
		-0.670490, -0.627847, -0.395287,
		43.800922, 35.802299, 34.049515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.695381, 35.666203, 33.998604>,  <44.270264, 36.241795, 34.326218>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.695381, 35.666203, 33.998604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.333687, 35.644524, 33.829170>,  <44.116669, 35.631516, 33.727512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.333687, 35.644524, 33.829170>,  <44.695381, 35.666203, 33.998604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.333687, 35.644524, 33.829170> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417756, 0.093387, -0.903747,
		0.088520, -0.994155, -0.061811,
		-0.904237, -0.054178, -0.423580,
		44.062416, 35.628262, 33.702095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.264561, 35.973335, 34.475727>,  <44.695381, 35.666203, 33.998604>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.264561, 35.973335, 34.475727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.535969, 35.942192, 34.767906>,  <45.698814, 35.923504, 34.943214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.535969, 35.942192, 34.767906>,  <45.264561, 35.973335, 34.475727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.535969, 35.942192, 34.767906> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715354, 0.156000, 0.681126,
		-0.166984, -0.984683, 0.050150,
		0.678517, -0.077862, 0.730447,
		45.739525, 35.918835, 34.987041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.930847, 35.620945, 34.966030>,  <45.264561, 35.973335, 34.475727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.930847, 35.620945, 34.966030> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.217747, 35.806625, 35.173901>,  <45.389889, 35.918034, 35.298622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.217747, 35.806625, 35.173901>,  <44.930847, 35.620945, 34.966030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.217747, 35.806625, 35.173901> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649857, 0.176476, 0.739285,
		0.251472, -0.867967, 0.428246,
		0.717250, 0.464208, 0.519676,
		45.432922, 35.945885, 35.329803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.798832, 35.399830, 35.629204>,  <44.930847, 35.620945, 34.966030>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.798832, 35.399830, 35.629204> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.016079, 35.730999, 35.685154>,  <45.146427, 35.929699, 35.718723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.016079, 35.730999, 35.685154>,  <44.798832, 35.399830, 35.629204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.016079, 35.730999, 35.685154> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587202, 0.255444, 0.768077,
		0.600179, -0.499291, 0.624895,
		0.543119, 0.827923, 0.139872,
		45.179016, 35.979378, 35.727116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.968746, 35.452072, 36.431625>,  <44.798832, 35.399830, 35.629204>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.968746, 35.452072, 36.431625> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.980904, 35.820660, 36.276726>,  <44.988197, 36.041813, 36.183784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.980904, 35.820660, 36.276726>,  <44.968746, 35.452072, 36.431625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.980904, 35.820660, 36.276726> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350516, 0.372652, 0.859226,
		0.936064, 0.109627, 0.334316,
		0.030389, 0.921473, -0.387252,
		44.990021, 36.097103, 36.160549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.203884, 35.877216, 36.961342>,  <44.968746, 35.452072, 36.431625>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.203884, 35.877216, 36.961342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.028629, 36.132603, 36.708233>,  <44.923477, 36.285835, 36.556366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.028629, 36.132603, 36.708233>,  <45.203884, 35.877216, 36.961342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.028629, 36.132603, 36.708233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343740, 0.531436, 0.774222,
		0.830591, 0.556723, -0.013374,
		-0.438134, 0.638464, -0.632773,
		44.897190, 36.324142, 36.518402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.384289, 36.555111, 37.193710>,  <45.203884, 35.877216, 36.961342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.384289, 36.555111, 37.193710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.043915, 36.581326, 36.985245>,  <44.839691, 36.597054, 36.860165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.043915, 36.581326, 36.985245>,  <45.384289, 36.555111, 37.193710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.043915, 36.581326, 36.985245> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416946, 0.519179, 0.746063,
		0.319473, 0.852149, -0.414462,
		-0.850936, 0.065539, -0.521164,
		44.788635, 36.600986, 36.828896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.154556, 37.188087, 37.395428>,  <45.384289, 36.555111, 37.193710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.154556, 37.188087, 37.395428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.830975, 37.025665, 37.225388>,  <44.636826, 36.928211, 37.123363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.830975, 37.025665, 37.225388>,  <45.154556, 37.188087, 37.395428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.830975, 37.025665, 37.225388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585876, 0.497390, 0.639806,
		-0.048356, 0.766631, -0.640265,
		-0.808957, -0.406054, -0.425099,
		44.588287, 36.903851, 37.097858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.722122, 37.705711, 37.236004>,  <45.154556, 37.188087, 37.395428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.722122, 37.705711, 37.236004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.486202, 37.385998, 37.282104>,  <44.344650, 37.194172, 37.309765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.486202, 37.385998, 37.282104>,  <44.722122, 37.705711, 37.236004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.486202, 37.385998, 37.282104> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692229, 0.573904, 0.437554,
		-0.415872, 0.178289, -0.891775,
		-0.589804, -0.799280, 0.115253,
		44.309261, 37.146214, 37.316681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.009243, 37.930077, 37.163361>,  <44.722122, 37.705711, 37.236004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.009243, 37.930077, 37.163361> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.921333, 37.567745, 37.308231>,  <43.868587, 37.350346, 37.395153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.921333, 37.567745, 37.308231>,  <44.009243, 37.930077, 37.163361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.921333, 37.567745, 37.308231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765463, 0.390278, 0.511615,
		-0.604785, -0.164790, -0.779153,
		-0.219777, -0.905830, 0.362175,
		43.855400, 37.295998, 37.416885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.312210, 37.883236, 37.149261>,  <44.009243, 37.930077, 37.163361>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.312210, 37.883236, 37.149261> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.412025, 37.593979, 37.406879>,  <43.471916, 37.420425, 37.561451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.412025, 37.593979, 37.406879>,  <43.312210, 37.883236, 37.149261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.412025, 37.593979, 37.406879> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671251, 0.350196, 0.653287,
		-0.697962, -0.595338, -0.398022,
		0.249541, -0.723143, 0.644045,
		43.486889, 37.377037, 37.600094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.675362, 37.451519, 37.383255>,  <43.312210, 37.883236, 37.149261>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.675362, 37.451519, 37.383255> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.944168, 37.396248, 37.674267>,  <43.105450, 37.363083, 37.848873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.944168, 37.396248, 37.674267>,  <42.675362, 37.451519, 37.383255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.944168, 37.396248, 37.674267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636254, 0.394954, 0.662716,
		-0.378918, -0.908249, 0.177496,
		0.672014, -0.138182, 0.727532,
		43.145771, 37.354794, 37.892525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.261539, 37.269779, 38.112675>,  <42.675362, 37.451519, 37.383255>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.261539, 37.269779, 38.112675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.625229, 37.408695, 38.204506>,  <42.843441, 37.492043, 38.259605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.625229, 37.408695, 38.204506>,  <42.261539, 37.269779, 38.112675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.625229, 37.408695, 38.204506> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363270, 0.392501, 0.844972,
		0.203341, -0.851666, 0.483030,
		0.909224, 0.347288, 0.229573,
		42.897995, 37.512882, 38.273376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.311245, 37.109459, 38.805332>,  <42.261539, 37.269779, 38.112675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.311245, 37.109459, 38.805332> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.539879, 37.423424, 38.709663>,  <42.677059, 37.611801, 38.652264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.539879, 37.423424, 38.709663>,  <42.311245, 37.109459, 38.805332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.539879, 37.423424, 38.709663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368556, 0.506010, 0.779820,
		0.733114, -0.357585, 0.578512,
		0.571585, 0.784912, -0.239173,
		42.711353, 37.658897, 38.637913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.425518, 37.296364, 39.529957>,  <42.311245, 37.109459, 38.805332>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.425518, 37.296364, 39.529957> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.564983, 37.598190, 39.307579>,  <42.648663, 37.779285, 39.174152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.564983, 37.598190, 39.307579>,  <42.425518, 37.296364, 39.529957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.564983, 37.598190, 39.307579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143347, 0.629114, 0.763981,
		0.926222, -0.186677, 0.327512,
		0.348660, 0.754564, -0.555940,
		42.669582, 37.824558, 39.140797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.865784, 37.746532, 39.982162>,  <42.425518, 37.296364, 39.529957>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.865784, 37.746532, 39.982162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.767471, 37.977646, 39.670841>,  <42.708485, 38.116314, 39.484047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.767471, 37.977646, 39.670841>,  <42.865784, 37.746532, 39.982162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.767471, 37.977646, 39.670841> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419055, 0.660689, 0.622802,
		0.874061, 0.479229, 0.079733,
		-0.245786, 0.577779, -0.778306,
		42.693737, 38.150978, 39.437351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.899097, 38.406548, 40.221272>,  <42.865784, 37.746532, 39.982162>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.899097, 38.406548, 40.221272> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.659721, 38.437752, 39.902328>,  <42.516094, 38.456474, 39.710964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.659721, 38.437752, 39.902328>,  <42.899097, 38.406548, 40.221272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.659721, 38.437752, 39.902328> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625015, 0.577180, 0.525567,
		0.501219, 0.812882, -0.296651,
		-0.598445, 0.078013, -0.797357,
		42.480186, 38.461155, 39.663120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.800892, 39.124973, 40.189335>,  <42.899097, 38.406548, 40.221272>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.800892, 39.124973, 40.189335> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.502525, 38.944698, 39.993179>,  <42.323505, 38.836533, 39.875484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.502525, 38.944698, 39.993179>,  <42.800892, 39.124973, 40.189335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.502525, 38.944698, 39.993179> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657088, 0.618246, 0.431286,
		0.108803, 0.643933, -0.757306,
		-0.745920, -0.450692, -0.490387,
		42.278748, 38.809490, 39.846062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.385250, 39.684925, 39.947163>,  <42.800892, 39.124973, 40.189335>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.385250, 39.684925, 39.947163> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.143642, 39.369160, 39.903362>,  <41.998676, 39.179699, 39.877083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.143642, 39.369160, 39.903362>,  <42.385250, 39.684925, 39.947163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.143642, 39.369160, 39.903362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743839, 0.509080, 0.433059,
		-0.286120, 0.343023, -0.894690,
		-0.604019, -0.789413, -0.109496,
		41.962437, 39.132336, 39.870514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.638283, 39.852726, 39.647747>,  <42.385250, 39.684925, 39.947163>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.638283, 39.852726, 39.647747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.597393, 39.517761, 39.862518>,  <41.572857, 39.316784, 39.991383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.597393, 39.517761, 39.862518>,  <41.638283, 39.852726, 39.647747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.597393, 39.517761, 39.862518> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732304, 0.428663, 0.529130,
		-0.673261, -0.339103, -0.657061,
		-0.102229, -0.837411, 0.536928,
		41.566723, 39.266537, 40.023598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.977642, 39.867844, 39.903801>,  <41.638283, 39.852726, 39.647747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.977642, 39.867844, 39.903801> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.136192, 39.581966, 40.134312>,  <41.231323, 39.410439, 40.272617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.136192, 39.581966, 40.134312>,  <40.977642, 39.867844, 39.903801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.136192, 39.581966, 40.134312> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718366, 0.149429, 0.679427,
		-0.571694, -0.683291, -0.454180,
		0.396379, -0.714692, 0.576281,
		41.255108, 39.367558, 40.307198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.501492, 39.470592, 39.978912>,  <40.977642, 39.867844, 39.903801>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.501492, 39.470592, 39.978912> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.733410, 39.428627, 40.302105>,  <40.872562, 39.403446, 40.496021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.733410, 39.428627, 40.302105>,  <40.501492, 39.470592, 39.978912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.733410, 39.428627, 40.302105> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787775, 0.180928, 0.588792,
		-0.207959, -0.977884, 0.022251,
		0.579796, -0.104916, 0.807978,
		40.907349, 39.397152, 40.544498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.208630, 37.139492, 39.794930> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928345, 36.924019, 39.607819>,  <36.760174, 36.794735, 39.495552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928345, 36.924019, 39.607819>,  <37.208630, 37.139492, 39.794930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928345, 36.924019, 39.607819> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574122, -0.036523, -0.817954,
		0.423534, -0.841716, 0.334863,
		-0.700715, -0.538684, -0.467779,
		36.718128, 36.762413, 39.467484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570587, 36.584389, 39.441658>,  <37.208630, 37.139492, 39.794930>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570587, 36.584389, 39.441658> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223431, 36.594910, 39.243233>,  <37.015137, 36.601223, 39.124176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223431, 36.594910, 39.243233>,  <37.570587, 36.584389, 39.441658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223431, 36.594910, 39.243233> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490343, -0.114658, -0.863955,
		-0.079603, -0.993057, 0.086612,
		-0.867887, 0.026304, -0.496065,
		36.963066, 36.602802, 39.094414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408241, 35.901253, 39.008087>,  <37.570587, 36.584389, 39.441658>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.408241, 35.901253, 39.008087> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250652, 36.220642, 38.826000>,  <37.156097, 36.412277, 38.716747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250652, 36.220642, 38.826000>,  <37.408241, 35.901253, 39.008087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.250652, 36.220642, 38.826000> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368809, -0.316317, -0.874027,
		-0.841883, -0.512229, -0.169865,
		-0.393971, 0.798476, -0.455216,
		37.132462, 36.460186, 38.689434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534328, 35.736671, 38.424370>,  <37.408241, 35.901253, 39.008087>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534328, 35.736671, 38.424370> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360050, 36.086159, 38.337856>,  <37.255482, 36.295853, 38.285946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360050, 36.086159, 38.337856>,  <37.534328, 35.736671, 38.424370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.360050, 36.086159, 38.337856> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264774, -0.105250, -0.958549,
		-0.860268, -0.474906, -0.185482,
		-0.435699, 0.873720, -0.216286,
		37.229340, 36.348274, 38.272972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.129253, 35.697456, 37.923237>,  <37.534328, 35.736671, 38.424370>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.129253, 35.697456, 37.923237> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189575, 36.090508, 37.879959>,  <37.225769, 36.326336, 37.853992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189575, 36.090508, 37.879959>,  <37.129253, 35.697456, 37.923237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.189575, 36.090508, 37.879959> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240039, -0.142569, -0.960237,
		-0.958978, 0.118836, -0.257368,
		0.150804, 0.982625, -0.108196,
		37.234818, 36.385296, 37.847500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928120, 35.772858, 37.319679>,  <37.129253, 35.697456, 37.923237>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928120, 35.772858, 37.319679> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165840, 36.084984, 37.397564>,  <37.308472, 36.272259, 37.444294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165840, 36.084984, 37.397564>,  <36.928120, 35.772858, 37.319679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.165840, 36.084984, 37.397564> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410400, -0.086035, -0.907838,
		-0.691648, 0.619439, -0.371372,
		0.594302, 0.780316, 0.194712,
		37.344131, 36.319080, 37.455978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855007, 36.184578, 36.750690>,  <36.928120, 35.772858, 37.319679>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855007, 36.184578, 36.750690> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180351, 36.357906, 36.905960>,  <37.375557, 36.461903, 36.999123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180351, 36.357906, 36.905960>,  <36.855007, 36.184578, 36.750690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.180351, 36.357906, 36.905960> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381265, 0.106933, -0.918260,
		-0.439411, 0.894872, -0.078236,
		0.813360, 0.433323, 0.388171,
		37.424358, 36.487904, 37.022411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009922, 36.849541, 36.378067>,  <36.855007, 36.184578, 36.750690>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009922, 36.849541, 36.378067> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362198, 36.737740, 36.531044>,  <37.573563, 36.670658, 36.622829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362198, 36.737740, 36.531044>,  <37.009922, 36.849541, 36.378067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362198, 36.737740, 36.531044> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422281, 0.097443, -0.901212,
		0.214625, 0.955187, 0.203846,
		0.880690, -0.279503, 0.382443,
		37.626404, 36.653889, 36.645779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547699, 37.335590, 36.166195>,  <37.009922, 36.849541, 36.378067>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.547699, 37.335590, 36.166195> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732449, 36.990891, 36.250149>,  <37.843300, 36.784069, 36.300522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732449, 36.990891, 36.250149>,  <37.547699, 37.335590, 36.166195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732449, 36.990891, 36.250149> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473398, 0.039403, -0.879967,
		0.750045, 0.505794, 0.426152,
		0.461873, -0.861754, 0.209888,
		37.871010, 36.732365, 36.313114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168201, 37.478661, 35.914810>,  <37.547699, 37.335590, 36.166195>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.168201, 37.478661, 35.914810> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189663, 37.082466, 35.965496>,  <38.202538, 36.844749, 35.995907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189663, 37.082466, 35.965496>,  <38.168201, 37.478661, 35.914810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.189663, 37.082466, 35.965496> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405386, -0.094363, -0.909262,
		0.912570, 0.100148, 0.396467,
		0.053649, -0.990488, 0.126711,
		38.205757, 36.785320, 36.003510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868225, 37.235687, 35.689541>,  <38.168201, 37.478661, 35.914810>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.868225, 37.235687, 35.689541> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.635384, 36.910465, 35.685509>,  <38.495678, 36.715332, 35.683090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.635384, 36.910465, 35.685509>,  <38.868225, 37.235687, 35.689541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.635384, 36.910465, 35.685509> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471712, -0.327570, -0.818649,
		0.662304, -0.481291, 0.574206,
		-0.582101, -0.813054, -0.010080,
		38.460754, 36.666550, 35.682484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.323078, 36.683891, 35.611225>,  <38.868225, 37.235687, 35.689541>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.323078, 36.683891, 35.611225> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962952, 36.536880, 35.517971>,  <38.746876, 36.448673, 35.462017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962952, 36.536880, 35.517971>,  <39.323078, 36.683891, 35.611225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962952, 36.536880, 35.517971> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399844, -0.486870, -0.776584,
		0.171912, -0.792389, 0.585292,
		-0.900317, -0.367529, -0.233134,
		38.692856, 36.426620, 35.448032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487400, 36.126991, 35.182854>,  <39.323078, 36.683891, 35.611225>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487400, 36.126991, 35.182854> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109402, 36.202179, 35.075787>,  <38.882603, 36.247292, 35.011547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109402, 36.202179, 35.075787>,  <39.487400, 36.126991, 35.182854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.109402, 36.202179, 35.075787> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200533, -0.313525, -0.928164,
		-0.258383, -0.930790, 0.258587,
		-0.945000, 0.187966, -0.267664,
		38.825901, 36.258568, 34.995487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074963, 35.536057, 35.098293>,  <39.487400, 36.126991, 35.182854>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.074963, 35.536057, 35.098293> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.956303, 35.828663, 34.852730>,  <38.885105, 36.004227, 34.705391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.956303, 35.828663, 34.852730>,  <39.074963, 35.536057, 35.098293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956303, 35.828663, 34.852730> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526699, -0.410911, -0.744137,
		-0.796609, -0.544095, -0.263390,
		-0.296651, 0.731514, -0.613910,
		38.867306, 36.048119, 34.668556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402988, 35.244694, 34.522430>,  <39.074963, 35.536057, 35.098293>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.402988, 35.244694, 34.522430> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.631157, 34.919151, 34.566730>,  <39.768059, 34.723827, 34.593311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.631157, 34.919151, 34.566730>,  <39.402988, 35.244694, 34.522430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.631157, 34.919151, 34.566730> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625331, -0.342896, 0.700988,
		-0.532528, -0.469108, -0.704522,
		0.570417, -0.813855, 0.110746,
		39.802284, 34.674995, 34.599957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930332, 34.669960, 34.528355>,  <39.402988, 35.244694, 34.522430>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.930332, 34.669960, 34.528355> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274933, 34.566368, 34.703053>,  <39.481693, 34.504211, 34.807873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274933, 34.566368, 34.703053>,  <38.930332, 34.669960, 34.528355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.274933, 34.566368, 34.703053> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504293, -0.336073, 0.795452,
		-0.059226, -0.905530, -0.420128,
		0.861499, -0.258979, 0.436748,
		39.533382, 34.488674, 34.834076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869858, 33.978821, 34.750191>,  <38.930332, 34.669960, 34.528355>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.869858, 33.978821, 34.750191> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139420, 34.135605, 35.000702>,  <39.301155, 34.229675, 35.151009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139420, 34.135605, 35.000702>,  <38.869858, 33.978821, 34.750191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139420, 34.135605, 35.000702> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358970, -0.567188, 0.741241,
		0.645753, -0.724339, -0.241529,
		0.673902, 0.391957, 0.626279,
		39.341591, 34.253193, 35.188587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035851, 33.458466, 35.097374>,  <38.869858, 33.978821, 34.750191>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.035851, 33.458466, 35.097374> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196983, 33.747948, 35.321507>,  <39.293663, 33.921638, 35.455986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196983, 33.747948, 35.321507>,  <39.035851, 33.458466, 35.097374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.196983, 33.747948, 35.321507> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269626, -0.491207, 0.828261,
		0.874660, -0.484729, -0.002742,
		0.402829, 0.723708, 0.560335,
		39.317833, 33.965061, 35.489609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294750, 33.044727, 35.671947>,  <39.035851, 33.458466, 35.097374>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.294750, 33.044727, 35.671947> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.236012, 33.426926, 35.774284>,  <39.200768, 33.656246, 35.835686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.236012, 33.426926, 35.774284>,  <39.294750, 33.044727, 35.671947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.236012, 33.426926, 35.774284> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250456, -0.286136, 0.924877,
		0.956926, 0.071737, 0.281329,
		-0.146846, 0.955500, 0.255844,
		39.191959, 33.713577, 35.851036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596302, 33.101173, 36.367626>,  <39.294750, 33.044727, 35.671947>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.596302, 33.101173, 36.367626> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368332, 33.426460, 36.320541>,  <39.231548, 33.621632, 36.292290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368332, 33.426460, 36.320541>,  <39.596302, 33.101173, 36.367626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368332, 33.426460, 36.320541> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189400, 0.009382, 0.981855,
		0.799570, 0.581879, 0.148677,
		-0.569926, 0.813221, -0.117710,
		39.197353, 33.670425, 36.285229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.635387, 33.493149, 36.956768>,  <39.596302, 33.101173, 36.367626>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.635387, 33.493149, 36.956768> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.299381, 33.633888, 36.791569>,  <39.097778, 33.718334, 36.692448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.299381, 33.633888, 36.791569>,  <39.635387, 33.493149, 36.956768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.299381, 33.633888, 36.791569> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452483, -0.034292, 0.891114,
		0.299377, 0.935428, 0.188012,
		-0.840020, 0.351851, -0.412999,
		39.047375, 33.739445, 36.667667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311783, 34.103653, 37.364704>,  <39.635387, 33.493149, 36.956768>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.311783, 34.103653, 37.364704> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008091, 33.975536, 37.138084>,  <38.825874, 33.898666, 37.002113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008091, 33.975536, 37.138084>,  <39.311783, 34.103653, 37.364704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008091, 33.975536, 37.138084> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621816, 0.100020, 0.776750,
		-0.192122, 0.942023, -0.275102,
		-0.759233, -0.320294, -0.566549,
		38.780323, 33.879448, 36.968121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803020, 34.578850, 37.503902>,  <39.311783, 34.103653, 37.364704>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.803020, 34.578850, 37.503902> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625748, 34.246239, 37.369949>,  <38.519382, 34.046673, 37.289577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625748, 34.246239, 37.369949>,  <38.803020, 34.578850, 37.503902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.625748, 34.246239, 37.369949> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682941, 0.071205, 0.726995,
		-0.580671, 0.550901, -0.599441,
		-0.443186, -0.831527, -0.334887,
		38.492790, 33.996780, 37.269482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151745, 34.653572, 37.741211>,  <38.803020, 34.578850, 37.503902>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.151745, 34.653572, 37.741211> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.127491, 34.271633, 37.624878>,  <38.112938, 34.042469, 37.555077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.127491, 34.271633, 37.624878>,  <38.151745, 34.653572, 37.741211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.127491, 34.271633, 37.624878> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741774, -0.151863, 0.653230,
		-0.667904, 0.255340, -0.699075,
		-0.060632, -0.954850, -0.290834,
		38.109303, 33.985176, 37.537628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459763, 34.539310, 37.617653>,  <38.151745, 34.653572, 37.741211>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459763, 34.539310, 37.617653> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626740, 34.187210, 37.707897>,  <37.726925, 33.975948, 37.762043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626740, 34.187210, 37.707897>,  <37.459763, 34.539310, 37.617653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.626740, 34.187210, 37.707897> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731065, -0.177860, 0.658719,
		-0.539711, -0.439912, -0.717767,
		0.417440, -0.880252, 0.225611,
		37.751972, 33.923134, 37.775581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900600, 33.990757, 37.676025>,  <37.459763, 34.539310, 37.617653>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900600, 33.990757, 37.676025> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218704, 33.861023, 37.880917>,  <37.409565, 33.783184, 38.003849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218704, 33.861023, 37.880917>,  <36.900600, 33.990757, 37.676025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.218704, 33.861023, 37.880917> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580919, -0.165882, 0.796879,
		-0.173510, -0.931275, -0.320346,
		0.795253, -0.324362, 0.512213,
		37.457283, 33.763725, 38.034584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.598106, 33.427143, 38.104351>,  <36.900600, 33.990757, 37.676025>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.598106, 33.427143, 38.104351> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940277, 33.529137, 38.284676>,  <37.145580, 33.590332, 38.392872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940277, 33.529137, 38.284676>,  <36.598106, 33.427143, 38.104351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.940277, 33.529137, 38.284676> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381545, -0.278368, 0.881439,
		0.350242, -0.926011, -0.140836,
		0.855427, 0.254982, 0.450810,
		37.196903, 33.605633, 38.419918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611725, 32.957947, 38.665432>,  <36.598106, 33.427143, 38.104351>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611725, 32.957947, 38.665432> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898136, 33.221592, 38.757412>,  <37.069984, 33.379780, 38.812599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898136, 33.221592, 38.757412>,  <36.611725, 32.957947, 38.665432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898136, 33.221592, 38.757412> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166102, -0.159080, 0.973193,
		0.678022, -0.735028, -0.004426,
		0.716028, 0.659111, 0.229949,
		37.112946, 33.419327, 38.826397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793304, 32.178154, 38.826187>,  <36.611725, 32.957947, 38.665432>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793304, 32.178154, 38.826187> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444344, 32.034584, 38.693474>,  <36.234966, 31.948442, 38.613846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444344, 32.034584, 38.693474>,  <36.793304, 32.178154, 38.826187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444344, 32.034584, 38.693474> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242021, 0.272528, -0.931211,
		0.424656, -0.892693, -0.150888,
		-0.872406, -0.358926, -0.331781,
		36.182621, 31.926907, 38.593941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.938824, 31.807934, 38.192940>,  <36.793304, 32.178154, 38.826187>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.938824, 31.807934, 38.192940> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.557194, 31.927240, 38.204132>,  <36.328217, 31.998825, 38.210850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.557194, 31.927240, 38.204132>,  <36.938824, 31.807934, 38.192940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.557194, 31.927240, 38.204132> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066241, 0.301141, -0.951276,
		-0.292162, -0.905732, -0.307068,
		-0.954072, 0.298268, 0.027985,
		36.270973, 32.016720, 38.212528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882137, 31.926321, 37.536518>,  <36.938824, 31.807934, 38.192940>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882137, 31.926321, 37.536518> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522839, 32.047180, 37.664181>,  <36.307259, 32.119698, 37.740780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522839, 32.047180, 37.664181>,  <36.882137, 31.926321, 37.536518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522839, 32.047180, 37.664181> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221491, 0.316010, -0.922540,
		-0.379602, -0.899357, -0.216931,
		-0.898245, 0.302150, 0.319158,
		36.253365, 32.137825, 37.759930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258366, 31.686811, 37.093254>,  <36.882137, 31.926321, 37.536518>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.258366, 31.686811, 37.093254> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122551, 32.019203, 37.269524>,  <36.041061, 32.218639, 37.375286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122551, 32.019203, 37.269524>,  <36.258366, 31.686811, 37.093254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122551, 32.019203, 37.269524> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197118, 0.395237, -0.897180,
		-0.919708, -0.391486, 0.029605,
		-0.339532, 0.830979, 0.440672,
		36.020691, 32.268497, 37.401726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673100, 31.907768, 36.752106>,  <36.258366, 31.686811, 37.093254>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673100, 31.907768, 36.752106> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785244, 32.249401, 36.927349>,  <35.852531, 32.454380, 37.032494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785244, 32.249401, 36.927349>,  <35.673100, 31.907768, 36.752106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785244, 32.249401, 36.927349> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342379, 0.515371, -0.785601,
		-0.896757, 0.070255, 0.436912,
		0.280364, 0.854082, 0.438109,
		35.869354, 32.505627, 37.058781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166534, 32.341225, 36.606152>,  <35.673100, 31.907768, 36.752106>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166534, 32.341225, 36.606152> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.442154, 32.615936, 36.698711>,  <35.607525, 32.780762, 36.754246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.442154, 32.615936, 36.698711>,  <35.166534, 32.341225, 36.606152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.442154, 32.615936, 36.698711> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255285, 0.528849, -0.809412,
		-0.678264, 0.498651, 0.539727,
		0.689048, 0.686780, 0.231401,
		35.648869, 32.821972, 36.768131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.911633, 33.031143, 36.385452>,  <35.166534, 32.341225, 36.606152>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.911633, 33.031143, 36.385452> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297920, 33.124573, 36.430775>,  <35.529694, 33.180630, 36.457970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297920, 33.124573, 36.430775>,  <34.911633, 33.031143, 36.385452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.297920, 33.124573, 36.430775> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002740, 0.445601, -0.895228,
		-0.259587, 0.864225, 0.430964,
		0.965716, 0.233571, 0.113305,
		35.587635, 33.194645, 36.464767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950386, 33.711174, 36.165546>,  <34.911633, 33.031143, 36.385452>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950386, 33.711174, 36.165546> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322399, 33.566662, 36.138664>,  <35.545609, 33.479954, 36.122536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322399, 33.566662, 36.138664>,  <34.950386, 33.711174, 36.165546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.322399, 33.566662, 36.138664> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088139, 0.396848, -0.913643,
		0.356751, 0.843794, 0.400924,
		0.930032, -0.361280, -0.067205,
		35.601410, 33.458279, 36.118504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431007, 34.237045, 35.853020>,  <34.950386, 33.711174, 36.165546>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.431007, 34.237045, 35.853020> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.603039, 33.882523, 35.784317>,  <35.706257, 33.669811, 35.743095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.603039, 33.882523, 35.784317>,  <35.431007, 34.237045, 35.853020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603039, 33.882523, 35.784317> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066812, 0.220973, -0.972989,
		0.900317, 0.406984, 0.154251,
		0.430076, -0.886304, -0.171754,
		35.732063, 33.616631, 35.732792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062714, 34.341225, 35.432461>,  <35.431007, 34.237045, 35.853020>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062714, 34.341225, 35.432461> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950390, 33.963913, 35.361622>,  <35.882996, 33.737526, 35.319118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950390, 33.963913, 35.361622>,  <36.062714, 34.341225, 35.432461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950390, 33.963913, 35.361622> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098088, 0.155353, -0.982977,
		0.954739, -0.293399, 0.048900,
		-0.280808, -0.943283, -0.177100,
		35.866146, 33.680927, 35.308491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364681, 34.244301, 34.865974>,  <36.062714, 34.341225, 35.432461>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364681, 34.244301, 34.865974> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.135731, 33.917793, 34.834755>,  <35.998360, 33.721889, 34.816025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.135731, 33.917793, 34.834755>,  <36.364681, 34.244301, 34.865974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.135731, 33.917793, 34.834755> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148293, -0.009429, -0.988899,
		0.806468, -0.577600, 0.126443,
		-0.572380, -0.816266, -0.078050,
		35.964016, 33.672913, 34.811340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762699, 33.912926, 34.445457>,  <36.364681, 34.244301, 34.865974>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762699, 33.912926, 34.445457> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397030, 33.754597, 34.410568>,  <36.177628, 33.659599, 34.389637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397030, 33.754597, 34.410568>,  <36.762699, 33.912926, 34.445457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397030, 33.754597, 34.410568> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087384, 0.017654, -0.996018,
		0.395785, -0.918158, 0.018449,
		-0.914176, -0.395821, -0.087219,
		36.122776, 33.635849, 34.384403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.151424, 30.141052, 41.764194> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.809177, 30.338268, 41.827225>,  <35.603828, 30.456598, 41.865044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.809177, 30.338268, 41.827225>,  <36.151424, 30.141052, 41.764194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809177, 30.338268, 41.827225> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116895, 0.112513, -0.986750,
		-0.504239, -0.862700, -0.038634,
		-0.855616, 0.493042, 0.157579,
		35.552494, 30.486181, 41.874500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.553162, 29.868248, 41.348690>,  <36.151424, 30.141052, 41.764194>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.553162, 29.868248, 41.348690> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.473179, 30.254210, 41.416782>,  <35.425190, 30.485786, 41.457638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.473179, 30.254210, 41.416782>,  <35.553162, 29.868248, 41.348690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473179, 30.254210, 41.416782> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211371, 0.127169, -0.969098,
		-0.956734, -0.229758, 0.178524,
		-0.199955, 0.964904, 0.170231,
		35.413193, 30.543680, 41.467850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033020, 29.970978, 40.874588>,  <35.553162, 29.868248, 41.348690>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033020, 29.970978, 40.874588> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.165157, 30.341482, 40.947159>,  <35.244438, 30.563786, 40.990704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.165157, 30.341482, 40.947159>,  <35.033020, 29.970978, 40.874588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165157, 30.341482, 40.947159> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074586, 0.217238, -0.973265,
		-0.940910, 0.307976, 0.140848,
		0.330340, 0.926260, 0.181431,
		35.264259, 30.619360, 41.001587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740997, 30.268118, 40.284203>,  <35.033020, 29.970978, 40.874588>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.740997, 30.268118, 40.284203> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.982582, 30.553463, 40.426380>,  <35.127533, 30.724670, 40.511688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.982582, 30.553463, 40.426380>,  <34.740997, 30.268118, 40.284203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982582, 30.553463, 40.426380> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018985, 0.432972, -0.901208,
		-0.796785, 0.551045, 0.247956,
		0.603964, 0.713362, 0.355447,
		35.163773, 30.767471, 40.533012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514988, 30.808592, 39.907501>,  <34.740997, 30.268118, 40.284203>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514988, 30.808592, 39.907501> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.879364, 30.899790, 40.045033>,  <35.097988, 30.954508, 40.127552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.879364, 30.899790, 40.045033>,  <34.514988, 30.808592, 39.907501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879364, 30.899790, 40.045033> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138737, 0.615577, -0.775768,
		-0.388520, 0.754376, 0.529120,
		0.910936, 0.227993, 0.343824,
		35.152645, 30.968187, 40.148178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649628, 31.497025, 39.732044>,  <34.514988, 30.808592, 39.907501>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649628, 31.497025, 39.732044> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.007423, 31.327608, 39.789322>,  <35.222099, 31.225958, 39.823689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.007423, 31.327608, 39.789322>,  <34.649628, 31.497025, 39.732044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007423, 31.327608, 39.789322> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361231, 0.495917, -0.789670,
		0.263445, 0.758077, 0.596587,
		0.894488, -0.423540, 0.143194,
		35.275768, 31.200546, 39.832279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080681, 32.014160, 39.769539>,  <34.649628, 31.497025, 39.732044>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080681, 32.014160, 39.769539> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.303223, 31.694918, 39.677025>,  <35.436749, 31.503372, 39.621517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.303223, 31.694918, 39.677025>,  <35.080681, 32.014160, 39.769539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.303223, 31.694918, 39.677025> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262948, 0.433139, -0.862119,
		0.788243, 0.418828, 0.450840,
		0.556356, -0.798106, -0.231289,
		35.470131, 31.455486, 39.607639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703938, 32.201595, 39.743641>,  <35.080681, 32.014160, 39.769539>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703938, 32.201595, 39.743641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.729843, 31.874451, 39.514935>,  <35.745388, 31.678165, 39.377712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.729843, 31.874451, 39.514935>,  <35.703938, 32.201595, 39.743641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.729843, 31.874451, 39.514935> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441612, 0.537296, -0.718534,
		0.894866, -0.205963, 0.395973,
		0.064764, -0.817858, -0.571763,
		35.749271, 31.629093, 39.343407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315109, 32.302029, 39.362381>,  <35.703938, 32.201595, 39.743641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315109, 32.302029, 39.362381> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.126846, 32.016151, 39.155426>,  <36.013889, 31.844625, 39.031254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.126846, 32.016151, 39.155426>,  <36.315109, 32.302029, 39.362381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126846, 32.016151, 39.155426> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451216, 0.308950, -0.837230,
		0.758211, -0.627504, 0.177072,
		-0.470658, -0.714695, -0.517390,
		35.985649, 31.801743, 39.000210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020351, 32.678051, 39.304134>,  <36.315109, 32.302029, 39.362381>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.020351, 32.678051, 39.304134> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.069668, 33.074974, 39.299770>,  <37.099258, 33.313129, 39.297153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.069668, 33.074974, 39.299770>,  <37.020351, 32.678051, 39.304134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.069668, 33.074974, 39.299770> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117748, 0.025540, 0.992715,
		0.985360, -0.121109, 0.119991,
		0.123291, 0.992311, -0.010906,
		37.106655, 33.372665, 39.296497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328300, 32.706825, 39.882854>,  <37.020351, 32.678051, 39.304134>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328300, 32.706825, 39.882854> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.212887, 33.083172, 39.811836>,  <37.143639, 33.308979, 39.769226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.212887, 33.083172, 39.811836>,  <37.328300, 32.706825, 39.882854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.212887, 33.083172, 39.811836> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122192, 0.147727, 0.981451,
		0.949640, 0.304877, 0.072342,
		-0.288534, 0.940865, -0.177541,
		37.126328, 33.365433, 39.758575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746910, 33.185982, 40.286419>,  <37.328300, 32.706825, 39.882854>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.746910, 33.185982, 40.286419> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.430870, 33.408058, 40.182491>,  <37.241245, 33.541302, 40.120136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.430870, 33.408058, 40.182491>,  <37.746910, 33.185982, 40.286419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.430870, 33.408058, 40.182491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122441, 0.272373, 0.954370,
		0.600622, 0.785862, -0.147224,
		-0.790102, 0.555189, -0.259815,
		37.193840, 33.574615, 40.104546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854378, 33.816490, 40.530308>,  <37.746910, 33.185982, 40.286419>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.854378, 33.816490, 40.530308> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.460369, 33.753086, 40.503143>,  <37.223965, 33.715046, 40.486843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.460369, 33.753086, 40.503143>,  <37.854378, 33.816490, 40.530308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460369, 33.753086, 40.503143> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091719, 0.148071, 0.984714,
		-0.146027, 0.976192, -0.160391,
		-0.985020, -0.158506, -0.067913,
		37.164864, 33.705536, 40.482769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558781, 34.261482, 41.025852>,  <37.854378, 33.816490, 40.530308>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.558781, 34.261482, 41.025852> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.258789, 34.005310, 40.959667>,  <37.078793, 33.851608, 40.919956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.258789, 34.005310, 40.959667>,  <37.558781, 34.261482, 41.025852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.258789, 34.005310, 40.959667> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252123, 0.045514, 0.966624,
		-0.611525, 0.766667, -0.195603,
		-0.749981, -0.640430, -0.165461,
		37.033794, 33.813183, 40.910030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954430, 34.542526, 41.450981>,  <37.558781, 34.261482, 41.025852>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954430, 34.542526, 41.450981> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.884045, 34.154751, 41.382595>,  <36.841816, 33.922085, 41.341564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.884045, 34.154751, 41.382595>,  <36.954430, 34.542526, 41.450981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884045, 34.154751, 41.382595> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288661, -0.115224, 0.950473,
		-0.941123, 0.216595, -0.259564,
		-0.175960, -0.969438, -0.170963,
		36.831257, 33.863918, 41.331306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278229, 34.444023, 41.569462>,  <36.954430, 34.542526, 41.450981>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.278229, 34.444023, 41.569462> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.461754, 34.096928, 41.645905>,  <36.571869, 33.888672, 41.691769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.461754, 34.096928, 41.645905>,  <36.278229, 34.444023, 41.569462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461754, 34.096928, 41.645905> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474471, -0.057424, 0.878396,
		-0.751244, -0.493692, -0.438064,
		0.458813, -0.867738, 0.191103,
		36.599400, 33.836605, 41.703236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765739, 33.975376, 42.018188>,  <36.278229, 34.444023, 41.569462>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765739, 33.975376, 42.018188> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.106426, 33.770340, 42.061695>,  <36.310837, 33.647316, 42.087799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.106426, 33.770340, 42.061695>,  <35.765739, 33.975376, 42.018188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106426, 33.770340, 42.061695> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285071, -0.279106, 0.916970,
		-0.439677, -0.812002, -0.383844,
		0.851715, -0.512594, 0.108762,
		36.361942, 33.616562, 42.094322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674164, 33.347195, 42.366608>,  <35.765739, 33.975376, 42.018188>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.674164, 33.347195, 42.366608> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.070221, 33.357956, 42.421589>,  <36.307854, 33.364414, 42.454578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.070221, 33.357956, 42.421589>,  <35.674164, 33.347195, 42.366608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070221, 33.357956, 42.421589> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125116, -0.271167, 0.954366,
		0.062953, -0.962156, -0.265127,
		0.990143, 0.026908, 0.137452,
		36.367264, 33.366028, 42.462826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929173, 32.681812, 42.776970>,  <35.674164, 33.347195, 42.366608>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929173, 32.681812, 42.776970> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.208500, 32.965439, 42.816105>,  <36.376095, 33.135616, 42.839588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.208500, 32.965439, 42.816105>,  <35.929173, 32.681812, 42.776970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.208500, 32.965439, 42.816105> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094361, -0.226690, 0.969385,
		0.709542, -0.667706, -0.225210,
		0.698317, 0.709070, 0.097840,
		36.417995, 33.178162, 42.845455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465374, 32.400375, 43.331249>,  <35.929173, 32.681812, 42.776970>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.465374, 32.400375, 43.331249> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.535290, 32.793652, 43.310143>,  <36.577240, 33.029617, 43.297478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.535290, 32.793652, 43.310143>,  <36.465374, 32.400375, 43.331249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535290, 32.793652, 43.310143> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029379, 0.058774, 0.997839,
		0.984168, -0.172857, 0.039159,
		0.174785, 0.983192, -0.052765,
		36.587727, 33.088608, 43.294312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014118, 32.429192, 43.782356>,  <36.465374, 32.400375, 43.331249>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014118, 32.429192, 43.782356> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.857418, 32.794899, 43.741089>,  <36.763397, 33.014324, 43.716328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.857418, 32.794899, 43.741089>,  <37.014118, 32.429192, 43.782356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857418, 32.794899, 43.741089> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097486, 0.070257, 0.992754,
		0.914892, 0.398970, 0.061605,
		-0.391751, 0.914269, -0.103171,
		36.739891, 33.069180, 43.710136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232681, 32.776852, 44.331604>,  <37.014118, 32.429192, 43.782356>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232681, 32.776852, 44.331604> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.902172, 32.973633, 44.221878>,  <36.703865, 33.091702, 44.156044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.902172, 32.973633, 44.221878>,  <37.232681, 32.776852, 44.331604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902172, 32.973633, 44.221878> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176417, 0.236478, 0.955487,
		0.534925, 0.837890, -0.108607,
		-0.826276, 0.491954, -0.274316,
		36.654289, 33.121220, 44.139584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.281265, 33.548744, 44.568169>,  <37.232681, 32.776852, 44.331604>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.281265, 33.548744, 44.568169> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.907471, 33.412121, 44.528015>,  <36.683193, 33.330147, 44.503922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.907471, 33.412121, 44.528015>,  <37.281265, 33.548744, 44.568169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907471, 33.412121, 44.528015> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215837, 0.319326, 0.922738,
		-0.283114, 0.883951, -0.372126,
		-0.934484, -0.341558, -0.100383,
		36.627125, 33.309654, 44.497902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.965937, 33.559174, 42.782509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.331736, 33.407562, 42.839123>,  <30.551214, 33.316593, 42.873093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.331736, 33.407562, 42.839123>,  <29.965937, 33.559174, 42.782509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.331736, 33.407562, 42.839123> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292581, 0.377916, -0.878394,
		0.279449, 0.844699, 0.456500,
		0.914497, -0.379030, 0.141535,
		30.606085, 33.293854, 42.881584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.356592, 34.083626, 42.574528>,  <29.965937, 33.559174, 42.782509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.356592, 34.083626, 42.574528> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.556629, 33.742321, 42.515396>,  <30.676651, 33.537540, 42.479916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.556629, 33.742321, 42.515396>,  <30.356592, 34.083626, 42.574528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.556629, 33.742321, 42.515396> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171867, 0.265112, -0.948777,
		0.848745, 0.449070, 0.279228,
		0.500094, -0.853259, -0.147832,
		30.706657, 33.486343, 42.471046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.095850, 34.264019, 42.395943>,  <30.356592, 34.083626, 42.574528>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.095850, 34.264019, 42.395943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.028215, 33.891987, 42.265495>,  <30.987635, 33.668766, 42.187225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.028215, 33.891987, 42.265495>,  <31.095850, 34.264019, 42.395943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.028215, 33.891987, 42.265495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333370, 0.257414, -0.906975,
		0.927510, -0.262076, 0.266536,
		-0.169086, -0.930083, -0.326122,
		30.977489, 33.612961, 42.167660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.559511, 34.230671, 41.954350>,  <31.095850, 34.264019, 42.395943>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.559511, 34.230671, 41.954350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.303795, 33.941029, 41.850834>,  <31.150364, 33.767242, 41.788723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.303795, 33.941029, 41.850834>,  <31.559511, 34.230671, 41.954350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.303795, 33.941029, 41.850834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227494, 0.143382, -0.963166,
		0.734542, -0.674618, 0.073067,
		-0.639292, -0.724108, -0.258792,
		31.112007, 33.723797, 41.773197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.889284, 33.775032, 41.445477>,  <31.559511, 34.230671, 41.954350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.889284, 33.775032, 41.445477> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.496761, 33.711403, 41.402145>,  <31.261248, 33.673225, 41.376148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.496761, 33.711403, 41.402145>,  <31.889284, 33.775032, 41.445477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.496761, 33.711403, 41.402145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087912, 0.130195, -0.987583,
		0.171197, -0.978645, -0.113778,
		-0.981307, -0.159069, -0.108324,
		31.202370, 33.663681, 41.369648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.776424, 33.286774, 40.838528>,  <31.889284, 33.775032, 41.445477>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.776424, 33.286774, 40.838528> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.438288, 33.494247, 40.889702>,  <31.235407, 33.618732, 40.920406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.438288, 33.494247, 40.889702>,  <31.776424, 33.286774, 40.838528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.438288, 33.494247, 40.889702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096587, 0.383921, -0.918301,
		-0.525426, -0.763918, -0.374641,
		-0.845339, 0.518684, 0.127937,
		31.184687, 33.649853, 40.928082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.400856, 33.176109, 40.213512>,  <31.776424, 33.286774, 40.838528>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.400856, 33.176109, 40.213512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.200953, 33.483723, 40.372925>,  <31.081011, 33.668289, 40.468571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.200953, 33.483723, 40.372925>,  <31.400856, 33.176109, 40.213512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.200953, 33.483723, 40.372925> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024236, 0.472346, -0.881080,
		-0.865826, -0.430668, -0.254697,
		-0.499758, 0.769035, 0.398532,
		31.051025, 33.714432, 40.492485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.854548, 33.280823, 39.746284>,  <31.400856, 33.176109, 40.213512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.854548, 33.280823, 39.746284> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.932665, 33.611160, 39.957886>,  <30.979534, 33.809364, 40.084846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.932665, 33.611160, 39.957886>,  <30.854548, 33.280823, 39.746284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.932665, 33.611160, 39.957886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018018, 0.542316, -0.839982,
		-0.980580, 0.154510, 0.120790,
		0.195292, 0.825845, 0.529000,
		30.991253, 33.858913, 40.116585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.449917, 33.737751, 39.463253>,  <30.854548, 33.280823, 39.746284>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.449917, 33.737751, 39.463253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.703379, 33.960236, 39.678329>,  <30.855455, 34.093727, 39.807377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.703379, 33.960236, 39.678329>,  <30.449917, 33.737751, 39.463253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.703379, 33.960236, 39.678329> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069536, 0.651276, -0.755648,
		-0.770486, 0.516207, 0.374006,
		0.633653, 0.556210, 0.537694,
		30.893475, 34.127098, 39.839638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.240213, 34.484711, 39.581039>,  <30.449917, 33.737751, 39.463253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.240213, 34.484711, 39.581039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.639481, 34.471237, 39.601128>,  <30.879042, 34.463154, 39.613178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.639481, 34.471237, 39.601128>,  <30.240213, 34.484711, 39.581039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.639481, 34.471237, 39.601128> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060353, 0.606220, -0.793003,
		-0.003730, 0.794583, 0.607144,
		0.998170, -0.033685, 0.050216,
		30.938932, 34.461132, 39.616192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.409769, 35.168770, 39.560352>,  <30.240213, 34.484711, 39.581039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.409769, 35.168770, 39.560352> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.749725, 34.971558, 39.485947>,  <30.953699, 34.853230, 39.441303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.749725, 34.971558, 39.485947>,  <30.409769, 35.168770, 39.560352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.749725, 34.971558, 39.485947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161723, 0.580004, -0.798399,
		0.501529, 0.648469, 0.572675,
		0.849891, -0.493034, -0.186016,
		31.004692, 34.823647, 39.430141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.036005, 35.647942, 39.473450>,  <30.409769, 35.168770, 39.560352>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.036005, 35.647942, 39.473450> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.149349, 35.317654, 39.278351>,  <31.217356, 35.119480, 39.161293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.149349, 35.317654, 39.278351>,  <31.036005, 35.647942, 39.473450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.149349, 35.317654, 39.278351> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093227, 0.529902, -0.842919,
		0.954472, 0.193377, 0.227132,
		0.283359, -0.825718, -0.487748,
		31.234358, 35.069939, 39.132027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.721323, 35.712475, 39.141918>,  <31.036005, 35.647942, 39.473450>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.721323, 35.712475, 39.141918> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.575722, 35.404015, 38.932983>,  <31.488361, 35.218941, 38.807621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.575722, 35.404015, 38.932983>,  <31.721323, 35.712475, 39.141918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.575722, 35.404015, 38.932983> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393686, 0.380863, -0.836633,
		0.844105, -0.510173, 0.164955,
		-0.364002, -0.771147, -0.522337,
		31.466520, 35.172672, 38.776283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.281204, 35.521999, 38.661510>,  <31.721323, 35.712475, 39.141918>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.281204, 35.521999, 38.661510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.959118, 35.350830, 38.497311>,  <31.765865, 35.248131, 38.398792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.959118, 35.350830, 38.497311>,  <32.281204, 35.521999, 38.661510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.959118, 35.350830, 38.497311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329867, 0.252012, -0.909768,
		0.492759, -0.867971, -0.061768,
		-0.805218, -0.427920, -0.410497,
		31.717552, 35.222454, 38.374161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.993126, 35.540119, 38.966602>,  <32.281204, 35.521999, 38.661510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.993126, 35.540119, 38.966602> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.124260, 35.915638, 39.008896>,  <33.202942, 36.140949, 39.034271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.124260, 35.915638, 39.008896>,  <32.993126, 35.540119, 38.966602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124260, 35.915638, 39.008896> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430294, 0.048747, 0.901371,
		0.841053, -0.340998, 0.419941,
		0.327837, 0.938799, 0.105731,
		33.222610, 36.197277, 39.040615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.212372, 35.490391, 39.608833>,  <32.993126, 35.540119, 38.966602>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.212372, 35.490391, 39.608833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.166180, 35.881767, 39.540333>,  <33.138466, 36.116592, 39.499233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.166180, 35.881767, 39.540333>,  <33.212372, 35.490391, 39.608833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.166180, 35.881767, 39.540333> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388601, 0.114158, 0.914307,
		0.914141, 0.172132, 0.367038,
		-0.115481, 0.978437, -0.171247,
		33.131535, 36.175297, 39.488960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464073, 35.862576, 40.175602>,  <33.212372, 35.490391, 39.608833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464073, 35.862576, 40.175602> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.253242, 36.153160, 39.999218>,  <33.126743, 36.327511, 39.893387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.253242, 36.153160, 39.999218>,  <33.464073, 35.862576, 40.175602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.253242, 36.153160, 39.999218> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469095, 0.183961, 0.863776,
		0.708620, 0.662126, 0.243818,
		-0.527075, 0.726462, -0.440958,
		33.095119, 36.371098, 39.866932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597404, 36.428284, 40.553776>,  <33.464073, 35.862576, 40.175602>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.597404, 36.428284, 40.553776> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.257275, 36.523003, 40.365784>,  <33.053196, 36.579834, 40.252991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.257275, 36.523003, 40.365784>,  <33.597404, 36.428284, 40.553776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257275, 36.523003, 40.365784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357625, 0.395153, 0.846143,
		0.386073, 0.887572, -0.251325,
		-0.850325, 0.236793, -0.469976,
		33.002178, 36.594040, 40.224792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470154, 37.153694, 40.699451>,  <33.597404, 36.428284, 40.553776>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470154, 37.153694, 40.699451> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.125164, 36.965027, 40.626068>,  <32.918171, 36.851826, 40.582039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.125164, 36.965027, 40.626068>,  <33.470154, 37.153694, 40.699451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125164, 36.965027, 40.626068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314122, 0.214696, 0.924788,
		-0.396809, 0.855238, -0.333333,
		-0.862479, -0.471671, -0.183456,
		32.866421, 36.823524, 40.571030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.906487, 37.640270, 40.870216>,  <33.470154, 37.153694, 40.699451>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.906487, 37.640270, 40.870216> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.773098, 37.265274, 40.910034>,  <32.693066, 37.040276, 40.933926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.773098, 37.265274, 40.910034>,  <32.906487, 37.640270, 40.870216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.773098, 37.265274, 40.910034> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425360, 0.243846, 0.871555,
		-0.841346, 0.248299, -0.480087,
		-0.333474, -0.937490, 0.099542,
		32.673058, 36.984028, 40.939896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.435547, 37.670544, 41.456573>,  <32.906487, 37.640270, 40.870216>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.435547, 37.670544, 41.456573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.438606, 37.279797, 41.371098>,  <32.440441, 37.045349, 41.319813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.438606, 37.279797, 41.371098>,  <32.435547, 37.670544, 41.456573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.438606, 37.279797, 41.371098> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211920, -0.210422, 0.954365,
		-0.977257, 0.037987, -0.208628,
		0.007647, -0.976873, -0.213686,
		32.440899, 36.986736, 41.306992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.947468, 37.331577, 41.849674>,  <32.435547, 37.670544, 41.456573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.947468, 37.331577, 41.849674> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.190514, 37.032162, 41.743473>,  <32.336342, 36.852512, 41.679752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.190514, 37.032162, 41.743473>,  <31.947468, 37.331577, 41.849674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.190514, 37.032162, 41.743473> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081425, -0.391232, 0.916683,
		-0.790048, -0.535371, -0.298668,
		0.607614, -0.748542, -0.265499,
		32.372799, 36.807598, 41.663822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618170, 36.699757, 42.125275>,  <31.947468, 37.331577, 41.849674>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618170, 36.699757, 42.125275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.994646, 36.589920, 42.046528>,  <32.220531, 36.524017, 41.999279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.994646, 36.589920, 42.046528>,  <31.618170, 36.699757, 42.125275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.994646, 36.589920, 42.046528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094764, -0.344748, 0.933900,
		-0.324309, -0.897636, -0.298453,
		0.941193, -0.274589, -0.196868,
		32.277004, 36.507542, 41.987465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.621456, 35.952209, 42.212017>,  <31.618170, 36.699757, 42.125275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.621456, 35.952209, 42.212017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.991606, 36.098671, 42.251240>,  <32.213696, 36.186550, 42.274773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.991606, 36.098671, 42.251240>,  <31.621456, 35.952209, 42.212017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.991606, 36.098671, 42.251240> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060347, -0.397701, 0.915528,
		0.374225, -0.841287, -0.390119,
		0.925372, 0.366156, 0.098060,
		32.269218, 36.208519, 42.280659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.125950, 35.383270, 42.275955>,  <31.621456, 35.952209, 42.212017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.125950, 35.383270, 42.275955> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.271923, 35.712921, 42.449226>,  <32.359509, 35.910713, 42.553188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.271923, 35.712921, 42.449226>,  <32.125950, 35.383270, 42.275955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.271923, 35.712921, 42.449226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054536, -0.445542, 0.893598,
		0.929435, -0.349727, -0.117648,
		0.364932, 0.824126, 0.433175,
		32.381401, 35.960159, 42.579178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.699440, 35.143341, 42.653088>,  <32.125950, 35.383270, 42.275955>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.699440, 35.143341, 42.653088> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.606113, 35.494717, 42.819897>,  <32.550117, 35.705544, 42.919983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.606113, 35.494717, 42.819897>,  <32.699440, 35.143341, 42.653088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.606113, 35.494717, 42.819897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019328, -0.432960, 0.901206,
		0.972208, 0.202208, 0.117996,
		-0.233319, 0.878440, 0.417019,
		32.536118, 35.758247, 42.945004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.075294, 35.214912, 43.262321>,  <32.699440, 35.143341, 42.653088>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.075294, 35.214912, 43.262321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.776749, 35.475601, 43.316269>,  <32.597622, 35.632015, 43.348637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.776749, 35.475601, 43.316269>,  <33.075294, 35.214912, 43.262321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.776749, 35.475601, 43.316269> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143410, -0.355379, 0.923655,
		0.649899, 0.670045, 0.358707,
		-0.746367, 0.651725, 0.134870,
		32.552837, 35.671120, 43.356731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.236073, 35.688217, 43.907368>,  <33.075294, 35.214912, 43.262321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.236073, 35.688217, 43.907368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.839333, 35.662979, 43.863106>,  <32.601288, 35.647835, 43.836548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.839333, 35.662979, 43.863106>,  <33.236073, 35.688217, 43.907368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.839333, 35.662979, 43.863106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091349, -0.253094, 0.963119,
		-0.088778, 0.965382, 0.245269,
		-0.991854, -0.063099, -0.110655,
		32.541775, 35.644051, 43.829910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577579, 36.240070, 44.141369>,  <33.236073, 35.688217, 43.907368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577579, 36.240070, 44.141369> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.963711, 36.233597, 44.245590>,  <34.195389, 36.229713, 44.308125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.963711, 36.233597, 44.245590>,  <33.577579, 36.240070, 44.141369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.963711, 36.233597, 44.245590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256055, 0.253092, -0.932942,
		-0.050846, 0.967307, 0.248460,
		0.965324, -0.016183, 0.260552,
		34.253307, 36.228741, 44.323757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950649, 36.763515, 43.801056>,  <33.577579, 36.240070, 44.141369>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950649, 36.763515, 43.801056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.232605, 36.500771, 43.908138>,  <34.401779, 36.343124, 43.972385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.232605, 36.500771, 43.908138>,  <33.950649, 36.763515, 43.801056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.232605, 36.500771, 43.908138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450427, 0.122968, -0.884304,
		0.547944, 0.743919, 0.382546,
		0.704892, -0.656858, 0.267702,
		34.444073, 36.303715, 43.988449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.695889, 37.015068, 43.610733>,  <33.950649, 36.763515, 43.801056>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.695889, 37.015068, 43.610733> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.765182, 36.622314, 43.641430>,  <34.806759, 36.386662, 43.659847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.765182, 36.622314, 43.641430>,  <34.695889, 37.015068, 43.610733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765182, 36.622314, 43.641430> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429615, 0.005220, -0.902997,
		0.886240, 0.189399, 0.422738,
		0.173233, -0.981886, 0.076743,
		34.817154, 36.327747, 43.664452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398232, 36.865261, 43.517555>,  <34.695889, 37.015068, 43.610733>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398232, 36.865261, 43.517555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.247021, 36.499146, 43.461933>,  <35.156296, 36.279476, 43.428558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.247021, 36.499146, 43.461933>,  <35.398232, 36.865261, 43.517555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247021, 36.499146, 43.461933> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389328, -0.020897, -0.920862,
		0.839952, -0.402249, 0.364248,
		-0.378028, -0.915292, -0.139054,
		35.133614, 36.224560, 43.420216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957096, 36.475430, 43.319340>,  <35.398232, 36.865261, 43.517555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957096, 36.475430, 43.319340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.648678, 36.248894, 43.202888>,  <35.463627, 36.112972, 43.133018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.648678, 36.248894, 43.202888>,  <35.957096, 36.475430, 43.319340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648678, 36.248894, 43.202888> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448704, -0.158804, -0.879458,
		0.451841, -0.808727, 0.376564,
		-0.771042, -0.566341, -0.291125,
		35.417366, 36.078991, 43.115551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223309, 35.934544, 42.946102>,  <35.957096, 36.475430, 43.319340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223309, 35.934544, 42.946102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.850037, 35.912560, 42.804028>,  <35.626076, 35.899368, 42.718781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.850037, 35.912560, 42.804028>,  <36.223309, 35.934544, 42.946102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850037, 35.912560, 42.804028> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359260, -0.113512, -0.926308,
		0.010589, -0.992016, 0.125671,
		-0.933178, -0.054957, -0.355190,
		35.570084, 35.896072, 42.697472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214993, 35.383545, 42.550671>,  <36.223309, 35.934544, 42.946102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.214993, 35.383545, 42.550671> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.913212, 35.624588, 42.446613>,  <35.732143, 35.769215, 42.384178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.913212, 35.624588, 42.446613>,  <36.214993, 35.383545, 42.550671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913212, 35.624588, 42.446613> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302179, -0.032954, -0.952681,
		-0.582664, -0.797359, -0.157233,
		-0.754447, 0.602606, -0.260147,
		35.686878, 35.805370, 42.368568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930298, 35.107841, 41.912971>,  <36.214993, 35.383545, 42.550671>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.930298, 35.107841, 41.912971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.837337, 35.496613, 41.927692>,  <35.781563, 35.729874, 41.936523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.837337, 35.496613, 41.927692>,  <35.930298, 35.107841, 41.912971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.837337, 35.496613, 41.927692> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329646, 0.114306, -0.937160,
		-0.915055, -0.205663, -0.346955,
		-0.232399, 0.971924, 0.036801,
		35.767616, 35.788189, 41.938732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.624180, 35.221371, 41.260639>,  <35.930298, 35.107841, 41.912971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.624180, 35.221371, 41.260639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.737083, 35.579979, 41.397217>,  <35.804825, 35.795143, 41.479164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.737083, 35.579979, 41.397217>,  <35.624180, 35.221371, 41.260639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.737083, 35.579979, 41.397217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249598, 0.275035, -0.928470,
		-0.926300, 0.347293, -0.146138,
		0.282258, 0.896518, 0.341448,
		35.821762, 35.848934, 41.499653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156452, 35.651054, 40.854313>,  <35.624180, 35.221371, 41.260639>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156452, 35.651054, 40.854313> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.456528, 35.876213, 40.993088>,  <35.636574, 36.011311, 41.076355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.456528, 35.876213, 40.993088>,  <35.156452, 35.651054, 40.854313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.456528, 35.876213, 40.993088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056454, 0.468252, -0.881790,
		-0.658815, 0.681091, 0.319497,
		0.750184, 0.562899, 0.346941,
		35.681583, 36.045082, 41.097172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089798, 36.333321, 40.550213>,  <35.156452, 35.651054, 40.854313>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089798, 36.333321, 40.550213> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.470802, 36.303356, 40.668274>,  <35.699406, 36.285378, 40.739113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.470802, 36.303356, 40.668274>,  <35.089798, 36.333321, 40.550213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.470802, 36.303356, 40.668274> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301617, 0.365531, -0.880576,
		-0.041920, 0.927779, 0.370767,
		0.952507, -0.074916, 0.295157,
		35.756554, 36.280880, 40.756821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.256504, 36.986462, 40.346771>,  <35.089798, 36.333321, 40.550213>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.256504, 36.986462, 40.346771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.579952, 36.754162, 40.384411>,  <35.774021, 36.614780, 40.406994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.579952, 36.754162, 40.384411>,  <35.256504, 36.986462, 40.346771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.579952, 36.754162, 40.384411> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278331, 0.236708, -0.930860,
		0.518323, 0.778908, 0.353049,
		0.808624, -0.580751, 0.094103,
		35.822540, 36.579937, 40.412643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773026, 37.391975, 39.978645>,  <35.256504, 36.986462, 40.346771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.773026, 37.391975, 39.978645> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.938404, 37.028786, 40.005917>,  <36.037632, 36.810871, 40.022282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.938404, 37.028786, 40.005917>,  <35.773026, 37.391975, 39.978645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938404, 37.028786, 40.005917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409005, 0.118295, -0.904832,
		0.813496, 0.401989, 0.420274,
		0.413449, -0.907971, 0.068183,
		36.062439, 36.756393, 40.026371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.505375, 37.404255, 39.873306>,  <35.773026, 37.391975, 39.978645>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.505375, 37.404255, 39.873306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.419075, 37.031685, 39.756069>,  <36.367294, 36.808144, 39.685726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.419075, 37.031685, 39.756069>,  <36.505375, 37.404255, 39.873306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419075, 37.031685, 39.756069> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535286, 0.138223, -0.833284,
		0.816653, -0.336668, 0.468757,
		-0.215747, -0.931423, -0.293094,
		36.354351, 36.752258, 39.668140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.859316, 41.605541, 28.143219> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.937069, 41.557709, 27.753775>,  <26.983721, 41.529011, 27.520109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.937069, 41.557709, 27.753775>,  <26.859316, 41.605541, 28.143219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.937069, 41.557709, 27.753775> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230276, -0.970368, 0.073206,
		-0.953514, 0.209968, -0.216161,
		0.194384, -0.119580, -0.973610,
		26.995384, 41.521835, 27.461691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.417587, 41.464500, 28.675936>,  <26.859316, 41.605541, 28.143219>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.417587, 41.464500, 28.675936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.765024, 41.309608, 28.552259>,  <26.973486, 41.216675, 28.478054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.765024, 41.309608, 28.552259>,  <26.417587, 41.464500, 28.675936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.765024, 41.309608, 28.552259> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211351, -0.853870, 0.475644,
		-0.448193, -0.347793, -0.823506,
		0.868593, -0.387229, -0.309192,
		27.025602, 41.193439, 28.459501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.301003, 40.813889, 28.236731>,  <26.417587, 41.464500, 28.675936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.301003, 40.813889, 28.236731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.682705, 40.806721, 28.356113>,  <26.911726, 40.802418, 28.427744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.682705, 40.806721, 28.356113>,  <26.301003, 40.813889, 28.236731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.682705, 40.806721, 28.356113> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120778, -0.936247, 0.329932,
		0.273518, -0.350886, -0.895582,
		0.954254, -0.017924, 0.298459,
		26.968981, 40.801342, 28.445652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.604893, 40.168633, 27.928198>,  <26.301003, 40.813889, 28.236731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.604893, 40.168633, 27.928198> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.821062, 40.265202, 28.250603>,  <26.950764, 40.323143, 28.444046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.821062, 40.265202, 28.250603>,  <26.604893, 40.168633, 27.928198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.821062, 40.265202, 28.250603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335877, -0.816413, 0.469740,
		0.771446, -0.524580, -0.360121,
		0.540424, 0.241423, 0.806013,
		26.983189, 40.337627, 28.492407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.958351, 39.552666, 28.074289>,  <26.604893, 40.168633, 27.928198>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.958351, 39.552666, 28.074289> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.976402, 39.785007, 28.399391>,  <26.987232, 39.924412, 28.594452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.976402, 39.785007, 28.399391>,  <26.958351, 39.552666, 28.074289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.976402, 39.785007, 28.399391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308902, -0.765597, 0.564306,
		0.950023, -0.276527, 0.144879,
		0.045127, 0.580856, 0.812754,
		26.989941, 39.959263, 28.643217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.353443, 39.186504, 28.580919>,  <26.958351, 39.552666, 28.074289>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.353443, 39.186504, 28.580919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.153931, 39.448235, 28.808277>,  <27.034224, 39.605274, 28.944693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.153931, 39.448235, 28.808277>,  <27.353443, 39.186504, 28.580919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.153931, 39.448235, 28.808277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086376, -0.690056, 0.718583,
		0.862414, 0.309319, 0.400704,
		-0.498780, 0.654327, 0.568397,
		27.004297, 39.644531, 28.978796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.528873, 39.078785, 29.282539>,  <27.353443, 39.186504, 28.580919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.528873, 39.078785, 29.282539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.203564, 39.303165, 29.344397>,  <27.008377, 39.437794, 29.381512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.203564, 39.303165, 29.344397>,  <27.528873, 39.078785, 29.282539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.203564, 39.303165, 29.344397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103702, -0.401239, 0.910084,
		0.572565, 0.724111, 0.384490,
		-0.813274, 0.560955, 0.154643,
		26.959581, 39.471451, 29.390789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.500639, 38.828007, 29.922474>,  <27.528873, 39.078785, 29.282539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.500639, 38.828007, 29.922474> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.206879, 39.096920, 29.885193>,  <27.030622, 39.258270, 29.862823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.206879, 39.096920, 29.885193>,  <27.500639, 38.828007, 29.922474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.206879, 39.096920, 29.885193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239303, -0.127977, 0.962474,
		0.635131, 0.729145, 0.254866,
		-0.734400, 0.672287, -0.093204,
		26.986559, 39.298607, 29.857231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.570297, 39.442310, 30.449854>,  <27.500639, 38.828007, 29.922474>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.570297, 39.442310, 30.449854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.195747, 39.356461, 30.338758>,  <26.971018, 39.304951, 30.272100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.195747, 39.356461, 30.338758>,  <27.570297, 39.442310, 30.449854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.195747, 39.356461, 30.338758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273832, -0.048353, 0.960561,
		-0.219586, 0.975500, -0.013493,
		-0.936375, -0.214620, -0.277741,
		26.914835, 39.292076, 30.255436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.080122, 39.773670, 30.876684>,  <27.570297, 39.442310, 30.449854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.080122, 39.773670, 30.876684> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.858599, 39.468781, 30.742634>,  <26.725685, 39.285847, 30.662205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.858599, 39.468781, 30.742634>,  <27.080122, 39.773670, 30.876684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.858599, 39.468781, 30.742634> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400329, -0.109162, 0.909847,
		-0.730090, 0.638042, -0.244686,
		-0.553810, -0.762225, -0.335124,
		26.692455, 39.240112, 30.642097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.430279, 39.905659, 31.207693>,  <27.080122, 39.773670, 30.876684>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.430279, 39.905659, 31.207693> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.468920, 39.526371, 31.086662>,  <26.492105, 39.298798, 31.014044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.468920, 39.526371, 31.086662>,  <26.430279, 39.905659, 31.207693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.468920, 39.526371, 31.086662> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477242, -0.310903, 0.821936,
		-0.873446, 0.065001, -0.482563,
		0.096603, -0.948216, -0.302578,
		26.497900, 39.241905, 30.995890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.796461, 39.598602, 31.396925>,  <26.430279, 39.905659, 31.207693>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.796461, 39.598602, 31.396925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.061689, 39.300652, 31.367271>,  <26.220827, 39.121880, 31.349480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.061689, 39.300652, 31.367271>,  <25.796461, 39.598602, 31.396925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.061689, 39.300652, 31.367271> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367887, -0.410525, 0.834343,
		-0.651917, -0.525955, -0.546237,
		0.663071, -0.744876, -0.074136,
		26.260611, 39.077190, 31.345030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.441959, 38.904285, 31.540785>,  <25.796461, 39.598602, 31.396925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.441959, 38.904285, 31.540785> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.820145, 38.782639, 31.587456>,  <26.047056, 38.709648, 31.615458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.820145, 38.782639, 31.587456>,  <25.441959, 38.904285, 31.540785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.820145, 38.782639, 31.587456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270542, -0.533668, 0.801253,
		-0.181410, -0.789120, -0.586839,
		0.945461, -0.304120, 0.116678,
		26.103783, 38.691402, 31.622459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.411615, 38.138672, 31.658216>,  <25.441959, 38.904285, 31.540785>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.411615, 38.138672, 31.658216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.766140, 38.256672, 31.801004>,  <25.978855, 38.327473, 31.886677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.766140, 38.256672, 31.801004>,  <25.411615, 38.138672, 31.658216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.766140, 38.256672, 31.801004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183333, -0.484345, 0.855452,
		0.425253, -0.823642, -0.375198,
		0.886312, 0.294997, 0.356971,
		26.032034, 38.345173, 31.908096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.774286, 37.472599, 31.933958>,  <25.411615, 38.138672, 31.658216>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.774286, 37.472599, 31.933958> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.974926, 37.775642, 32.101013>,  <26.095310, 37.957470, 32.201244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.974926, 37.775642, 32.101013>,  <25.774286, 37.472599, 31.933958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.974926, 37.775642, 32.101013> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016749, -0.474166, 0.880276,
		0.864938, -0.448541, -0.225152,
		0.501599, 0.757613, 0.417637,
		26.125406, 38.002926, 32.226303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.350042, 37.107304, 32.235878>,  <25.774286, 37.472599, 31.933958>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.350042, 37.107304, 32.235878> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.338219, 37.464989, 32.414543>,  <26.331125, 37.679600, 32.521744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.338219, 37.464989, 32.414543>,  <26.350042, 37.107304, 32.235878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.338219, 37.464989, 32.414543> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311343, -0.416392, 0.854215,
		0.949838, 0.164315, -0.266099,
		-0.029559, 0.894213, 0.446664,
		26.329351, 37.733253, 32.548542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.957956, 37.117599, 32.596416>,  <26.350042, 37.107304, 32.235878>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.957956, 37.117599, 32.596416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.723032, 37.390980, 32.769836>,  <26.582077, 37.555008, 32.873886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.723032, 37.390980, 32.769836>,  <26.957956, 37.117599, 32.596416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.723032, 37.390980, 32.769836> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162386, -0.425269, 0.890380,
		0.792903, 0.593333, 0.138783,
		-0.587311, 0.683449, 0.433547,
		26.546839, 37.596016, 32.899902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.268642, 37.315689, 33.152233>,  <26.957956, 37.117599, 32.596416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.268642, 37.315689, 33.152233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.888475, 37.414974, 33.227169>,  <26.660376, 37.474545, 33.272129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.888475, 37.414974, 33.227169>,  <27.268642, 37.315689, 33.152233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.888475, 37.414974, 33.227169> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112630, -0.286777, 0.951353,
		0.289862, 0.925284, 0.244602,
		-0.950418, 0.248212, 0.187341,
		26.603350, 37.489437, 33.283371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.311979, 37.697216, 33.685352>,  <27.268642, 37.315689, 33.152233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.311979, 37.697216, 33.685352> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.935001, 37.566078, 33.659081>,  <26.708815, 37.487396, 33.643318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.935001, 37.566078, 33.659081>,  <27.311979, 37.697216, 33.685352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.935001, 37.566078, 33.659081> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027744, -0.272431, 0.961775,
		-0.333207, 0.904598, 0.265847,
		-0.942445, -0.327846, -0.065679,
		26.652267, 37.467724, 33.639378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.117733, 37.968025, 34.251171>,  <27.311979, 37.697216, 33.685352>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.117733, 37.968025, 34.251171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.848425, 37.685032, 34.165215>,  <26.686840, 37.515236, 34.113640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.848425, 37.685032, 34.165215>,  <27.117733, 37.968025, 34.251171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.848425, 37.685032, 34.165215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208578, -0.097098, 0.973174,
		-0.709366, 0.700031, -0.082191,
		-0.673272, -0.707480, -0.214889,
		26.646444, 37.472786, 34.100746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.090933, 37.668278, 34.876289>,  <27.117733, 37.968025, 34.251171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.090933, 37.668278, 34.876289> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.416227, 37.616199, 34.649414>,  <27.611404, 37.584953, 34.513290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.416227, 37.616199, 34.649414>,  <27.090933, 37.668278, 34.876289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.416227, 37.616199, 34.649414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171249, 0.985036, 0.019434,
		0.556168, -0.112935, 0.823360,
		0.813234, -0.130191, -0.567186,
		27.660198, 37.577141, 34.479259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.520409, 38.088997, 35.129036>,  <27.090933, 37.668278, 34.876289>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.520409, 38.088997, 35.129036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.703825, 38.030231, 34.778458>,  <27.813875, 37.994972, 34.568111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.703825, 38.030231, 34.778458>,  <27.520409, 38.088997, 35.129036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.703825, 38.030231, 34.778458> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130314, 0.986695, -0.097214,
		0.879067, -0.069637, 0.471584,
		0.458540, -0.146912, -0.876446,
		27.841387, 37.986156, 34.515522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.140171, 38.573402, 35.088886>,  <27.520409, 38.088997, 35.129036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.140171, 38.573402, 35.088886> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.061693, 38.482353, 34.707375>,  <28.014606, 38.427723, 34.478466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.061693, 38.482353, 34.707375>,  <28.140171, 38.573402, 35.088886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.061693, 38.482353, 34.707375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075864, 0.966244, -0.246207,
		0.977626, -0.120662, -0.172304,
		-0.196195, -0.227626, -0.953779,
		28.002834, 38.414066, 34.421242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.649786, 38.863342, 34.606533>,  <28.140171, 38.573402, 35.088886>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.649786, 38.863342, 34.606533> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.328779, 38.817078, 34.372410>,  <28.136175, 38.789318, 34.231934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.328779, 38.817078, 34.372410>,  <28.649786, 38.863342, 34.606533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.328779, 38.817078, 34.372410> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114685, 0.932830, -0.341577,
		0.585503, -0.341248, -0.735347,
		-0.802516, -0.115661, -0.585311,
		28.088024, 38.782379, 34.196815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.718887, 39.342663, 33.996017>,  <28.649786, 38.863342, 34.606533>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.718887, 39.342663, 33.996017> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.333620, 39.235443, 34.004551>,  <28.102459, 39.171112, 34.009670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.333620, 39.235443, 34.004551>,  <28.718887, 39.342663, 33.996017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.333620, 39.235443, 34.004551> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254028, 0.881035, -0.399057,
		0.088173, -0.389778, -0.916678,
		-0.963169, -0.268048, 0.021332,
		28.044670, 39.155029, 34.010952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.459789, 39.561508, 33.393105>,  <28.718887, 39.342663, 33.996017>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.459789, 39.561508, 33.393105> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.134802, 39.511444, 33.620869>,  <27.939810, 39.481407, 33.757526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.134802, 39.511444, 33.620869>,  <28.459789, 39.561508, 33.393105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.134802, 39.511444, 33.620869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397534, 0.833350, -0.384050,
		-0.426450, -0.538388, -0.726828,
		-0.812470, -0.125161, 0.569409,
		27.891060, 39.473896, 33.791691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.820320, 39.670658, 33.011978>,  <28.459789, 39.561508, 33.393105>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.820320, 39.670658, 33.011978> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.681252, 39.722832, 33.383377>,  <27.597811, 39.754135, 33.606216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.681252, 39.722832, 33.383377>,  <27.820320, 39.670658, 33.011978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.681252, 39.722832, 33.383377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465214, 0.835787, -0.291608,
		-0.814064, -0.533335, -0.229898,
		-0.347671, 0.130436, 0.928499,
		27.576950, 39.761963, 33.661926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.199734, 39.871407, 32.863922>,  <27.820320, 39.670658, 33.011978>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.199734, 39.871407, 32.863922> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.211159, 39.961174, 33.253551>,  <27.218014, 40.015034, 33.487328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.211159, 39.961174, 33.253551>,  <27.199734, 39.871407, 32.863922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.211159, 39.961174, 33.253551> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501825, 0.845991, -0.180197,
		-0.864498, -0.483667, 0.136786,
		0.028564, 0.224422, 0.974073,
		27.219728, 40.028500, 33.545773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.591778, 40.079197, 33.076740>,  <27.199734, 39.871407, 32.863922>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.591778, 40.079197, 33.076740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.836552, 40.263851, 33.333622>,  <26.983416, 40.374645, 33.487751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.836552, 40.263851, 33.333622>,  <26.591778, 40.079197, 33.076740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.836552, 40.263851, 33.333622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461874, 0.867725, -0.183645,
		-0.642036, -0.184240, 0.744208,
		0.611933, 0.461637, 0.642206,
		27.020132, 40.402344, 33.526283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.170807, 40.615639, 33.355175>,  <26.591778, 40.079197, 33.076740>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.170807, 40.615639, 33.355175> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.554451, 40.706116, 33.423229>,  <26.784637, 40.760403, 33.464062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.554451, 40.706116, 33.423229>,  <26.170807, 40.615639, 33.355175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.554451, 40.706116, 33.423229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144204, 0.907768, -0.393906,
		-0.243545, 0.353264, 0.903266,
		0.959110, 0.226189, 0.170140,
		26.842184, 40.773972, 33.474270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.186857, 41.210110, 33.748859>,  <26.170807, 40.615639, 33.355175>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.186857, 41.210110, 33.748859> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.548164, 41.194805, 33.577911>,  <26.764950, 41.185623, 33.475342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.548164, 41.194805, 33.577911>,  <26.186857, 41.210110, 33.748859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.548164, 41.194805, 33.577911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094757, 0.953639, -0.285645,
		0.418481, 0.298510, 0.857768,
		0.903269, -0.038258, -0.427366,
		26.819145, 41.183327, 33.449703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.529825, 41.896313, 33.975857>,  <26.186857, 41.210110, 33.748859>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.529825, 41.896313, 33.975857> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.734518, 41.751598, 33.664154>,  <26.857334, 41.664768, 33.477131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.734518, 41.751598, 33.664154>,  <26.529825, 41.896313, 33.975857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.734518, 41.751598, 33.664154> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113754, 0.927560, -0.355938,
		0.851582, 0.093501, 0.515815,
		0.511730, -0.361786, -0.779258,
		26.888037, 41.643063, 33.430378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.166195, 42.227108, 33.922222>,  <26.529825, 41.896313, 33.975857>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.166195, 42.227108, 33.922222> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.071510, 42.113037, 33.550709>,  <27.014700, 42.044594, 33.327801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.071510, 42.113037, 33.550709>,  <27.166195, 42.227108, 33.922222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.071510, 42.113037, 33.550709> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210908, 0.918077, -0.335639,
		0.948412, -0.275337, -0.157173,
		-0.236710, -0.285175, -0.928786,
		27.000498, 42.027485, 33.272072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.489817, 42.687233, 33.554974>,  <27.166195, 42.227108, 33.922222>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.489817, 42.687233, 33.554974> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.253668, 42.547039, 33.264149>,  <27.111979, 42.462921, 33.089653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.253668, 42.547039, 33.264149>,  <27.489817, 42.687233, 33.554974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.253668, 42.547039, 33.264149> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088444, 0.867283, -0.489896,
		0.802269, -0.353527, -0.481024,
		-0.590375, -0.350484, -0.727061,
		27.076555, 42.441895, 33.046032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.883402, 42.723061, 32.926563>,  <27.489817, 42.687233, 33.554974>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.883402, 42.723061, 32.926563> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.501097, 42.723236, 32.808907>,  <27.271713, 42.723339, 32.738312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.501097, 42.723236, 32.808907>,  <27.883402, 42.723061, 32.926563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.501097, 42.723236, 32.808907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187159, 0.772352, -0.606996,
		0.226918, -0.635195, -0.738265,
		-0.955761, 0.000435, -0.294143,
		27.214369, 42.723366, 32.720665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.838179, 42.682766, 32.149864>,  <27.883402, 42.723061, 32.926563>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.838179, 42.682766, 32.149864> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.492023, 42.841339, 32.272465>,  <27.284330, 42.936485, 32.346024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.492023, 42.841339, 32.272465>,  <27.838179, 42.682766, 32.149864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.492023, 42.841339, 32.272465> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139227, 0.777788, -0.612913,
		-0.481375, -0.487733, -0.728282,
		-0.865387, 0.396437, 0.306502,
		27.232407, 42.960270, 32.364414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.519835, 43.019299, 31.454632>,  <27.838179, 42.682766, 32.149864>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.519835, 43.019299, 31.454632> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.340721, 43.194214, 31.766598>,  <27.233253, 43.299164, 31.953777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.340721, 43.194214, 31.766598>,  <27.519835, 43.019299, 31.454632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.340721, 43.194214, 31.766598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011317, 0.869409, -0.493964,
		-0.894072, -0.230014, -0.384356,
		-0.447781, 0.437289, 0.779917,
		27.206387, 43.325401, 32.000572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.040337, 43.467712, 31.188396>,  <27.519835, 43.019299, 31.454632>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.040337, 43.467712, 31.188396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.089216, 43.607002, 31.560162>,  <27.118544, 43.690578, 31.783220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.089216, 43.607002, 31.560162>,  <27.040337, 43.467712, 31.188396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.089216, 43.607002, 31.560162> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149642, 0.932189, -0.329592,
		-0.981160, -0.098804, 0.166021,
		0.122198, 0.348227, 0.929412,
		27.125875, 43.711472, 31.838985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.587343, 44.067062, 31.168346>,  <27.040337, 43.467712, 31.188396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.587343, 44.067062, 31.168346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.844412, 44.108494, 31.471989>,  <26.998653, 44.133354, 31.654175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.844412, 44.108494, 31.471989>,  <26.587343, 44.067062, 31.168346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.844412, 44.108494, 31.471989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173884, 0.945241, -0.276194,
		-0.746149, 0.309499, 0.589468,
		0.642671, 0.103583, 0.759107,
		27.037212, 44.139568, 31.699720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.391184, 44.719013, 31.465336>,  <26.587343, 44.067062, 31.168346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.391184, 44.719013, 31.465336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.754257, 44.627331, 31.605951>,  <26.972101, 44.572323, 31.690321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.754257, 44.627331, 31.605951>,  <26.391184, 44.719013, 31.465336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.754257, 44.627331, 31.605951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316278, 0.924203, -0.214052,
		-0.275830, 0.305474, 0.911375,
		0.907682, -0.229206, 0.351537,
		27.026562, 44.558571, 31.711412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.640507, 45.284351, 31.821259>,  <26.391184, 44.719013, 31.465336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.640507, 45.284351, 31.821259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.976772, 45.086121, 31.733913>,  <27.178532, 44.967182, 31.681507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.976772, 45.086121, 31.733913>,  <26.640507, 45.284351, 31.821259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.976772, 45.086121, 31.733913> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456486, 0.865402, -0.206639,
		0.291378, 0.074035, 0.953739,
		0.840666, -0.495578, -0.218363,
		27.228971, 44.937447, 31.668404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.262644, 45.640465, 32.210293>,  <26.640507, 45.284351, 31.821259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.262644, 45.640465, 32.210293> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.365273, 45.446850, 31.875660>,  <27.426849, 45.330681, 31.674879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.365273, 45.446850, 31.875660>,  <27.262644, 45.640465, 32.210293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.365273, 45.446850, 31.875660> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442580, 0.828320, -0.343524,
		0.859240, -0.282117, 0.426752,
		0.256574, -0.484042, -0.836585,
		27.442245, 45.301636, 31.624685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.806583, 34.106743, 44.632057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.619946, 33.761673, 44.710117>,  <36.507965, 33.554630, 44.756954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.619946, 33.761673, 44.710117>,  <36.806583, 34.106743, 44.632057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619946, 33.761673, 44.710117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477149, 0.431288, 0.765715,
		-0.744729, 0.264161, -0.612860,
		-0.466591, -0.862676, 0.195149,
		36.479969, 33.502869, 44.768661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288990, 34.382950, 45.132153>,  <36.806583, 34.106743, 44.632057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288990, 34.382950, 45.132153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.196911, 33.993832, 45.142609>,  <36.141663, 33.760361, 45.148884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.196911, 33.993832, 45.142609>,  <36.288990, 34.382950, 45.132153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196911, 33.993832, 45.142609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448306, 0.129853, 0.884398,
		-0.863732, 0.191863, -0.466000,
		-0.230195, -0.972793, 0.026145,
		36.127853, 33.701992, 45.150452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521976, 34.327446, 45.200649>,  <36.288990, 34.382950, 45.132153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521976, 34.327446, 45.200649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.715092, 34.007591, 45.343472>,  <35.830959, 33.815678, 45.429165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.715092, 34.007591, 45.343472>,  <35.521976, 34.327446, 45.200649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715092, 34.007591, 45.343472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472239, 0.105645, 0.875117,
		-0.737501, -0.591112, -0.326617,
		0.482787, -0.799641, 0.357060,
		35.859928, 33.767700, 45.450588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.018475, 33.988167, 45.610294>,  <35.521976, 34.327446, 45.200649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.018475, 33.988167, 45.610294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.355385, 33.812809, 45.735752>,  <35.557533, 33.707592, 45.811028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.355385, 33.812809, 45.735752>,  <35.018475, 33.988167, 45.610294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355385, 33.812809, 45.735752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357775, -0.019449, 0.933605,
		-0.403190, -0.898571, -0.173229,
		0.842280, -0.438397, 0.313645,
		35.608070, 33.681290, 45.829845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791973, 33.375065, 46.061802>,  <35.018475, 33.988167, 45.610294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791973, 33.375065, 46.061802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.171162, 33.420792, 46.180653>,  <35.398674, 33.448227, 46.251961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.171162, 33.420792, 46.180653>,  <34.791973, 33.375065, 46.061802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171162, 33.420792, 46.180653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272316, -0.192282, 0.942800,
		0.164911, -0.974658, -0.151147,
		0.947971, 0.114318, 0.297125,
		35.455551, 33.455086, 46.269791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.958511, 32.820450, 46.407036>,  <34.791973, 33.375065, 46.061802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.958511, 32.820450, 46.407036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.235020, 33.069824, 46.553173>,  <35.400925, 33.219448, 46.640854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.235020, 33.069824, 46.553173>,  <34.958511, 32.820450, 46.407036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.235020, 33.069824, 46.553173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268901, -0.247338, 0.930868,
		0.670697, -0.741724, -0.003336,
		0.691272, 0.623434, 0.365339,
		35.442402, 33.256855, 46.662773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425327, 32.412468, 46.715050>,  <34.958511, 32.820450, 46.407036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425327, 32.412468, 46.715050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.448101, 32.769165, 46.894627>,  <35.461765, 32.983185, 47.002373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.448101, 32.769165, 46.894627>,  <35.425327, 32.412468, 46.715050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448101, 32.769165, 46.894627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251117, -0.422423, 0.870919,
		0.966281, -0.162317, 0.199884,
		0.056930, 0.891747, 0.448940,
		35.465179, 33.036690, 47.029308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774670, 32.261158, 47.266335>,  <35.425327, 32.412468, 46.715050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.774670, 32.261158, 47.266335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.632763, 32.623959, 47.357105>,  <35.547619, 32.841637, 47.411568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.632763, 32.623959, 47.357105>,  <35.774670, 32.261158, 47.266335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632763, 32.623959, 47.357105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172579, -0.302073, 0.937533,
		0.918889, 0.293442, 0.263694,
		-0.354766, 0.906997, 0.226929,
		35.526333, 32.896057, 47.425182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053341, 32.437958, 47.851994>,  <35.774670, 32.261158, 47.266335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053341, 32.437958, 47.851994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.735626, 32.680973, 47.851238>,  <35.544998, 32.826782, 47.850784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.735626, 32.680973, 47.851238>,  <36.053341, 32.437958, 47.851994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735626, 32.680973, 47.851238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233018, -0.301778, 0.924464,
		0.561080, 0.734728, 0.381266,
		-0.794287, 0.607540, -0.001884,
		35.497341, 32.863235, 47.850674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020454, 32.756245, 48.560581>,  <36.053341, 32.437958, 47.851994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020454, 32.756245, 48.560581> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.659599, 32.838509, 48.408875>,  <35.443085, 32.887867, 48.317848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.659599, 32.838509, 48.408875>,  <36.020454, 32.756245, 48.560581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659599, 32.838509, 48.408875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421127, -0.228706, 0.877693,
		0.093764, 0.951524, 0.292934,
		-0.902142, 0.205658, -0.379268,
		35.388958, 32.900208, 48.295094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.681149, 33.075935, 49.139927>,  <36.020454, 32.756245, 48.560581>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.681149, 33.075935, 49.139927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.411224, 32.953678, 48.871239>,  <35.249268, 32.880322, 48.710026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.411224, 32.953678, 48.871239>,  <35.681149, 33.075935, 49.139927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411224, 32.953678, 48.871239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623875, -0.249944, 0.740479,
		-0.394217, 0.918754, -0.022020,
		-0.674814, -0.305647, -0.671719,
		35.208778, 32.861984, 48.669724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040779, 33.382496, 49.337421>,  <35.681149, 33.075935, 49.139927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040779, 33.382496, 49.337421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.951061, 33.074802, 49.098103>,  <34.897228, 32.890186, 48.954510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.951061, 33.074802, 49.098103>,  <35.040779, 33.382496, 49.337421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951061, 33.074802, 49.098103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829863, -0.171095, 0.531088,
		-0.510899, 0.615630, -0.599985,
		-0.224299, -0.769238, -0.598301,
		34.883770, 32.844032, 48.918613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320721, 33.416328, 49.234200>,  <35.040779, 33.382496, 49.337421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.320721, 33.416328, 49.234200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.403938, 33.039246, 49.129883>,  <34.453869, 32.812996, 49.067291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.403938, 33.039246, 49.129883>,  <34.320721, 33.416328, 49.234200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.403938, 33.039246, 49.129883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804758, -0.316524, 0.502173,
		-0.555952, 0.105403, -0.824505,
		0.208045, -0.942710, -0.260796,
		34.466351, 32.756432, 49.051643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724922, 33.148357, 48.741032>,  <34.320721, 33.416328, 49.234200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724922, 33.148357, 48.741032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.921242, 32.890461, 48.975441>,  <34.039032, 32.735722, 49.116089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.921242, 32.890461, 48.975441>,  <33.724922, 33.148357, 48.741032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.921242, 32.890461, 48.975441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867497, -0.299047, 0.397517,
		-0.081046, -0.703477, -0.706082,
		0.490795, -0.644742, 0.586028,
		34.068481, 32.697037, 49.151249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612434, 33.674572, 49.259235>,  <33.724922, 33.148357, 48.741032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612434, 33.674572, 49.259235> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.424458, 34.026772, 49.284153>,  <33.311672, 34.238091, 49.299103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.424458, 34.026772, 49.284153>,  <33.612434, 33.674572, 49.259235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.424458, 34.026772, 49.284153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323108, 0.237268, -0.916136,
		-0.821434, -0.410404, -0.395998,
		-0.469943, 0.880496, 0.062295,
		33.283474, 34.290920, 49.302841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.479191, 33.849331, 48.562935>,  <33.612434, 33.674572, 49.259235>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.479191, 33.849331, 48.562935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.474224, 34.191265, 48.770432>,  <33.471245, 34.396427, 48.894932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.474224, 34.191265, 48.770432>,  <33.479191, 33.849331, 48.562935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.474224, 34.191265, 48.770432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331577, 0.492952, -0.804397,
		-0.943346, 0.162017, -0.289566,
		-0.012417, 0.854838, 0.518746,
		33.470501, 34.447716, 48.926056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.145317, 34.267452, 48.067295>,  <33.479191, 33.849331, 48.562935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.145317, 34.267452, 48.067295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.309528, 34.518517, 48.331875>,  <33.408054, 34.669155, 48.490623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.309528, 34.518517, 48.331875>,  <33.145317, 34.267452, 48.067295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.309528, 34.518517, 48.331875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452683, 0.489403, -0.745361,
		-0.791546, 0.605417, -0.083217,
		0.410527, 0.627659, 0.661447,
		33.432686, 34.706814, 48.530308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916191, 34.897053, 47.763813>,  <33.145317, 34.267452, 48.067295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.916191, 34.897053, 47.763813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.217957, 34.994915, 48.007454>,  <33.399014, 35.053635, 48.153637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.217957, 34.994915, 48.007454>,  <32.916191, 34.897053, 47.763813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217957, 34.994915, 48.007454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351595, 0.632979, -0.689723,
		-0.554296, 0.734492, 0.391506,
		0.754411, 0.244660, 0.609102,
		33.444279, 35.068314, 48.190186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.849388, 35.594803, 47.805241>,  <32.916191, 34.897053, 47.763813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.849388, 35.594803, 47.805241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.219334, 35.478680, 47.903503>,  <33.441299, 35.409004, 47.962463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.219334, 35.478680, 47.903503>,  <32.849388, 35.594803, 47.805241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219334, 35.478680, 47.903503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372184, 0.558187, -0.741557,
		0.078159, 0.777268, 0.624295,
		0.924862, -0.290312, 0.245659,
		33.496792, 35.391586, 47.977200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.283508, 36.213303, 47.867744>,  <32.849388, 35.594803, 47.805241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.283508, 36.213303, 47.867744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.557251, 35.924347, 47.828106>,  <33.721497, 35.750973, 47.804321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.557251, 35.924347, 47.828106>,  <33.283508, 36.213303, 47.867744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.557251, 35.924347, 47.828106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395955, 0.482302, -0.781412,
		0.612276, 0.495523, 0.616097,
		0.684352, -0.722386, -0.099098,
		33.762558, 35.707630, 47.798378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.010628, 36.481712, 47.998402>,  <33.283508, 36.213303, 47.867744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.010628, 36.481712, 47.998402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.006245, 36.176102, 47.740364>,  <34.003616, 35.992737, 47.585541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.006245, 36.176102, 47.740364>,  <34.010628, 36.481712, 47.998402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.006245, 36.176102, 47.740364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324916, 0.607404, -0.724908,
		0.945680, -0.217541, 0.241591,
		-0.010954, -0.764027, -0.645092,
		34.002960, 35.946892, 47.546837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648712, 36.540737, 47.451542>,  <34.010628, 36.481712, 47.998402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648712, 36.540737, 47.451542> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.394527, 36.280388, 47.285385>,  <34.242016, 36.124176, 47.185692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.394527, 36.280388, 47.285385>,  <34.648712, 36.540737, 47.451542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.394527, 36.280388, 47.285385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277653, 0.309375, -0.909503,
		0.720486, -0.693288, -0.015878,
		-0.635460, -0.650875, -0.415394,
		34.203888, 36.085125, 47.160767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.905643, 36.438374, 46.772717>,  <34.648712, 36.540737, 47.451542>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.905643, 36.438374, 46.772717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.564896, 36.238152, 46.711052>,  <34.360447, 36.118019, 46.674053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.564896, 36.238152, 46.711052>,  <34.905643, 36.438374, 46.772717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.564896, 36.238152, 46.711052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065400, 0.190384, -0.979529,
		0.519656, -0.844512, -0.129446,
		-0.851869, -0.500552, -0.154165,
		34.309334, 36.087986, 46.664803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108234, 35.995987, 46.164211>,  <34.905643, 36.438374, 46.772717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108234, 35.995987, 46.164211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.710461, 35.988201, 46.205631>,  <34.471798, 35.983528, 46.230484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.710461, 35.988201, 46.205631>,  <35.108234, 35.995987, 46.164211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.710461, 35.988201, 46.205631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102245, -0.058932, -0.993012,
		0.025434, -0.998072, 0.056613,
		-0.994434, -0.019468, 0.103547,
		34.412132, 35.982361, 46.236694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965214, 35.489529, 45.720097>,  <35.108234, 35.995987, 46.164211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965214, 35.489529, 45.720097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.615166, 35.675156, 45.774940>,  <34.405136, 35.786533, 45.807846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.615166, 35.675156, 45.774940>,  <34.965214, 35.489529, 45.720097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615166, 35.675156, 45.774940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185098, -0.059234, -0.980933,
		-0.447102, -0.883815, 0.137736,
		-0.875121, 0.464072, 0.137109,
		34.352631, 35.814377, 45.816074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.467926, 35.104401, 45.412968>,  <34.965214, 35.489529, 45.720097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.467926, 35.104401, 45.412968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.293606, 35.462582, 45.449276>,  <34.189014, 35.677490, 45.471062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.293606, 35.462582, 45.449276>,  <34.467926, 35.104401, 45.412968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.293606, 35.462582, 45.449276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199307, 0.002336, -0.979934,
		-0.877697, -0.445151, 0.177452,
		-0.435804, 0.895452, 0.090772,
		34.162865, 35.731216, 45.476509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.774639, 35.175358, 45.077625>,  <34.467926, 35.104401, 45.412968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.774639, 35.175358, 45.077625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.960770, 35.529148, 45.091362>,  <34.072449, 35.741421, 45.099606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.960770, 35.529148, 45.091362>,  <33.774639, 35.175358, 45.077625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960770, 35.529148, 45.091362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001960, 0.039826, -0.999205,
		-0.885138, 0.464886, 0.020266,
		0.465324, 0.884474, 0.034341,
		34.100368, 35.794491, 45.101665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.548107, 35.583466, 44.541725>,  <33.774639, 35.175358, 45.077625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.548107, 35.583466, 44.541725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.883442, 35.782642, 44.630482>,  <34.084644, 35.902149, 44.683735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.883442, 35.782642, 44.630482>,  <33.548107, 35.583466, 44.541725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883442, 35.782642, 44.630482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180197, 0.131028, -0.974864,
		-0.514502, 0.857253, 0.020118,
		0.838341, 0.497945, 0.221889,
		34.134945, 35.932026, 44.697048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.866413, 35.958954, 44.695053>,  <33.548107, 35.583466, 44.541725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.866413, 35.958954, 44.695053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.590519, 35.768204, 44.477116>,  <32.424984, 35.653751, 44.346352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.590519, 35.768204, 44.477116>,  <32.866413, 35.958954, 44.695053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.590519, 35.768204, 44.477116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422887, -0.345490, 0.837737,
		-0.587737, 0.808222, 0.036630,
		-0.689733, -0.476879, -0.544844,
		32.383598, 35.625141, 44.313663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.223583, 36.177071, 45.024014>,  <32.866413, 35.958954, 44.695053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.223583, 36.177071, 45.024014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.125477, 35.859665, 44.801235>,  <32.066612, 35.669224, 44.667568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.125477, 35.859665, 44.801235>,  <32.223583, 36.177071, 45.024014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.125477, 35.859665, 44.801235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327438, -0.472925, 0.818001,
		-0.912485, 0.382992, -0.143833,
		-0.245266, -0.793510, -0.556943,
		32.051899, 35.621613, 44.634151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.551138, 35.908123, 45.180347>,  <32.223583, 36.177071, 45.024014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.551138, 35.908123, 45.180347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.665319, 35.563660, 45.012096>,  <31.733829, 35.356983, 44.911144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.665319, 35.563660, 45.012096>,  <31.551138, 35.908123, 45.180347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.665319, 35.563660, 45.012096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281109, -0.494818, 0.822273,
		-0.916238, -0.116480, -0.383327,
		0.285455, -0.861154, -0.420628,
		31.750956, 35.305313, 44.885906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.010265, 35.487873, 45.230186>,  <31.551138, 35.908123, 45.180347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.010265, 35.487873, 45.230186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.333515, 35.255627, 45.190529>,  <31.527464, 35.116280, 45.166737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.333515, 35.255627, 45.190529>,  <31.010265, 35.487873, 45.230186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.333515, 35.255627, 45.190529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383078, -0.645937, 0.660316,
		-0.447425, -0.495638, -0.744415,
		0.808122, -0.580611, -0.099141,
		31.575953, 35.081444, 45.160786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.782867, 34.791130, 45.376118>,  <31.010265, 35.487873, 45.230186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.782867, 34.791130, 45.376118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.178120, 34.731564, 45.391186>,  <31.415272, 34.695824, 45.400227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.178120, 34.731564, 45.391186>,  <30.782867, 34.791130, 45.376118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.178120, 34.731564, 45.391186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094679, -0.397350, 0.912770,
		-0.120955, -0.905504, -0.406734,
		0.988133, -0.148913, 0.037671,
		31.474560, 34.686890, 45.402489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.896904, 34.108795, 45.429363>,  <30.782867, 34.791130, 45.376118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.896904, 34.108795, 45.429363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.239510, 34.249611, 45.580334>,  <31.445072, 34.334103, 45.670918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.239510, 34.249611, 45.580334>,  <30.896904, 34.108795, 45.429363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.239510, 34.249611, 45.580334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124914, -0.568141, 0.813395,
		0.500783, -0.743830, -0.442645,
		0.856513, 0.352042, 0.377430,
		31.496464, 34.355225, 45.693562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.222841, 33.529594, 45.668610>,  <30.896904, 34.108795, 45.429363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.222841, 33.529594, 45.668610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.409657, 33.816978, 45.874790>,  <31.521746, 33.989410, 45.998497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.409657, 33.816978, 45.874790>,  <31.222841, 33.529594, 45.668610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.409657, 33.816978, 45.874790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385461, -0.359203, 0.849937,
		0.795799, -0.595638, 0.109178,
		0.467038, 0.718463, 0.515449,
		31.549768, 34.032516, 46.029427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.242165, 32.868954, 45.403782>,  <31.222841, 33.529594, 45.668610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.242165, 32.868954, 45.403782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.030056, 32.531082, 45.432991>,  <30.902790, 32.328358, 45.450516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.030056, 32.531082, 45.432991>,  <31.242165, 32.868954, 45.403782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.030056, 32.531082, 45.432991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067400, -0.127851, -0.989501,
		0.845145, -0.519782, 0.124727,
		-0.530271, -0.844678, 0.073019,
		30.870975, 32.277679, 45.454895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.543344, 32.375412, 44.862495>,  <31.242165, 32.868954, 45.403782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.543344, 32.375412, 44.862495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.189264, 32.204937, 44.937099>,  <30.976816, 32.102654, 44.981861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.189264, 32.204937, 44.937099>,  <31.543344, 32.375412, 44.862495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.189264, 32.204937, 44.937099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156940, -0.103841, -0.982134,
		0.437938, -0.898656, 0.025035,
		-0.885201, -0.426185, 0.186512,
		30.923704, 32.077080, 44.993053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.516741, 31.719110, 44.524345>,  <31.543344, 32.375412, 44.862495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.516741, 31.719110, 44.524345> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.146717, 31.864193, 44.569447>,  <30.924704, 31.951242, 44.596508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.146717, 31.864193, 44.569447>,  <31.516741, 31.719110, 44.524345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.146717, 31.864193, 44.569447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074694, 0.117353, -0.990277,
		-0.372412, -0.924485, -0.081466,
		-0.925057, 0.362706, 0.112757,
		30.869200, 31.973005, 44.603275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.022205, 31.326729, 44.002037>,  <31.516741, 31.719110, 44.524345>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.022205, 31.326729, 44.002037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.846607, 31.674431, 44.092968>,  <30.741247, 31.883053, 44.147526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.846607, 31.674431, 44.092968>,  <31.022205, 31.326729, 44.002037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.846607, 31.674431, 44.092968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023311, 0.241907, -0.970019,
		-0.898186, -0.431134, -0.085933,
		-0.438996, 0.869255, 0.227328,
		30.714909, 31.935207, 44.161167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.572041, 31.495031, 43.409332>,  <31.022205, 31.326729, 44.002037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.572041, 31.495031, 43.409332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.557655, 31.850155, 43.592857>,  <30.549025, 32.063229, 43.702972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.557655, 31.850155, 43.592857>,  <30.572041, 31.495031, 43.409332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.557655, 31.850155, 43.592857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197377, 0.443751, -0.874144,
		-0.979668, -0.121996, 0.159274,
		-0.035964, 0.887807, 0.458808,
		30.546865, 32.116497, 43.730499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.959354, 31.887245, 43.185360>,  <30.572041, 31.495031, 43.409332>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.959354, 31.887245, 43.185360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.207195, 32.172165, 43.317249>,  <30.355900, 32.343117, 43.396385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.207195, 32.172165, 43.317249>,  <29.959354, 31.887245, 43.185360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.207195, 32.172165, 43.317249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150377, 0.520022, -0.840811,
		-0.770376, 0.471386, 0.429321,
		0.619603, 0.712301, 0.329727,
		30.393076, 32.385857, 43.416168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.716452, 32.516609, 43.001102>,  <29.959354, 31.887245, 43.185360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.716452, 32.516609, 43.001102> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.095020, 32.621319, 43.076752>,  <30.322161, 32.684143, 43.122139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.095020, 32.621319, 43.076752>,  <29.716452, 32.516609, 43.001102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.095020, 32.621319, 43.076752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030214, 0.511277, -0.858885,
		-0.321523, 0.818579, 0.475974,
		0.946420, 0.261770, 0.189119,
		30.378946, 32.699848, 43.133488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<33.704071, 29.878998, 48.516758> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.991768, 30.156885, 48.513908>,  <34.164387, 30.323618, 48.512199>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.991768, 30.156885, 48.513908>,  <33.704071, 29.878998, 48.516758>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.991768, 30.156885, 48.513908> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060825, 0.052754, -0.996754,
		-0.692087, 0.717345, 0.080199,
		0.719247, 0.694718, -0.007122,
		34.207542, 30.365301, 48.511772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534840, 30.372322, 48.017570>,  <33.704071, 29.878998, 48.516758>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534840, 30.372322, 48.017570> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.930588, 30.389004, 48.073284>,  <34.168037, 30.399014, 48.106712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.930588, 30.389004, 48.073284>,  <33.534840, 30.372322, 48.017570>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.930588, 30.389004, 48.073284> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126729, 0.222221, -0.966725,
		-0.071268, 0.974104, 0.214574,
		0.989374, 0.041704, 0.139285,
		34.227402, 30.401514, 48.115070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747093, 30.791800, 47.374111>,  <33.534840, 30.372322, 48.017570>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.747093, 30.791800, 47.374111> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.096943, 30.645363, 47.501240>,  <34.306854, 30.557501, 47.577515>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.096943, 30.645363, 47.501240>,  <33.747093, 30.791800, 47.374111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.096943, 30.645363, 47.501240> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354655, 0.036201, -0.934296,
		0.330532, 0.929874, 0.161498,
		0.874625, -0.366091, 0.317819,
		34.359329, 30.535536, 47.596584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.393856, 31.207893, 47.052574>,  <33.747093, 30.791800, 47.374111>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.393856, 31.207893, 47.052574> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.541740, 30.858171, 47.178371>,  <34.630470, 30.648338, 47.253849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.541740, 30.858171, 47.178371>,  <34.393856, 31.207893, 47.052574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541740, 30.858171, 47.178371> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381174, -0.165964, -0.909485,
		0.847361, 0.456122, 0.271903,
		0.369710, -0.874305, 0.314493,
		34.652653, 30.595881, 47.272720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127151, 31.166622, 46.818005>,  <34.393856, 31.207893, 47.052574>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127151, 31.166622, 46.818005> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.010620, 30.793961, 46.904858>,  <34.940701, 30.570364, 46.956970>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.010620, 30.793961, 46.904858>,  <35.127151, 31.166622, 46.818005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010620, 30.793961, 46.904858> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305977, -0.305804, -0.901589,
		0.906370, -0.196219, 0.374154,
		-0.291327, -0.931656, 0.217133,
		34.923222, 30.514463, 46.969997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632557, 30.688560, 46.528988>,  <35.127151, 31.166622, 46.818005>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.632557, 30.688560, 46.528988> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.320114, 30.446423, 46.590206>,  <35.132648, 30.301140, 46.626938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.320114, 30.446423, 46.590206>,  <35.632557, 30.688560, 46.528988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320114, 30.446423, 46.590206> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072107, -0.330926, -0.940898,
		0.620215, -0.723910, 0.302139,
		-0.781111, -0.605345, 0.153046,
		35.085781, 30.264818, 46.636120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.886093, 30.184061, 46.119480>,  <35.632557, 30.688560, 46.528988>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.886093, 30.184061, 46.119480> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.491028, 30.146049, 46.169250>,  <35.253986, 30.123241, 46.199112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.491028, 30.146049, 46.169250>,  <35.886093, 30.184061, 46.119480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491028, 30.146049, 46.169250> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096582, -0.255712, -0.961916,
		0.123230, -0.962071, 0.243380,
		-0.987667, -0.095031, 0.124430,
		35.194729, 30.117540, 46.206581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.731743, 29.536243, 45.978127>,  <35.886093, 30.184061, 46.119480>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.731743, 29.536243, 45.978127> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.398506, 29.751947, 45.928875>,  <35.198563, 29.881369, 45.899326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.398506, 29.751947, 45.928875>,  <35.731743, 29.536243, 45.978127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398506, 29.751947, 45.928875> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012561, -0.204097, -0.978870,
		-0.552994, -0.817034, 0.163257,
		-0.833090, 0.539259, -0.123127,
		35.148579, 29.913725, 45.891937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349766, 29.191826, 45.477085>,  <35.731743, 29.536243, 45.978127>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349766, 29.191826, 45.477085> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.177525, 29.552616, 45.464275>,  <35.074181, 29.769091, 45.456589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.177525, 29.552616, 45.464275>,  <35.349766, 29.191826, 45.477085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177525, 29.552616, 45.464275> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111342, -0.088296, -0.989852,
		-0.895649, -0.422663, 0.138448,
		-0.430598, 0.901975, -0.032022,
		35.048344, 29.823208, 45.454670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.820198, 29.080935, 44.990887>,  <35.349766, 29.191826, 45.477085>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.820198, 29.080935, 44.990887> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.858604, 29.478268, 45.016399>,  <34.881649, 29.716667, 45.031708>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.858604, 29.478268, 45.016399>,  <34.820198, 29.080935, 44.990887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858604, 29.478268, 45.016399> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144554, 0.077309, -0.986472,
		-0.984828, 0.085495, 0.151014,
		0.096013, 0.993335, 0.063778,
		34.887409, 29.776268, 45.035534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.245296, 29.433996, 44.538055>,  <34.820198, 29.080935, 44.990887>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.245296, 29.433996, 44.538055> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.550064, 29.683010, 44.609531>,  <34.732925, 29.832418, 44.652416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.550064, 29.683010, 44.609531>,  <34.245296, 29.433996, 44.538055>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550064, 29.683010, 44.609531> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032159, 0.239191, -0.970440,
		-0.646871, 0.745145, 0.162225,
		0.761921, 0.622533, 0.178689,
		34.778641, 29.869770, 44.663139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938370, 30.111420, 44.258678>,  <34.245296, 29.433996, 44.538055>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938370, 30.111420, 44.258678> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.336479, 30.149273, 44.250004>,  <34.575344, 30.171986, 44.244801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.336479, 30.149273, 44.250004>,  <33.938370, 30.111420, 44.258678>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.336479, 30.149273, 44.250004> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070479, 0.550636, -0.831765,
		-0.066770, 0.829364, 0.554704,
		0.995276, 0.094632, -0.021687,
		34.635063, 30.177662, 44.243496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582245, 30.901470, 44.184959>,  <33.938370, 30.111420, 44.258678>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582245, 30.901470, 44.184959> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.226635, 30.812735, 44.024750>,  <33.013268, 30.759493, 43.928623>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.226635, 30.812735, 44.024750>,  <33.582245, 30.901470, 44.184959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.226635, 30.812735, 44.024750> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262045, -0.470813, 0.842418,
		-0.375456, 0.853886, 0.360432,
		-0.889025, -0.221841, -0.400526,
		32.959927, 30.746181, 43.904591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.059746, 31.185816, 44.606335>,  <33.582245, 30.901470, 44.184959>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.059746, 31.185816, 44.606335> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.882912, 30.872112, 44.432209>,  <32.776810, 30.683889, 44.327736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.882912, 30.872112, 44.432209>,  <33.059746, 31.185816, 44.606335>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.882912, 30.872112, 44.432209> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259697, -0.352616, 0.899011,
		-0.858557, 0.510487, -0.047784,
		-0.442084, -0.784261, -0.435312,
		32.750286, 30.636833, 44.301617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359219, 31.050762, 44.977360>,  <33.059746, 31.185816, 44.606335>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.359219, 31.050762, 44.977360> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.417202, 30.711805, 44.773041>,  <32.451992, 30.508430, 44.650452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.417202, 30.711805, 44.773041>,  <32.359219, 31.050762, 44.977360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.417202, 30.711805, 44.773041> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251147, -0.530852, 0.809396,
		-0.957033, 0.010954, -0.289773,
		0.144960, -0.847394, -0.510794,
		32.460690, 30.457586, 44.619804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.836239, 30.669889, 45.222622>,  <32.359219, 31.050762, 44.977360>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.836239, 30.669889, 45.222622> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.043938, 30.377279, 45.045872>,  <32.168556, 30.201714, 44.939823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.043938, 30.377279, 45.045872>,  <31.836239, 30.669889, 45.222622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.043938, 30.377279, 45.045872> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390254, -0.662940, 0.638915,
		-0.760317, -0.159314, -0.629712,
		0.519250, -0.731525, -0.441872,
		32.199711, 30.157822, 44.913311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.324993, 30.108383, 45.203999>,  <31.836239, 30.669889, 45.222622>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.324993, 30.108383, 45.203999> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.693819, 29.958290, 45.166058>,  <31.915115, 29.868235, 45.143291>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.693819, 29.958290, 45.166058>,  <31.324993, 30.108383, 45.203999>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.693819, 29.958290, 45.166058> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206248, -0.683760, 0.699954,
		-0.327504, -0.625839, -0.707861,
		0.922065, -0.375232, -0.094856,
		31.970438, 29.845720, 45.137600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.331690, 29.301672, 45.269009>,  <31.324993, 30.108383, 45.203999>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.331690, 29.301672, 45.269009> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.689566, 29.430222, 45.393105>,  <31.904291, 29.507351, 45.467564>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.689566, 29.430222, 45.393105>,  <31.331690, 29.301672, 45.269009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.689566, 29.430222, 45.393105> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152396, -0.433259, 0.888292,
		0.419887, -0.842025, -0.338657,
		0.894690, 0.321372, 0.310242,
		31.957973, 29.526632, 45.486176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.720858, 28.769194, 45.529415>,  <31.331690, 29.301672, 45.269009>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.720858, 28.769194, 45.529415> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.905390, 29.080776, 45.699310>,  <32.016109, 29.267725, 45.801247>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.905390, 29.080776, 45.699310>,  <31.720858, 28.769194, 45.529415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.905390, 29.080776, 45.699310> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036373, -0.461717, 0.886281,
		0.886482, -0.424318, -0.184671,
		0.461331, 0.778956, 0.424738,
		32.043789, 29.314463, 45.826733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.272865, 28.472910, 46.052498>,  <31.720858, 28.769194, 45.529415>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.272865, 28.472910, 46.052498> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.149666, 28.840282, 46.151787>,  <32.075745, 29.060707, 46.211361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.149666, 28.840282, 46.151787>,  <32.272865, 28.472910, 46.052498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.149666, 28.840282, 46.151787> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007993, -0.263395, 0.964655,
		0.951352, 0.295133, 0.088468,
		-0.308003, 0.918433, 0.248222,
		32.057266, 29.115812, 46.226254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.668507, 28.626709, 46.677189>,  <32.272865, 28.472910, 46.052498>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.668507, 28.626709, 46.677189> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.349770, 28.867640, 46.658211>,  <32.158527, 29.012197, 46.646824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.349770, 28.867640, 46.658211>,  <32.668507, 28.626709, 46.677189>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.349770, 28.867640, 46.658211> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167927, -0.145355, 0.975024,
		0.580385, 0.784906, 0.216971,
		-0.796840, 0.602325, -0.047445,
		32.110718, 29.048336, 46.643978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.556862, 28.870705, 47.269985>,  <32.668507, 28.626709, 46.677189>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.556862, 28.870705, 47.269985> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.214817, 29.050308, 47.166309>,  <32.009590, 29.158070, 47.104103>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.214817, 29.050308, 47.166309>,  <32.556862, 28.870705, 47.269985>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.214817, 29.050308, 47.166309> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411057, -0.282518, 0.866727,
		0.315944, 0.847688, 0.426152,
		-0.855109, 0.449010, -0.259188,
		31.958284, 29.185011, 47.088554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.316311, 29.155735, 47.855862>,  <32.556862, 28.870705, 47.269985>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.316311, 29.155735, 47.855862> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.987303, 29.141020, 47.628845>,  <31.789896, 29.132191, 47.492638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.987303, 29.141020, 47.628845>,  <32.316311, 29.155735, 47.855862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.987303, 29.141020, 47.628845> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557955, -0.141118, 0.817785,
		-0.110176, 0.989309, 0.095546,
		-0.822525, -0.036789, -0.567538,
		31.740545, 29.129984, 47.458584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.876699, 29.697046, 48.039841>,  <32.316311, 29.155735, 47.855862>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.876699, 29.697046, 48.039841> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.638865, 29.431438, 47.858494>,  <31.496164, 29.272074, 47.749683>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.638865, 29.431438, 47.858494>,  <31.876699, 29.697046, 48.039841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.638865, 29.431438, 47.858494> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460132, -0.181390, 0.869124,
		-0.659353, 0.725379, -0.197685,
		-0.594586, -0.664020, -0.453370,
		31.460489, 29.232233, 47.722485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.138334, 29.825085, 48.286076>,  <31.876699, 29.697046, 48.039841>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.138334, 29.825085, 48.286076> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.110830, 29.465845, 48.112320>,  <31.094328, 29.250301, 48.008068>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.110830, 29.465845, 48.112320>,  <31.138334, 29.825085, 48.286076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.110830, 29.465845, 48.112320> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539223, -0.332881, 0.773582,
		-0.839352, 0.287423, -0.461386,
		-0.068759, -0.898097, -0.434389,
		31.090202, 29.196417, 47.982002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.436419, 29.700125, 48.202713>,  <31.138334, 29.825085, 48.286076>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.436419, 29.700125, 48.202713> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.647667, 29.361414, 48.228199>,  <30.774416, 29.158188, 48.243492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.647667, 29.361414, 48.228199>,  <30.436419, 29.700125, 48.202713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.647667, 29.361414, 48.228199> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471366, -0.229914, 0.851442,
		-0.706331, -0.479698, -0.520563,
		0.528120, -0.846776, 0.063718,
		30.806103, 29.107382, 48.247314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.440557, 30.249846, 47.661278>,  <30.436419, 29.700125, 48.202713>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.440557, 30.249846, 47.661278> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.244579, 30.585419, 47.756058>,  <30.126993, 30.786762, 47.812923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.244579, 30.585419, 47.756058>,  <30.440557, 30.249846, 47.661278>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.244579, 30.585419, 47.756058> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169271, 0.358183, -0.918179,
		-0.855162, -0.409749, -0.317497,
		-0.489944, 0.838935, 0.236946,
		30.097595, 30.837099, 47.827141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.006374, 30.365501, 47.088814>,  <30.440557, 30.249846, 47.661278>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.006374, 30.365501, 47.088814> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.016443, 30.722702, 47.268555>,  <30.022484, 30.937021, 47.376400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.016443, 30.722702, 47.268555>,  <30.006374, 30.365501, 47.088814>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.016443, 30.722702, 47.268555> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080696, 0.446212, -0.891281,
		-0.996421, 0.058695, -0.060830,
		0.025171, 0.893000, 0.449352,
		30.023994, 30.990602, 47.403358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.682566, 30.850189, 46.610043>,  <30.006374, 30.365501, 47.088814>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.682566, 30.850189, 46.610043> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.863073, 31.076477, 46.886105>,  <29.971378, 31.212250, 47.051743>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.863073, 31.076477, 46.886105>,  <29.682566, 30.850189, 46.610043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.863073, 31.076477, 46.886105> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291084, 0.637769, -0.713107,
		-0.843579, 0.522698, 0.123135,
		0.451271, 0.565719, 0.690157,
		29.998455, 31.246193, 47.093151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.397520, 31.577248, 46.553768>,  <29.682566, 30.850189, 46.610043>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.397520, 31.577248, 46.553768> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.759361, 31.574192, 46.724243>,  <29.976465, 31.572359, 46.826527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.759361, 31.574192, 46.724243>,  <29.397520, 31.577248, 46.553768>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.759361, 31.574192, 46.724243> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330628, 0.643622, -0.690243,
		-0.269030, 0.765306, 0.584748,
		0.904604, -0.007637, 0.426185,
		30.030743, 31.571901, 46.852100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.589985, 32.288483, 46.476452>,  <29.397520, 31.577248, 46.553768>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.589985, 32.288483, 46.476452> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.941189, 32.101757, 46.518761>,  <30.151911, 31.989721, 46.544147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.941189, 32.101757, 46.518761>,  <29.589985, 32.288483, 46.476452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.941189, 32.101757, 46.518761> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382211, 0.550749, -0.742018,
		0.288127, 0.691926, 0.661983,
		0.878008, -0.466812, 0.105777,
		30.204592, 31.961714, 46.550495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.096035, 32.819729, 46.217045>,  <29.589985, 32.288483, 46.476452>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.096035, 32.819729, 46.217045> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.299891, 32.475681, 46.225704>,  <30.422203, 32.269253, 46.230900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.299891, 32.475681, 46.225704>,  <30.096035, 32.819729, 46.217045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.299891, 32.475681, 46.225704> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373865, 0.198725, -0.905943,
		0.774916, 0.469794, 0.422846,
		0.509637, -0.860117, 0.021644,
		30.452782, 32.217648, 46.232197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.768408, 33.001556, 46.058846>,  <30.096035, 32.819729, 46.217045>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.768408, 33.001556, 46.058846> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.723232, 32.611130, 45.984516>,  <30.696127, 32.376873, 45.939919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.723232, 32.611130, 45.984516>,  <30.768408, 33.001556, 46.058846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.723232, 32.611130, 45.984516> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328677, 0.139790, -0.934040,
		0.937665, -0.166566, 0.305024,
		-0.112940, -0.976071, -0.185822,
		30.689350, 32.318310, 45.928768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.459162, 33.102859, 46.364895>,  <30.768408, 33.001556, 46.058846>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.459162, 33.102859, 46.364895> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.506872, 33.493000, 46.439159>,  <31.535498, 33.727085, 46.483719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.506872, 33.493000, 46.439159>,  <31.459162, 33.102859, 46.364895>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.506872, 33.493000, 46.439159> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199278, -0.159674, 0.966847,
		0.972657, -0.152321, 0.175320,
		0.119277, 0.975347, 0.185662,
		31.542656, 33.785603, 46.494858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.014568, 33.149918, 46.793793>,  <31.459162, 33.102859, 46.364895>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.014568, 33.149918, 46.793793> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.765812, 33.460793, 46.832237>,  <31.616558, 33.647316, 46.855305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.765812, 33.460793, 46.832237>,  <32.014568, 33.149918, 46.793793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.765812, 33.460793, 46.832237> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118280, -0.214545, 0.969526,
		0.774121, 0.591570, 0.225349,
		-0.621890, 0.777185, 0.096112,
		31.579245, 33.693947, 46.861073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.122238, 33.400398, 47.466663>,  <32.014568, 33.149918, 46.793793>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.122238, 33.400398, 47.466663> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.775135, 33.573059, 47.368137>,  <31.566874, 33.676655, 47.309021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.775135, 33.573059, 47.368137>,  <32.122238, 33.400398, 47.466663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.775135, 33.573059, 47.368137> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221547, 0.107674, 0.969187,
		0.444875, 0.895590, 0.002197,
		-0.867757, 0.431654, -0.246316,
		31.514809, 33.702557, 47.294243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126366, 33.964500, 47.832081>,  <32.122238, 33.400398, 47.466663>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126366, 33.964500, 47.832081> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.734087, 33.945065, 47.756317>,  <31.498720, 33.933403, 47.710857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.734087, 33.945065, 47.756317>,  <32.126366, 33.964500, 47.832081>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.734087, 33.945065, 47.756317> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189217, -0.008647, 0.981897,
		-0.049348, 0.998781, -0.000714,
		-0.980695, -0.048590, -0.189413,
		31.439878, 33.930489, 47.699493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.776588, 34.469486, 48.242359>,  <32.126366, 33.964500, 47.832081>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.776588, 34.469486, 48.242359> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.500725, 34.191273, 48.161755>,  <31.335207, 34.024345, 48.113392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.500725, 34.191273, 48.161755>,  <31.776588, 34.469486, 48.242359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.500725, 34.191273, 48.161755> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110702, -0.173737, 0.978550,
		-0.715624, 0.697172, 0.042823,
		-0.689658, -0.695533, -0.201509,
		31.293827, 33.982613, 48.101303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.181273, 34.650204, 48.604458>,  <31.776588, 34.469486, 48.242359>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.181273, 34.650204, 48.604458> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.153576, 34.259342, 48.524078>,  <31.136959, 34.024826, 48.475849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.153576, 34.259342, 48.524078>,  <31.181273, 34.650204, 48.604458>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.153576, 34.259342, 48.524078> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130633, -0.190815, 0.972895,
		-0.989010, 0.093614, -0.114436,
		-0.069241, -0.977152, -0.200947,
		31.132803, 33.966198, 48.463795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.673508, 34.370758, 49.004299>,  <31.181273, 34.650204, 48.604458>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.673508, 34.370758, 49.004299> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.892458, 34.049999, 48.908516>,  <31.023829, 33.857544, 48.851048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.892458, 34.049999, 48.908516>,  <30.673508, 34.370758, 49.004299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.892458, 34.049999, 48.908516> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243333, -0.426265, 0.871256,
		-0.800730, -0.418637, -0.428456,
		0.547376, -0.801898, -0.239455,
		31.056671, 33.809429, 48.836681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.248852, 33.802612, 49.230770>,  <30.673508, 34.370758, 49.004299>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.248852, 33.802612, 49.230770> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.613150, 33.642490, 49.190178>,  <30.831728, 33.546417, 49.165825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.613150, 33.642490, 49.190178>,  <30.248852, 33.802612, 49.230770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.613150, 33.642490, 49.190178> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199107, -0.640916, 0.741339,
		-0.361802, -0.654966, -0.663415,
		0.910745, -0.400309, -0.101476,
		30.886374, 33.522396, 49.159737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.169523, 33.065842, 49.276924>,  <30.248852, 33.802612, 49.230770>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.169523, 33.065842, 49.276924> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.551310, 33.128407, 49.378532>,  <30.780382, 33.165947, 49.439499>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.551310, 33.128407, 49.378532>,  <30.169523, 33.065842, 49.276924>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.551310, 33.128407, 49.378532> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063605, -0.725241, 0.685550,
		0.291459, -0.670492, -0.682270,
		0.954466, 0.156414, 0.254025,
		30.837650, 33.175331, 49.454739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.041416, 35.933475, 34.851318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414989, 35.970295, 34.989471>,  <35.639133, 35.992386, 35.072365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414989, 35.970295, 34.989471>,  <35.041416, 35.933475, 34.851318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414989, 35.970295, 34.989471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344854, -0.022094, 0.938396,
		0.094009, -0.995509, 0.011108,
		0.933937, 0.092048, 0.345382,
		35.695171, 35.997910, 35.093086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139149, 35.410183, 35.427395>,  <35.041416, 35.933475, 34.851318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.139149, 35.410183, 35.427395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.413963, 35.699490, 35.455307>,  <35.578854, 35.873074, 35.472054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.413963, 35.699490, 35.455307>,  <35.139149, 35.410183, 35.427395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413963, 35.699490, 35.455307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222294, 0.117780, 0.967839,
		0.691784, -0.680454, 0.241697,
		0.687037, 0.723264, 0.069783,
		35.620075, 35.916470, 35.476242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460411, 35.300304, 36.081436>,  <35.139149, 35.410183, 35.427395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.460411, 35.300304, 36.081436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.541206, 35.681347, 35.990444>,  <35.589684, 35.909973, 35.935848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.541206, 35.681347, 35.990444>,  <35.460411, 35.300304, 36.081436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541206, 35.681347, 35.990444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154573, 0.260366, 0.953057,
		0.967114, -0.157339, 0.199836,
		0.201984, 0.952604, -0.227483,
		35.601803, 35.967129, 35.922199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920883, 35.462696, 36.563545>,  <35.460411, 35.300304, 36.081436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920883, 35.462696, 36.563545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.763863, 35.801136, 36.419308>,  <35.669651, 36.004200, 36.332767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.763863, 35.801136, 36.419308>,  <35.920883, 35.462696, 36.563545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.763863, 35.801136, 36.419308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134541, 0.335019, 0.932556,
		0.909837, 0.414589, -0.017677,
		-0.392550, 0.846096, -0.360591,
		35.646099, 36.054966, 36.311131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149162, 35.966415, 37.069328>,  <35.920883, 35.462696, 36.563545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.149162, 35.966415, 37.069328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.821552, 36.080959, 36.870453>,  <35.624985, 36.149685, 36.751129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.821552, 36.080959, 36.870453>,  <36.149162, 35.966415, 37.069328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821552, 36.080959, 36.870453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492978, 0.092119, 0.865151,
		0.293541, 0.953685, 0.065719,
		-0.819028, 0.286355, -0.497187,
		35.575844, 36.166866, 36.721298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861053, 36.491474, 37.452164>,  <36.149162, 35.966415, 37.069328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861053, 36.491474, 37.452164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.539642, 36.427979, 37.222679>,  <35.346794, 36.389881, 37.084988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.539642, 36.427979, 37.222679>,  <35.861053, 36.491474, 37.452164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539642, 36.427979, 37.222679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594867, 0.178751, 0.783697,
		-0.021853, 0.971004, -0.238060,
		-0.803527, -0.158740, -0.573712,
		35.298584, 36.380356, 37.050564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434021, 36.948238, 37.730251>,  <35.861053, 36.491474, 37.452164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.434021, 36.948238, 37.730251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220844, 36.688499, 37.513245>,  <35.092937, 36.532658, 37.383041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220844, 36.688499, 37.513245>,  <35.434021, 36.948238, 37.730251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220844, 36.688499, 37.513245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717501, 0.006942, 0.696523,
		-0.448516, 0.760464, -0.469604,
		-0.532941, -0.649343, -0.542520,
		35.060963, 36.493698, 37.350487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846508, 37.386051, 37.671890>,  <35.434021, 36.948238, 37.730251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846508, 37.386051, 37.671890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.783314, 36.994160, 37.622635>,  <34.745396, 36.759026, 37.593082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.783314, 36.994160, 37.622635>,  <34.846508, 37.386051, 37.671890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.783314, 36.994160, 37.622635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699685, 0.023075, 0.714079,
		-0.696765, 0.198976, -0.689149,
		-0.157987, -0.979733, -0.123142,
		34.735916, 36.700241, 37.585693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117325, 37.340290, 37.665565>,  <34.846508, 37.386051, 37.671890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117325, 37.340290, 37.665565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201347, 36.953224, 37.721424>,  <34.251759, 36.720985, 37.754940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201347, 36.953224, 37.721424>,  <34.117325, 37.340290, 37.665565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201347, 36.953224, 37.721424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642792, -0.029065, 0.765489,
		-0.736679, -0.250556, -0.628113,
		0.210054, -0.967666, 0.139644,
		34.264362, 36.662926, 37.763317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.450188, 36.911293, 37.651497>,  <34.117325, 37.340290, 37.665565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.450188, 36.911293, 37.651497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.723640, 36.705597, 37.858650>,  <33.887711, 36.582180, 37.982944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.723640, 36.705597, 37.858650>,  <33.450188, 36.911293, 37.651497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.723640, 36.705597, 37.858650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664077, -0.143939, 0.733678,
		-0.302746, -0.845479, -0.439898,
		0.683628, -0.514244, 0.517887,
		33.928730, 36.551323, 38.014015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.047325, 36.433559, 37.917419>,  <33.450188, 36.911293, 37.651497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.047325, 36.433559, 37.917419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381088, 36.408016, 38.136395>,  <33.581345, 36.392693, 38.267780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381088, 36.408016, 38.136395>,  <33.047325, 36.433559, 37.917419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381088, 36.408016, 38.136395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548963, -0.184755, 0.815172,
		0.049089, -0.980708, -0.189215,
		0.834404, -0.063856, 0.547442,
		33.631409, 36.388859, 38.300629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.892120, 35.928078, 38.381783>,  <33.047325, 36.433559, 37.917419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.892120, 35.928078, 38.381783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.187737, 36.133114, 38.556629>,  <33.365105, 36.256138, 38.661537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.187737, 36.133114, 38.556629>,  <32.892120, 35.928078, 38.381783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.187737, 36.133114, 38.556629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487374, -0.041118, 0.872225,
		0.465071, -0.857645, 0.219438,
		0.739037, 0.512595, 0.437117,
		33.409447, 36.286892, 38.687763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.580418, 35.233513, 38.059586>,  <32.892120, 35.928078, 38.381783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.580418, 35.233513, 38.059586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.190350, 35.188232, 37.983456>,  <31.956308, 35.161064, 37.937778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.190350, 35.188232, 37.983456>,  <32.580418, 35.233513, 38.059586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.190350, 35.188232, 37.983456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192220, -0.005992, -0.981334,
		0.109944, -0.993554, 0.027602,
		-0.975173, -0.113198, -0.190323,
		31.897797, 35.154274, 37.926357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.466896, 34.581646, 37.578007>,  <32.580418, 35.233513, 38.059586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.466896, 34.581646, 37.578007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.158577, 34.836472, 37.575840>,  <31.973587, 34.989365, 37.574539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.158577, 34.836472, 37.575840>,  <32.466896, 34.581646, 37.578007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.158577, 34.836472, 37.575840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141151, 0.162477, -0.976564,
		-0.621250, -0.753496, -0.215158,
		-0.770795, 0.637060, -0.005418,
		31.927338, 35.027588, 37.574215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.039597, 34.284069, 37.060337>,  <32.466896, 34.581646, 37.578007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.039597, 34.284069, 37.060337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.901936, 34.656956, 37.105118>,  <31.819340, 34.880688, 37.131985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.901936, 34.656956, 37.105118>,  <32.039597, 34.284069, 37.060337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.901936, 34.656956, 37.105118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142709, 0.065914, -0.987567,
		-0.928005, -0.355850, 0.110351,
		-0.344152, 0.932216, 0.111952,
		31.798689, 34.936619, 37.138702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.308451, 34.366001, 36.775082>,  <32.039597, 34.284069, 37.060337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.308451, 34.366001, 36.775082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.498743, 34.717468, 36.758976>,  <31.612919, 34.928349, 36.749313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.498743, 34.717468, 36.758976>,  <31.308451, 34.366001, 36.775082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.498743, 34.717468, 36.758976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138102, 0.029409, -0.989981,
		-0.868682, 0.476525, 0.135337,
		0.475731, 0.878669, -0.040262,
		31.641462, 34.981068, 36.746899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.951559, 34.684681, 36.254406>,  <31.308451, 34.366001, 36.775082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.951559, 34.684681, 36.254406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.266239, 34.924400, 36.313660>,  <31.455048, 35.068230, 36.349213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.266239, 34.924400, 36.313660>,  <30.951559, 34.684681, 36.254406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.266239, 34.924400, 36.313660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034735, 0.282558, -0.958621,
		-0.616354, 0.749004, 0.243105,
		0.786703, 0.599295, 0.148139,
		31.502251, 35.104187, 36.358101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.864922, 35.468430, 36.096264>,  <30.951559, 34.684681, 36.254406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.864922, 35.468430, 36.096264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.254519, 35.397316, 36.040073>,  <31.488276, 35.354649, 36.006359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.254519, 35.397316, 36.040073>,  <30.864922, 35.468430, 36.096264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.254519, 35.397316, 36.040073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078900, 0.315078, -0.945780,
		0.212408, 0.932265, 0.292856,
		0.973991, -0.177785, -0.140481,
		31.546715, 35.343979, 35.997929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.970091, 36.006313, 35.642601>,  <30.864922, 35.468430, 36.096264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.970091, 36.006313, 35.642601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.267076, 35.739353, 35.619507>,  <31.445267, 35.579178, 35.605652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.267076, 35.739353, 35.619507>,  <30.970091, 36.006313, 35.642601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.267076, 35.739353, 35.619507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014956, 0.069652, -0.997459,
		0.669721, 0.741439, 0.041733,
		0.742462, -0.667396, -0.057736,
		31.489815, 35.539135, 35.602184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.287111, 36.171120, 35.005581>,  <30.970091, 36.006313, 35.642601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.287111, 36.171120, 35.005581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.437141, 35.813217, 35.102516>,  <31.527161, 35.598476, 35.160675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.437141, 35.813217, 35.102516>,  <31.287111, 36.171120, 35.005581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.437141, 35.813217, 35.102516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007053, -0.264168, -0.964451,
		0.926967, 0.360035, -0.105394,
		0.375078, -0.894757, 0.242335,
		31.549665, 35.544788, 35.175217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894745, 36.053955, 34.670704>,  <31.287111, 36.171120, 35.005581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.894745, 36.053955, 34.670704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.774792, 35.674908, 34.714695>,  <31.702820, 35.447479, 34.741089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.774792, 35.674908, 34.714695>,  <31.894745, 36.053955, 34.670704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.774792, 35.674908, 34.714695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085328, -0.141461, -0.986260,
		0.950153, -0.286378, 0.123280,
		-0.299883, -0.947616, 0.109974,
		31.684828, 35.390621, 34.747688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.403824, 35.689884, 34.175644>,  <31.894745, 36.053955, 34.670704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.403824, 35.689884, 34.175644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.085194, 35.459480, 34.249050>,  <31.894016, 35.321236, 34.293095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.085194, 35.459480, 34.249050>,  <32.403824, 35.689884, 34.175644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.085194, 35.459480, 34.249050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009765, -0.315780, -0.948782,
		0.604460, -0.753985, 0.257168,
		-0.796576, -0.576012, 0.183513,
		31.846220, 35.286678, 34.304104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.567608, 34.980999, 34.028851>,  <32.403824, 35.689884, 34.175644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.567608, 34.980999, 34.028851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.169239, 34.999668, 33.997978>,  <31.930218, 35.010872, 33.979454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.169239, 34.999668, 33.997978>,  <32.567608, 34.980999, 34.028851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.169239, 34.999668, 33.997978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051375, -0.409810, -0.910723,
		-0.074141, -0.910976, 0.405741,
		-0.995923, 0.046677, -0.077185,
		31.870462, 35.013672, 33.974823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.434525, 34.373585, 33.599026>,  <32.567608, 34.980999, 34.028851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.434525, 34.373585, 33.599026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083435, 34.564850, 33.586670>,  <31.872780, 34.679607, 33.579258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083435, 34.564850, 33.586670>,  <32.434525, 34.373585, 33.599026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083435, 34.564850, 33.586670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165641, -0.363274, -0.916840,
		-0.449622, -0.799618, 0.398059,
		-0.877726, 0.478166, -0.030887,
		31.820116, 34.708298, 33.577404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559315, 34.380024, 32.846977>,  <32.434525, 34.373585, 33.599026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.559315, 34.380024, 32.846977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.795158, 34.335087, 32.527042>,  <32.936665, 34.308125, 32.335083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.795158, 34.335087, 32.527042>,  <32.559315, 34.380024, 32.846977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.795158, 34.335087, 32.527042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805179, 0.003787, 0.593020,
		-0.063594, -0.993662, 0.092691,
		0.589613, -0.112345, -0.799834,
		32.972042, 34.301384, 32.287090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934132, 33.690830, 32.861927>,  <32.559315, 34.380024, 32.846977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934132, 33.690830, 32.861927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125210, 33.981071, 32.663815>,  <33.239857, 34.155216, 32.544945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125210, 33.981071, 32.663815>,  <32.934132, 33.690830, 32.861927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125210, 33.981071, 32.663815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764765, -0.066002, 0.640919,
		0.432362, -0.684943, -0.586444,
		0.477700, 0.725601, -0.495284,
		33.268520, 34.198753, 32.515228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.328239, 33.023712, 32.752808>,  <32.934132, 33.690830, 32.861927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.328239, 33.023712, 32.752808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365643, 32.813889, 32.414318>,  <33.388084, 32.687996, 32.211224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365643, 32.813889, 32.414318>,  <33.328239, 33.023712, 32.752808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.365643, 32.813889, 32.414318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492515, 0.714297, -0.497200,
		0.865266, 0.463273, -0.191556,
		0.093511, -0.524555, -0.846226,
		33.393696, 32.656521, 32.160450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.631767, 32.832596, 33.092464>,  <33.328239, 33.023712, 32.752808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.631767, 32.832596, 33.092464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.015060, 32.718250, 33.095947>,  <33.245037, 32.649643, 33.098038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.015060, 32.718250, 33.095947>,  <32.631767, 32.832596, 33.092464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015060, 32.718250, 33.095947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113519, -0.352239, 0.929000,
		-0.262501, -0.891185, -0.369977,
		0.958231, -0.285863, 0.008703,
		33.302528, 32.632492, 33.098557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.821419, 32.265553, 33.549641>,  <32.631767, 32.832596, 33.092464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.821419, 32.265553, 33.549641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194069, 32.410839, 33.554535>,  <33.417660, 32.498009, 33.557472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194069, 32.410839, 33.554535>,  <32.821419, 32.265553, 33.549641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194069, 32.410839, 33.554535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118653, -0.335818, 0.934424,
		0.343503, -0.869082, -0.355953,
		0.931626, 0.363212, 0.012236,
		33.473557, 32.519802, 33.558205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227234, 31.748039, 33.824501>,  <32.821419, 32.265553, 33.549641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.227234, 31.748039, 33.824501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.428444, 32.087986, 33.887348>,  <33.549171, 32.291954, 33.925056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.428444, 32.087986, 33.887348>,  <33.227234, 31.748039, 33.824501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.428444, 32.087986, 33.887348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102345, -0.239084, 0.965590,
		0.858188, -0.469640, -0.207246,
		0.503029, 0.849869, 0.157114,
		33.579353, 32.342945, 33.934483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.739197, 31.504749, 34.206001>,  <33.227234, 31.748039, 33.824501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.739197, 31.504749, 34.206001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739117, 31.892925, 34.302540>,  <33.739067, 32.125832, 34.360462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739117, 31.892925, 34.302540>,  <33.739197, 31.504749, 34.206001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739117, 31.892925, 34.302540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219848, -0.235401, 0.946707,
		0.975534, 0.053253, -0.213301,
		-0.000204, 0.970438, 0.241349,
		33.739056, 32.184055, 34.374943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.328743, 31.699944, 34.562908>,  <33.739197, 31.504749, 34.206001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.328743, 31.699944, 34.562908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.029873, 31.947517, 34.659782>,  <33.850552, 32.096062, 34.717907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.029873, 31.947517, 34.659782>,  <34.328743, 31.699944, 34.562908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029873, 31.947517, 34.659782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009719, -0.354180, 0.935127,
		0.664561, 0.701054, 0.258617,
		-0.747171, 0.618935, 0.242188,
		33.805721, 32.133198, 34.732437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530323, 32.054100, 35.253933>,  <34.328743, 31.699944, 34.562908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530323, 32.054100, 35.253933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.140015, 32.139194, 35.233475>,  <33.905830, 32.190250, 35.221199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.140015, 32.139194, 35.233475>,  <34.530323, 32.054100, 35.253933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140015, 32.139194, 35.233475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082085, -0.139238, 0.986851,
		0.202818, 0.967138, 0.153326,
		-0.975770, 0.212737, -0.051148,
		33.847282, 32.203014, 35.218132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413895, 32.489006, 35.775043>,  <34.530323, 32.054100, 35.253933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.413895, 32.489006, 35.775043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.032894, 32.403240, 35.688541>,  <33.804295, 32.351780, 35.636642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.032894, 32.403240, 35.688541>,  <34.413895, 32.489006, 35.775043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.032894, 32.403240, 35.688541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221583, 0.000847, 0.975141,
		-0.208904, 0.976742, -0.048318,
		-0.952502, -0.214417, -0.216252,
		33.747143, 32.338917, 35.623665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031586, 33.054630, 36.086239>,  <34.413895, 32.489006, 35.775043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031586, 33.054630, 36.086239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818989, 32.719955, 36.033371>,  <33.691429, 32.519150, 36.001652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818989, 32.719955, 36.033371>,  <34.031586, 33.054630, 36.086239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818989, 32.719955, 36.033371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100889, -0.092390, 0.990599,
		-0.841034, 0.539829, -0.035308,
		-0.531492, -0.836689, -0.132166,
		33.659542, 32.468948, 35.993721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389759, 33.173336, 36.408997>,  <34.031586, 33.054630, 36.086239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389759, 33.173336, 36.408997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421154, 32.775986, 36.375439>,  <33.439991, 32.537575, 36.355305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421154, 32.775986, 36.375439>,  <33.389759, 33.173336, 36.408997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.421154, 32.775986, 36.375439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348167, -0.106172, 0.931401,
		-0.934141, -0.043895, -0.354195,
		0.078490, -0.993378, -0.083897,
		33.444702, 32.477974, 36.350269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.703030, 32.881504, 36.622746>,  <33.389759, 33.173336, 36.408997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.703030, 32.881504, 36.622746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991966, 32.608635, 36.668106>,  <33.165329, 32.444912, 36.695324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991966, 32.608635, 36.668106>,  <32.703030, 32.881504, 36.622746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.991966, 32.608635, 36.668106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283342, -0.142363, 0.948394,
		-0.630823, -0.717198, -0.296123,
		0.722343, -0.682173, 0.113406,
		33.208668, 32.403984, 36.702129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.292011, 32.216782, 36.982044>,  <32.703030, 32.881504, 36.622746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.292011, 32.216782, 36.982044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.684464, 32.179535, 37.049824>,  <32.919933, 32.157188, 37.090492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.684464, 32.179535, 37.049824>,  <32.292011, 32.216782, 36.982044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.684464, 32.179535, 37.049824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191785, -0.357578, 0.913978,
		-0.024517, -0.929229, -0.368689,
		0.981130, -0.093117, 0.169446,
		32.978802, 32.151600, 37.100658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.270969, 31.649244, 37.282021>,  <32.292011, 32.216782, 36.982044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.270969, 31.649244, 37.282021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.616615, 31.810940, 37.401951>,  <32.824001, 31.907957, 37.473907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.616615, 31.810940, 37.401951>,  <32.270969, 31.649244, 37.282021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.616615, 31.810940, 37.401951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201651, -0.267739, 0.942153,
		0.461131, -0.874589, -0.149842,
		0.864115, 0.404240, 0.299824,
		32.875851, 31.932211, 37.491898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.541245, 31.155378, 37.771442>,  <32.270969, 31.649244, 37.282021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.541245, 31.155378, 37.771442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.783974, 31.461309, 37.857986>,  <32.929611, 31.644869, 37.909912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.783974, 31.461309, 37.857986>,  <32.541245, 31.155378, 37.771442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.783974, 31.461309, 37.857986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136433, -0.167936, 0.976311,
		0.783044, -0.621962, 0.002441,
		0.606818, 0.764827, 0.216358,
		32.966019, 31.690758, 37.922894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021225, 30.999296, 38.374348>,  <32.541245, 31.155378, 37.771442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021225, 30.999296, 38.374348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.024605, 31.399143, 38.363827>,  <33.026634, 31.639051, 38.357513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.024605, 31.399143, 38.363827>,  <33.021225, 30.999296, 38.374348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.024605, 31.399143, 38.363827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045149, 0.025892, 0.998645,
		0.998945, -0.009629, -0.044913,
		0.008453, 0.999619, -0.026299,
		33.027142, 31.699028, 38.355938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432770, 31.127666, 38.950302>,  <33.021225, 30.999296, 38.374348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432770, 31.127666, 38.950302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254711, 31.482666, 38.902653>,  <33.147877, 31.695665, 38.874065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254711, 31.482666, 38.902653>,  <33.432770, 31.127666, 38.950302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254711, 31.482666, 38.902653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013370, 0.139601, 0.990118,
		0.895357, 0.439156, -0.074009,
		-0.445148, 0.887499, -0.119121,
		33.121166, 31.748915, 38.866917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910084, 31.656178, 39.177452>,  <33.432770, 31.127666, 38.950302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910084, 31.656178, 39.177452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.537086, 31.799290, 39.197281>,  <33.313290, 31.885157, 39.209179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.537086, 31.799290, 39.197281>,  <33.910084, 31.656178, 39.177452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.537086, 31.799290, 39.197281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130298, 0.205212, 0.970006,
		0.336877, 0.910978, -0.237976,
		-0.932489, 0.357781, 0.049568,
		33.257339, 31.906624, 39.212151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936237, 32.212376, 39.584354>,  <33.910084, 31.656178, 39.177452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936237, 32.212376, 39.584354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539806, 32.161324, 39.599739>,  <33.301949, 32.130692, 39.608971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539806, 32.161324, 39.599739>,  <33.936237, 32.212376, 39.584354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539806, 32.161324, 39.599739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008892, 0.224579, 0.974415,
		-0.133002, 0.966062, -0.221440,
		-0.991076, -0.127630, 0.038460,
		33.242485, 32.123035, 39.611279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789032, 32.684414, 40.065132>,  <33.936237, 32.212376, 39.584354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789032, 32.684414, 40.065132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.443306, 32.484756, 40.040405>,  <33.235870, 32.364964, 40.025570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.443306, 32.484756, 40.040405>,  <33.789032, 32.684414, 40.065132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.443306, 32.484756, 40.040405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129067, 0.101320, 0.986446,
		-0.486115, 0.860576, -0.151995,
		-0.864312, -0.499143, -0.061818,
		33.184013, 32.335014, 40.021858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.172493, 33.082230, 40.543926>,  <33.789032, 32.684414, 40.065132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.172493, 33.082230, 40.543926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093258, 32.694935, 40.482910>,  <33.045715, 32.462555, 40.446301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093258, 32.694935, 40.482910>,  <33.172493, 33.082230, 40.543926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.093258, 32.694935, 40.482910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134154, -0.127375, 0.982740,
		-0.970959, 0.215137, -0.104661,
		-0.198092, -0.968242, -0.152537,
		33.033829, 32.404461, 40.437149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.503517, 32.944122, 40.879608>,  <33.172493, 33.082230, 40.543926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.503517, 32.944122, 40.879608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.662304, 32.578445, 40.846958>,  <32.757576, 32.359039, 40.827370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.662304, 32.578445, 40.846958>,  <32.503517, 32.944122, 40.879608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.662304, 32.578445, 40.846958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207634, -0.176070, 0.962230,
		-0.894037, -0.365030, -0.259713,
		0.396970, -0.914195, -0.081620,
		32.781395, 32.304188, 40.822472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.985542, 32.352631, 41.112839>,  <32.503517, 32.944122, 40.879608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.985542, 32.352631, 41.112839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.360672, 32.221375, 41.158112>,  <32.585751, 32.142620, 41.185276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.360672, 32.221375, 41.158112>,  <31.985542, 32.352631, 41.112839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.360672, 32.221375, 41.158112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215829, -0.295892, 0.930519,
		-0.271845, -0.897093, -0.348316,
		0.937826, -0.328134, 0.113182,
		32.642017, 32.122932, 41.192066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.885408, 31.815104, 41.422741>,  <31.985542, 32.352631, 41.112839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.885408, 31.815104, 41.422741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.268879, 31.893843, 41.504906>,  <32.498962, 31.941086, 41.554203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.268879, 31.893843, 41.504906>,  <31.885408, 31.815104, 41.422741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.268879, 31.893843, 41.504906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104993, -0.426245, 0.898494,
		0.264423, -0.882930, -0.387962,
		0.958674, 0.196850, 0.205410,
		32.556480, 31.952898, 41.566528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.204170, 31.125349, 41.629375>,  <31.885408, 31.815104, 41.422741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.204170, 31.125349, 41.629375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.455006, 31.382381, 41.805489>,  <32.605507, 31.536602, 41.911156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.455006, 31.382381, 41.805489>,  <32.204170, 31.125349, 41.629375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.455006, 31.382381, 41.805489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056231, -0.526408, 0.848371,
		0.776915, -0.556762, -0.293972,
		0.627089, 0.642582, 0.440281,
		32.643131, 31.575155, 41.937572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.545708, 30.683716, 42.065758>,  <32.204170, 31.125349, 41.629375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.545708, 30.683716, 42.065758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.680000, 31.040607, 42.186562>,  <32.760574, 31.254742, 42.259045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.680000, 31.040607, 42.186562>,  <32.545708, 30.683716, 42.065758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680000, 31.040607, 42.186562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140213, -0.364386, 0.920632,
		0.931464, -0.266738, -0.247438,
		0.335730, 0.892229, 0.302013,
		32.780720, 31.308277, 42.277164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.135456, 30.511522, 42.353291>,  <32.545708, 30.683716, 42.065758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.135456, 30.511522, 42.353291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.993366, 30.837679, 42.536137>,  <32.908112, 31.033373, 42.645844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.993366, 30.837679, 42.536137>,  <33.135456, 30.511522, 42.353291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.993366, 30.837679, 42.536137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143331, -0.435713, 0.888600,
		0.923727, 0.381172, 0.037905,
		-0.355225, 0.815391, 0.457113,
		32.886799, 31.082296, 42.673271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.652191, 30.678988, 42.753578>,  <33.135456, 30.511522, 42.353291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.652191, 30.678988, 42.753578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305088, 30.816175, 42.897453>,  <33.096828, 30.898489, 42.983780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305088, 30.816175, 42.897453>,  <33.652191, 30.678988, 42.753578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.305088, 30.816175, 42.897453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203007, -0.415995, 0.886418,
		0.453644, 0.842211, 0.291355,
		-0.867753, 0.342971, 0.359688,
		33.044762, 30.919067, 43.005360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789265, 30.712435, 43.429852>,  <33.652191, 30.678988, 42.753578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789265, 30.712435, 43.429852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.392483, 30.761379, 43.442860>,  <33.154415, 30.790747, 43.450665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.392483, 30.761379, 43.442860>,  <33.789265, 30.712435, 43.429852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.392483, 30.761379, 43.442860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040252, -0.548319, 0.835300,
		0.120039, 0.827269, 0.548832,
		-0.991953, 0.122360, 0.032520,
		33.094898, 30.798088, 43.452614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242825, 30.908669, 43.905735>,  <33.789265, 30.712435, 43.429852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242825, 30.908669, 43.905735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.558632, 30.665693, 43.870670>,  <34.748116, 30.519907, 43.849632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.558632, 30.665693, 43.870670>,  <34.242825, 30.908669, 43.905735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.558632, 30.665693, 43.870670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326542, 0.536701, -0.778025,
		0.519651, 0.585636, 0.622088,
		0.789515, -0.607439, -0.087663,
		34.795486, 30.483461, 43.844372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898678, 31.298870, 43.748646>,  <34.242825, 30.908669, 43.905735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898678, 31.298870, 43.748646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.953125, 30.919374, 43.634552>,  <34.985794, 30.691677, 43.566093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.953125, 30.919374, 43.634552>,  <34.898678, 31.298870, 43.748646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.953125, 30.919374, 43.634552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191390, 0.307677, -0.932043,
		0.972029, 0.072279, 0.223461,
		0.136121, -0.948741, -0.285238,
		34.993961, 30.634752, 43.548981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563137, 31.328373, 43.438393>,  <34.898678, 31.298870, 43.748646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563137, 31.328373, 43.438393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388485, 30.997650, 43.296551>,  <35.283695, 30.799215, 43.211445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388485, 30.997650, 43.296551>,  <35.563137, 31.328373, 43.438393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388485, 30.997650, 43.296551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349475, 0.207326, -0.913720,
		0.828990, -0.522881, 0.198424,
		-0.436628, -0.826808, -0.354605,
		35.257496, 30.749607, 43.190170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040447, 31.051746, 43.021194>,  <35.563137, 31.328373, 43.438393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.040447, 31.051746, 43.021194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708496, 30.860455, 42.906227>,  <35.509327, 30.745680, 42.837246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708496, 30.860455, 42.906227>,  <36.040447, 31.051746, 43.021194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708496, 30.860455, 42.906227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235147, 0.167368, -0.957442,
		0.505981, -0.862140, -0.026439,
		-0.829873, -0.478230, -0.287414,
		35.459534, 30.716986, 42.820004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296143, 30.514849, 42.506565>,  <36.040447, 31.051746, 43.021194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.296143, 30.514849, 42.506565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.904373, 30.562222, 42.441208>,  <35.669312, 30.590645, 42.401993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.904373, 30.562222, 42.441208>,  <36.296143, 30.514849, 42.506565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904373, 30.562222, 42.441208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174005, 0.085602, -0.981017,
		-0.102200, -0.989265, -0.104449,
		-0.979427, 0.118435, -0.163389,
		35.610546, 30.597752, 42.392193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
