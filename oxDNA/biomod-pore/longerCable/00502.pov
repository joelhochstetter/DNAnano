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
	<24.345146, 34.805786, 35.442097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.363544, 35.021530, 35.105770>,  <24.374584, 35.150978, 34.903973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.363544, 35.021530, 35.105770>,  <24.345146, 34.805786, 35.442097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.363544, 35.021530, 35.105770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876463, 0.382040, 0.293016,
		0.479267, -0.750423, -0.455158,
		0.045997, 0.539362, -0.840817,
		24.377344, 35.183338, 34.853523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.899420, 34.570374, 35.081577>,  <24.345146, 34.805786, 35.442097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.899420, 34.570374, 35.081577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.802937, 34.950344, 35.002113>,  <24.745047, 35.178326, 34.954433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.802937, 34.950344, 35.002113>,  <24.899420, 34.570374, 35.081577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.802937, 34.950344, 35.002113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829307, 0.308078, 0.466194,
		0.504051, -0.052300, -0.862089,
		-0.241209, 0.949922, -0.198660,
		24.730574, 35.235321, 34.942516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.436193, 34.969105, 34.821964>,  <24.899420, 34.570374, 35.081577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.436193, 34.969105, 34.821964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.215960, 35.276039, 34.953453>,  <25.083820, 35.460197, 35.032349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.215960, 35.276039, 34.953453>,  <25.436193, 34.969105, 34.821964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.215960, 35.276039, 34.953453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813757, 0.405534, 0.416342,
		0.186164, 0.496733, -0.847702,
		-0.550583, 0.767332, 0.328724,
		25.050785, 35.506237, 35.052071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.994713, 35.569958, 35.076984>,  <25.436193, 34.969105, 34.821964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.994713, 35.569958, 35.076984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.039612, 35.500931, 34.685551>,  <26.066551, 35.459515, 34.450691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.039612, 35.500931, 34.685551>,  <25.994713, 35.569958, 35.076984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.039612, 35.500931, 34.685551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474950, 0.874346, -0.099711,
		0.872825, -0.453585, 0.180103,
		0.112245, -0.172570, -0.978581,
		26.073286, 35.449162, 34.391975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.530998, 35.812855, 34.937115>,  <25.994713, 35.569958, 35.076984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.530998, 35.812855, 34.937115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.342600, 35.798199, 34.584564>,  <26.229561, 35.789406, 34.373035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.342600, 35.798199, 34.584564>,  <26.530998, 35.812855, 34.937115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.342600, 35.798199, 34.584564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446378, 0.851878, -0.273953,
		0.760862, -0.522457, -0.384873,
		-0.470994, -0.036642, -0.881375,
		26.201302, 35.787205, 34.320152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.005938, 35.767696, 34.307297>,  <26.530998, 35.812855, 34.937115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.005938, 35.767696, 34.307297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.652472, 35.941151, 34.236755>,  <26.440392, 36.045223, 34.194431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.652472, 35.941151, 34.236755>,  <27.005938, 35.767696, 34.307297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.652472, 35.941151, 34.236755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468036, 0.825671, -0.314976,
		0.009027, -0.360874, -0.932571,
		-0.883663, 0.433634, -0.176356,
		26.387373, 36.071239, 34.183849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.228342, 36.413940, 34.074959>,  <27.005938, 35.767696, 34.307297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.228342, 36.413940, 34.074959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.840061, 36.428932, 33.980019>,  <26.607094, 36.437927, 33.923054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.840061, 36.428932, 33.980019>,  <27.228342, 36.413940, 34.074959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.840061, 36.428932, 33.980019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141707, 0.886999, -0.439490,
		0.194061, -0.460248, -0.866321,
		-0.970701, 0.037476, -0.237352,
		26.548851, 36.440174, 33.908813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.109785, 36.567459, 33.326653>,  <27.228342, 36.413940, 34.074959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.109785, 36.567459, 33.326653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.804316, 36.700161, 33.548187>,  <26.621033, 36.779781, 33.681110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.804316, 36.700161, 33.548187>,  <27.109785, 36.567459, 33.326653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.804316, 36.700161, 33.548187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141649, 0.923066, -0.357609,
		-0.629870, -0.194646, -0.751915,
		-0.763675, 0.331755, 0.553841,
		26.575212, 36.799686, 33.714340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.749704, 37.005733, 32.860825>,  <27.109785, 36.567459, 33.326653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.749704, 37.005733, 32.860825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.632551, 37.117111, 33.226707>,  <26.562260, 37.183937, 33.446236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.632551, 37.117111, 33.226707>,  <26.749704, 37.005733, 32.860825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.632551, 37.117111, 33.226707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010994, 0.957574, -0.287977,
		-0.956085, -0.074287, -0.283519,
		-0.292883, 0.278448, 0.914706,
		26.544685, 37.200645, 33.501118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.285744, 37.503273, 32.762276>,  <26.749704, 37.005733, 32.860825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.285744, 37.503273, 32.762276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.455448, 37.551964, 33.121204>,  <26.557270, 37.581181, 33.336563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.455448, 37.551964, 33.121204>,  <26.285744, 37.503273, 32.762276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.455448, 37.551964, 33.121204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257546, 0.933780, -0.248447,
		-0.868144, 0.336507, 0.364813,
		0.424259, 0.121732, 0.897322,
		26.582726, 37.588482, 33.390400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.190790, 38.154232, 32.861015>,  <26.285744, 37.503273, 32.762276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.190790, 38.154232, 32.861015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.460640, 38.058483, 33.140324>,  <26.622551, 38.001034, 33.307907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.460640, 38.058483, 33.140324>,  <26.190790, 38.154232, 32.861015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.460640, 38.058483, 33.140324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538964, 0.806101, -0.244373,
		-0.504379, 0.541202, 0.672831,
		0.674625, -0.239375, 0.698269,
		26.663027, 37.986671, 33.349804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.484447, 38.784584, 33.191204>,  <26.190790, 38.154232, 32.861015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.484447, 38.784584, 33.191204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.749025, 38.488701, 33.240730>,  <26.907772, 38.311172, 33.270447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.749025, 38.488701, 33.240730>,  <26.484447, 38.784584, 33.191204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.749025, 38.488701, 33.240730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720529, 0.580921, -0.378641,
		0.208156, 0.339662, 0.917225,
		0.661445, -0.739703, 0.123814,
		26.947458, 38.266788, 33.277874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.083553, 39.038311, 33.521019>,  <26.484447, 38.784584, 33.191204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.083553, 39.038311, 33.521019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.165951, 38.716686, 33.297932>,  <27.215389, 38.523712, 33.164078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.165951, 38.716686, 33.297932>,  <27.083553, 39.038311, 33.521019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.165951, 38.716686, 33.297932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600241, 0.553949, -0.576933,
		0.772838, -0.215920, 0.596742,
		0.205993, -0.804064, -0.557717,
		27.227749, 38.475468, 33.130615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.906637, 39.047546, 33.287556>,  <27.083553, 39.038311, 33.521019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.906637, 39.047546, 33.287556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.724476, 38.804192, 33.027565>,  <27.615179, 38.658176, 32.871571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.724476, 38.804192, 33.027565>,  <27.906637, 39.047546, 33.287556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.724476, 38.804192, 33.027565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725686, 0.169257, -0.666882,
		0.515738, -0.775378, 0.364421,
		-0.455405, -0.608392, -0.649973,
		27.587854, 38.621674, 32.832573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.921381, 38.272408, 33.148533>,  <27.906637, 39.047546, 33.287556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.921381, 38.272408, 33.148533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.737123, 38.338528, 33.497356>,  <27.626570, 38.378201, 33.706650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.737123, 38.338528, 33.497356>,  <27.921381, 38.272408, 33.148533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.737123, 38.338528, 33.497356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730295, -0.628989, -0.266537,
		0.504457, -0.759638, 0.410455,
		-0.460643, 0.165297, 0.872058,
		27.598930, 38.388115, 33.758972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.900530, 37.714565, 33.585926>,  <27.921381, 38.272408, 33.148533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.900530, 37.714565, 33.585926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.575964, 37.943054, 33.635433>,  <27.381226, 38.080147, 33.665138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.575964, 37.943054, 33.635433>,  <27.900530, 37.714565, 33.585926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.575964, 37.943054, 33.635433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545924, -0.816340, 0.188562,
		0.208747, 0.085434, 0.974231,
		-0.811413, 0.571218, 0.123768,
		27.332541, 38.114418, 33.672565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.621696, 37.607727, 34.196613>,  <27.900530, 37.714565, 33.585926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.621696, 37.607727, 34.196613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.315960, 37.732418, 33.970833>,  <27.132519, 37.807232, 33.835365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.315960, 37.732418, 33.970833>,  <27.621696, 37.607727, 34.196613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.315960, 37.732418, 33.970833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511223, -0.826457, 0.235838,
		-0.392979, 0.468822, 0.791058,
		-0.764342, 0.311727, -0.564453,
		27.086657, 37.825935, 33.801498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.095232, 37.621273, 34.602322>,  <27.621696, 37.607727, 34.196613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.095232, 37.621273, 34.602322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.933952, 37.605835, 34.236603>,  <26.837185, 37.596573, 34.017170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.933952, 37.605835, 34.236603>,  <27.095232, 37.621273, 34.602322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.933952, 37.605835, 34.236603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577119, -0.764649, 0.286785,
		-0.710186, 0.643290, 0.286032,
		-0.403200, -0.038596, -0.914298,
		26.812992, 37.594257, 33.962315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.393469, 37.685333, 34.676914>,  <27.095232, 37.621273, 34.602322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.393469, 37.685333, 34.676914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.454678, 37.515621, 34.319912>,  <26.491404, 37.413792, 34.105709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.454678, 37.515621, 34.319912>,  <26.393469, 37.685333, 34.676914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.454678, 37.515621, 34.319912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676626, -0.703225, 0.218292,
		-0.720251, 0.570489, -0.394690,
		0.153023, -0.424283, -0.892507,
		26.500586, 37.388336, 34.052158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.739531, 37.385845, 34.554779>,  <26.393469, 37.685333, 34.676914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.739531, 37.385845, 34.554779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.977873, 37.212608, 34.284256>,  <26.120878, 37.108665, 34.121941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.977873, 37.212608, 34.284256>,  <25.739531, 37.385845, 34.554779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.977873, 37.212608, 34.284256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498691, -0.859628, 0.111114,
		-0.629496, 0.271061, -0.728190,
		0.595854, -0.433088, -0.676308,
		26.156630, 37.082684, 34.081364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.327713, 36.962585, 34.018124>,  <25.739531, 37.385845, 34.554779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.327713, 36.962585, 34.018124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.692402, 36.800072, 33.993816>,  <25.911215, 36.702564, 33.979233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.692402, 36.800072, 33.993816>,  <25.327713, 36.962585, 34.018124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.692402, 36.800072, 33.993816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410705, -0.898250, -0.156427,
		0.008972, 0.167575, -0.985819,
		0.911724, -0.406284, -0.060765,
		25.965919, 36.678188, 33.975586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.269516, 36.427799, 33.530575>,  <25.327713, 36.962585, 34.018124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.269516, 36.427799, 33.530575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.622715, 36.329861, 33.690758>,  <25.834635, 36.271095, 33.786869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.622715, 36.329861, 33.690758>,  <25.269516, 36.427799, 33.530575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.622715, 36.329861, 33.690758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287901, -0.956350, 0.050074,
		0.370718, -0.159508, -0.914945,
		0.882995, -0.244851, 0.400459,
		25.887613, 36.256405, 33.810894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.430897, 35.774223, 33.212513>,  <25.269516, 36.427799, 33.530575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.430897, 35.774223, 33.212513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.649069, 35.787125, 33.547527>,  <25.779972, 35.794865, 33.748535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.649069, 35.787125, 33.547527>,  <25.430897, 35.774223, 33.212513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.649069, 35.787125, 33.547527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243285, -0.950146, 0.195025,
		0.802071, -0.310133, -0.510392,
		0.545430, 0.032253, 0.837535,
		25.812698, 35.796799, 33.798786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.085608, 35.246815, 33.251904>,  <25.430897, 35.774223, 33.212513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.085608, 35.246815, 33.251904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.896704, 35.329792, 33.594585>,  <25.783361, 35.379578, 33.800194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.896704, 35.329792, 33.594585>,  <26.085608, 35.246815, 33.251904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.896704, 35.329792, 33.594585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246725, -0.964173, 0.097456,
		0.846225, -0.165345, 0.506522,
		-0.472261, 0.207441, 0.856702,
		25.755026, 35.392025, 33.851597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.466049, 34.759235, 33.658504>,  <26.085608, 35.246815, 33.251904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.466049, 34.759235, 33.658504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.099880, 34.860634, 33.783562>,  <25.880178, 34.921474, 33.858597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.099880, 34.860634, 33.783562>,  <26.466049, 34.759235, 33.658504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.099880, 34.860634, 33.783562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166710, -0.945788, 0.278734,
		0.366350, 0.203039, 0.908055,
		-0.915421, 0.253496, 0.312641,
		25.825254, 34.936684, 33.877354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.287722, 34.576794, 34.429058>,  <26.466049, 34.759235, 33.658504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.287722, 34.576794, 34.429058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.960520, 34.581409, 34.199020>,  <25.764198, 34.584179, 34.060997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.960520, 34.581409, 34.199020>,  <26.287722, 34.576794, 34.429058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.960520, 34.581409, 34.199020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190554, -0.948780, 0.252005,
		-0.542730, 0.315728, 0.778306,
		-0.818006, 0.011539, -0.575094,
		25.715118, 34.584869, 34.026493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.790604, 34.080303, 34.495396>,  <26.287722, 34.576794, 34.429058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.790604, 34.080303, 34.495396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.076006, 33.902065, 34.711674>,  <27.247248, 33.795124, 34.841442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.076006, 33.902065, 34.711674>,  <26.790604, 34.080303, 34.495396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.076006, 33.902065, 34.711674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690354, -0.315303, 0.651149,
		-0.119666, -0.837872, -0.532589,
		0.713506, -0.445595, 0.540697,
		27.290058, 33.768387, 34.873882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.553923, 33.474895, 34.819946>,  <26.790604, 34.080303, 34.495396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.553923, 33.474895, 34.819946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.888186, 33.539333, 35.029984>,  <27.088743, 33.577995, 35.156006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.888186, 33.539333, 35.029984>,  <26.553923, 33.474895, 34.819946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.888186, 33.539333, 35.029984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487947, -0.221167, 0.844389,
		0.252165, -0.961838, -0.106211,
		0.835656, 0.161100, 0.525096,
		27.138882, 33.587662, 35.187511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.635508, 32.860752, 35.198883>,  <26.553923, 33.474895, 34.819946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.635508, 32.860752, 35.198883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.778435, 33.183640, 35.386806>,  <26.864191, 33.377373, 35.499561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.778435, 33.183640, 35.386806>,  <26.635508, 32.860752, 35.198883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.778435, 33.183640, 35.386806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410385, -0.316163, 0.855351,
		0.838993, -0.498434, 0.218301,
		0.357317, 0.807220, 0.469809,
		26.885630, 33.425804, 35.527748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.808243, 32.274693, 34.819359>,  <26.635508, 32.860752, 35.198883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.808243, 32.274693, 34.819359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.535824, 32.050720, 34.630615>,  <26.372372, 31.916336, 34.517368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.535824, 32.050720, 34.630615>,  <26.808243, 32.274693, 34.819359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.535824, 32.050720, 34.630615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408441, 0.244352, -0.879470,
		0.607743, -0.791688, 0.062284,
		-0.681046, -0.559931, -0.471861,
		26.331511, 31.882742, 34.489056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.805246, 32.663940, 34.175705>,  <26.808243, 32.274693, 34.819359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.805246, 32.663940, 34.175705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.696678, 32.785667, 33.810471>,  <26.631536, 32.858704, 33.591331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.696678, 32.785667, 33.810471>,  <26.805246, 32.663940, 34.175705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.696678, 32.785667, 33.810471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804567, -0.592393, 0.041729,
		-0.528207, 0.745965, 0.405628,
		-0.271420, 0.304313, -0.913085,
		26.615252, 32.876961, 33.536545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.057043, 32.854679, 34.195263>,  <26.805246, 32.663940, 34.175705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.057043, 32.854679, 34.195263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.163649, 32.735783, 33.828522>,  <26.227612, 32.664444, 33.608479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.163649, 32.735783, 33.828522>,  <26.057043, 32.854679, 34.195263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.163649, 32.735783, 33.828522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785184, -0.618644, -0.027675,
		-0.558978, 0.727272, -0.398270,
		0.266515, -0.297246, -0.916850,
		26.243603, 32.646610, 33.553467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.552244, 32.777302, 33.750309>,  <26.057043, 32.854679, 34.195263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.552244, 32.777302, 33.750309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.754801, 32.609806, 33.448788>,  <25.876335, 32.509308, 33.267876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.754801, 32.609806, 33.448788>,  <25.552244, 32.777302, 33.750309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.754801, 32.609806, 33.448788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758808, -0.631641, -0.158873,
		-0.409607, 0.652445, -0.637603,
		0.506392, -0.418743, -0.753805,
		25.906719, 32.484184, 33.222645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.111757, 32.863949, 33.222500>,  <25.552244, 32.777302, 33.750309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.111757, 32.863949, 33.222500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.336203, 32.533665, 33.199318>,  <25.470869, 32.335495, 33.185410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.336203, 32.533665, 33.199318>,  <25.111757, 32.863949, 33.222500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.336203, 32.533665, 33.199318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826868, -0.562359, 0.006508,
		-0.037967, 0.044271, -0.998298,
		0.561113, -0.825708, -0.057958,
		25.504536, 32.285954, 33.181931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.075621, 32.621174, 32.422359>,  <25.111757, 32.863949, 33.222500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.075621, 32.621174, 32.422359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.374641, 32.370224, 32.509602>,  <25.554054, 32.219654, 32.561947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.374641, 32.370224, 32.509602>,  <25.075621, 32.621174, 32.422359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.374641, 32.370224, 32.509602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512686, -0.753790, -0.411039,
		0.422280, 0.195454, -0.885142,
		0.747550, -0.627374, 0.218104,
		25.598907, 32.182011, 32.575031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.197664, 32.169376, 31.833088>,  <25.075621, 32.621174, 32.422359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.197664, 32.169376, 31.833088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.346378, 31.979515, 32.152206>,  <25.435608, 31.865599, 32.343678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.346378, 31.979515, 32.152206>,  <25.197664, 32.169376, 31.833088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.346378, 31.979515, 32.152206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475146, -0.835595, -0.275711,
		0.797503, -0.276565, -0.536191,
		0.371787, -0.474649, 0.797799,
		25.457914, 31.837120, 32.391544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.357903, 31.461712, 31.645517>,  <25.197664, 32.169376, 31.833088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.357903, 31.461712, 31.645517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.354809, 31.424782, 32.043797>,  <25.352953, 31.402624, 32.282764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.354809, 31.424782, 32.043797>,  <25.357903, 31.461712, 31.645517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.354809, 31.424782, 32.043797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398697, -0.912876, -0.087742,
		0.917050, -0.397660, -0.029751,
		-0.007732, -0.092326, 0.995699,
		25.352489, 31.397083, 32.342506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.718189, 30.731234, 31.929665>,  <25.357903, 31.461712, 31.645517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.718189, 30.731234, 31.929665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.433615, 30.867395, 32.175587>,  <25.262871, 30.949093, 32.323139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.433615, 30.867395, 32.175587>,  <25.718189, 30.731234, 31.929665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.433615, 30.867395, 32.175587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460974, -0.886388, -0.042652,
		0.530436, -0.313753, 0.787525,
		-0.711436, 0.340404, 0.614804,
		25.220184, 30.969517, 32.360027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.183323, 30.190355, 31.788586>,  <25.718189, 30.731234, 31.929665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.183323, 30.190355, 31.788586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.057686, 30.384098, 32.115204>,  <24.982304, 30.500343, 32.311172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.057686, 30.384098, 32.115204>,  <25.183323, 30.190355, 31.788586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.057686, 30.384098, 32.115204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767584, -0.635704, 0.081826,
		0.558713, -0.601064, 0.571456,
		-0.314094, 0.484357, 0.816543,
		24.963457, 30.529406, 32.360168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.601702, 29.704941, 31.921667>,  <25.183323, 30.190355, 31.788586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.601702, 29.704941, 31.921667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.324039, 29.824057, 32.183804>,  <24.157442, 29.895527, 32.341084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.324039, 29.824057, 32.183804>,  <24.601702, 29.704941, 31.921667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.324039, 29.824057, 32.183804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520593, 0.836435, 0.171349,
		-0.497123, 0.460108, -0.735643,
		-0.694156, 0.297789, 0.655339,
		24.115793, 29.913393, 32.380405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.256842, 30.379328, 31.776421>,  <24.601702, 29.704941, 31.921667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.256842, 30.379328, 31.776421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.259735, 30.303572, 32.169170>,  <24.261471, 30.258118, 32.404819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.259735, 30.303572, 32.169170>,  <24.256842, 30.379328, 31.776421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.259735, 30.303572, 32.169170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591677, 0.792383, 0.148483,
		-0.806143, 0.579879, 0.117789,
		0.007232, -0.189392, 0.981875,
		24.261904, 30.246754, 32.463734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.135309, 30.943161, 32.170238>,  <24.256842, 30.379328, 31.776421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.135309, 30.943161, 32.170238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.339952, 30.694431, 32.407421>,  <24.462738, 30.545193, 32.549728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.339952, 30.694431, 32.407421>,  <24.135309, 30.943161, 32.170238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.339952, 30.694431, 32.407421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603170, 0.751396, 0.267561,
		-0.611919, 0.220765, 0.759485,
		0.511606, -0.621825, 0.592953,
		24.493435, 30.507883, 32.585308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.213993, 31.272484, 32.772366>,  <24.135309, 30.943161, 32.170238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.213993, 31.272484, 32.772366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.515522, 31.009733, 32.765862>,  <24.696440, 30.852083, 32.761959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.515522, 31.009733, 32.765862>,  <24.213993, 31.272484, 32.772366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.515522, 31.009733, 32.765862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656903, 0.752820, 0.041725,
		-0.015166, -0.042135, 0.998997,
		0.753823, -0.656877, -0.016261,
		24.741669, 30.812670, 32.760983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.612244, 31.290060, 33.410099>,  <24.213993, 31.272484, 32.772366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.612244, 31.290060, 33.410099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.803583, 31.183445, 33.075401>,  <24.918386, 31.119476, 32.874584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.803583, 31.183445, 33.075401>,  <24.612244, 31.290060, 33.410099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.803583, 31.183445, 33.075401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570164, 0.818949, 0.065080,
		0.667905, -0.508212, 0.543713,
		0.478348, -0.266538, -0.836744,
		24.947088, 31.103483, 32.824379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.249874, 31.356342, 33.614857>,  <24.612244, 31.290060, 33.410099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.249874, 31.356342, 33.614857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.266315, 31.379036, 33.215839>,  <25.276180, 31.392653, 32.976429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.266315, 31.379036, 33.215839>,  <25.249874, 31.356342, 33.614857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.266315, 31.379036, 33.215839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609032, 0.790048, 0.070030,
		0.792080, -0.610414, -0.002079,
		0.041105, 0.056735, -0.997543,
		25.278646, 31.396057, 32.916576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.967739, 31.257193, 33.568127>,  <25.249874, 31.356342, 33.614857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.967739, 31.257193, 33.568127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.817064, 31.439211, 33.245377>,  <25.726660, 31.548422, 33.051727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.817064, 31.439211, 33.245377>,  <25.967739, 31.257193, 33.568127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.817064, 31.439211, 33.245377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712146, 0.699296, 0.061914,
		0.592415, -0.551287, -0.587475,
		-0.376686, 0.455047, -0.806870,
		25.704058, 31.575726, 33.003315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.475983, 31.372227, 32.990223>,  <25.967739, 31.257193, 33.568127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.475983, 31.372227, 32.990223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.185308, 31.642773, 32.942120>,  <26.010904, 31.805099, 32.913258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.185308, 31.642773, 32.942120>,  <26.475983, 31.372227, 32.990223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.185308, 31.642773, 32.942120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675721, 0.735297, 0.052340,
		0.123825, -0.043225, -0.991362,
		-0.726683, 0.676365, -0.120256,
		25.967304, 31.845682, 32.906044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.610106, 31.790861, 32.395718>,  <26.475983, 31.372227, 32.990223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.610106, 31.790861, 32.395718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.405954, 32.007244, 32.663113>,  <26.283463, 32.137074, 32.823551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.405954, 32.007244, 32.663113>,  <26.610106, 31.790861, 32.395718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.405954, 32.007244, 32.663113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800114, 0.583618, 0.138594,
		-0.315168, 0.605601, -0.730696,
		-0.510380, 0.540959, 0.668487,
		26.252840, 32.169533, 32.863659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.885563, 32.375740, 32.339062>,  <26.610106, 31.790861, 32.395718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.885563, 32.375740, 32.339062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.688595, 32.450478, 32.679089>,  <26.570414, 32.495319, 32.883106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.688595, 32.450478, 32.679089>,  <26.885563, 32.375740, 32.339062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.688595, 32.450478, 32.679089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625704, 0.754900, 0.196521,
		-0.604996, 0.628660, -0.488638,
		-0.492418, 0.186848, 0.850066,
		26.540869, 32.506531, 32.934109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.671999, 33.118462, 32.324905>,  <26.885563, 32.375740, 32.339062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.671999, 33.118462, 32.324905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.738611, 32.999115, 32.700829>,  <26.778580, 32.927509, 32.926384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.738611, 32.999115, 32.700829>,  <26.671999, 33.118462, 32.324905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.738611, 32.999115, 32.700829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698117, 0.708779, 0.101312,
		-0.696347, 0.639228, 0.326327,
		0.166532, -0.298363, 0.939812,
		26.788570, 32.909607, 32.982773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.888418, 33.718082, 32.516457>,  <26.671999, 33.118462, 32.324905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.888418, 33.718082, 32.516457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.031666, 33.401417, 32.714455>,  <27.117615, 33.211418, 32.833252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.031666, 33.401417, 32.714455>,  <26.888418, 33.718082, 32.516457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.031666, 33.401417, 32.714455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931117, 0.342038, -0.126614,
		-0.069071, 0.506243, 0.859621,
		0.358120, -0.791662, 0.494996,
		27.139101, 33.163918, 32.862953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.246284, 33.987228, 33.084309>,  <26.888418, 33.718082, 32.516457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.246284, 33.987228, 33.084309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.374153, 33.630512, 32.956234>,  <27.450874, 33.416481, 32.879391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.374153, 33.630512, 32.956234>,  <27.246284, 33.987228, 33.084309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.374153, 33.630512, 32.956234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907560, 0.385284, -0.167007,
		0.272298, -0.237201, 0.932518,
		0.319670, -0.891791, -0.320187,
		27.470055, 33.362976, 32.860176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.860348, 33.802208, 33.496605>,  <27.246284, 33.987228, 33.084309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.860348, 33.802208, 33.496605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.862101, 33.684853, 33.114212>,  <27.863153, 33.614441, 32.884777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.862101, 33.684853, 33.114212>,  <27.860348, 33.802208, 33.496605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.862101, 33.684853, 33.114212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980504, 0.189066, -0.053528,
		0.196448, -0.937111, 0.288498,
		0.004384, -0.293389, -0.955983,
		27.863415, 33.596836, 32.827415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.308855, 33.146236, 33.345066>,  <27.860348, 33.802208, 33.496605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.308855, 33.146236, 33.345066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.279440, 33.451668, 33.088463>,  <28.261791, 33.634926, 32.934502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.279440, 33.451668, 33.088463>,  <28.308855, 33.146236, 33.345066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.279440, 33.451668, 33.088463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989740, 0.134892, 0.047104,
		0.122503, -0.631465, -0.765667,
		-0.073537, 0.763581, -0.641510,
		28.257380, 33.680740, 32.896011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.807892, 33.121243, 32.648895>,  <28.308855, 33.146236, 33.345066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.807892, 33.121243, 32.648895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.720957, 33.491329, 32.773308>,  <28.668797, 33.713383, 32.847954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.720957, 33.491329, 32.773308>,  <28.807892, 33.121243, 32.648895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.720957, 33.491329, 32.773308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967729, 0.162608, 0.192506,
		0.127534, 0.342829, -0.930700,
		-0.217336, 0.925217, 0.311028,
		28.655756, 33.768894, 32.866615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.303747, 33.544037, 32.461849>,  <28.807892, 33.121243, 32.648895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.303747, 33.544037, 32.461849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.533585, 33.600510, 32.784317>,  <29.671486, 33.634392, 32.977798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.533585, 33.600510, 32.784317>,  <29.303747, 33.544037, 32.461849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.533585, 33.600510, 32.784317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097265, -0.966249, 0.238540,
		0.812640, -0.215475, -0.541467,
		0.574591, 0.141182, 0.806171,
		29.705961, 33.642864, 33.026169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.991972, 33.149403, 32.451603>,  <29.303747, 33.544037, 32.461849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.991972, 33.149403, 32.451603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.832964, 33.187687, 32.816639>,  <29.737560, 33.210655, 33.035660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.832964, 33.187687, 32.816639>,  <29.991972, 33.149403, 32.451603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.832964, 33.187687, 32.816639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052590, -0.990535, 0.126789,
		0.916086, 0.098394, 0.388722,
		-0.397518, 0.095707, 0.912589,
		29.713709, 33.216400, 33.090416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.462486, 33.014069, 33.085030>,  <29.991972, 33.149403, 32.451603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.462486, 33.014069, 33.085030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.076052, 32.915131, 33.114681>,  <29.844191, 32.855766, 33.132473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.076052, 32.915131, 33.114681>,  <30.462486, 33.014069, 33.085030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.076052, 32.915131, 33.114681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251959, -0.965812, 0.061027,
		0.056497, 0.077634, 0.995380,
		-0.966087, -0.247347, 0.074126,
		29.786226, 32.840927, 33.136917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.675762, 33.707584, 32.927555>,  <30.462486, 33.014069, 33.085030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.675762, 33.707584, 32.927555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.868641, 33.568409, 32.605953>,  <30.984367, 33.484901, 32.412991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.868641, 33.568409, 32.605953>,  <30.675762, 33.707584, 32.927555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.868641, 33.568409, 32.605953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824721, 0.489852, 0.282630,
		0.295505, -0.799363, 0.523160,
		0.482195, -0.347943, -0.804005,
		31.013300, 33.464027, 32.364750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.453310, 33.387978, 33.082241>,  <30.675762, 33.707584, 32.927555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.453310, 33.387978, 33.082241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.415915, 33.528934, 32.709774>,  <31.393476, 33.613510, 32.486294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.415915, 33.528934, 32.709774>,  <31.453310, 33.387978, 33.082241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.415915, 33.528934, 32.709774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948327, 0.316346, 0.024505,
		0.303207, -0.880764, -0.363758,
		-0.093490, 0.352392, -0.931171,
		31.387867, 33.634651, 32.430424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.003181, 33.102512, 32.679665>,  <31.453310, 33.387978, 33.082241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.003181, 33.102512, 32.679665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917366, 33.479671, 32.577755>,  <31.865877, 33.705967, 32.516609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917366, 33.479671, 32.577755>,  <32.003181, 33.102512, 32.679665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.917366, 33.479671, 32.577755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976700, 0.205623, -0.061450,
		-0.005553, -0.262024, -0.965045,
		-0.214537, 0.942901, -0.254777,
		31.853004, 33.762543, 32.501320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.342068, 33.232388, 32.034966>,  <32.003181, 33.102512, 32.679665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.342068, 33.232388, 32.034966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281017, 33.539661, 32.283672>,  <32.244389, 33.724026, 32.432896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281017, 33.539661, 32.283672>,  <32.342068, 33.232388, 32.034966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.281017, 33.539661, 32.283672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983685, 0.178708, 0.020678,
		-0.095231, 0.614783, -0.782926,
		-0.152628, 0.768183, 0.621772,
		32.235229, 33.770115, 32.470203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.693237, 33.894112, 31.785074>,  <32.342068, 33.232388, 32.034966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.693237, 33.894112, 31.785074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663681, 33.910412, 32.183647>,  <32.645947, 33.920193, 32.422791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663681, 33.910412, 32.183647>,  <32.693237, 33.894112, 31.785074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.663681, 33.910412, 32.183647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970880, 0.231258, 0.062542,
		-0.227885, 0.972039, -0.056651,
		-0.073894, 0.040749, 0.996433,
		32.641514, 33.922638, 32.482578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095383, 34.502728, 32.151318>,  <32.693237, 33.894112, 31.785074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095383, 34.502728, 32.151318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.109135, 34.166321, 32.367287>,  <33.117386, 33.964478, 32.496868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.109135, 34.166321, 32.367287>,  <33.095383, 34.502728, 32.151318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.109135, 34.166321, 32.367287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978566, 0.138087, 0.152778,
		-0.203045, 0.523097, 0.827733,
		0.034381, -0.841012, 0.539923,
		33.119450, 33.914017, 32.529263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.265656, 34.613102, 32.915230>,  <33.095383, 34.502728, 32.151318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.265656, 34.613102, 32.915230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391430, 34.267662, 32.757584>,  <33.466892, 34.060398, 32.662994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391430, 34.267662, 32.757584>,  <33.265656, 34.613102, 32.915230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.391430, 34.267662, 32.757584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927199, 0.368426, -0.067571,
		0.203558, -0.344180, 0.916572,
		0.314432, -0.863599, -0.394119,
		33.485760, 34.008583, 32.639347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.089329, 35.443851, 32.957508>,  <33.265656, 34.613102, 32.915230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.089329, 35.443851, 32.957508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753910, 35.523407, 33.160400>,  <32.552658, 35.571140, 33.282135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753910, 35.523407, 33.160400>,  <33.089329, 35.443851, 32.957508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753910, 35.523407, 33.160400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526378, -0.055520, -0.848436,
		-0.140583, -0.978448, 0.151246,
		-0.838548, 0.198888, 0.507229,
		32.502346, 35.583073, 33.312569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.577141, 34.887070, 32.844273>,  <33.089329, 35.443851, 32.957508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.577141, 34.887070, 32.844273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.444183, 35.264214, 32.853527>,  <32.364410, 35.490498, 32.859077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.444183, 35.264214, 32.853527>,  <32.577141, 34.887070, 32.844273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.444183, 35.264214, 32.853527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391395, -0.115583, -0.912935,
		-0.858093, -0.312509, 0.407449,
		-0.332394, 0.942856, 0.023133,
		32.344463, 35.547070, 32.860466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.004192, 34.807724, 32.546246>,  <32.577141, 34.887070, 32.844273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.004192, 34.807724, 32.546246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099899, 35.194393, 32.509830>,  <32.157326, 35.426395, 32.487984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099899, 35.194393, 32.509830>,  <32.004192, 34.807724, 32.546246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.099899, 35.194393, 32.509830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234383, -0.033480, -0.971568,
		-0.942239, 0.253805, 0.218562,
		0.239271, 0.966676, -0.091034,
		32.171680, 35.484394, 32.482521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.499332, 35.057560, 31.994322>,  <32.004192, 34.807724, 32.546246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.499332, 35.057560, 31.994322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.777409, 35.345058, 31.998491>,  <31.944254, 35.517559, 32.000992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.777409, 35.345058, 31.998491>,  <31.499332, 35.057560, 31.994322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.777409, 35.345058, 31.998491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194946, 0.202471, -0.959688,
		-0.691886, 0.665134, 0.280874,
		0.695190, 0.718750, 0.010421,
		31.985966, 35.560684, 32.001617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.157326, 35.601624, 31.820917>,  <31.499332, 35.057560, 31.994322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.157326, 35.601624, 31.820917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.533756, 35.724876, 31.765162>,  <31.759615, 35.798828, 31.731709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.533756, 35.724876, 31.765162>,  <31.157326, 35.601624, 31.820917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.533756, 35.724876, 31.765162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243596, 0.331688, -0.911397,
		-0.234593, 0.891650, 0.387203,
		0.941078, 0.308128, -0.139391,
		31.816080, 35.817314, 31.723345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.052401, 36.324646, 31.537449>,  <31.157326, 35.601624, 31.820917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.052401, 36.324646, 31.537449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.414402, 36.174500, 31.457380>,  <31.631603, 36.084412, 31.409340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.414402, 36.174500, 31.457380>,  <31.052401, 36.324646, 31.537449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.414402, 36.174500, 31.457380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106892, 0.254792, -0.961070,
		0.411752, 0.891170, 0.190465,
		0.905005, -0.375363, -0.200170,
		31.685904, 36.061890, 31.397329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.347605, 36.864006, 31.029200>,  <31.052401, 36.324646, 31.537449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.347605, 36.864006, 31.029200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.567404, 36.535175, 30.969547>,  <31.699284, 36.337875, 30.933756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.567404, 36.535175, 30.969547>,  <31.347605, 36.864006, 31.029200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.567404, 36.535175, 30.969547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079507, 0.126234, -0.988809,
		0.831703, 0.555206, 0.004004,
		0.549498, -0.822077, -0.149132,
		31.732254, 36.288551, 30.924809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.649323, 37.054249, 30.474653>,  <31.347605, 36.864006, 31.029200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.649323, 37.054249, 30.474653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.696527, 36.657043, 30.474300>,  <31.724852, 36.418720, 30.474089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.696527, 36.657043, 30.474300>,  <31.649323, 37.054249, 30.474653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.696527, 36.657043, 30.474300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003236, 0.000506, -0.999995,
		0.993007, 0.118016, -0.003153,
		0.118014, -0.993012, -0.000884,
		31.731932, 36.359138, 30.474035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226372, 36.869205, 30.077951>,  <31.649323, 37.054249, 30.474653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.226372, 36.869205, 30.077951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.977575, 36.556511, 30.095873>,  <31.828297, 36.368893, 30.106627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.977575, 36.556511, 30.095873>,  <32.226372, 36.869205, 30.077951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.977575, 36.556511, 30.095873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117582, -0.149820, -0.981697,
		0.774142, -0.605342, 0.185105,
		-0.621995, -0.781738, 0.044805,
		31.790977, 36.321991, 30.109314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.477486, 36.464146, 29.633684>,  <32.226372, 36.869205, 30.077951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.477486, 36.464146, 29.633684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.103973, 36.326866, 29.674227>,  <31.879866, 36.244499, 29.698553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.103973, 36.326866, 29.674227>,  <32.477486, 36.464146, 29.633684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.103973, 36.326866, 29.674227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093061, -0.040608, -0.994832,
		0.345536, -0.938386, 0.005981,
		-0.933779, -0.343194, 0.101359,
		31.823839, 36.223907, 29.704634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.437836, 35.923325, 29.122019>,  <32.477486, 36.464146, 29.633684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.437836, 35.923325, 29.122019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.055035, 35.982494, 29.221830>,  <31.825354, 36.017998, 29.281717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.055035, 35.982494, 29.221830>,  <32.437836, 35.923325, 29.122019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.055035, 35.982494, 29.221830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265704, -0.101831, -0.958661,
		-0.116404, -0.983742, 0.136758,
		-0.957001, 0.147929, 0.249531,
		31.767935, 36.026875, 29.296690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.093800, 35.439606, 28.667200>,  <32.437836, 35.923325, 29.122019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.093800, 35.439606, 28.667200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.832691, 35.719608, 28.783052>,  <31.676025, 35.887608, 28.852564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.832691, 35.719608, 28.783052>,  <32.093800, 35.439606, 28.667200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.832691, 35.719608, 28.783052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266220, 0.145970, -0.952796,
		-0.709237, -0.699063, 0.091070,
		-0.652770, 0.700003, 0.289632,
		31.636860, 35.929607, 28.869942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.532349, 35.287342, 28.252600>,  <32.093800, 35.439606, 28.667200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.532349, 35.287342, 28.252600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.473923, 35.669201, 28.356379>,  <31.438868, 35.898315, 28.418646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.473923, 35.669201, 28.356379>,  <31.532349, 35.287342, 28.252600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.473923, 35.669201, 28.356379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443373, 0.171276, -0.879821,
		-0.884356, -0.243542, 0.398248,
		-0.146063, 0.954648, 0.259449,
		31.430103, 35.955597, 28.434214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.834959, 35.407776, 28.285913>,  <31.532349, 35.287342, 28.252600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.834959, 35.407776, 28.285913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.999180, 35.764656, 28.210623>,  <31.097713, 35.978783, 28.165449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.999180, 35.764656, 28.210623>,  <30.834959, 35.407776, 28.285913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.999180, 35.764656, 28.210623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555195, 0.080841, -0.827782,
		-0.723328, 0.444352, 0.528533,
		0.410554, 0.892197, -0.188227,
		31.122347, 36.032314, 28.154154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.265970, 35.799061, 28.070446>,  <30.834959, 35.407776, 28.285913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.265970, 35.799061, 28.070446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.568707, 36.039242, 27.967175>,  <30.750347, 36.183350, 27.905212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.568707, 36.039242, 27.967175>,  <30.265970, 35.799061, 28.070446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.568707, 36.039242, 27.967175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440480, 0.176744, -0.880193,
		-0.482878, 0.779887, 0.398252,
		0.756840, 0.600448, -0.258179,
		30.795759, 36.219376, 27.889721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.929674, 36.399048, 27.655876>,  <30.265970, 35.799061, 28.070446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.929674, 36.399048, 27.655876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.317480, 36.413963, 27.559004>,  <30.550163, 36.422913, 27.500881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.317480, 36.413963, 27.559004>,  <29.929674, 36.399048, 27.655876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.317480, 36.413963, 27.559004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244960, 0.123135, -0.961682,
		-0.006038, 0.991689, 0.128515,
		0.969514, 0.037288, -0.242181,
		30.608334, 36.425148, 27.486349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.882002, 36.938301, 27.311586>,  <29.929674, 36.399048, 27.655876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.882002, 36.938301, 27.311586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.209398, 36.738674, 27.197741>,  <30.405836, 36.618896, 27.129433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.209398, 36.738674, 27.197741>,  <29.882002, 36.938301, 27.311586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.209398, 36.738674, 27.197741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315142, 0.024214, -0.948735,
		0.480374, 0.866225, -0.137458,
		0.818490, -0.499067, -0.284616,
		30.454945, 36.588955, 27.112356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.342356, 37.423820, 26.969486>,  <29.882002, 36.938301, 27.311586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.342356, 37.423820, 26.969486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.395906, 37.045956, 26.849697>,  <30.428036, 36.819237, 26.777822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.395906, 37.045956, 26.849697>,  <30.342356, 37.423820, 26.969486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.395906, 37.045956, 26.849697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290382, 0.251536, -0.923259,
		0.947500, 0.210564, -0.240639,
		0.133876, -0.944665, -0.299475,
		30.436069, 36.762558, 26.759855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.699081, 37.456169, 26.428471>,  <30.342356, 37.423820, 26.969486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.699081, 37.456169, 26.428471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.591322, 37.076679, 26.362324>,  <30.526667, 36.848984, 26.322636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.591322, 37.076679, 26.362324>,  <30.699081, 37.456169, 26.428471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.591322, 37.076679, 26.362324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183445, 0.219127, -0.958296,
		0.945395, -0.227829, -0.233071,
		-0.269400, -0.948724, -0.165367,
		30.510502, 36.792061, 26.312714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.973995, 37.289577, 25.697460>,  <30.699081, 37.456169, 26.428471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.973995, 37.289577, 25.697460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.698771, 37.006516, 25.761705>,  <30.533636, 36.836678, 25.800253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.698771, 37.006516, 25.761705>,  <30.973995, 37.289577, 25.697460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.698771, 37.006516, 25.761705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292847, 0.068275, -0.953719,
		0.663938, -0.703252, -0.254212,
		-0.688061, -0.707655, 0.160615,
		30.492352, 36.794220, 25.809891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.077415, 36.907688, 25.137627>,  <30.973995, 37.289577, 25.697460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.077415, 36.907688, 25.137627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.711296, 36.863842, 25.292654>,  <30.491625, 36.837536, 25.385672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.711296, 36.863842, 25.292654>,  <31.077415, 36.907688, 25.137627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.711296, 36.863842, 25.292654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378399, -0.095638, -0.920689,
		0.137985, -0.989363, 0.046060,
		-0.915300, -0.109612, 0.387570,
		30.436707, 36.830959, 25.408924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.734617, 36.296185, 24.693558>,  <31.077415, 36.907688, 25.137627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.734617, 36.296185, 24.693558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.427450, 36.454815, 24.894766>,  <30.243151, 36.549995, 25.015491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.427450, 36.454815, 24.894766>,  <30.734617, 36.296185, 24.693558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.427450, 36.454815, 24.894766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553701, -0.016140, -0.832559,
		-0.322056, -0.917859, 0.231980,
		-0.767916, 0.396578, 0.503021,
		30.197075, 36.573788, 25.045671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.151972, 36.027710, 24.516850>,  <30.734617, 36.296185, 24.693558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.151972, 36.027710, 24.516850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.005222, 36.361153, 24.682016>,  <29.917173, 36.561218, 24.781116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.005222, 36.361153, 24.682016>,  <30.151972, 36.027710, 24.516850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.005222, 36.361153, 24.682016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667678, 0.073126, -0.740850,
		-0.647774, -0.547493, 0.529754,
		-0.366872, 0.833609, 0.412918,
		29.895161, 36.611237, 24.805891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.510210, 35.915024, 24.755726>,  <30.151972, 36.027710, 24.516850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.510210, 35.915024, 24.755726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.540756, 36.305630, 24.675144>,  <29.559084, 36.539993, 24.626795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.540756, 36.305630, 24.675144>,  <29.510210, 35.915024, 24.755726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.540756, 36.305630, 24.675144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754001, -0.075645, -0.652503,
		-0.652419, 0.201725, 0.730518,
		0.076366, 0.976517, -0.201453,
		29.563665, 36.598583, 24.614708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.849634, 36.203259, 24.689266>,  <29.510210, 35.915024, 24.755726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.849634, 36.203259, 24.689266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.052769, 36.490749, 24.499308>,  <29.174650, 36.663246, 24.385332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.052769, 36.490749, 24.499308>,  <28.849634, 36.203259, 24.689266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.052769, 36.490749, 24.499308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800201, 0.189415, -0.569035,
		-0.319030, 0.668991, 0.671320,
		0.507837, 0.718730, -0.474898,
		29.205120, 36.706367, 24.356838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.310940, 36.747482, 24.518641>,  <28.849634, 36.203259, 24.689266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.310940, 36.747482, 24.518641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.629105, 36.833714, 24.292067>,  <28.820004, 36.885452, 24.156122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.629105, 36.833714, 24.292067>,  <28.310940, 36.747482, 24.518641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.629105, 36.833714, 24.292067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603853, 0.202018, -0.771071,
		-0.051795, 0.955362, 0.290864,
		0.795411, 0.215576, -0.566435,
		28.867727, 36.898388, 24.122137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.224365, 37.414818, 24.231449>,  <28.310940, 36.747482, 24.518641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.224365, 37.414818, 24.231449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.463108, 37.212326, 23.982452>,  <28.606354, 37.090832, 23.833055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.463108, 37.212326, 23.982452>,  <28.224365, 37.414818, 24.231449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.463108, 37.212326, 23.982452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468847, 0.409544, -0.782596,
		0.651108, 0.758951, 0.007097,
		0.596859, -0.506227, -0.622490,
		28.642166, 37.060459, 23.795706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.391466, 37.859970, 23.840641>,  <28.224365, 37.414818, 24.231449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.391466, 37.859970, 23.840641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.467827, 37.528397, 23.630335>,  <28.513643, 37.329453, 23.504150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.467827, 37.528397, 23.630335>,  <28.391466, 37.859970, 23.840641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.467827, 37.528397, 23.630335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435987, 0.408284, -0.802010,
		0.879473, 0.382332, -0.283462,
		0.190901, -0.828931, -0.525766,
		28.525097, 37.279716, 23.472605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.666672, 38.129478, 23.145018>,  <28.391466, 37.859970, 23.840641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.666672, 38.129478, 23.145018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.578043, 37.744713, 23.080980>,  <28.524866, 37.513855, 23.042557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.578043, 37.744713, 23.080980>,  <28.666672, 38.129478, 23.145018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.578043, 37.744713, 23.080980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456249, 0.247360, -0.854781,
		0.861825, -0.116354, -0.493680,
		-0.221574, -0.961912, -0.160095,
		28.511570, 37.456139, 23.032951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.049662, 37.859257, 22.575863>,  <28.666672, 38.129478, 23.145018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.049662, 37.859257, 22.575863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.711056, 37.650528, 22.618042>,  <28.507893, 37.525291, 22.643349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.711056, 37.650528, 22.618042>,  <29.049662, 37.859257, 22.575863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.711056, 37.650528, 22.618042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220992, 0.164237, -0.961347,
		0.484332, -0.837096, -0.254347,
		-0.846513, -0.521820, 0.105446,
		28.457102, 37.493980, 22.649675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.060768, 37.453274, 21.955299>,  <29.049662, 37.859257, 22.575863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.060768, 37.453274, 21.955299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.684381, 37.461437, 22.090454>,  <28.458549, 37.466335, 22.171547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.684381, 37.461437, 22.090454>,  <29.060768, 37.453274, 21.955299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.684381, 37.461437, 22.090454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325224, 0.222298, -0.919137,
		-0.093872, -0.974765, -0.202536,
		-0.940966, 0.020411, 0.337885,
		28.402092, 37.467560, 22.191820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.443478, 37.090706, 21.451580>,  <29.060768, 37.453274, 21.955299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.443478, 37.090706, 21.451580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.241247, 37.342167, 21.687948>,  <28.119909, 37.493046, 21.829769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.241247, 37.342167, 21.687948>,  <28.443478, 37.090706, 21.451580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.241247, 37.342167, 21.687948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566408, 0.274807, -0.776957,
		-0.650828, -0.727512, 0.217140,
		-0.505574, 0.628655, 0.590921,
		28.089575, 37.530762, 21.865225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.878437, 37.118744, 21.042141>,  <28.443478, 37.090706, 21.451580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.878437, 37.118744, 21.042141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.821321, 37.416832, 21.302679>,  <27.787052, 37.595684, 21.459002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.821321, 37.416832, 21.302679>,  <27.878437, 37.118744, 21.042141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.821321, 37.416832, 21.302679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385054, 0.564419, -0.730181,
		-0.911781, -0.355067, 0.206358,
		-0.142790, 0.745224, 0.651346,
		27.778484, 37.640400, 21.498083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.268391, 37.452938, 20.770552>,  <27.878437, 37.118744, 21.042141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.268391, 37.452938, 20.770552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.414974, 37.698368, 21.050331>,  <27.502924, 37.845627, 21.218199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.414974, 37.698368, 21.050331>,  <27.268391, 37.452938, 20.770552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.414974, 37.698368, 21.050331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330944, 0.788541, -0.518342,
		-0.869588, -0.041528, 0.492028,
		0.366458, 0.613578, 0.699450,
		27.524912, 37.882442, 21.260166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.750713, 37.822838, 21.001995>,  <27.268391, 37.452938, 20.770552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.750713, 37.822838, 21.001995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.069868, 38.048306, 21.087456>,  <27.261362, 38.183586, 21.138733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.069868, 38.048306, 21.087456>,  <26.750713, 37.822838, 21.001995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.069868, 38.048306, 21.087456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461737, 0.799341, -0.384516,
		-0.387522, 0.208150, 0.898054,
		0.797888, 0.563673, 0.213652,
		27.309235, 38.217407, 21.151552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.600309, 38.454777, 21.319756>,  <26.750713, 37.822838, 21.001995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.600309, 38.454777, 21.319756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.950504, 38.527512, 21.140665>,  <27.160622, 38.571152, 21.033211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.950504, 38.527512, 21.140665>,  <26.600309, 38.454777, 21.319756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.950504, 38.527512, 21.140665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407187, 0.776518, -0.480851,
		0.260232, 0.603287, 0.753872,
		0.875487, 0.181834, -0.447725,
		27.213150, 38.582062, 21.006348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.684435, 39.154564, 21.408113>,  <26.600309, 38.454777, 21.319756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.684435, 39.154564, 21.408113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.911049, 39.042374, 21.098179>,  <27.047018, 38.975060, 20.912218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.911049, 39.042374, 21.098179>,  <26.684435, 39.154564, 21.408113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.911049, 39.042374, 21.098179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402470, 0.726331, -0.557190,
		0.719065, 0.627517, 0.298610,
		0.566536, -0.280474, -0.774836,
		27.081009, 38.958233, 20.865728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.009027, 39.743164, 21.136765>,  <26.684435, 39.154564, 21.408113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.009027, 39.743164, 21.136765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.030722, 39.463223, 20.851875>,  <27.043739, 39.295258, 20.680943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.030722, 39.463223, 20.851875>,  <27.009027, 39.743164, 21.136765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.030722, 39.463223, 20.851875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390801, 0.641497, -0.660118,
		0.918876, 0.314140, -0.238711,
		0.054237, -0.699855, -0.712222,
		27.046993, 39.253265, 20.638208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.238371, 40.138371, 20.608967>,  <27.009027, 39.743164, 21.136765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.238371, 40.138371, 20.608967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.101315, 39.812248, 20.422260>,  <27.019081, 39.616573, 20.310236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.101315, 39.812248, 20.422260>,  <27.238371, 40.138371, 20.608967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.101315, 39.812248, 20.422260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504860, 0.578800, -0.640396,
		0.792285, 0.016228, -0.609936,
		-0.342638, -0.815308, -0.466767,
		26.998524, 39.567657, 20.282230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.337599, 40.229095, 19.977892>,  <27.238371, 40.138371, 20.608967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.337599, 40.229095, 19.977892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.053049, 39.948662, 19.958168>,  <26.882318, 39.780403, 19.946333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.053049, 39.948662, 19.958168>,  <27.337599, 40.229095, 19.977892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.053049, 39.948662, 19.958168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520372, 0.572572, -0.633540,
		0.472398, -0.425024, -0.772137,
		-0.711374, -0.701082, -0.049311,
		26.839638, 39.738338, 19.943375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.184015, 40.094608, 19.195534>,  <27.337599, 40.229095, 19.977892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.184015, 40.094608, 19.195534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.863169, 39.965900, 19.396759>,  <26.670660, 39.888676, 19.517494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.863169, 39.965900, 19.396759>,  <27.184015, 40.094608, 19.195534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.863169, 39.965900, 19.396759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593847, 0.341109, -0.728691,
		0.062872, -0.883238, -0.464692,
		-0.802118, -0.321770, 0.503062,
		26.622534, 39.869370, 19.547678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.871326, 39.878429, 18.676861>,  <27.184015, 40.094608, 19.195534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.871326, 39.878429, 18.676861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.585690, 39.904305, 18.955685>,  <26.414309, 39.919830, 19.122978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.585690, 39.904305, 18.955685>,  <26.871326, 39.878429, 18.676861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.585690, 39.904305, 18.955685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619367, 0.405705, -0.672152,
		-0.326280, -0.911712, -0.249644,
		-0.714091, 0.064689, 0.697058,
		26.371462, 39.923710, 19.164803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.191944, 39.473785, 18.453400>,  <26.871326, 39.878429, 18.676861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.191944, 39.473785, 18.453400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.100962, 39.739620, 18.738100>,  <26.046371, 39.899120, 18.908920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.100962, 39.739620, 18.738100>,  <26.191944, 39.473785, 18.453400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.100962, 39.739620, 18.738100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639302, 0.449425, -0.623947,
		-0.734545, -0.596946, 0.322645,
		-0.227458, 0.664584, 0.711752,
		26.032724, 39.938995, 18.951626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.476772, 39.520184, 18.402208>,  <26.191944, 39.473785, 18.453400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.476772, 39.520184, 18.402208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.528057, 39.856480, 18.612625>,  <25.558828, 40.058258, 18.738876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.528057, 39.856480, 18.612625>,  <25.476772, 39.520184, 18.402208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.528057, 39.856480, 18.612625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519307, 0.508804, -0.686614,
		-0.844915, -0.185144, 0.501837,
		0.128214, 0.840737, 0.526043,
		25.566521, 40.108700, 18.770437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.785933, 39.778481, 18.396173>,  <25.476772, 39.520184, 18.402208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.785933, 39.778481, 18.396173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.013391, 40.089787, 18.502716>,  <25.149866, 40.276569, 18.566643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.013391, 40.089787, 18.502716>,  <24.785933, 39.778481, 18.396173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.013391, 40.089787, 18.502716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557295, 0.602668, -0.571151,
		-0.605032, 0.176342, 0.776427,
		0.568646, 0.778264, 0.266359,
		25.183985, 40.323265, 18.582624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.371502, 40.360001, 18.693190>,  <24.785933, 39.778481, 18.396173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.371502, 40.360001, 18.693190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.722189, 40.533531, 18.610085>,  <24.932602, 40.637650, 18.560221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.722189, 40.533531, 18.610085>,  <24.371502, 40.360001, 18.693190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.722189, 40.533531, 18.610085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477458, 0.837253, -0.266537,
		0.058321, 0.332875, 0.941166,
		0.876717, 0.433822, -0.207763,
		24.985205, 40.663677, 18.547756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.314709, 41.083405, 18.962337>,  <24.371502, 40.360001, 18.693190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.314709, 41.083405, 18.962337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.580399, 41.044865, 18.665819>,  <24.739813, 41.021740, 18.487907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.580399, 41.044865, 18.665819>,  <24.314709, 41.083405, 18.962337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.580399, 41.044865, 18.665819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461843, 0.726864, -0.508302,
		0.587796, 0.679990, 0.438304,
		0.664227, -0.096350, -0.741296,
		24.779667, 41.015961, 18.443430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.684708, 41.658764, 18.855801>,  <24.314709, 41.083405, 18.962337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.684708, 41.658764, 18.855801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.612007, 41.461559, 18.515471>,  <24.568386, 41.343235, 18.311272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.612007, 41.461559, 18.515471>,  <24.684708, 41.658764, 18.855801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.612007, 41.461559, 18.515471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573343, 0.756078, -0.315632,
		0.798902, 0.430450, -0.420081,
		-0.181750, -0.493010, -0.850828,
		24.557482, 41.313656, 18.260221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.136677, 42.283440, 18.747744>,  <24.684708, 41.658764, 18.855801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.136677, 42.283440, 18.747744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.376793, 42.585423, 18.853338>,  <25.520863, 42.766613, 18.916695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.376793, 42.585423, 18.853338>,  <25.136677, 42.283440, 18.747744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.376793, 42.585423, 18.853338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350474, 0.545009, -0.761665,
		-0.718900, 0.364700, 0.591757,
		0.600292, 0.754956, 0.263989,
		25.556881, 42.811909, 18.932535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.605007, 42.735722, 18.755318>,  <25.136677, 42.283440, 18.747744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.605007, 42.735722, 18.755318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.958876, 42.916111, 18.708023>,  <25.171196, 43.024345, 18.679647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.958876, 42.916111, 18.708023>,  <24.605007, 42.735722, 18.755318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.958876, 42.916111, 18.708023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342483, 0.456559, -0.821133,
		-0.316330, 0.766925, 0.558356,
		0.884670, 0.450976, -0.118235,
		25.224277, 43.051403, 18.672552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.462065, 43.463421, 18.465322>,  <24.605007, 42.735722, 18.755318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.462065, 43.463421, 18.465322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.835354, 43.336262, 18.398350>,  <25.059328, 43.259968, 18.358166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.835354, 43.336262, 18.398350>,  <24.462065, 43.463421, 18.465322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.835354, 43.336262, 18.398350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012660, 0.436618, -0.899558,
		0.359072, 0.841609, 0.403438,
		0.933224, -0.317898, -0.167432,
		25.115320, 43.240891, 18.348120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.940201, 44.041492, 18.425356>,  <24.462065, 43.463421, 18.465322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.940201, 44.041492, 18.425356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.046576, 43.729927, 18.198175>,  <25.110401, 43.542988, 18.061867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.046576, 43.729927, 18.198175>,  <24.940201, 44.041492, 18.425356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.046576, 43.729927, 18.198175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039895, 0.597555, -0.800835,
		0.963164, 0.190315, 0.189988,
		0.265939, -0.778915, -0.567951,
		25.126358, 43.496254, 18.027790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.644991, 44.125809, 18.157478>,  <24.940201, 44.041492, 18.425356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.644991, 44.125809, 18.157478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.430595, 43.933533, 17.879871>,  <25.301958, 43.818169, 17.713308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.430595, 43.933533, 17.879871>,  <25.644991, 44.125809, 18.157478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.430595, 43.933533, 17.879871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174039, 0.741502, -0.647985,
		0.826093, -0.468097, -0.313776,
		-0.535985, -0.480687, -0.694017,
		25.269800, 43.789326, 17.671667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.282150, 43.804394, 18.569698>,  <25.644991, 44.125809, 18.157478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.282150, 43.804394, 18.569698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.955137, 43.580940, 18.625660>,  <25.758930, 43.446869, 18.659237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.955137, 43.580940, 18.625660>,  <26.282150, 43.804394, 18.569698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.955137, 43.580940, 18.625660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304127, -0.212508, 0.928626,
		-0.489027, 0.801731, 0.343627,
		-0.817532, -0.558630, 0.139906,
		25.709877, 43.413353, 18.667631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.233086, 43.748924, 19.287779>,  <26.282150, 43.804394, 18.569698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.233086, 43.748924, 19.287779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.963030, 43.474545, 19.179220>,  <25.800997, 43.309917, 19.114084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.963030, 43.474545, 19.179220>,  <26.233086, 43.748924, 19.287779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.963030, 43.474545, 19.179220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218555, -0.537381, 0.814528,
		-0.704570, 0.490605, 0.512726,
		-0.675140, -0.685951, -0.271398,
		25.760489, 43.268761, 19.097801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.710175, 43.728291, 19.852880>,  <26.233086, 43.748924, 19.287779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.710175, 43.728291, 19.852880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.796139, 43.391365, 19.655163>,  <25.847717, 43.189209, 19.536531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.796139, 43.391365, 19.655163>,  <25.710175, 43.728291, 19.852880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.796139, 43.391365, 19.655163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213634, -0.453318, 0.865369,
		-0.952982, -0.291575, 0.082523,
		0.214911, -0.842310, -0.494294,
		25.860613, 43.138672, 19.506874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.339331, 43.191925, 20.224216>,  <25.710175, 43.728291, 19.852880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.339331, 43.191925, 20.224216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.611422, 42.996155, 20.005949>,  <25.774677, 42.878693, 19.874989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.611422, 42.996155, 20.005949>,  <25.339331, 43.191925, 20.224216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.611422, 42.996155, 20.005949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338820, -0.450184, 0.826157,
		-0.649993, -0.746858, -0.140401,
		0.680228, -0.489426, -0.545666,
		25.815491, 42.849327, 19.842249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.390678, 42.546097, 20.525709>,  <25.339331, 43.191925, 20.224216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.390678, 42.546097, 20.525709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.736738, 42.577881, 20.327639>,  <25.944374, 42.596951, 20.208796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.736738, 42.577881, 20.327639>,  <25.390678, 42.546097, 20.525709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.736738, 42.577881, 20.327639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484332, -0.388595, 0.783847,
		-0.130142, -0.917976, -0.374677,
		0.865150, 0.079457, -0.495178,
		25.996283, 42.601719, 20.179085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.703009, 41.865986, 20.499409>,  <25.390678, 42.546097, 20.525709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.703009, 41.865986, 20.499409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.998825, 42.133369, 20.467796>,  <26.176315, 42.293800, 20.448830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.998825, 42.133369, 20.467796>,  <25.703009, 41.865986, 20.499409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.998825, 42.133369, 20.467796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459030, -0.414972, 0.785551,
		0.492311, -0.617224, -0.613730,
		0.739541, 0.668456, -0.079029,
		26.220688, 42.333908, 20.444088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.236235, 41.482578, 20.622452>,  <25.703009, 41.865986, 20.499409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.236235, 41.482578, 20.622452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.413706, 41.839771, 20.652748>,  <26.520189, 42.054085, 20.670927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.413706, 41.839771, 20.652748>,  <26.236235, 41.482578, 20.622452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.413706, 41.839771, 20.652748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475781, -0.306327, 0.824498,
		0.759461, -0.329776, -0.560773,
		0.443679, 0.892979, 0.075742,
		26.546810, 42.107666, 20.675470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.932529, 41.371544, 20.910770>,  <26.236235, 41.482578, 20.622452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.932529, 41.371544, 20.910770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.919559, 41.768047, 20.961914>,  <26.911777, 42.005951, 20.992599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.919559, 41.768047, 20.961914>,  <26.932529, 41.371544, 20.910770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.919559, 41.768047, 20.961914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422759, -0.102316, 0.900448,
		0.905662, 0.083251, -0.415747,
		-0.032425, 0.991262, 0.127859,
		26.909832, 42.065426, 21.000271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.550327, 41.518482, 21.128284>,  <26.932529, 41.371544, 20.910770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.550327, 41.518482, 21.128284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.323273, 41.819756, 21.261255>,  <27.187040, 42.000519, 21.341038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.323273, 41.819756, 21.261255>,  <27.550327, 41.518482, 21.128284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.323273, 41.819756, 21.261255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323678, -0.167098, 0.931296,
		0.756981, 0.636237, -0.148937,
		-0.567638, 0.753181, 0.332425,
		27.152981, 42.045712, 21.360983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.001709, 41.873390, 21.607780>,  <27.550327, 41.518482, 21.128284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.001709, 41.873390, 21.607780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.627411, 41.983662, 21.695765>,  <27.402832, 42.049824, 21.748556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.627411, 41.983662, 21.695765>,  <28.001709, 41.873390, 21.607780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.627411, 41.983662, 21.695765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230652, 0.006549, 0.973014,
		0.266803, 0.961226, -0.069715,
		-0.935744, 0.275683, 0.219961,
		27.346687, 42.066368, 21.761753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.994747, 42.598583, 21.882942>,  <28.001709, 41.873390, 21.607780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.994747, 42.598583, 21.882942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.687702, 42.379288, 22.015732>,  <27.503475, 42.247711, 22.095406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.687702, 42.379288, 22.015732>,  <27.994747, 42.598583, 21.882942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.687702, 42.379288, 22.015732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352422, 0.071579, 0.933100,
		-0.535324, 0.833253, 0.138266,
		-0.767611, -0.548239, 0.331975,
		27.457418, 42.214817, 22.115324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.740150, 42.940266, 22.488705>,  <27.994747, 42.598583, 21.882942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.740150, 42.940266, 22.488705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.585955, 42.572609, 22.521160>,  <27.493437, 42.352016, 22.540632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.585955, 42.572609, 22.521160>,  <27.740150, 42.940266, 22.488705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.585955, 42.572609, 22.521160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165309, 0.017715, 0.986083,
		-0.907784, 0.393536, 0.145113,
		-0.385489, -0.919138, 0.081137,
		27.470308, 42.296867, 22.545502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.379049, 42.919193, 23.124733>,  <27.740150, 42.940266, 22.488705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.379049, 42.919193, 23.124733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.467691, 42.548027, 23.004824>,  <27.520878, 42.325329, 22.932878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.467691, 42.548027, 23.004824>,  <27.379049, 42.919193, 23.124733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.467691, 42.548027, 23.004824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343138, -0.213550, 0.914687,
		-0.912769, -0.305564, 0.271079,
		0.221607, -0.927915, -0.299773,
		27.534174, 42.269653, 22.914892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.983074, 42.593647, 23.630196>,  <27.379049, 42.919193, 23.124733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.983074, 42.593647, 23.630196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.245062, 42.339241, 23.466976>,  <27.402254, 42.186596, 23.369045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.245062, 42.339241, 23.466976>,  <26.983074, 42.593647, 23.630196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.245062, 42.339241, 23.466976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261657, -0.315701, 0.912068,
		-0.708909, -0.704145, -0.040357,
		0.654969, -0.636014, -0.408047,
		27.441553, 42.148438, 23.344563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.944256, 41.902348, 24.063612>,  <26.983074, 42.593647, 23.630196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.944256, 41.902348, 24.063612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.287083, 41.855080, 23.863026>,  <27.492779, 41.826717, 23.742674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.287083, 41.855080, 23.863026>,  <26.944256, 41.902348, 24.063612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.287083, 41.855080, 23.863026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354500, -0.571024, 0.740447,
		-0.373851, -0.812383, -0.447514,
		0.857068, -0.118173, -0.501468,
		27.544203, 41.819626, 23.712585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.067686, 41.174171, 23.960392>,  <26.944256, 41.902348, 24.063612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.067686, 41.174171, 23.960392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.406027, 41.387524, 23.962908>,  <27.609032, 41.515533, 23.964417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.406027, 41.387524, 23.962908>,  <27.067686, 41.174171, 23.960392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.406027, 41.387524, 23.962908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277432, -0.449974, 0.848855,
		0.455591, -0.716262, -0.528588,
		0.845854, 0.533378, 0.006290,
		27.659782, 41.547539, 23.964794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.684034, 40.691116, 23.887163>,  <27.067686, 41.174171, 23.960392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.684034, 40.691116, 23.887163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.782131, 41.037918, 24.060669>,  <27.840988, 41.245998, 24.164772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.782131, 41.037918, 24.060669>,  <27.684034, 40.691116, 23.887163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.782131, 41.037918, 24.060669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457983, -0.497966, 0.736398,
		0.854464, 0.018063, -0.519196,
		0.245240, 0.867009, 0.433767,
		27.855703, 41.298019, 24.190800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.163103, 40.484978, 24.353277>,  <27.684034, 40.691116, 23.887163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.163103, 40.484978, 24.353277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.158613, 40.865780, 24.475626>,  <28.155920, 41.094261, 24.549034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.158613, 40.865780, 24.475626>,  <28.163103, 40.484978, 24.353277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.158613, 40.865780, 24.475626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581198, -0.242702, 0.776727,
		0.813685, 0.186490, -0.550580,
		-0.011225, 0.952007, 0.305870,
		28.155245, 41.151382, 24.567387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.785299, 40.556423, 24.773081>,  <28.163103, 40.484978, 24.353277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.785299, 40.556423, 24.773081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.592705, 40.885227, 24.894718>,  <28.477148, 41.082508, 24.967701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.592705, 40.885227, 24.894718>,  <28.785299, 40.556423, 24.773081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.592705, 40.885227, 24.894718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442529, -0.071479, 0.893901,
		0.756532, 0.564969, -0.329348,
		-0.481485, 0.822010, 0.304091,
		28.448259, 41.131832, 24.985945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.292734, 40.929642, 25.066523>,  <28.785299, 40.556423, 24.773081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.292734, 40.929642, 25.066523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.955349, 41.086327, 25.213560>,  <28.752918, 41.180340, 25.301783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.955349, 41.086327, 25.213560>,  <29.292734, 40.929642, 25.066523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.955349, 41.086327, 25.213560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424677, 0.067183, 0.902849,
		0.328964, 0.917630, -0.223019,
		-0.843465, 0.391715, 0.367596,
		28.702309, 41.203842, 25.323839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.483301, 41.602375, 25.349068>,  <29.292734, 40.929642, 25.066523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.483301, 41.602375, 25.349068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.135563, 41.512348, 25.525059>,  <28.926920, 41.458332, 25.630653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.135563, 41.512348, 25.525059>,  <29.483301, 41.602375, 25.349068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.135563, 41.512348, 25.525059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452363, -0.003891, 0.891826,
		-0.199009, 0.974335, 0.105195,
		-0.869346, -0.225068, 0.439979,
		28.874760, 41.444828, 25.657053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.584368, 41.974659, 26.006744>,  <29.483301, 41.602375, 25.349068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.584368, 41.974659, 26.006744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.278561, 41.725063, 26.071428>,  <29.095076, 41.575306, 26.110239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.278561, 41.725063, 26.071428>,  <29.584368, 41.974659, 26.006744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.278561, 41.725063, 26.071428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247472, -0.052481, 0.967473,
		-0.595207, 0.779668, 0.194543,
		-0.764517, -0.623990, 0.161708,
		29.049206, 41.537865, 26.119942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.355225, 42.281506, 26.513168>,  <29.584368, 41.974659, 26.006744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.355225, 42.281506, 26.513168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.259865, 41.893677, 26.490938>,  <29.202648, 41.660980, 26.477600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.259865, 41.893677, 26.490938>,  <29.355225, 42.281506, 26.513168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.259865, 41.893677, 26.490938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290279, -0.125749, 0.948644,
		-0.926770, 0.210025, 0.311426,
		-0.238401, -0.969575, -0.055574,
		29.188345, 41.602802, 26.474266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.802708, 42.092842, 27.109835>,  <29.355225, 42.281506, 26.513168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.802708, 42.092842, 27.109835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.925041, 41.724289, 27.013895>,  <28.998442, 41.503159, 26.956331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.925041, 41.724289, 27.013895>,  <28.802708, 42.092842, 27.109835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.925041, 41.724289, 27.013895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167816, -0.195805, 0.966177,
		-0.937178, -0.335740, 0.094738,
		0.305834, -0.921379, -0.239847,
		29.016792, 41.447876, 26.941940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.441633, 41.569168, 27.567633>,  <28.802708, 42.092842, 27.109835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.441633, 41.569168, 27.567633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.785707, 41.416721, 27.432089>,  <28.992153, 41.325253, 27.350763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.785707, 41.416721, 27.432089>,  <28.441633, 41.569168, 27.567633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.785707, 41.416721, 27.432089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306424, -0.144882, 0.940805,
		-0.407656, -0.913102, -0.007840,
		0.860187, -0.381123, -0.338858,
		29.043764, 41.302383, 27.330431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.538546, 40.911690, 27.953205>,  <28.441633, 41.569168, 27.567633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.538546, 40.911690, 27.953205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.908754, 40.997593, 27.828440>,  <29.130878, 41.049137, 27.753580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.908754, 40.997593, 27.828440>,  <28.538546, 40.911690, 27.953205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.908754, 40.997593, 27.828440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373416, -0.380458, 0.846057,
		0.063029, -0.899516, -0.432317,
		0.925520, 0.214760, -0.311914,
		29.186411, 41.062019, 27.734865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.827013, 40.258945, 28.094341>,  <28.538546, 40.911690, 27.953205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.827013, 40.258945, 28.094341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.127901, 40.519672, 28.055765>,  <29.308434, 40.676109, 28.032619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.127901, 40.519672, 28.055765>,  <28.827013, 40.258945, 28.094341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.127901, 40.519672, 28.055765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475272, -0.435360, 0.764577,
		0.456375, -0.620968, -0.637276,
		0.752222, 0.651813, -0.096441,
		29.353567, 40.715218, 28.026833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.453773, 39.872353, 28.285666>,  <28.827013, 40.258945, 28.094341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.453773, 39.872353, 28.285666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.590696, 40.247890, 28.300652>,  <29.672850, 40.473213, 28.309643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.590696, 40.247890, 28.300652>,  <29.453773, 39.872353, 28.285666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.590696, 40.247890, 28.300652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676317, -0.273877, 0.683803,
		0.652244, -0.208730, -0.728704,
		0.342305, 0.938842, 0.037467,
		29.693388, 40.529541, 28.311892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.258087, 39.806274, 28.337502>,  <29.453773, 39.872353, 28.285666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.258087, 39.806274, 28.337502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.153833, 40.165257, 28.479847>,  <30.091280, 40.380646, 28.565254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.153833, 40.165257, 28.479847>,  <30.258087, 39.806274, 28.337502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.153833, 40.165257, 28.479847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593776, -0.141633, 0.792067,
		0.761248, 0.417746, -0.495974,
		-0.260636, 0.897457, 0.355865,
		30.075642, 40.434494, 28.586607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.877850, 40.250690, 28.473862>,  <30.258087, 39.806274, 28.337502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.877850, 40.250690, 28.473862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.576092, 40.365032, 28.710226>,  <30.395037, 40.433636, 28.852045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.576092, 40.365032, 28.710226>,  <30.877850, 40.250690, 28.473862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.576092, 40.365032, 28.710226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611039, -0.023087, 0.791264,
		0.239828, 0.957995, -0.157251,
		-0.754396, 0.285853, 0.590909,
		30.349773, 40.450787, 28.887499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.278278, 40.478359, 29.063078>,  <30.877850, 40.250690, 28.473862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.278278, 40.478359, 29.063078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.899786, 40.441166, 29.187016>,  <30.672691, 40.418850, 29.261377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.899786, 40.441166, 29.187016>,  <31.278278, 40.478359, 29.063078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.899786, 40.441166, 29.187016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322189, -0.184978, 0.928428,
		-0.029010, 0.978334, 0.204988,
		-0.946231, -0.092979, 0.309842,
		30.615917, 40.413273, 29.279968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.250328, 40.810234, 29.758379>,  <31.278278, 40.478359, 29.063078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.250328, 40.810234, 29.758379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.910210, 40.600307, 29.774221>,  <30.706139, 40.474354, 29.783728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.910210, 40.600307, 29.774221>,  <31.250328, 40.810234, 29.758379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.910210, 40.600307, 29.774221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239603, -0.318998, 0.916968,
		-0.468602, 0.789184, 0.396989,
		-0.850295, -0.524813, 0.039607,
		30.655121, 40.442863, 29.786104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.072134, 40.879765, 30.371885>,  <31.250328, 40.810234, 29.758379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.072134, 40.879765, 30.371885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.899290, 40.533607, 30.270391>,  <30.795584, 40.325912, 30.209496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.899290, 40.533607, 30.270391>,  <31.072134, 40.879765, 30.371885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.899290, 40.533607, 30.270391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457502, -0.452820, 0.765276,
		-0.777159, 0.214598, 0.591585,
		-0.432108, -0.865391, -0.253734,
		30.769657, 40.273991, 30.194271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.854185, 40.582935, 30.948076>,  <31.072134, 40.879765, 30.371885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.854185, 40.582935, 30.948076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.834776, 40.249245, 30.728365>,  <30.823132, 40.049030, 30.596539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.834776, 40.249245, 30.728365>,  <30.854185, 40.582935, 30.948076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.834776, 40.249245, 30.728365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536624, -0.485592, 0.690099,
		-0.842426, -0.261272, 0.471228,
		-0.048521, -0.834229, -0.549280,
		30.820219, 39.998978, 30.563581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.597174, 39.962360, 31.391058>,  <30.854185, 40.582935, 30.948076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.597174, 39.962360, 31.391058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.797388, 39.791626, 31.089787>,  <30.917517, 39.689186, 30.909023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.797388, 39.791626, 31.089787>,  <30.597174, 39.962360, 31.391058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.797388, 39.791626, 31.089787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373476, -0.678416, 0.632667,
		-0.781012, -0.597966, -0.180159,
		0.500536, -0.426836, -0.753177,
		30.947550, 39.663574, 30.863834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.585173, 39.339821, 31.547005>,  <30.597174, 39.962360, 31.391058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.585173, 39.339821, 31.547005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.888922, 39.323830, 31.287235>,  <31.071171, 39.314236, 31.131372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.888922, 39.323830, 31.287235>,  <30.585173, 39.339821, 31.547005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.888922, 39.323830, 31.287235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499211, -0.604349, 0.620928,
		-0.417301, -0.795717, -0.438971,
		0.759374, -0.039975, -0.649425,
		31.116734, 39.311836, 31.092407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.798763, 38.678753, 31.569683>,  <30.585173, 39.339821, 31.547005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.798763, 38.678753, 31.569683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.107416, 38.900642, 31.445189>,  <31.292608, 39.033775, 31.370493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.107416, 38.900642, 31.445189>,  <30.798763, 38.678753, 31.569683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.107416, 38.900642, 31.445189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621583, -0.553804, 0.554018,
		0.134962, -0.620957, -0.772139,
		0.771634, 0.554720, -0.311234,
		31.338907, 39.067059, 31.351818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.284758, 38.175461, 31.403032>,  <30.798763, 38.678753, 31.569683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.284758, 38.175461, 31.403032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463873, 38.532921, 31.414843>,  <31.571342, 38.747398, 31.421928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463873, 38.532921, 31.414843>,  <31.284758, 38.175461, 31.403032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.463873, 38.532921, 31.414843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801333, -0.415738, 0.430150,
		0.396679, -0.168957, -0.902275,
		0.447786, 0.893653, 0.029524,
		31.598209, 38.801018, 31.423700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.007301, 38.074348, 31.310410>,  <31.284758, 38.175461, 31.403032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.007301, 38.074348, 31.310410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.021549, 38.422859, 31.506212>,  <32.030098, 38.631966, 31.623693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.021549, 38.422859, 31.506212>,  <32.007301, 38.074348, 31.310410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.021549, 38.422859, 31.506212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603923, -0.409029, 0.684085,
		0.796246, 0.271258, -0.540751,
		0.035619, 0.871272, 0.489506,
		32.032234, 38.684242, 31.653065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.716366, 38.213196, 31.503225>,  <32.007301, 38.074348, 31.310410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.716366, 38.213196, 31.503225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480610, 38.395428, 31.770079>,  <32.339157, 38.504765, 31.930191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480610, 38.395428, 31.770079>,  <32.716366, 38.213196, 31.503225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480610, 38.395428, 31.770079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627367, -0.262143, 0.733275,
		0.508947, 0.850724, -0.131308,
		-0.589393, 0.455577, 0.667133,
		32.303791, 38.532101, 31.970219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.163090, 38.591122, 31.936298>,  <32.716366, 38.213196, 31.503225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.163090, 38.591122, 31.936298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.820122, 38.557251, 32.139336>,  <32.614342, 38.536926, 32.261158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.820122, 38.557251, 32.139336>,  <33.163090, 38.591122, 31.936298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.820122, 38.557251, 32.139336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514559, -0.127210, 0.847966,
		-0.007235, 0.988254, 0.152646,
		-0.857424, -0.084681, 0.507595,
		32.562893, 38.531845, 32.291615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.489269, 38.964794, 31.393299>,  <33.163090, 38.591122, 31.936298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.489269, 38.964794, 31.393299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886772, 39.002007, 31.368692>,  <34.125275, 39.024334, 31.353930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886772, 39.002007, 31.368692>,  <33.489269, 38.964794, 31.393299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886772, 39.002007, 31.368692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107673, 0.656422, -0.746671,
		-0.029087, 0.748636, 0.662344,
		0.993761, 0.093034, -0.061514,
		34.184902, 39.029919, 31.350239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.832371, 39.680420, 31.509743>,  <33.489269, 38.964794, 31.393299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.832371, 39.680420, 31.509743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.027008, 39.436783, 31.259228>,  <34.143791, 39.290600, 31.108919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.027008, 39.436783, 31.259228>,  <33.832371, 39.680420, 31.509743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.027008, 39.436783, 31.259228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130256, 0.658286, -0.741413,
		0.863864, 0.442344, 0.240980,
		0.486593, -0.609091, -0.626287,
		34.172985, 39.254055, 31.071342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.200680, 40.091072, 31.053247>,  <33.832371, 39.680420, 31.509743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.200680, 40.091072, 31.053247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237041, 39.753796, 30.841299>,  <34.258858, 39.551430, 30.714130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237041, 39.753796, 30.841299>,  <34.200680, 40.091072, 31.053247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237041, 39.753796, 30.841299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153130, 0.537580, -0.829192,
		0.984016, -0.005762, 0.177986,
		0.090904, -0.843193, -0.529870,
		34.264313, 39.500839, 30.682339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784588, 40.212395, 30.488503>,  <34.200680, 40.091072, 31.053247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.784588, 40.212395, 30.488503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564938, 39.897861, 30.375261>,  <34.433147, 39.709141, 30.307316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564938, 39.897861, 30.375261>,  <34.784588, 40.212395, 30.488503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.564938, 39.897861, 30.375261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134513, 0.417488, -0.898671,
		0.824844, -0.455401, -0.335024,
		-0.549125, -0.786329, -0.283105,
		34.400200, 39.661964, 30.290329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.049301, 40.072388, 29.829760>,  <34.784588, 40.212395, 30.488503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.049301, 40.072388, 29.829760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.708435, 39.863865, 29.847929>,  <34.503918, 39.738750, 29.858829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.708435, 39.863865, 29.847929>,  <35.049301, 40.072388, 29.829760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.708435, 39.863865, 29.847929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152808, 0.164888, -0.974403,
		0.500472, -0.837289, -0.220171,
		-0.852160, -0.521306, 0.045422,
		34.452785, 39.707474, 29.861555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066940, 39.473118, 29.254410>,  <35.049301, 40.072388, 29.829760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066940, 39.473118, 29.254410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.699806, 39.570477, 29.379841>,  <34.479527, 39.628891, 29.455099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.699806, 39.570477, 29.379841>,  <35.066940, 39.473118, 29.254410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.699806, 39.570477, 29.379841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296323, 0.105517, -0.949241,
		-0.264135, -0.964169, -0.024722,
		-0.917838, 0.243402, 0.313576,
		34.424454, 39.643497, 29.473913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756813, 39.277412, 28.665796>,  <35.066940, 39.473118, 29.254410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756813, 39.277412, 28.665796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484699, 39.496078, 28.861088>,  <34.321430, 39.627277, 28.978262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484699, 39.496078, 28.861088>,  <34.756813, 39.277412, 28.665796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484699, 39.496078, 28.861088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363630, 0.326634, -0.872401,
		-0.636381, -0.771019, -0.023423,
		-0.680289, 0.546662, 0.488229,
		34.280613, 39.660076, 29.007557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187794, 39.232845, 28.253452>,  <34.756813, 39.277412, 28.665796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187794, 39.232845, 28.253452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.116257, 39.550179, 28.486221>,  <34.073334, 39.740578, 28.625883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.116257, 39.550179, 28.486221>,  <34.187794, 39.232845, 28.253452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.116257, 39.550179, 28.486221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349396, 0.501699, -0.791341,
		-0.919749, -0.344846, 0.187464,
		-0.178840, 0.793335, 0.581925,
		34.062603, 39.788177, 28.660799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478054, 39.423374, 28.194735>,  <34.187794, 39.232845, 28.253452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.478054, 39.423374, 28.194735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.653114, 39.755714, 28.332224>,  <33.758152, 39.955120, 28.414717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.653114, 39.755714, 28.332224>,  <33.478054, 39.423374, 28.194735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.653114, 39.755714, 28.332224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426508, 0.528363, -0.734114,
		-0.791551, 0.174684, 0.585604,
		0.437650, 0.830854, 0.343722,
		33.784409, 40.004971, 28.435341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.891495, 39.982750, 28.354084>,  <33.478054, 39.423374, 28.194735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.891495, 39.982750, 28.354084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.252079, 40.147991, 28.302374>,  <33.468430, 40.247135, 28.271347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.252079, 40.147991, 28.302374>,  <32.891495, 39.982750, 28.354084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252079, 40.147991, 28.302374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358095, 0.543937, -0.758881,
		-0.243179, 0.730395, 0.638269,
		0.901461, 0.413105, -0.129277,
		33.522518, 40.271923, 28.263590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.678780, 40.663235, 28.326345>,  <32.891495, 39.982750, 28.354084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.678780, 40.663235, 28.326345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036232, 40.617645, 28.152706>,  <33.250702, 40.590290, 28.048523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036232, 40.617645, 28.152706>,  <32.678780, 40.663235, 28.326345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.036232, 40.617645, 28.152706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295191, 0.579310, -0.759778,
		0.338072, 0.807099, 0.484043,
		0.893627, -0.113975, -0.434097,
		33.304321, 40.583454, 28.022476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.908672, 41.365356, 28.093132>,  <32.678780, 40.663235, 28.326345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.908672, 41.365356, 28.093132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.132374, 41.128025, 27.861547>,  <33.266594, 40.985626, 27.722597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.132374, 41.128025, 27.861547>,  <32.908672, 41.365356, 28.093132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132374, 41.128025, 27.861547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255466, 0.541053, -0.801249,
		0.788652, 0.596007, 0.151011,
		0.559255, -0.593328, -0.578961,
		33.300152, 40.950027, 27.687859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.265804, 41.853798, 27.614433>,  <32.908672, 41.365356, 28.093132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.265804, 41.853798, 27.614433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.276352, 41.491993, 27.444180>,  <33.282681, 41.274910, 27.342028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.276352, 41.491993, 27.444180>,  <33.265804, 41.853798, 27.614433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.276352, 41.491993, 27.444180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248442, 0.406493, -0.879227,
		0.968288, 0.128932, -0.213999,
		0.026371, -0.904511, -0.425635,
		33.284264, 41.220638, 27.316488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.550423, 41.850582, 26.834961>,  <33.265804, 41.853798, 27.614433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.550423, 41.850582, 26.834961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.330204, 41.516979, 26.820351>,  <33.198074, 41.316818, 26.811584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.330204, 41.516979, 26.820351>,  <33.550423, 41.850582, 26.834961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.330204, 41.516979, 26.820351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310409, 0.245131, -0.918454,
		0.774950, -0.494311, -0.393838,
		-0.550544, -0.834007, -0.036526,
		33.165039, 41.266777, 26.809393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646488, 41.654106, 26.125103>,  <33.550423, 41.850582, 26.834961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646488, 41.654106, 26.125103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.331337, 41.456394, 26.272043>,  <33.142246, 41.337769, 26.360207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.331337, 41.456394, 26.272043>,  <33.646488, 41.654106, 26.125103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.331337, 41.456394, 26.272043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474494, 0.106976, -0.873734,
		0.392567, -0.862698, -0.318814,
		-0.787875, -0.494275, 0.367349,
		33.094975, 41.308113, 26.382248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379864, 41.115685, 25.624880>,  <33.646488, 41.654106, 26.125103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379864, 41.115685, 25.624880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056660, 41.154331, 25.857357>,  <32.862736, 41.177521, 25.996843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056660, 41.154331, 25.857357>,  <33.379864, 41.115685, 25.624880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056660, 41.154331, 25.857357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557655, 0.192879, -0.807353,
		-0.190107, -0.976454, -0.101967,
		-0.808010, 0.096621, 0.581192,
		32.814255, 41.183315, 26.031715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.846386, 40.773647, 25.275600>,  <33.379864, 41.115685, 25.624880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.846386, 40.773647, 25.275600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.614517, 40.960552, 25.542625>,  <32.475395, 41.072697, 25.702841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.614517, 40.960552, 25.542625>,  <32.846386, 40.773647, 25.275600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.614517, 40.960552, 25.542625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752959, 0.006018, -0.658040,
		-0.311498, -0.884096, 0.348344,
		-0.579674, 0.467267, 0.667562,
		32.440617, 41.100731, 25.742895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.176697, 40.442261, 25.211313>,  <32.846386, 40.773647, 25.275600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.176697, 40.442261, 25.211313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.108765, 40.794952, 25.387369>,  <32.068005, 41.006565, 25.493002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.108765, 40.794952, 25.387369>,  <32.176697, 40.442261, 25.211313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.108765, 40.794952, 25.387369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753500, 0.171669, -0.634639,
		-0.635135, -0.439422, 0.635226,
		-0.169826, 0.881724, 0.440137,
		32.057816, 41.059471, 25.519411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.452606, 40.511692, 25.449070>,  <32.176697, 40.442261, 25.211313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.452606, 40.511692, 25.449070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.578581, 40.888779, 25.405066>,  <31.654165, 41.115032, 25.378664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.578581, 40.888779, 25.405066>,  <31.452606, 40.511692, 25.449070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.578581, 40.888779, 25.405066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726581, 0.164897, -0.667000,
		-0.610651, 0.289994, 0.736891,
		0.314937, 0.942716, -0.110009,
		31.673061, 41.171593, 25.372063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.826824, 40.844673, 25.368629>,  <31.452606, 40.511692, 25.449070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.826824, 40.844673, 25.368629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.101393, 41.085068, 25.204851>,  <31.266134, 41.229305, 25.106585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.101393, 41.085068, 25.204851>,  <30.826824, 40.844673, 25.368629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.101393, 41.085068, 25.204851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617259, 0.183831, -0.764982,
		-0.384473, 0.777834, 0.497148,
		0.686420, 0.600984, -0.409446,
		31.307320, 41.265362, 25.082018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.543409, 41.558819, 25.279837>,  <30.826824, 40.844673, 25.368629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.543409, 41.558819, 25.279837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.831636, 41.481487, 25.013481>,  <31.004572, 41.435089, 24.853668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.831636, 41.481487, 25.013481>,  <30.543409, 41.558819, 25.279837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.831636, 41.481487, 25.013481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616580, 0.260660, -0.742889,
		0.317195, 0.945875, 0.068619,
		0.720567, -0.193331, -0.665888,
		31.047806, 41.423489, 24.813715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.288334, 41.921085, 24.774296>,  <30.543409, 41.558819, 25.279837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.288334, 41.921085, 24.774296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.591661, 41.751789, 24.575974>,  <30.773657, 41.650211, 24.456980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.591661, 41.751789, 24.575974>,  <30.288334, 41.921085, 24.774296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.591661, 41.751789, 24.575974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485397, 0.141089, -0.862834,
		0.435138, 0.894965, -0.098448,
		0.758317, -0.423238, -0.495807,
		30.819157, 41.624817, 24.427231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.498180, 42.328445, 24.132980>,  <30.288334, 41.921085, 24.774296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.498180, 42.328445, 24.132980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.635201, 41.958752, 24.065506>,  <30.717413, 41.736935, 24.025023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.635201, 41.958752, 24.065506>,  <30.498180, 42.328445, 24.132980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.635201, 41.958752, 24.065506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364146, 0.034899, -0.930688,
		0.866059, 0.380231, -0.324601,
		0.342548, -0.924233, -0.168685,
		30.737965, 41.681480, 24.014900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.930052, 42.387470, 23.609695>,  <30.498180, 42.328445, 24.132980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.930052, 42.387470, 23.609695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.818201, 42.003433, 23.611986>,  <30.751091, 41.773010, 23.613361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.818201, 42.003433, 23.611986>,  <30.930052, 42.387470, 23.609695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.818201, 42.003433, 23.611986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335998, 0.092270, -0.937332,
		0.899396, -0.264029, -0.348390,
		-0.279629, -0.960091, 0.005726,
		30.734312, 41.715405, 23.613705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.987238, 42.123211, 22.900919>,  <30.930052, 42.387470, 23.609695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.987238, 42.123211, 22.900919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773766, 41.823528, 23.057823>,  <30.645681, 41.643719, 23.151966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773766, 41.823528, 23.057823>,  <30.987238, 42.123211, 22.900919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.773766, 41.823528, 23.057823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443932, -0.146599, -0.883987,
		0.719798, -0.645904, -0.254362,
		-0.533682, -0.749211, 0.392259,
		30.613661, 41.598766, 23.175501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.140688, 41.543751, 22.493206>,  <30.987238, 42.123211, 22.900919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.140688, 41.543751, 22.493206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.788420, 41.502640, 22.678185>,  <30.577059, 41.477974, 22.789171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.788420, 41.502640, 22.678185>,  <31.140688, 41.543751, 22.493206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.788420, 41.502640, 22.678185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427620, -0.247630, -0.869380,
		0.203866, -0.963388, 0.174132,
		-0.880670, -0.102775, 0.462448,
		30.524220, 41.471809, 22.816919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.879124, 40.876499, 22.281597>,  <31.140688, 41.543751, 22.493206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.879124, 40.876499, 22.281597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.552359, 41.074215, 22.400475>,  <30.356298, 41.192844, 22.471802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.552359, 41.074215, 22.400475>,  <30.879124, 40.876499, 22.281597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.552359, 41.074215, 22.400475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422609, -0.162334, -0.891655,
		-0.392494, -0.854003, 0.341506,
		-0.816915, 0.494293, 0.297194,
		30.307283, 41.222504, 22.489634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.128162, 40.457226, 22.016048>,  <30.879124, 40.876499, 22.281597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.128162, 40.457226, 22.016048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.044254, 40.837521, 22.107338>,  <29.993910, 41.065697, 22.162111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.044254, 40.837521, 22.107338>,  <30.128162, 40.457226, 22.016048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.044254, 40.837521, 22.107338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412481, 0.125579, -0.902269,
		-0.886485, -0.283409, 0.365820,
		-0.209772, 0.950741, 0.228225,
		29.981323, 41.122742, 22.175806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.416811, 40.616447, 21.811033>,  <30.128162, 40.457226, 22.016048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.416811, 40.616447, 21.811033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.608072, 40.967636, 21.801720>,  <29.722830, 41.178349, 21.796131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.608072, 40.967636, 21.801720>,  <29.416811, 40.616447, 21.811033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.608072, 40.967636, 21.801720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295780, 0.136008, -0.945524,
		-0.826972, 0.458994, 0.324718,
		0.478155, 0.877967, -0.023286,
		29.751518, 41.231026, 21.794733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.898472, 41.036774, 21.583948>,  <29.416811, 40.616447, 21.811033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.898472, 41.036774, 21.583948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.244986, 41.232826, 21.545315>,  <29.452894, 41.350456, 21.522135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.244986, 41.232826, 21.545315>,  <28.898472, 41.036774, 21.583948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.244986, 41.232826, 21.545315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262685, 0.282483, -0.922605,
		-0.424912, 0.824608, 0.373459,
		0.866283, 0.490128, -0.096582,
		29.504871, 41.379864, 21.516340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.677948, 41.681114, 21.256559>,  <28.898472, 41.036774, 21.583948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.677948, 41.681114, 21.256559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.069260, 41.696468, 21.175081>,  <29.304047, 41.705681, 21.126194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.069260, 41.696468, 21.175081>,  <28.677948, 41.681114, 21.256559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.069260, 41.696468, 21.175081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191302, 0.545578, -0.815934,
		0.079808, 0.837180, 0.541073,
		0.978281, 0.038390, -0.203696,
		29.362743, 41.707985, 21.113972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.849194, 42.454113, 21.068310>,  <28.677948, 41.681114, 21.256559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.849194, 42.454113, 21.068310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.125469, 42.207939, 20.916422>,  <29.291235, 42.060234, 20.825289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.125469, 42.207939, 20.916422>,  <28.849194, 42.454113, 21.068310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.125469, 42.207939, 20.916422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003406, 0.522316, -0.852745,
		0.723142, 0.590277, 0.358663,
		0.690691, -0.615435, -0.379719,
		29.332676, 42.023308, 20.802505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.299513, 42.943726, 20.790554>,  <28.849194, 42.454113, 21.068310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.299513, 42.943726, 20.790554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.413792, 42.587440, 20.649126>,  <29.482359, 42.373669, 20.564268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.413792, 42.587440, 20.649126>,  <29.299513, 42.943726, 20.790554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.413792, 42.587440, 20.649126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161010, 0.408320, -0.898527,
		0.944697, 0.199779, 0.260070,
		0.285699, -0.890709, -0.353572,
		29.499502, 42.320229, 20.543055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.981468, 43.084995, 20.410345>,  <29.299513, 42.943726, 20.790554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.981468, 43.084995, 20.410345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.840776, 42.743557, 20.256636>,  <29.756361, 42.538696, 20.164410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.840776, 42.743557, 20.256636>,  <29.981468, 43.084995, 20.410345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.840776, 42.743557, 20.256636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216147, 0.325353, -0.920557,
		0.910806, -0.406846, 0.070066,
		-0.351729, -0.853593, -0.384272,
		29.735258, 42.487480, 20.141354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.532440, 42.726688, 19.913748>,  <29.981468, 43.084995, 20.410345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.532440, 42.726688, 19.913748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.187489, 42.577839, 19.776442>,  <29.980518, 42.488529, 19.694057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.187489, 42.577839, 19.776442>,  <30.532440, 42.726688, 19.913748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.187489, 42.577839, 19.776442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234082, 0.308118, -0.922100,
		0.448900, -0.875550, -0.178607,
		-0.862377, -0.372123, -0.343264,
		29.928776, 42.466202, 19.673462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.649857, 42.443077, 19.363487>,  <30.532440, 42.726688, 19.913748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.649857, 42.443077, 19.363487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.255398, 42.482258, 19.309946>,  <30.018723, 42.505768, 19.277821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.255398, 42.482258, 19.309946>,  <30.649857, 42.443077, 19.363487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.255398, 42.482258, 19.309946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159006, 0.328601, -0.930988,
		-0.047209, -0.939376, -0.339624,
		-0.986148, 0.097953, -0.133854,
		29.959553, 42.511642, 19.269791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.501820, 42.098843, 18.754234>,  <30.649857, 42.443077, 19.363487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.501820, 42.098843, 18.754234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.183743, 42.336308, 18.803608>,  <29.992895, 42.478786, 18.833233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.183743, 42.336308, 18.803608>,  <30.501820, 42.098843, 18.754234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.183743, 42.336308, 18.803608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041577, 0.256475, -0.965656,
		-0.604928, -0.762752, -0.228630,
		-0.795194, 0.593658, 0.123436,
		29.945185, 42.514404, 18.840639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.066408, 41.946743, 18.172642>,  <30.501820, 42.098843, 18.754234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.066408, 41.946743, 18.172642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.977343, 42.313000, 18.306524>,  <29.923904, 42.532753, 18.386854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.977343, 42.313000, 18.306524>,  <30.066408, 41.946743, 18.172642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.977343, 42.313000, 18.306524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045755, 0.352761, -0.934594,
		-0.973821, -0.192784, -0.120442,
		-0.222662, 0.915639, 0.334705,
		29.910543, 42.587692, 18.406937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.106501, 41.826122, 17.406986>,  <30.066408, 41.946743, 18.172642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.106501, 41.826122, 17.406986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.362633, 41.631798, 17.169004>,  <30.516312, 41.515205, 17.026217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.362633, 41.631798, 17.169004>,  <30.106501, 41.826122, 17.406986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.362633, 41.631798, 17.169004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315117, -0.540240, 0.780283,
		-0.700486, -0.687117, -0.192844,
		0.640328, -0.485809, -0.594953,
		30.554731, 41.486053, 16.990519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.141983, 41.191029, 17.715506>,  <30.106501, 41.826122, 17.406986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.141983, 41.191029, 17.715506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.481575, 41.230366, 17.507828>,  <30.685329, 41.253967, 17.383221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.481575, 41.230366, 17.507828>,  <30.141983, 41.191029, 17.715506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.481575, 41.230366, 17.507828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518106, -0.348167, 0.781247,
		-0.103934, -0.932260, -0.346540,
		0.848978, 0.098347, -0.519195,
		30.736269, 41.259869, 17.352070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.542526, 40.534771, 17.758327>,  <30.141983, 41.191029, 17.715506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.542526, 40.534771, 17.758327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.814489, 40.811893, 17.662205>,  <30.977667, 40.978165, 17.604530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.814489, 40.811893, 17.662205>,  <30.542526, 40.534771, 17.758327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.814489, 40.811893, 17.662205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618263, -0.365378, 0.695880,
		0.394305, -0.621708, -0.676759,
		0.679908, 0.692804, -0.240309,
		31.018461, 41.019733, 17.590113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.099800, 40.171810, 17.801981>,  <30.542526, 40.534771, 17.758327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.099800, 40.171810, 17.801981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.224964, 40.550987, 17.825630>,  <31.300062, 40.778492, 17.839821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.224964, 40.550987, 17.825630>,  <31.099800, 40.171810, 17.801981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.224964, 40.550987, 17.825630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570789, -0.237439, 0.786017,
		0.759136, -0.212205, -0.615371,
		0.312910, 0.947941, 0.059124,
		31.318838, 40.835369, 17.843367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.731565, 40.152599, 17.950087>,  <31.099800, 40.171810, 17.801981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.731565, 40.152599, 17.950087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.668476, 40.529846, 18.067154>,  <31.630623, 40.756195, 18.137394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.668476, 40.529846, 18.067154>,  <31.731565, 40.152599, 17.950087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.668476, 40.529846, 18.067154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581876, -0.150696, 0.799194,
		0.797836, 0.296350, -0.525008,
		-0.157725, 0.943116, 0.292670,
		31.621159, 40.812782, 18.154955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.425610, 40.576340, 18.055323>,  <31.731565, 40.152599, 17.950087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.425610, 40.576340, 18.055323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.126328, 40.715565, 18.281258>,  <31.946758, 40.799099, 18.416819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.126328, 40.715565, 18.281258>,  <32.425610, 40.576340, 18.055323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.126328, 40.715565, 18.281258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574440, -0.086127, 0.814003,
		0.331970, 0.933507, -0.135499,
		-0.748207, 0.348060, 0.564836,
		31.901865, 40.819984, 18.450708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.754509, 40.702915, 18.735399>,  <32.425610, 40.576340, 18.055323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.754509, 40.702915, 18.735399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.378338, 40.748325, 18.863590>,  <32.152634, 40.775574, 18.940504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.378338, 40.748325, 18.863590>,  <32.754509, 40.702915, 18.735399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.378338, 40.748325, 18.863590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295166, -0.195190, 0.935296,
		0.168737, 0.974173, 0.150052,
		-0.940428, 0.113528, 0.320478,
		32.096210, 40.782383, 18.959734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.805767, 41.174564, 19.327360>,  <32.754509, 40.702915, 18.735399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.805767, 41.174564, 19.327360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.469082, 40.960602, 19.356745>,  <32.267071, 40.832226, 19.374376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.469082, 40.960602, 19.356745>,  <32.805767, 41.174564, 19.327360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469082, 40.960602, 19.356745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147874, -0.097529, 0.984186,
		-0.519281, 0.839265, 0.161190,
		-0.841713, -0.534904, 0.073461,
		32.216568, 40.800129, 19.378782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.410263, 41.494888, 19.866831>,  <32.805767, 41.174564, 19.327360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.410263, 41.494888, 19.866831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.244213, 41.135391, 19.810354>,  <32.144585, 40.919693, 19.776468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.244213, 41.135391, 19.810354>,  <32.410263, 41.494888, 19.866831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.244213, 41.135391, 19.810354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075963, -0.188893, 0.979055,
		-0.906587, 0.395706, 0.146685,
		-0.415126, -0.898742, -0.141189,
		32.119675, 40.865768, 19.767998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.132256, 41.440758, 20.456938>,  <32.410263, 41.494888, 19.866831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.132256, 41.440758, 20.456938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.111973, 41.065998, 20.318577>,  <32.099804, 40.841141, 20.235559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.111973, 41.065998, 20.318577>,  <32.132256, 41.440758, 20.456938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.111973, 41.065998, 20.318577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177058, -0.349296, 0.920132,
		-0.982894, -0.014589, 0.183596,
		-0.050705, -0.936899, -0.345904,
		32.096760, 40.784927, 20.214806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.762371, 41.163010, 20.894794>,  <32.132256, 41.440758, 20.456938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.762371, 41.163010, 20.894794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.019714, 40.906242, 20.727926>,  <32.174122, 40.752182, 20.627806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.019714, 40.906242, 20.727926>,  <31.762371, 41.163010, 20.894794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.019714, 40.906242, 20.727926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268871, -0.320749, 0.908201,
		-0.716797, -0.696464, -0.033764,
		0.643359, -0.641917, -0.417171,
		32.212723, 40.713669, 20.602776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.637936, 40.536457, 21.187551>,  <31.762371, 41.163010, 20.894794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.637936, 40.536457, 21.187551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.007828, 40.507912, 21.038000>,  <32.229763, 40.490784, 20.948269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.007828, 40.507912, 21.038000>,  <31.637936, 40.536457, 21.187551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.007828, 40.507912, 21.038000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319463, -0.388509, 0.864294,
		-0.206933, -0.918677, -0.336467,
		0.924728, -0.071362, -0.373879,
		32.285248, 40.486504, 20.925837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.886196, 39.911125, 21.318251>,  <31.637936, 40.536457, 21.187551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.886196, 39.911125, 21.318251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.222771, 40.121105, 21.267012>,  <32.424717, 40.247093, 21.236267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.222771, 40.121105, 21.267012>,  <31.886196, 39.911125, 21.318251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.222771, 40.121105, 21.267012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363985, -0.375426, 0.852391,
		0.399371, -0.763860, -0.506972,
		0.841438, 0.524950, -0.128099,
		32.475201, 40.278591, 21.228582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.338779, 39.517078, 21.676775>,  <31.886196, 39.911125, 21.318251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.338779, 39.517078, 21.676775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.540333, 39.859459, 21.630383>,  <32.661266, 40.064888, 21.602547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.540333, 39.859459, 21.630383>,  <32.338779, 39.517078, 21.676775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.540333, 39.859459, 21.630383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613199, -0.259907, 0.745946,
		0.608346, -0.446992, -0.655831,
		0.503887, 0.855948, -0.115981,
		32.691498, 40.116241, 21.595589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.988922, 39.352051, 21.906179>,  <32.338779, 39.517078, 21.676775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.988922, 39.352051, 21.906179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025791, 39.750286, 21.913294>,  <33.047913, 39.989227, 21.917562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025791, 39.750286, 21.913294>,  <32.988922, 39.352051, 21.906179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.025791, 39.750286, 21.913294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722872, -0.079189, 0.686429,
		0.684806, -0.050415, -0.726979,
		0.092175, 0.995584, 0.017786,
		33.053444, 40.048962, 21.918631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.802441, 39.589870, 21.850950>,  <32.988922, 39.352051, 21.906179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.802441, 39.589870, 21.850950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.564274, 39.862053, 22.021814>,  <33.421375, 40.025360, 22.124332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.564274, 39.862053, 22.021814>,  <33.802441, 39.589870, 21.850950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.564274, 39.862053, 22.021814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552589, -0.039101, 0.832536,
		0.583205, 0.731747, -0.352730,
		-0.595414, 0.680454, 0.427159,
		33.385651, 40.066189, 22.149961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262333, 39.962395, 22.373638>,  <33.802441, 39.589870, 21.850950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.262333, 39.962395, 22.373638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888092, 40.068245, 22.467121>,  <33.663548, 40.131756, 22.523211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888092, 40.068245, 22.467121>,  <34.262333, 39.962395, 22.373638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.888092, 40.068245, 22.467121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223458, -0.068648, 0.972293,
		0.273334, 0.961906, 0.005095,
		-0.935604, 0.264622, 0.233709,
		33.607410, 40.147633, 22.537233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370766, 40.534702, 22.817448>,  <34.262333, 39.962395, 22.373638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.370766, 40.534702, 22.817448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.013649, 40.368107, 22.886108>,  <33.799381, 40.268150, 22.927305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.013649, 40.368107, 22.886108>,  <34.370766, 40.534702, 22.817448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.013649, 40.368107, 22.886108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270316, -0.190492, 0.943738,
		-0.360361, 0.888958, 0.282654,
		-0.892787, -0.416492, 0.171654,
		33.745811, 40.243160, 22.937605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.012783, 40.829803, 23.507763>,  <34.370766, 40.534702, 22.817448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.012783, 40.829803, 23.507763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.847008, 40.471622, 23.442770>,  <33.747543, 40.256714, 23.403774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.847008, 40.471622, 23.442770>,  <34.012783, 40.829803, 23.507763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847008, 40.471622, 23.442770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208977, -0.267403, 0.940651,
		-0.885758, 0.355890, 0.297952,
		-0.414441, -0.895454, -0.162482,
		33.722675, 40.202988, 23.394026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.786907, 40.751755, 24.118746>,  <34.012783, 40.829803, 23.507763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.786907, 40.751755, 24.118746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.746498, 40.386208, 23.961447>,  <33.722252, 40.166882, 23.867067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.746498, 40.386208, 23.961447>,  <33.786907, 40.751755, 24.118746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.746498, 40.386208, 23.961447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051368, -0.399535, 0.915277,
		-0.993557, 0.072264, 0.087306,
		-0.101023, -0.913865, -0.393249,
		33.716190, 40.112049, 23.843472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.333424, 40.480087, 24.492565>,  <33.786907, 40.751755, 24.118746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.333424, 40.480087, 24.492565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509964, 40.159161, 24.331820>,  <33.615887, 39.966602, 24.235373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509964, 40.159161, 24.331820>,  <33.333424, 40.480087, 24.492565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.509964, 40.159161, 24.331820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095195, -0.403449, 0.910037,
		-0.892271, -0.439901, -0.101686,
		0.441351, -0.802319, -0.401862,
		33.642368, 39.918465, 24.211262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.089947, 39.916138, 24.840866>,  <33.333424, 40.480087, 24.492565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.089947, 39.916138, 24.840866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429356, 39.788723, 24.671852>,  <33.633003, 39.712273, 24.570444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429356, 39.788723, 24.671852>,  <33.089947, 39.916138, 24.840866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429356, 39.788723, 24.671852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133597, -0.643682, 0.753542,
		-0.512013, -0.695849, -0.503624,
		0.848525, -0.318540, -0.422537,
		33.683914, 39.693161, 24.545092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.062691, 39.204086, 24.892115>,  <33.089947, 39.916138, 24.840866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.062691, 39.204086, 24.892115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450195, 39.297646, 24.859142>,  <33.682697, 39.353779, 24.839359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450195, 39.297646, 24.859142>,  <33.062691, 39.204086, 24.892115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.450195, 39.297646, 24.859142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192782, -0.501174, 0.843599,
		0.156004, -0.833137, -0.530609,
		0.968761, 0.233896, -0.082428,
		33.740822, 39.367813, 24.834414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419018, 38.574623, 25.267008>,  <33.062691, 39.204086, 24.892115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419018, 38.574623, 25.267008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.706303, 38.844894, 25.200520>,  <33.878674, 39.007057, 25.160625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.706303, 38.844894, 25.200520>,  <33.419018, 38.574623, 25.267008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.706303, 38.844894, 25.200520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397552, -0.202408, 0.894977,
		0.571069, -0.708868, -0.413988,
		0.718215, 0.675675, -0.166223,
		33.921768, 39.047596, 25.150652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163033, 38.320374, 25.429550>,  <33.419018, 38.574623, 25.267008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163033, 38.320374, 25.429550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.200886, 38.717884, 25.453054>,  <34.223598, 38.956390, 25.467157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.200886, 38.717884, 25.453054>,  <34.163033, 38.320374, 25.429550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.200886, 38.717884, 25.453054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565192, -0.102222, 0.818601,
		0.819514, -0.044256, -0.571349,
		0.094632, 0.993777, 0.058759,
		34.229275, 39.016018, 25.470682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898193, 38.489151, 25.547636>,  <34.163033, 38.320374, 25.429550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898193, 38.489151, 25.547636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.708767, 38.814388, 25.683056>,  <34.595112, 39.009529, 25.764307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.708767, 38.814388, 25.683056>,  <34.898193, 38.489151, 25.547636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.708767, 38.814388, 25.683056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655686, 0.068825, 0.751890,
		0.588055, 0.578053, -0.565726,
		-0.473569, 0.813091, 0.338549,
		34.566696, 39.058315, 25.784620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418243, 38.802395, 25.849096>,  <34.898193, 38.489151, 25.547636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418243, 38.802395, 25.849096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.107391, 38.989937, 26.017023>,  <34.920879, 39.102463, 26.117779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.107391, 38.989937, 26.017023>,  <35.418243, 38.802395, 25.849096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.107391, 38.989937, 26.017023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577123, 0.264872, 0.772510,
		0.250998, 0.842625, -0.476428,
		-0.777128, 0.468856, 0.419816,
		34.874252, 39.130592, 26.142967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621174, 39.472557, 25.951696>,  <35.418243, 38.802395, 25.849096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621174, 39.472557, 25.951696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336327, 39.343460, 26.201086>,  <35.165417, 39.266003, 26.350719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336327, 39.343460, 26.201086>,  <35.621174, 39.472557, 25.951696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336327, 39.343460, 26.201086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578187, 0.234131, 0.781590,
		-0.398231, 0.917070, 0.019879,
		-0.712118, -0.322747, 0.623476,
		35.122692, 39.246635, 26.388128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.679371, 39.885292, 26.434570>,  <35.621174, 39.472557, 25.951696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.679371, 39.885292, 26.434570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457413, 39.606197, 26.615788>,  <35.324238, 39.438740, 26.724518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457413, 39.606197, 26.615788>,  <35.679371, 39.885292, 26.434570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457413, 39.606197, 26.615788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565980, 0.082497, 0.820281,
		-0.609716, 0.711587, 0.349128,
		-0.554900, -0.697738, 0.453043,
		35.290943, 39.396877, 26.751701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523758, 40.174427, 27.110620>,  <35.679371, 39.885292, 26.434570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523758, 40.174427, 27.110620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473404, 39.778576, 27.138313>,  <35.443192, 39.541065, 27.154930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473404, 39.778576, 27.138313>,  <35.523758, 40.174427, 27.110620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473404, 39.778576, 27.138313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647237, -0.029039, 0.761736,
		-0.751823, 0.140698, 0.644178,
		-0.125881, -0.989627, 0.069233,
		35.435638, 39.481689, 27.159082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499306, 40.110550, 27.803593>,  <35.523758, 40.174427, 27.110620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.499306, 40.110550, 27.803593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.584896, 39.749786, 27.653511>,  <35.636250, 39.533329, 27.563461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.584896, 39.749786, 27.653511>,  <35.499306, 40.110550, 27.803593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.584896, 39.749786, 27.653511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656815, -0.151474, 0.738681,
		-0.723056, -0.404496, 0.559976,
		0.213972, -0.901908, -0.375203,
		35.649086, 39.479214, 27.540951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652134, 39.576817, 28.329910>,  <35.499306, 40.110550, 27.803593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652134, 39.576817, 28.329910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.861431, 39.423569, 28.025427>,  <35.987007, 39.331619, 27.842737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.861431, 39.423569, 28.025427>,  <35.652134, 39.576817, 28.329910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861431, 39.423569, 28.025427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727803, -0.263768, 0.633032,
		-0.443308, -0.885239, 0.140820,
		0.523240, -0.383117, -0.761210,
		36.018402, 39.308632, 27.797064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941730, 38.973125, 28.624441>,  <35.652134, 39.576817, 28.329910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.941730, 38.973125, 28.624441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.173485, 39.011948, 28.300739>,  <36.312538, 39.035240, 28.106518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.173485, 39.011948, 28.300739>,  <35.941730, 38.973125, 28.624441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173485, 39.011948, 28.300739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808113, -0.197700, 0.554858,
		-0.106136, -0.975446, -0.192978,
		0.579386, 0.097058, -0.809254,
		36.347301, 39.041065, 28.057962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459484, 38.427792, 28.676414>,  <35.941730, 38.973125, 28.624441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.459484, 38.427792, 28.676414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.609158, 38.706318, 28.431425>,  <36.698963, 38.873436, 28.284431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.609158, 38.706318, 28.431425>,  <36.459484, 38.427792, 28.676414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.609158, 38.706318, 28.431425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917069, -0.179754, 0.355911,
		0.137732, -0.694858, -0.705835,
		0.374184, 0.696320, -0.612475,
		36.721413, 38.915215, 28.247683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072350, 38.157387, 28.519297>,  <36.459484, 38.427792, 28.676414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072350, 38.157387, 28.519297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.145218, 38.535309, 28.410362>,  <37.188938, 38.762062, 28.345001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.145218, 38.535309, 28.410362>,  <37.072350, 38.157387, 28.519297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145218, 38.535309, 28.410362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900106, -0.048760, 0.432934,
		0.395757, -0.323996, -0.859304,
		0.182169, 0.944801, -0.272334,
		37.199867, 38.818748, 28.328663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.748947, 38.191330, 28.246202>,  <37.072350, 38.157387, 28.519297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.748947, 38.191330, 28.246202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.672352, 38.573486, 28.336149>,  <37.626396, 38.802780, 28.390118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.672352, 38.573486, 28.336149>,  <37.748947, 38.191330, 28.246202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672352, 38.573486, 28.336149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956846, 0.130692, 0.259550,
		0.218583, 0.264864, -0.939185,
		-0.191489, 0.955388, 0.224867,
		37.614906, 38.860104, 28.403608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297527, 38.615627, 27.926540>,  <37.748947, 38.191330, 28.246202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.297527, 38.615627, 27.926540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.145096, 38.859150, 28.204857>,  <38.053635, 39.005264, 28.371847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.145096, 38.859150, 28.204857>,  <38.297527, 38.615627, 27.926540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145096, 38.859150, 28.204857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924540, 0.249432, 0.288115,
		0.001855, 0.753083, -0.657923,
		-0.381082, 0.608810, 0.695792,
		38.030769, 39.041794, 28.413595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653202, 39.333073, 27.910412>,  <38.297527, 38.615627, 27.926540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653202, 39.333073, 27.910412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.484982, 39.249783, 28.263632>,  <38.384048, 39.199810, 28.475563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.484982, 39.249783, 28.263632>,  <38.653202, 39.333073, 27.910412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.484982, 39.249783, 28.263632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907251, -0.090823, 0.410666,
		-0.005308, 0.973856, 0.227105,
		-0.420555, -0.208221, 0.883050,
		38.358814, 39.187317, 28.528547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126785, 39.610874, 28.360559>,  <38.653202, 39.333073, 27.910412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.126785, 39.610874, 28.360559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.919933, 39.386295, 28.618973>,  <38.795822, 39.251549, 28.774021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.919933, 39.386295, 28.618973>,  <39.126785, 39.610874, 28.360559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.919933, 39.386295, 28.618973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851629, -0.262136, 0.453887,
		-0.085485, 0.784897, 0.613701,
		-0.517128, -0.561446, 0.646032,
		38.764793, 39.217861, 28.812782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.075535, 39.832985, 29.137714>,  <39.126785, 39.610874, 28.360559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.075535, 39.832985, 29.137714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069569, 39.437073, 29.080984>,  <39.065990, 39.199524, 29.046946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069569, 39.437073, 29.080984>,  <39.075535, 39.832985, 29.137714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069569, 39.437073, 29.080984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863670, -0.084223, 0.496972,
		-0.503838, -0.115077, 0.856099,
		-0.014913, -0.989780, -0.141824,
		39.065094, 39.140141, 29.038437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615871, 39.587238, 29.605854>,  <39.075535, 39.832985, 29.137714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615871, 39.587238, 29.605854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.553062, 39.245956, 29.406902>,  <39.515377, 39.041187, 29.287531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.553062, 39.245956, 29.406902>,  <39.615871, 39.587238, 29.605854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.553062, 39.245956, 29.406902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719359, -0.443876, 0.534318,
		-0.676657, -0.273891, 0.683461,
		-0.157027, -0.853204, -0.497378,
		39.505955, 38.989994, 29.257689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.124725, 39.646244, 30.303040>,  <39.615871, 39.587238, 29.605854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.124725, 39.646244, 30.303040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.019638, 39.344536, 30.543726>,  <38.956585, 39.163513, 30.688137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.019638, 39.344536, 30.543726>,  <39.124725, 39.646244, 30.303040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.019638, 39.344536, 30.543726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120303, -0.593149, -0.796054,
		0.957343, -0.281526, 0.065091,
		-0.262719, -0.754266, 0.601716,
		38.940823, 39.118256, 30.724241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485317, 38.903950, 30.081715>,  <39.124725, 39.646244, 30.303040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.485317, 38.903950, 30.081715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.122444, 38.893757, 30.249704>,  <38.904720, 38.887642, 30.350498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.122444, 38.893757, 30.249704>,  <39.485317, 38.903950, 30.081715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.122444, 38.893757, 30.249704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298531, -0.664398, -0.685168,
		0.296488, -0.746945, 0.595121,
		-0.907179, -0.025483, 0.419972,
		38.850292, 38.886112, 30.375696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487366, 38.263767, 30.560543>,  <39.485317, 38.903950, 30.081715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487366, 38.263767, 30.560543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829491, 38.424362, 30.429552>,  <40.034767, 38.520721, 30.350958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829491, 38.424362, 30.429552>,  <39.487366, 38.263767, 30.560543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829491, 38.424362, 30.429552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284058, 0.165212, 0.944466,
		0.433297, -0.900839, 0.027262,
		0.855316, 0.401490, -0.327476,
		40.086086, 38.544807, 30.331308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065201, 37.940552, 30.880148>,  <39.487366, 38.263767, 30.560543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.065201, 37.940552, 30.880148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.154770, 38.323067, 30.804922>,  <40.208511, 38.552578, 30.759787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.154770, 38.323067, 30.804922>,  <40.065201, 37.940552, 30.880148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.154770, 38.323067, 30.804922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085570, 0.172929, 0.981210,
		0.970844, -0.235805, -0.043108,
		0.223920, 0.956290, -0.188065,
		40.221947, 38.609955, 30.748503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.733677, 38.220169, 31.299980>,  <40.065201, 37.940552, 30.880148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.733677, 38.220169, 31.299980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.450645, 38.491478, 31.220699>,  <40.280827, 38.654263, 31.173132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.450645, 38.491478, 31.220699>,  <40.733677, 38.220169, 31.299980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.450645, 38.491478, 31.220699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147949, 0.132070, 0.980137,
		0.690974, 0.722846, 0.006900,
		-0.707577, 0.678271, -0.198201,
		40.238373, 38.694958, 31.161240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.940502, 38.998657, 31.595219>,  <40.733677, 38.220169, 31.299980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.940502, 38.998657, 31.595219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.546955, 38.927731, 31.604755>,  <40.310829, 38.885174, 31.610477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.546955, 38.927731, 31.604755>,  <40.940502, 38.998657, 31.595219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.546955, 38.927731, 31.604755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048440, 0.392285, 0.918567,
		-0.172231, 0.902591, -0.394545,
		-0.983865, -0.177318, 0.023842,
		40.251797, 38.874535, 31.611908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.805943, 39.476917, 32.035305>,  <40.940502, 38.998657, 31.595219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.805943, 39.476917, 32.035305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.468021, 39.264050, 32.013050>,  <40.265266, 39.136330, 31.999697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.468021, 39.264050, 32.013050>,  <40.805943, 39.476917, 32.035305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.468021, 39.264050, 32.013050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150553, 0.136626, 0.979115,
		-0.513456, 0.835540, -0.195543,
		-0.844806, -0.532172, -0.055642,
		40.214581, 39.104397, 31.996357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.298893, 39.993702, 32.088753>,  <40.805943, 39.476917, 32.035305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.298893, 39.993702, 32.088753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.214767, 40.384064, 32.065529>,  <41.164291, 40.618282, 32.051594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.214767, 40.384064, 32.065529>,  <41.298893, 39.993702, 32.088753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.214767, 40.384064, 32.065529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043341, -0.068641, -0.996699,
		-0.976673, -0.207104, 0.056733,
		-0.210314, 0.975908, -0.058064,
		41.151672, 40.676838, 32.048111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.976219, 40.132408, 31.554289>,  <41.298893, 39.993702, 32.088753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.976219, 40.132408, 31.554289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.058258, 40.519398, 31.613512>,  <41.107483, 40.751591, 31.649046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.058258, 40.519398, 31.613512>,  <40.976219, 40.132408, 31.554289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.058258, 40.519398, 31.613512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053687, 0.162165, -0.985302,
		-0.977268, 0.194133, 0.085201,
		0.205096, 0.967479, 0.148057,
		41.119785, 40.809643, 31.657928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528481, 40.517220, 31.053629>,  <40.976219, 40.132408, 31.554289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.528481, 40.517220, 31.053629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.833229, 40.755653, 31.155014>,  <41.016079, 40.898712, 31.215845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.833229, 40.755653, 31.155014>,  <40.528481, 40.517220, 31.053629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.833229, 40.755653, 31.155014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057652, 0.327349, -0.943143,
		-0.645161, 0.733163, 0.215032,
		0.761868, 0.596082, 0.253461,
		41.061790, 40.934479, 31.231052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.317581, 41.166195, 30.705059>,  <40.528481, 40.517220, 31.053629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.317581, 41.166195, 30.705059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.710808, 41.162960, 30.778294>,  <40.946743, 41.161018, 30.822233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.710808, 41.162960, 30.778294>,  <40.317581, 41.166195, 30.705059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.710808, 41.162960, 30.778294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182865, 0.109152, -0.977060,
		-0.012082, 0.993992, 0.108783,
		0.983064, -0.008088, 0.183085,
		41.005726, 41.160534, 30.833220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.665642, 41.663601, 30.213024>,  <40.317581, 41.166195, 30.705059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.665642, 41.663601, 30.213024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.939079, 41.403488, 30.345592>,  <41.103142, 41.247421, 30.425133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.939079, 41.403488, 30.345592>,  <40.665642, 41.663601, 30.213024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.939079, 41.403488, 30.345592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442227, 0.007782, -0.896870,
		0.580636, 0.759656, 0.292890,
		0.683592, -0.650278, 0.331421,
		41.144157, 41.208405, 30.445019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.550774, 42.088017, 30.708586>,  <40.665642, 41.663601, 30.213024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.550774, 42.088017, 30.708586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.893833, 41.969566, 30.876747>,  <41.099670, 41.898495, 30.977644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.893833, 41.969566, 30.876747>,  <40.550774, 42.088017, 30.708586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.893833, 41.969566, 30.876747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513809, 0.460420, -0.723888,
		0.020801, 0.836852, 0.547034,
		0.857653, -0.296129, 0.420405,
		41.151131, 41.880726, 31.002869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.062843, 42.563839, 30.782526>,  <40.550774, 42.088017, 30.708586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.062843, 42.563839, 30.782526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.257462, 42.219345, 30.723816>,  <41.374233, 42.012650, 30.688589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.257462, 42.219345, 30.723816>,  <41.062843, 42.563839, 30.782526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.257462, 42.219345, 30.723816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470801, 0.399988, -0.786356,
		0.735949, 0.313495, 0.600084,
		0.486544, -0.861238, -0.146777,
		41.403423, 41.960972, 30.679783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.701267, 42.701115, 30.809509>,  <41.062843, 42.563839, 30.782526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.701267, 42.701115, 30.809509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.676971, 42.361595, 30.599424>,  <41.662395, 42.157883, 30.473373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.676971, 42.361595, 30.599424>,  <41.701267, 42.701115, 30.809509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.676971, 42.361595, 30.599424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555994, 0.408224, -0.724033,
		0.828964, -0.335993, 0.447132,
		-0.060740, -0.848800, -0.525213,
		41.658749, 42.106956, 30.441860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.315407, 42.574852, 30.483612>,  <41.701267, 42.701115, 30.809509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.315407, 42.574852, 30.483612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.067673, 42.352325, 30.262005>,  <41.919033, 42.218811, 30.129040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.067673, 42.352325, 30.262005>,  <42.315407, 42.574852, 30.483612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.067673, 42.352325, 30.262005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385032, 0.399753, -0.831834,
		0.684231, -0.728501, -0.033384,
		-0.619337, -0.556312, -0.554020,
		41.881870, 42.185432, 30.095798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.716743, 42.106972, 29.966015>,  <42.315407, 42.574852, 30.483612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.716743, 42.106972, 29.966015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.351566, 42.198879, 29.831114>,  <42.132458, 42.254025, 29.750174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.351566, 42.198879, 29.831114>,  <42.716743, 42.106972, 29.966015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.351566, 42.198879, 29.831114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398591, 0.324871, -0.857662,
		-0.087500, -0.917423, -0.388173,
		-0.912946, 0.229767, -0.337250,
		42.077682, 42.267811, 29.729939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.774746, 41.965927, 29.351704>,  <42.716743, 42.106972, 29.966015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.774746, 41.965927, 29.351704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.452579, 42.202888, 29.359406>,  <42.259281, 42.345066, 29.364027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.452579, 42.202888, 29.359406>,  <42.774746, 41.965927, 29.351704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.452579, 42.202888, 29.359406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306448, 0.444002, -0.841993,
		-0.507347, -0.672251, -0.539145,
		-0.805412, 0.592403, 0.019253,
		42.210957, 42.380608, 29.365181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.380241, 41.944637, 28.751083>,  <42.774746, 41.965927, 29.351704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.380241, 41.944637, 28.751083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.359989, 42.300816, 28.931990>,  <42.347839, 42.514523, 29.040533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.359989, 42.300816, 28.931990>,  <42.380241, 41.944637, 28.751083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.359989, 42.300816, 28.931990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536671, 0.406168, -0.739603,
		-0.842271, 0.205271, -0.498440,
		-0.050632, 0.890445, 0.452266,
		42.344799, 42.567947, 29.067669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.914242, 41.594048, 28.328129>,  <42.380241, 41.944637, 28.751083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.914242, 41.594048, 28.328129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.837215, 41.682995, 28.710432>,  <41.791000, 41.736362, 28.939814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.837215, 41.682995, 28.710432>,  <41.914242, 41.594048, 28.328129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.837215, 41.682995, 28.710432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560447, 0.824424, -0.078890,
		-0.805491, 0.520458, -0.283385,
		-0.192571, 0.222368, 0.955756,
		41.779446, 41.749706, 28.997158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.238625, 42.310162, 28.160053>,  <41.914242, 41.594048, 28.328129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.238625, 42.310162, 28.160053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.917156, 42.547966, 28.149721>,  <41.724274, 42.690651, 28.143522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.917156, 42.547966, 28.149721>,  <42.238625, 42.310162, 28.160053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.917156, 42.547966, 28.149721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023372, 0.074906, 0.996917,
		0.594616, 0.800588, -0.074095,
		-0.803670, 0.594515, -0.025829,
		41.676056, 42.726322, 28.141972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.352531, 42.939144, 28.484556>,  <42.238625, 42.310162, 28.160053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.352531, 42.939144, 28.484556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.974163, 42.818405, 28.532084>,  <41.747143, 42.745964, 28.560600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.974163, 42.818405, 28.532084>,  <42.352531, 42.939144, 28.484556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.974163, 42.818405, 28.532084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141428, -0.054101, 0.988469,
		-0.291936, 0.951821, 0.093864,
		-0.945924, -0.301845, 0.118820,
		41.690388, 42.727852, 28.567730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.944332, 43.432735, 28.920597>,  <42.352531, 42.939144, 28.484556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.944332, 43.432735, 28.920597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.812653, 43.059341, 28.977509>,  <41.733646, 42.835304, 29.011656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.812653, 43.059341, 28.977509>,  <41.944332, 43.432735, 28.920597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.812653, 43.059341, 28.977509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289379, 0.043694, 0.956217,
		-0.898827, 0.355955, 0.255746,
		-0.329196, -0.933481, 0.142279,
		41.713894, 42.779297, 29.020193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.412872, 43.385738, 29.414881>,  <41.944332, 43.432735, 28.920597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.412872, 43.385738, 29.414881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.641983, 43.057907, 29.408894>,  <41.779449, 42.861210, 29.405300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.641983, 43.057907, 29.408894>,  <41.412872, 43.385738, 29.414881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.641983, 43.057907, 29.408894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011937, -0.026601, 0.999575,
		-0.819624, -0.572355, -0.025020,
		0.572777, -0.819574, -0.014970,
		41.813816, 42.812035, 29.404402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.194645, 42.717785, 29.802847>,  <41.412872, 43.385738, 29.414881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.194645, 42.717785, 29.802847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.590237, 42.775837, 29.791180>,  <41.827591, 42.810669, 29.784180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.590237, 42.775837, 29.791180>,  <41.194645, 42.717785, 29.802847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.590237, 42.775837, 29.791180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046600, -0.118197, 0.991896,
		0.140504, -0.982328, -0.123658,
		0.988983, 0.145128, -0.029170,
		41.886932, 42.819374, 29.782429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.123272, 42.727859, 29.037580>,  <41.194645, 42.717785, 29.802847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.123272, 42.727859, 29.037580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.456535, 42.511009, 29.081282>,  <41.656494, 42.380898, 29.107502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.456535, 42.511009, 29.081282>,  <41.123272, 42.727859, 29.037580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.456535, 42.511009, 29.081282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384136, -0.425194, 0.819542,
		-0.397850, -0.724776, -0.562508,
		0.833160, -0.542134, 0.109249,
		41.706486, 42.348370, 29.114058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.877834, 42.095573, 29.259771>,  <41.123272, 42.727859, 29.037580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.877834, 42.095573, 29.259771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.253967, 42.142971, 29.387354>,  <41.479649, 42.171410, 29.463903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.253967, 42.142971, 29.387354>,  <40.877834, 42.095573, 29.259771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.253967, 42.142971, 29.387354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221076, -0.499803, 0.837450,
		0.258646, -0.857995, -0.443786,
		0.940334, 0.118493, 0.318954,
		41.536068, 42.178520, 29.483040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.971199, 41.446110, 29.509727>,  <40.877834, 42.095573, 29.259771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.971199, 41.446110, 29.509727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.247040, 41.681152, 29.679041>,  <41.412544, 41.822178, 29.780630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.247040, 41.681152, 29.679041>,  <40.971199, 41.446110, 29.509727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.247040, 41.681152, 29.679041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092773, -0.507997, 0.856348,
		0.718226, -0.629805, -0.295799,
		0.689598, 0.587609, 0.423285,
		41.453918, 41.857433, 29.806026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.321404, 40.959179, 29.873564>,  <40.971199, 41.446110, 29.509727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.321404, 40.959179, 29.873564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.412647, 41.315426, 30.030924>,  <41.467396, 41.529175, 30.125340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.412647, 41.315426, 30.030924>,  <41.321404, 40.959179, 29.873564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.412647, 41.315426, 30.030924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078904, -0.385816, 0.919195,
		0.970432, -0.240721, -0.017737,
		0.228113, 0.890617, 0.393402,
		41.481083, 41.582611, 30.148945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.876789, 40.743382, 30.432987>,  <41.321404, 40.959179, 29.873564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.876789, 40.743382, 30.432987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.741753, 41.113110, 30.504166>,  <41.660728, 41.334946, 30.546873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.741753, 41.113110, 30.504166>,  <41.876789, 40.743382, 30.432987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.741753, 41.113110, 30.504166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122352, -0.230529, 0.965343,
		0.933306, 0.304122, 0.190917,
		-0.337594, 0.924319, 0.177944,
		41.640476, 41.390404, 30.557549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.289658, 41.134853, 30.888851>,  <41.876789, 40.743382, 30.432987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.289658, 41.134853, 30.888851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.898018, 41.211628, 30.915771>,  <41.663036, 41.257694, 30.931923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.898018, 41.211628, 30.915771>,  <42.289658, 41.134853, 30.888851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.898018, 41.211628, 30.915771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026660, -0.206932, 0.977992,
		0.201638, 0.959344, 0.197489,
		-0.979097, 0.191935, 0.067301,
		41.604290, 41.269207, 30.935963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.062931, 41.728588, 31.411701>,  <42.289658, 41.134853, 30.888851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.062931, 41.728588, 31.411701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.780045, 41.448631, 31.371716>,  <41.610313, 41.280655, 31.347725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.780045, 41.448631, 31.371716>,  <42.062931, 41.728588, 31.411701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.780045, 41.448631, 31.371716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012846, -0.128647, 0.991607,
		-0.706882, 0.702564, 0.081990,
		-0.707215, -0.699896, -0.099964,
		41.567879, 41.238663, 31.341726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.530293, 41.837879, 31.882107>,  <42.062931, 41.728588, 31.411701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.530293, 41.837879, 31.882107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.510983, 41.449810, 31.787083>,  <41.499397, 41.216969, 31.730068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.510983, 41.449810, 31.787083>,  <41.530293, 41.837879, 31.882107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.510983, 41.449810, 31.787083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091952, -0.232511, 0.968237,
		-0.994593, 0.068584, -0.077985,
		-0.048273, -0.970173, -0.237560,
		41.496502, 41.158760, 31.715815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.123711, 41.512768, 32.429943>,  <41.530293, 41.837879, 31.882107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.123711, 41.512768, 32.429943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.366779, 41.237629, 32.271145>,  <41.512619, 41.072544, 32.175865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.366779, 41.237629, 32.271145>,  <41.123711, 41.512768, 32.429943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.366779, 41.237629, 32.271145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024195, -0.483611, 0.874949,
		-0.793823, -0.541283, -0.277232,
		0.607668, -0.687847, -0.396997,
		41.549080, 41.031277, 32.152046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.231255, 41.082146, 33.011314>,  <41.123711, 41.512768, 32.429943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.231255, 41.082146, 33.011314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.370415, 40.841965, 32.723309>,  <41.453911, 40.697857, 32.550507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.370415, 40.841965, 32.723309>,  <41.231255, 41.082146, 33.011314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.370415, 40.841965, 32.723309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206441, -0.700075, 0.683577,
		-0.914520, -0.386458, -0.119599,
		0.347902, -0.600454, -0.720013,
		41.474785, 40.661827, 32.507305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.427616, 40.759537, 33.695782>,  <41.231255, 41.082146, 33.011314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.427616, 40.759537, 33.695782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.568722, 40.409706, 33.828850>,  <41.653385, 40.199806, 33.908691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.568722, 40.409706, 33.828850>,  <41.427616, 40.759537, 33.695782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.568722, 40.409706, 33.828850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253548, -0.252885, -0.933682,
		0.900707, 0.413716, 0.132540,
		0.352762, -0.874579, 0.332672,
		41.674549, 40.147331, 33.928650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.249313, 40.587330, 33.500816>,  <41.427616, 40.759537, 33.695782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.249313, 40.587330, 33.500816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.035690, 40.253860, 33.557068>,  <41.907516, 40.053780, 33.590820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.035690, 40.253860, 33.557068>,  <42.249313, 40.587330, 33.500816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.035690, 40.253860, 33.557068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287688, -0.335610, -0.896996,
		0.794998, -0.438585, 0.419071,
		-0.534054, -0.833672, 0.140633,
		41.875473, 40.003757, 33.599258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.662048, 40.106339, 34.024654>,  <42.249313, 40.587330, 33.500816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.662048, 40.106339, 34.024654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.430798, 40.073112, 33.699970>,  <42.292046, 40.053177, 33.505161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.430798, 40.073112, 33.699970>,  <42.662048, 40.106339, 34.024654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.430798, 40.073112, 33.699970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645567, -0.654961, -0.392772,
		-0.499009, -0.751083, 0.432277,
		-0.578128, -0.083067, -0.811706,
		42.257359, 40.048191, 33.456459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.597679, 39.355278, 33.861530>,  <42.662048, 40.106339, 34.024654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.597679, 39.355278, 33.861530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.563946, 39.593285, 33.541821>,  <42.543705, 39.736088, 33.349995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.563946, 39.593285, 33.541821>,  <42.597679, 39.355278, 33.861530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.563946, 39.593285, 33.541821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554259, -0.638578, -0.533867,
		-0.828061, -0.488031, -0.275937,
		-0.084337, 0.595015, -0.799277,
		42.538643, 39.771790, 33.302036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.446079, 38.959232, 34.451012>,  <42.597679, 39.355278, 33.861530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.446079, 38.959232, 34.451012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.615974, 39.318359, 34.497524>,  <42.717911, 39.533836, 34.525433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.615974, 39.318359, 34.497524>,  <42.446079, 38.959232, 34.451012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.615974, 39.318359, 34.497524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581672, -0.369064, 0.724879,
		0.693724, -0.240247, -0.678990,
		0.424741, 0.897816, 0.116283,
		42.743397, 39.587704, 34.532410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.163940, 39.030384, 34.472733>,  <42.446079, 38.959232, 34.451012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.163940, 39.030384, 34.472733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.053509, 39.355526, 34.677887>,  <42.987247, 39.550610, 34.800980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.053509, 39.355526, 34.677887>,  <43.163940, 39.030384, 34.472733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.053509, 39.355526, 34.677887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302499, -0.433019, 0.849110,
		0.912290, 0.389571, -0.126338,
		-0.276082, 0.812852, 0.512884,
		42.970684, 39.599380, 34.831753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.425976, 39.026028, 35.042534>,  <43.163940, 39.030384, 34.472733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.425976, 39.026028, 35.042534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.163849, 39.288448, 35.192284>,  <43.006573, 39.445900, 35.282135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.163849, 39.288448, 35.192284>,  <43.425976, 39.026028, 35.042534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.163849, 39.288448, 35.192284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096652, -0.418723, 0.902956,
		0.749149, 0.627903, 0.210985,
		-0.655313, 0.656056, 0.374374,
		42.967255, 39.485264, 35.304596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.695858, 39.371853, 35.658592>,  <43.425976, 39.026028, 35.042534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.695858, 39.371853, 35.658592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.298744, 39.324799, 35.667969>,  <43.060478, 39.296566, 35.673595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.298744, 39.324799, 35.667969>,  <43.695858, 39.371853, 35.658592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.298744, 39.324799, 35.667969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080311, -0.506688, 0.858381,
		-0.089098, 0.854066, 0.512477,
		-0.992780, -0.117637, 0.023446,
		43.000912, 39.289509, 35.675003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.400227, 39.693314, 36.287708>,  <43.695858, 39.371853, 35.658592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.400227, 39.693314, 36.287708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.236759, 39.355713, 36.148769>,  <43.138680, 39.153152, 36.065407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.236759, 39.355713, 36.148769>,  <43.400227, 39.693314, 36.287708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.236759, 39.355713, 36.148769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240965, -0.466851, 0.850873,
		-0.880298, 0.264027, 0.394163,
		-0.408669, -0.844002, -0.347347,
		43.114159, 39.102512, 36.044567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.013718, 39.390667, 36.721325>,  <43.400227, 39.693314, 36.287708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.013718, 39.390667, 36.721325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.052284, 39.060688, 36.498558>,  <43.075424, 38.862701, 36.364899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.052284, 39.060688, 36.498558>,  <43.013718, 39.390667, 36.721325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.052284, 39.060688, 36.498558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071132, -0.563806, 0.822838,
		-0.992796, -0.039718, -0.113039,
		0.096414, -0.824952, -0.556920,
		43.081207, 38.813202, 36.331482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.037037, 39.560814, 37.488529>,  <43.013718, 39.390667, 36.721325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.037037, 39.560814, 37.488529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.254318, 39.235390, 37.405540>,  <43.384689, 39.040134, 37.355747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.254318, 39.235390, 37.405540>,  <43.037037, 39.560814, 37.488529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.254318, 39.235390, 37.405540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808994, 0.441065, 0.388575,
		-0.224623, -0.378918, 0.897756,
		0.543207, -0.813562, -0.207469,
		43.417282, 38.991322, 37.343300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.330673, 39.319424, 38.019588>,  <43.037037, 39.560814, 37.488529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.330673, 39.319424, 38.019588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.592548, 39.186520, 37.748001>,  <43.749672, 39.106777, 37.585049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.592548, 39.186520, 37.748001>,  <43.330673, 39.319424, 38.019588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.592548, 39.186520, 37.748001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747411, 0.418788, 0.515745,
		0.112982, -0.845116, 0.522507,
		0.654684, -0.332257, -0.678965,
		43.788952, 39.086842, 37.544312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.866848, 39.209736, 38.321251>,  <43.330673, 39.319424, 38.019588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.866848, 39.209736, 38.321251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.065388, 39.214455, 37.974033>,  <44.184509, 39.217285, 37.765701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.065388, 39.214455, 37.974033>,  <43.866848, 39.209736, 38.321251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.065388, 39.214455, 37.974033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770960, 0.453666, 0.446999,
		0.399075, -0.891094, 0.216081,
		0.496347, 0.011796, -0.868044,
		44.214291, 39.217995, 37.713619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.529232, 38.972134, 38.338356>,  <43.866848, 39.209736, 38.321251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.529232, 38.972134, 38.338356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.475166, 39.269672, 38.076538>,  <44.442726, 39.448196, 37.919449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.475166, 39.269672, 38.076538>,  <44.529232, 38.972134, 38.338356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.475166, 39.269672, 38.076538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785009, 0.483467, 0.387325,
		0.604560, -0.461470, -0.649271,
		-0.135162, 0.743845, -0.654543,
		44.434616, 39.492825, 37.880177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.169407, 39.239765, 38.076996>,  <44.529232, 38.972134, 38.338356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.169407, 39.239765, 38.076996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.891582, 39.524483, 38.035175>,  <44.724888, 39.695312, 38.010082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.891582, 39.524483, 38.035175>,  <45.169407, 39.239765, 38.076996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.891582, 39.524483, 38.035175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655037, 0.685773, 0.317242,
		0.297509, 0.151860, -0.942564,
		-0.694561, 0.711797, -0.104549,
		44.683212, 39.738022, 38.003811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.374741, 39.803493, 37.667835>,  <45.169407, 39.239765, 38.076996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.374741, 39.803493, 37.667835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.108189, 39.941921, 37.932007>,  <44.948257, 40.024979, 38.090511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.108189, 39.941921, 37.932007>,  <45.374741, 39.803493, 37.667835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.108189, 39.941921, 37.932007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668391, 0.669809, 0.323433,
		-0.330434, 0.656957, -0.677658,
		-0.666383, 0.346067, 0.660432,
		44.908272, 40.045742, 38.130138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.519268, 39.199474, 37.216415>,  <45.374741, 39.803493, 37.667835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.519268, 39.199474, 37.216415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.898712, 39.175201, 37.092190>,  <46.126381, 39.160637, 37.017654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.898712, 39.175201, 37.092190>,  <45.519268, 39.199474, 37.216415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.898712, 39.175201, 37.092190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055221, -0.998127, 0.026345,
		-0.311585, -0.007841, -0.950186,
		0.948612, -0.060679, -0.310568,
		46.183296, 39.156998, 36.999020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.591541, 38.545387, 36.875908>,  <45.519268, 39.199474, 37.216415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.591541, 38.545387, 36.875908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.978203, 38.644165, 36.903015>,  <46.210201, 38.703434, 36.919281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.978203, 38.644165, 36.903015>,  <45.591541, 38.545387, 36.875908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.978203, 38.644165, 36.903015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190755, -0.870958, 0.452818,
		0.170849, -0.424791, -0.889023,
		0.966655, 0.246949, 0.067771,
		46.268200, 38.718250, 36.923347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.023529, 37.925182, 36.567188>,  <45.591541, 38.545387, 36.875908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.023529, 37.925182, 36.567188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.227200, 38.158802, 36.820053>,  <46.349403, 38.298973, 36.971771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.227200, 38.158802, 36.820053>,  <46.023529, 37.925182, 36.567188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.227200, 38.158802, 36.820053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435417, -0.808381, 0.396147,
		0.742393, 0.073542, -0.665916,
		0.509180, 0.584048, 0.632158,
		46.379955, 38.334015, 37.009701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.340958, 37.260494, 36.289043>,  <46.023529, 37.925182, 36.567188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.340958, 37.260494, 36.289043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.679070, 37.154408, 36.103500>,  <46.881935, 37.090755, 35.992176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.679070, 37.154408, 36.103500>,  <46.340958, 37.260494, 36.289043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.679070, 37.154408, 36.103500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391933, -0.897794, -0.200885,
		-0.363168, 0.351605, -0.862834,
		0.845279, -0.265218, -0.463855,
		46.932652, 37.074841, 35.964344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.238739, 37.139984, 35.618660>,  <46.340958, 37.260494, 36.289043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.238739, 37.139984, 35.618660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.586739, 36.955589, 35.688625>,  <46.795536, 36.844952, 35.730606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.586739, 36.955589, 35.688625>,  <46.238739, 37.139984, 35.618660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.586739, 36.955589, 35.688625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172754, -0.617268, -0.767552,
		0.461802, 0.637551, -0.616659,
		0.869997, -0.460987, 0.174916,
		46.847736, 36.817291, 35.741100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.570644, 36.969540, 34.958382>,  <46.238739, 37.139984, 35.618660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.570644, 36.969540, 34.958382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.684910, 36.692471, 35.223289>,  <46.753471, 36.526230, 35.382233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.684910, 36.692471, 35.223289>,  <46.570644, 36.969540, 34.958382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.684910, 36.692471, 35.223289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196261, -0.718703, -0.667044,
		0.938017, 0.060576, -0.341256,
		0.285668, -0.692674, 0.662266,
		46.770611, 36.484669, 35.421970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.057457, 36.550449, 34.653393>,  <46.570644, 36.969540, 34.958382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.057457, 36.550449, 34.653393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.819160, 36.374901, 34.922462>,  <46.676182, 36.269573, 35.083904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.819160, 36.374901, 34.922462>,  <47.057457, 36.550449, 34.653393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.819160, 36.374901, 34.922462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298934, -0.656192, -0.692857,
		0.745477, -0.613846, 0.259725,
		-0.595737, -0.438868, 0.672676,
		46.640438, 36.243240, 35.124264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.218739, 35.940105, 34.999870>,  <47.057457, 36.550449, 34.653393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.218739, 35.940105, 34.999870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.827698, 35.960155, 34.918110>,  <46.593075, 35.972187, 34.869053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.827698, 35.960155, 34.918110>,  <47.218739, 35.940105, 34.999870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.827698, 35.960155, 34.918110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081007, -0.806774, -0.585281,
		-0.194244, -0.588730, 0.784644,
		-0.977603, 0.050125, -0.204402,
		46.534416, 35.975193, 34.856789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.965439, 35.347450, 35.197617>,  <47.218739, 35.940105, 34.999870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.965439, 35.347450, 35.197617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.738201, 35.489651, 34.900730>,  <46.601856, 35.574970, 34.722599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.738201, 35.489651, 34.900730>,  <46.965439, 35.347450, 35.197617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.738201, 35.489651, 34.900730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150450, -0.841822, -0.518363,
		-0.809093, -0.406147, 0.424751,
		-0.568096, 0.355500, -0.742218,
		46.567772, 35.596302, 34.678066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.368393, 34.853600, 35.160763>,  <46.965439, 35.347450, 35.197617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.368393, 34.853600, 35.160763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.459545, 35.016769, 34.807114>,  <46.514236, 35.114670, 34.594925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.459545, 35.016769, 34.807114>,  <46.368393, 34.853600, 35.160763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.459545, 35.016769, 34.807114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070256, -0.912532, -0.402926,
		-0.971151, 0.029705, -0.236608,
		0.227882, 0.407925, -0.884119,
		46.527908, 35.139149, 34.541878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.955818, 34.440166, 34.707474>,  <46.368393, 34.853600, 35.160763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.955818, 34.440166, 34.707474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.298527, 34.606857, 34.585964>,  <46.504150, 34.706871, 34.513058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.298527, 34.606857, 34.585964>,  <45.955818, 34.440166, 34.707474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.298527, 34.606857, 34.585964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293498, -0.878388, -0.377217,
		-0.424033, 0.234030, -0.874886,
		0.856770, 0.416730, -0.303778,
		46.555557, 34.731876, 34.494831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.100391, 34.225967, 34.061485>,  <45.955818, 34.440166, 34.707474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.100391, 34.225967, 34.061485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.428898, 34.291473, 34.280102>,  <46.626003, 34.330776, 34.411270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.428898, 34.291473, 34.280102>,  <46.100391, 34.225967, 34.061485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.428898, 34.291473, 34.280102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307559, -0.933899, -0.182320,
		0.480554, 0.317826, -0.817346,
		0.821265, 0.163767, 0.546539,
		46.675278, 34.340603, 34.444065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.719311, 34.078850, 33.661785>,  <46.100391, 34.225967, 34.061485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.719311, 34.078850, 33.661785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.751980, 34.016903, 34.055607>,  <46.771584, 33.979736, 34.291901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.751980, 34.016903, 34.055607>,  <46.719311, 34.078850, 33.661785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.751980, 34.016903, 34.055607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383405, -0.906952, -0.174465,
		0.919962, 0.391733, -0.014701,
		0.081677, -0.154865, 0.984554,
		46.776482, 33.970444, 34.350971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.449108, 34.136024, 34.016495>,  <46.719311, 34.078850, 33.661785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.449108, 34.136024, 34.016495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.180603, 33.862709, 34.131405>,  <47.019501, 33.698719, 34.200352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.180603, 33.862709, 34.131405>,  <47.449108, 34.136024, 34.016495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.180603, 33.862709, 34.131405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595981, -0.727978, -0.338903,
		0.440699, -0.056281, 0.895889,
		-0.671261, -0.683287, 0.287277,
		46.979225, 33.657722, 34.217587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.335617, 34.833336, 34.530769>,  <47.449108, 34.136024, 34.016495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.335617, 34.833336, 34.530769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.669300, 34.791946, 34.747429>,  <47.869511, 34.767113, 34.877426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.669300, 34.791946, 34.747429>,  <47.335617, 34.833336, 34.530769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.669300, 34.791946, 34.747429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130451, 0.991388, -0.011517,
		-0.535797, 0.080267, 0.840523,
		0.834209, -0.103477, 0.541653,
		47.919563, 34.760902, 34.909924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.371067, 36.489033, 22.490541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.991436, 36.443516, 22.608051>,  <31.763659, 36.416206, 22.678558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.991436, 36.443516, 22.608051>,  <32.371067, 36.489033, 22.490541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.991436, 36.443516, 22.608051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312240, -0.215586, 0.925218,
		-0.041952, 0.969832, 0.240139,
		-0.949076, -0.113796, 0.293776,
		31.706713, 36.409378, 22.696184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415524, 36.831100, 23.047411>,  <32.371067, 36.489033, 22.490541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.415524, 36.831100, 23.047411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.098797, 36.587437, 23.065104>,  <31.908762, 36.441238, 23.075720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.098797, 36.587437, 23.065104>,  <32.415524, 36.831100, 23.047411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.098797, 36.587437, 23.065104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239134, -0.242570, 0.940199,
		-0.562000, 0.755041, 0.337740,
		-0.791815, -0.609158, 0.044232,
		31.861252, 36.404690, 23.078373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.078026, 36.910168, 23.700174>,  <32.415524, 36.831100, 23.047411>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.078026, 36.910168, 23.700174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.926193, 36.556423, 23.591497>,  <31.835094, 36.344177, 23.526291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.926193, 36.556423, 23.591497>,  <32.078026, 36.910168, 23.700174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926193, 36.556423, 23.591497> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092312, -0.328411, 0.940013,
		-0.920542, 0.331729, 0.206295,
		-0.379579, -0.884365, -0.271694,
		31.812319, 36.291115, 23.509989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.635231, 36.662281, 24.258488>,  <32.078026, 36.910168, 23.700174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.635231, 36.662281, 24.258488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.763340, 36.343620, 24.053442>,  <31.840206, 36.152424, 23.930414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.763340, 36.343620, 24.053442>,  <31.635231, 36.662281, 24.258488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.763340, 36.343620, 24.053442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309518, -0.423423, 0.851417,
		-0.895334, -0.431351, 0.110966,
		0.320274, -0.796649, -0.512615,
		31.859423, 36.104626, 23.899658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.373394, 35.985405, 24.482641>,  <31.635231, 36.662281, 24.258488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.373394, 35.985405, 24.482641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.702253, 35.881653, 24.279942>,  <31.899569, 35.819401, 24.158321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.702253, 35.881653, 24.279942>,  <31.373394, 35.985405, 24.482641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.702253, 35.881653, 24.279942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332208, -0.504273, 0.797086,
		-0.462288, -0.823669, -0.328419,
		0.822148, -0.259380, -0.506749,
		31.948898, 35.803841, 24.127916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.471514, 35.355572, 24.730110>,  <31.373394, 35.985405, 24.482641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.471514, 35.355572, 24.730110> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.816059, 35.479298, 24.568928>,  <32.022785, 35.553532, 24.472218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.816059, 35.479298, 24.568928>,  <31.471514, 35.355572, 24.730110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.816059, 35.479298, 24.568928> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479757, -0.234590, 0.845459,
		0.166984, -0.921570, -0.350464,
		0.861365, 0.309316, -0.402957,
		32.074467, 35.572094, 24.448040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.945856, 34.891891, 24.922106>,  <31.471514, 35.355572, 24.730110>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.945856, 34.891891, 24.922106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.190414, 35.201649, 24.856981>,  <32.337151, 35.387505, 24.817907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.190414, 35.201649, 24.856981>,  <31.945856, 34.891891, 24.922106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.190414, 35.201649, 24.856981> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435679, -0.157662, 0.886187,
		0.660590, -0.612744, -0.433781,
		0.611396, 0.774395, -0.162810,
		32.373833, 35.433968, 24.808138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.690273, 34.708778, 25.235147>,  <31.945856, 34.891891, 24.922106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.690273, 34.708778, 25.235147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.706944, 35.104988, 25.182812>,  <32.716946, 35.342716, 25.151411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.706944, 35.104988, 25.182812>,  <32.690273, 34.708778, 25.235147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706944, 35.104988, 25.182812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441604, 0.099206, 0.891709,
		0.896242, -0.094941, -0.433287,
		0.041675, 0.990527, -0.130839,
		32.719444, 35.402145, 25.143560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.417778, 34.980679, 25.338051>,  <32.690273, 34.708778, 25.235147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.417778, 34.980679, 25.338051> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.187592, 35.305443, 25.377335>,  <33.049480, 35.500301, 25.400906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.187592, 35.305443, 25.377335>,  <33.417778, 34.980679, 25.338051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.187592, 35.305443, 25.377335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523063, 0.273080, 0.807361,
		0.628684, 0.515979, -0.581827,
		-0.575467, 0.811907, 0.098209,
		33.014950, 35.549015, 25.406797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854572, 35.577816, 25.451324>,  <33.417778, 34.980679, 25.338051>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854572, 35.577816, 25.451324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.515800, 35.711754, 25.616537>,  <33.312538, 35.792118, 25.715666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.515800, 35.711754, 25.616537>,  <33.854572, 35.577816, 25.451324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.515800, 35.711754, 25.616537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526558, 0.420282, 0.738985,
		0.073855, 0.843351, -0.532263,
		-0.846925, 0.334845, 0.413033,
		33.261723, 35.812206, 25.740448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.970394, 36.217152, 25.561312>,  <33.854572, 35.577816, 25.451324>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.970394, 36.217152, 25.561312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.677055, 36.135593, 25.820734>,  <33.501053, 36.086658, 25.976387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.677055, 36.135593, 25.820734>,  <33.970394, 36.217152, 25.561312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.677055, 36.135593, 25.820734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516111, 0.453983, 0.726312,
		-0.442525, 0.867367, -0.227695,
		-0.733349, -0.203896, 0.648557,
		33.457050, 36.074425, 26.015301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894810, 36.827549, 26.062033>,  <33.970394, 36.217152, 25.561312>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894810, 36.827549, 26.062033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.727764, 36.513824, 26.245535>,  <33.627537, 36.325592, 26.355637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.727764, 36.513824, 26.245535>,  <33.894810, 36.827549, 26.062033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727764, 36.513824, 26.245535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391862, 0.300060, 0.869718,
		-0.819780, 0.542978, 0.182030,
		-0.417618, -0.784308, 0.458755,
		33.602478, 36.278534, 26.383162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961430, 36.965725, 26.788576>,  <33.894810, 36.827549, 26.062033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961430, 36.965725, 26.788576> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.838169, 36.585369, 26.800299>,  <33.764214, 36.357155, 26.807333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.838169, 36.585369, 26.800299>,  <33.961430, 36.965725, 26.788576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.838169, 36.585369, 26.800299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338956, -0.080956, 0.937313,
		-0.888905, 0.298769, 0.347255,
		-0.308152, -0.950885, 0.029307,
		33.745724, 36.300102, 26.809092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.516445, 36.909683, 27.405365>,  <33.961430, 36.965725, 26.788576>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.516445, 36.909683, 27.405365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.668953, 36.553413, 27.306303>,  <33.760460, 36.339653, 27.246866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.668953, 36.553413, 27.306303>,  <33.516445, 36.909683, 27.405365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.668953, 36.553413, 27.306303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478238, -0.039232, 0.877354,
		-0.791151, -0.452950, 0.410995,
		0.381274, -0.890672, -0.247656,
		33.783337, 36.286213, 27.232006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.383678, 36.518177, 28.017229>,  <33.516445, 36.909683, 27.405365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.383678, 36.518177, 28.017229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.671822, 36.322895, 27.820156>,  <33.844707, 36.205727, 27.701912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.671822, 36.322895, 27.820156>,  <33.383678, 36.518177, 28.017229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671822, 36.322895, 27.820156> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542263, -0.046488, 0.838922,
		-0.432472, -0.871489, 0.231248,
		0.720361, -0.488207, -0.492681,
		33.887928, 36.176434, 27.672352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.720844, 36.144344, 28.487968>,  <33.383678, 36.518177, 28.017229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.720844, 36.144344, 28.487968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.985241, 36.141464, 28.187826>,  <34.143879, 36.139736, 28.007740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.985241, 36.141464, 28.187826>,  <33.720844, 36.144344, 28.487968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.985241, 36.141464, 28.187826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741122, 0.162954, 0.651294,
		0.117584, -0.986607, 0.113048,
		0.660993, -0.007200, -0.750357,
		34.183540, 36.139305, 27.962719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184181, 35.611687, 28.725216>,  <33.720844, 36.144344, 28.487968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184181, 35.611687, 28.725216> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.382729, 35.831985, 28.456799>,  <34.501858, 35.964165, 28.295748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.382729, 35.831985, 28.456799>,  <34.184181, 35.611687, 28.725216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382729, 35.831985, 28.456799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798185, 0.014404, 0.602240,
		0.341347, -0.834549, -0.432447,
		0.496370, 0.550746, -0.671041,
		34.531639, 35.997208, 28.255486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.828671, 35.297523, 28.663160>,  <34.184181, 35.611687, 28.725216>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.828671, 35.297523, 28.663160> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.862022, 35.664391, 28.507288>,  <34.882034, 35.884510, 28.413765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.862022, 35.664391, 28.507288>,  <34.828671, 35.297523, 28.663160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862022, 35.664391, 28.507288> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880987, 0.114917, 0.458974,
		0.465737, -0.381572, -0.798431,
		0.083378, 0.917168, -0.389681,
		34.887035, 35.939541, 28.390385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497169, 35.288486, 28.477329>,  <34.828671, 35.297523, 28.663160>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.497169, 35.288486, 28.477329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.407581, 35.676254, 28.517469>,  <35.353828, 35.908913, 28.541553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.407581, 35.676254, 28.517469>,  <35.497169, 35.288486, 28.477329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.407581, 35.676254, 28.517469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862127, 0.149054, 0.484273,
		0.454504, 0.194977, -0.869143,
		-0.223971, 0.969416, 0.100349,
		35.340389, 35.967079, 28.547575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.105713, 35.712448, 28.271803>,  <35.497169, 35.288486, 28.477329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.105713, 35.712448, 28.271803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.875912, 35.928463, 28.517830>,  <35.738033, 36.058071, 28.665445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.875912, 35.928463, 28.517830>,  <36.105713, 35.712448, 28.271803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875912, 35.928463, 28.517830> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802541, 0.223976, 0.552958,
		0.160860, 0.811290, -0.562079,
		-0.574501, 0.540040, 0.615065,
		35.703560, 36.090473, 28.702349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500946, 36.364132, 28.392778>,  <36.105713, 35.712448, 28.271803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500946, 36.364132, 28.392778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.225811, 36.340347, 28.682150>,  <36.060730, 36.326077, 28.855772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.225811, 36.340347, 28.682150>,  <36.500946, 36.364132, 28.392778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.225811, 36.340347, 28.682150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715766, 0.110134, 0.689601,
		-0.120680, 0.992136, -0.033193,
		-0.687834, -0.059463, 0.723428,
		36.019463, 36.322510, 28.899178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.230839, 36.461533, 28.327208>,  <36.500946, 36.364132, 28.392778>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.230839, 36.461533, 28.327208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.554131, 36.694565, 28.361511>,  <37.748108, 36.834385, 28.382093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.554131, 36.694565, 28.361511>,  <37.230839, 36.461533, 28.327208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.554131, 36.694565, 28.361511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004180, 0.139957, -0.990149,
		-0.588847, 0.800630, 0.110683,
		0.808234, 0.582583, 0.085759,
		37.796600, 36.869339, 28.387239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095192, 37.136330, 28.042709>,  <37.230839, 36.461533, 28.327208>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.095192, 37.136330, 28.042709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.490341, 37.083115, 28.010668>,  <37.727428, 37.051186, 27.991444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.490341, 37.083115, 28.010668>,  <37.095192, 37.136330, 28.042709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490341, 37.083115, 28.010668> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062408, 0.132232, -0.989252,
		0.142200, 0.982250, 0.122325,
		0.987868, -0.133038, -0.080103,
		37.786701, 37.043201, 27.986637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.444252, 37.641747, 27.492264>,  <37.095192, 37.136330, 28.042709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.444252, 37.641747, 27.492264> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.708447, 37.342426, 27.516932>,  <37.866962, 37.162834, 27.531733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.708447, 37.342426, 27.516932>,  <37.444252, 37.641747, 27.492264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708447, 37.342426, 27.516932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124220, 0.027902, -0.991862,
		0.740488, 0.662775, 0.111382,
		0.660489, -0.748299, 0.061669,
		37.906593, 37.117935, 27.535433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995506, 37.897091, 27.058804>,  <37.444252, 37.641747, 27.492264>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995506, 37.897091, 27.058804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.029755, 37.500683, 27.099882>,  <38.050304, 37.262836, 27.124529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.029755, 37.500683, 27.099882>,  <37.995506, 37.897091, 27.058804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029755, 37.500683, 27.099882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245774, -0.078880, -0.966112,
		0.965538, 0.107963, 0.236813,
		0.085625, -0.991020, 0.102696,
		38.055443, 37.203377, 27.130692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578659, 37.806190, 26.804287>,  <37.995506, 37.897091, 27.058804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.578659, 37.806190, 26.804287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.418034, 37.439896, 26.809460>,  <38.321659, 37.220119, 26.812563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.418034, 37.439896, 26.809460>,  <38.578659, 37.806190, 26.804287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.418034, 37.439896, 26.809460> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046759, -0.034604, -0.998307,
		0.914637, -0.400277, 0.056715,
		-0.401562, -0.915740, 0.012934,
		38.297565, 37.165173, 26.813339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.913055, 37.436451, 26.327293>,  <38.578659, 37.806190, 26.804287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.913055, 37.436451, 26.327293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.571575, 37.231003, 26.361677>,  <38.366688, 37.107735, 26.382307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.571575, 37.231003, 26.361677>,  <38.913055, 37.436451, 26.327293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571575, 37.231003, 26.361677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009193, -0.179904, -0.983641,
		0.520682, -0.838946, 0.158306,
		-0.853702, -0.513619, 0.085960,
		38.315464, 37.076916, 26.387465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014050, 36.837334, 25.905952>,  <38.913055, 37.436451, 26.327293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.014050, 36.837334, 25.905952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.616959, 36.832787, 25.953903>,  <38.378704, 36.830059, 25.982674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.616959, 36.832787, 25.953903>,  <39.014050, 36.837334, 25.905952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.616959, 36.832787, 25.953903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118434, -0.087598, -0.989091,
		0.021752, -0.996091, 0.085613,
		-0.992724, -0.011375, 0.119877,
		38.319141, 36.829376, 25.989866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719704, 36.270523, 25.386307>,  <39.014050, 36.837334, 25.905952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719704, 36.270523, 25.386307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.443138, 36.544926, 25.476950>,  <38.277199, 36.709568, 25.531336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.443138, 36.544926, 25.476950>,  <38.719704, 36.270523, 25.386307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.443138, 36.544926, 25.476950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167408, 0.152996, -0.973944,
		-0.702798, -0.711332, 0.009059,
		-0.691411, 0.686002, 0.226608,
		38.235714, 36.750725, 25.544931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144684, 36.138027, 24.829092>,  <38.719704, 36.270523, 25.386307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144684, 36.138027, 24.829092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.038418, 36.501244, 24.958637>,  <37.974659, 36.719173, 25.036366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.038418, 36.501244, 24.958637>,  <38.144684, 36.138027, 24.829092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038418, 36.501244, 24.958637> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336375, 0.227518, -0.913831,
		-0.903480, -0.351710, 0.244999,
		-0.265662, 0.908040, 0.323865,
		37.958717, 36.773655, 25.055798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495968, 36.204693, 24.572268>,  <38.144684, 36.138027, 24.829092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.495968, 36.204693, 24.572268> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.592384, 36.584076, 24.654568>,  <37.650234, 36.811707, 24.703949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.592384, 36.584076, 24.654568>,  <37.495968, 36.204693, 24.572268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.592384, 36.584076, 24.654568> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412361, 0.292001, -0.862956,
		-0.878555, 0.123160, 0.461489,
		0.241037, 0.948455, 0.205753,
		37.664696, 36.868614, 24.716293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.905983, 36.654984, 24.624748>,  <37.495968, 36.204693, 24.572268>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.905983, 36.654984, 24.624748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.203854, 36.903160, 24.526354>,  <37.382576, 37.052067, 24.467318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.203854, 36.903160, 24.526354>,  <36.905983, 36.654984, 24.624748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203854, 36.903160, 24.526354> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508789, 0.289186, -0.810867,
		-0.431959, 0.728989, 0.531024,
		0.744678, 0.620440, -0.245985,
		37.427258, 37.089291, 24.452559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554634, 37.303444, 24.393801>,  <36.905983, 36.654984, 24.624748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554634, 37.303444, 24.393801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.925205, 37.312832, 24.243505>,  <37.147549, 37.318466, 24.153328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.925205, 37.312832, 24.243505>,  <36.554634, 37.303444, 24.393801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.925205, 37.312832, 24.243505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334037, 0.511572, -0.791653,
		0.173638, 0.858920, 0.481774,
		0.926428, 0.023470, -0.375739,
		37.203133, 37.319874, 24.130783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688866, 38.068466, 24.187469>,  <36.554634, 37.303444, 24.393801>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688866, 38.068466, 24.187469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.927254, 37.815273, 23.989822>,  <37.070286, 37.663357, 23.871235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.927254, 37.815273, 23.989822>,  <36.688866, 38.068466, 24.187469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927254, 37.815273, 23.989822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292322, 0.402096, -0.867679,
		0.747906, 0.661555, 0.054604,
		0.595973, -0.632980, -0.494118,
		37.106045, 37.625378, 23.841587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735882, 38.381958, 23.439875>,  <36.688866, 38.068466, 24.187469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.735882, 38.381958, 23.439875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.891369, 38.016449, 23.392679>,  <36.984661, 37.797142, 23.364363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.891369, 38.016449, 23.392679>,  <36.735882, 38.381958, 23.439875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891369, 38.016449, 23.392679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320041, -0.013828, -0.947303,
		0.863987, 0.405993, -0.297820,
		0.388716, -0.913772, -0.117987,
		37.007984, 37.742317, 23.357283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935886, 38.413563, 22.747471>,  <36.735882, 38.381958, 23.439875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.935886, 38.413563, 22.747471> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.922024, 38.024559, 22.839577>,  <36.913708, 37.791157, 22.894840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.922024, 38.024559, 22.839577>,  <36.935886, 38.413563, 22.747471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922024, 38.024559, 22.839577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465651, -0.188153, -0.864736,
		0.884290, -0.137189, -0.446331,
		-0.034654, -0.972511, 0.230264,
		36.911629, 37.732807, 22.908655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147831, 37.944248, 22.107924>,  <36.935886, 38.413563, 22.747471>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147831, 37.944248, 22.107924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.889057, 37.730488, 22.325506>,  <36.733795, 37.602230, 22.456057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.889057, 37.730488, 22.325506>,  <37.147831, 37.944248, 22.107924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.889057, 37.730488, 22.325506> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604780, -0.074911, -0.792861,
		0.464458, -0.841902, -0.274735,
		-0.646931, -0.534405, 0.543959,
		36.694977, 37.570168, 22.488693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718853, 37.420918, 21.601231>,  <37.147831, 37.944248, 22.107924>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718853, 37.420918, 21.601231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.526180, 37.393318, 21.950680>,  <36.410576, 37.376759, 22.160349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.526180, 37.393318, 21.950680>,  <36.718853, 37.420918, 21.601231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526180, 37.393318, 21.950680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825125, -0.300110, -0.478647,
		0.295209, -0.951406, 0.087628,
		-0.481686, -0.068997, 0.873623,
		36.381676, 37.372620, 22.212767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313004, 36.779755, 21.474081>,  <36.718853, 37.420918, 21.601231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.313004, 36.779755, 21.474081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.143780, 36.997074, 21.764143>,  <36.042244, 37.127464, 21.938181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.143780, 36.997074, 21.764143>,  <36.313004, 36.779755, 21.474081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.143780, 36.997074, 21.764143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904975, -0.293263, -0.308248,
		0.045191, -0.786654, 0.615738,
		-0.423058, 0.543297, 0.725155,
		36.016861, 37.160065, 21.981689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.707844, 36.488430, 21.558065>,  <36.313004, 36.779755, 21.474081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.707844, 36.488430, 21.558065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.620781, 36.840626, 21.726522>,  <35.568542, 37.051945, 21.827597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.620781, 36.840626, 21.726522>,  <35.707844, 36.488430, 21.558065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620781, 36.840626, 21.726522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943166, -0.078723, -0.322863,
		-0.251125, -0.467479, 0.847585,
		-0.217655, 0.880492, 0.421141,
		35.555485, 37.104774, 21.852865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.850624, 36.399834, 22.093124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.942863, 36.784512, 22.033846>,  <34.998207, 37.015320, 21.998280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.942863, 36.784512, 22.033846>,  <34.850624, 36.399834, 22.093124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.942863, 36.784512, 22.033846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969891, 0.214909, -0.114570,
		-0.078333, 0.170153, 0.982299,
		0.230599, 0.961698, -0.148195,
		35.012043, 37.073021, 21.989388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389828, 36.793911, 22.559738>,  <34.850624, 36.399834, 22.093124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389828, 36.793911, 22.559738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.511505, 37.037899, 22.267054>,  <34.584511, 37.184292, 22.091442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.511505, 37.037899, 22.267054>,  <34.389828, 36.793911, 22.559738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.511505, 37.037899, 22.267054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949087, 0.128062, -0.287810,
		-0.081851, 0.782008, 0.617871,
		0.304195, 0.609970, -0.731711,
		34.602764, 37.220890, 22.047541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.899727, 37.384396, 22.510422>,  <34.389828, 36.793911, 22.559738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.899727, 37.384396, 22.510422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.074932, 37.358891, 22.151741>,  <34.180058, 37.343586, 21.936533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.074932, 37.358891, 22.151741>,  <33.899727, 37.384396, 22.510422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.074932, 37.358891, 22.151741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887746, 0.126431, -0.442630,
		0.141596, 0.989924, -0.001228,
		0.438015, -0.063765, -0.896703,
		34.206337, 37.339760, 21.882730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.573036, 37.985435, 22.039246>,  <33.899727, 37.384396, 22.510422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.573036, 37.985435, 22.039246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.764191, 37.772915, 21.759434>,  <33.878883, 37.645405, 21.591547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.764191, 37.772915, 21.759434>,  <33.573036, 37.985435, 22.039246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.764191, 37.772915, 21.759434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726718, 0.208231, -0.654615,
		0.493460, 0.821195, -0.286592,
		0.477889, -0.531298, -0.699531,
		33.907558, 37.613525, 21.549574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.524433, 38.314697, 21.458641>,  <33.573036, 37.985435, 22.039246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.524433, 38.314697, 21.458641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.623619, 37.947975, 21.333437>,  <33.683128, 37.727940, 21.258314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.623619, 37.947975, 21.333437>,  <33.524433, 38.314697, 21.458641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.623619, 37.947975, 21.333437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496683, 0.157095, -0.853597,
		0.831757, 0.367127, -0.416410,
		0.247963, -0.916809, -0.313011,
		33.698009, 37.672932, 21.239534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860764, 38.307682, 20.792746>,  <33.524433, 38.314697, 21.458641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860764, 38.307682, 20.792746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.672668, 37.956661, 20.830229>,  <33.559811, 37.746048, 20.852718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.672668, 37.956661, 20.830229>,  <33.860764, 38.307682, 20.792746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672668, 37.956661, 20.830229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433964, 0.137463, -0.890381,
		0.768475, -0.459354, -0.445466,
		-0.470235, -0.877552, 0.093706,
		33.531597, 37.693394, 20.858341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707207, 38.152885, 20.118418>,  <33.860764, 38.307682, 20.792746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707207, 38.152885, 20.118418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.501331, 37.857571, 20.292786>,  <33.377808, 37.680382, 20.397408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.501331, 37.857571, 20.292786>,  <33.707207, 38.152885, 20.118418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501331, 37.857571, 20.292786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607748, -0.044475, -0.792884,
		0.604766, -0.673015, -0.425804,
		-0.514685, -0.738290, 0.435921,
		33.346924, 37.636086, 20.423561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.674309, 37.545315, 19.731419>,  <33.707207, 38.152885, 20.118418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.674309, 37.545315, 19.731419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.356297, 37.470810, 19.962322>,  <33.165489, 37.426105, 20.100864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.356297, 37.470810, 19.962322>,  <33.674309, 37.545315, 19.731419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356297, 37.470810, 19.962322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551790, -0.173124, -0.815816,
		0.251897, -0.967126, 0.034859,
		-0.795032, -0.186267, 0.577260,
		33.117786, 37.414928, 20.135500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.339336, 36.915718, 19.465088>,  <33.674309, 37.545315, 19.731419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.339336, 36.915718, 19.465088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.066460, 37.123787, 19.670630>,  <32.902733, 37.248627, 19.793955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.066460, 37.123787, 19.670630>,  <33.339336, 36.915718, 19.465088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.066460, 37.123787, 19.670630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619215, -0.037273, -0.784337,
		-0.388835, -0.853249, 0.347524,
		-0.682188, 0.520170, 0.513851,
		32.861805, 37.279839, 19.824785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.662609, 36.473545, 19.406279>,  <33.339336, 36.915718, 19.465088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.662609, 36.473545, 19.406279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.556221, 36.844997, 19.509743>,  <32.492386, 37.067867, 19.571821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.556221, 36.844997, 19.509743>,  <32.662609, 36.473545, 19.406279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.556221, 36.844997, 19.509743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652191, 0.024244, -0.757667,
		-0.709863, -0.370217, 0.599195,
		-0.265975, 0.928629, 0.258663,
		32.476429, 37.123585, 19.587341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.867405, 36.472881, 19.526720>,  <32.662609, 36.473545, 19.406279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.867405, 36.472881, 19.526720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.999598, 36.839874, 19.438168>,  <32.078915, 37.060070, 19.385036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.999598, 36.839874, 19.438168>,  <31.867405, 36.472881, 19.526720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.999598, 36.839874, 19.438168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782853, 0.135454, -0.607284,
		-0.527185, 0.374004, 0.763018,
		0.330481, 0.917482, -0.221381,
		32.098743, 37.115120, 19.371754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.252344, 36.921524, 19.380259>,  <31.867405, 36.472881, 19.526720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.252344, 36.921524, 19.380259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.551735, 37.124481, 19.209455>,  <31.731369, 37.246254, 19.106974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.551735, 37.124481, 19.209455>,  <31.252344, 36.921524, 19.380259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.551735, 37.124481, 19.209455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596695, 0.234298, -0.767502,
		-0.289376, 0.829252, 0.478124,
		0.748477, 0.507391, -0.427010,
		31.776278, 37.276699, 19.081352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.007284, 37.563068, 19.239365>,  <31.252344, 36.921524, 19.380259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.007284, 37.563068, 19.239365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.336233, 37.552032, 19.012053>,  <31.533602, 37.545410, 18.875666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.336233, 37.552032, 19.012053>,  <31.007284, 37.563068, 19.239365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.336233, 37.552032, 19.012053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557435, 0.160848, -0.814490,
		0.113879, 0.986594, 0.116896,
		0.822373, -0.027592, -0.568279,
		31.582945, 37.543755, 18.841568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.049561, 38.232090, 19.015795>,  <31.007284, 37.563068, 19.239365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.049561, 38.232090, 19.015795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.260000, 38.006603, 18.761097>,  <31.386265, 37.871311, 18.608278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.260000, 38.006603, 18.761097>,  <31.049561, 38.232090, 19.015795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.260000, 38.006603, 18.761097> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576287, 0.314293, -0.754396,
		0.625390, 0.763834, -0.159514,
		0.526099, -0.563717, -0.636744,
		31.417830, 37.837486, 18.570074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.076300, 38.659534, 18.436989>,  <31.049561, 38.232090, 19.015795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.076300, 38.659534, 18.436989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.200783, 38.305595, 18.298313>,  <31.275473, 38.093231, 18.215109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.200783, 38.305595, 18.298313>,  <31.076300, 38.659534, 18.436989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.200783, 38.305595, 18.298313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443923, 0.187204, -0.876292,
		0.840286, 0.426613, -0.334545,
		0.311209, -0.884848, -0.346688,
		31.294146, 38.040142, 18.194307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.343916, 38.778461, 17.815937>,  <31.076300, 38.659534, 18.436989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.343916, 38.778461, 17.815937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.240835, 38.392033, 17.809118>,  <31.178988, 38.160175, 17.805027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.240835, 38.392033, 17.809118>,  <31.343916, 38.778461, 17.815937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.240835, 38.392033, 17.809118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470439, 0.140860, -0.871117,
		0.843965, -0.216470, -0.490779,
		-0.257702, -0.966074, -0.017045,
		31.163525, 38.102211, 17.804005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.565151, 38.561924, 17.197704>,  <31.343916, 38.778461, 17.815937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.565151, 38.561924, 17.197704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.274479, 38.308434, 17.303780>,  <31.100075, 38.156338, 17.367424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.274479, 38.308434, 17.303780>,  <31.565151, 38.561924, 17.197704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.274479, 38.308434, 17.303780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537721, 0.284469, -0.793684,
		0.427544, -0.719350, -0.547487,
		-0.726679, -0.633730, 0.265186,
		31.056475, 38.118317, 17.383335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.287609, 38.288540, 16.563599>,  <31.565151, 38.561924, 17.197704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.287609, 38.288540, 16.563599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.989157, 38.196053, 16.813343>,  <30.810085, 38.140560, 16.963190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.989157, 38.196053, 16.813343>,  <31.287609, 38.288540, 16.563599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.989157, 38.196053, 16.813343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665000, 0.212869, -0.715864,
		0.032612, -0.949329, -0.312587,
		-0.746131, -0.231216, 0.624362,
		30.765318, 38.126686, 17.000652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.789598, 37.823711, 16.221838>,  <31.287609, 38.288540, 16.563599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.789598, 37.823711, 16.221838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.581808, 38.020676, 16.501173>,  <30.457134, 38.138855, 16.668774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.581808, 38.020676, 16.501173>,  <30.789598, 37.823711, 16.221838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.581808, 38.020676, 16.501173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695586, 0.230984, -0.680299,
		-0.496294, -0.839151, 0.222526,
		-0.519474, 0.492414, 0.698338,
		30.425966, 38.168400, 16.710674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.306427, 38.130650, 15.754665>,  <30.789598, 37.823711, 16.221838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.306427, 38.130650, 15.754665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.149189, 38.263474, 16.097645>,  <30.054846, 38.343166, 16.303432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.149189, 38.263474, 16.097645>,  <30.306427, 38.130650, 15.754665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.149189, 38.263474, 16.097645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756309, 0.413589, -0.506894,
		-0.522947, -0.847752, 0.088557,
		-0.393094, 0.332055, 0.857447,
		30.031261, 38.363091, 16.354879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.707426, 37.657070, 15.935472>,  <30.306427, 38.130650, 15.754665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.707426, 37.657070, 15.935472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.689432, 38.029358, 16.080652>,  <29.678637, 38.252731, 16.167761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.689432, 38.029358, 16.080652>,  <29.707426, 37.657070, 15.935472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.689432, 38.029358, 16.080652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712366, 0.224827, -0.664821,
		-0.700365, -0.288460, 0.652902,
		-0.044984, 0.930722, 0.362950,
		29.675938, 38.308575, 16.189537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.035648, 37.899647, 16.032648>,  <29.707426, 37.657070, 15.935472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.035648, 37.899647, 16.032648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.215155, 38.256931, 16.021475>,  <29.322859, 38.471302, 16.014771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.215155, 38.256931, 16.021475>,  <29.035648, 37.899647, 16.032648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.215155, 38.256931, 16.021475> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690248, 0.326603, -0.645669,
		-0.567596, 0.309037, 0.763106,
		0.448768, 0.893212, -0.027933,
		29.349785, 38.524895, 16.013094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.567291, 37.483490, 15.864799>,  <29.035648, 37.899647, 16.032648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.567291, 37.483490, 15.864799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.353123, 37.423023, 15.532420>,  <28.224621, 37.386745, 15.332994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.353123, 37.423023, 15.532420>,  <28.567291, 37.483490, 15.864799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.353123, 37.423023, 15.532420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362139, -0.847732, 0.387563,
		-0.763005, 0.508428, 0.399153,
		-0.535423, -0.151164, -0.830946,
		28.192495, 37.377674, 15.283136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.880901, 37.428242, 15.991350>,  <28.567291, 37.483490, 15.864799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.880901, 37.428242, 15.991350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.937729, 37.242416, 15.641722>,  <27.971827, 37.130920, 15.431945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.937729, 37.242416, 15.641722>,  <27.880901, 37.428242, 15.991350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.937729, 37.242416, 15.641722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308244, -0.859885, 0.406919,
		-0.940639, 0.211616, -0.265362,
		0.142070, -0.464560, -0.874071,
		27.980350, 37.103046, 15.379500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.086512, 37.370564, 16.087917>,  <27.880901, 37.428242, 15.991350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.086512, 37.370564, 16.087917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.930073, 37.098385, 16.335802>,  <26.836210, 36.935078, 16.484533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.930073, 37.098385, 16.335802>,  <27.086512, 37.370564, 16.087917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.930073, 37.098385, 16.335802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637788, 0.285072, 0.715514,
		-0.663529, 0.675079, 0.322488,
		-0.391096, -0.680443, 0.619711,
		26.812744, 36.894253, 16.521715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.113779, 37.678371, 16.691711>,  <27.086512, 37.370564, 16.087917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.113779, 37.678371, 16.691711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.054272, 37.301914, 16.813110>,  <27.018568, 37.076038, 16.885950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.054272, 37.301914, 16.813110>,  <27.113779, 37.678371, 16.691711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.054272, 37.301914, 16.813110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492136, 0.195741, 0.848226,
		-0.857713, 0.275550, 0.434052,
		-0.148767, -0.941147, 0.303498,
		27.009642, 37.019569, 16.904160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.855177, 37.813732, 17.366640>,  <27.113779, 37.678371, 16.691711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.855177, 37.813732, 17.366640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.016272, 37.448963, 17.335142>,  <27.112928, 37.230103, 17.316244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.016272, 37.448963, 17.335142>,  <26.855177, 37.813732, 17.366640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.016272, 37.448963, 17.335142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580775, 0.188100, 0.792035,
		-0.707462, -0.364715, 0.605376,
		0.402738, -0.911922, -0.078744,
		27.137093, 37.175388, 17.311520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.863134, 37.527702, 18.050941>,  <26.855177, 37.813732, 17.366640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.863134, 37.527702, 18.050941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.147863, 37.335251, 17.846268>,  <27.318701, 37.219780, 17.723463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.147863, 37.335251, 17.846268>,  <26.863134, 37.527702, 18.050941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.147863, 37.335251, 17.846268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638421, 0.139519, 0.756937,
		-0.292796, -0.865475, 0.406476,
		0.711821, -0.481131, -0.511687,
		27.361410, 37.190910, 17.692762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.110956, 37.104805, 18.545996>,  <26.863134, 37.527702, 18.050941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.110956, 37.104805, 18.545996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.394176, 37.088837, 18.263983>,  <27.564108, 37.079254, 18.094774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.394176, 37.088837, 18.263983>,  <27.110956, 37.104805, 18.545996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.394176, 37.088837, 18.263983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706148, 0.033633, 0.707265,
		-0.004523, -0.998637, 0.052005,
		0.708050, -0.039923, -0.705033,
		27.606592, 37.076862, 18.052473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.574055, 36.556202, 18.750614>,  <27.110956, 37.104805, 18.545996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.574055, 36.556202, 18.750614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.759783, 36.817078, 18.510931>,  <27.871220, 36.973602, 18.367121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.759783, 36.817078, 18.510931>,  <27.574055, 36.556202, 18.750614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.759783, 36.817078, 18.510931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709314, 0.131305, 0.692556,
		0.530359, -0.746595, -0.401641,
		0.464321, 0.652192, -0.599209,
		27.899078, 37.012733, 18.331169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.305813, 36.484127, 18.885286>,  <27.574055, 36.556202, 18.750614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.305813, 36.484127, 18.885286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.304977, 36.837906, 18.698633>,  <28.304476, 37.050175, 18.586641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.304977, 36.837906, 18.698633>,  <28.305813, 36.484127, 18.885286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.304977, 36.837906, 18.698633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809155, 0.275685, 0.518908,
		0.587591, -0.376493, -0.716233,
		-0.002090, 0.884450, -0.466631,
		28.304350, 37.103241, 18.558643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.891014, 36.590462, 18.604742>,  <28.305813, 36.484127, 18.885286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.891014, 36.590462, 18.604742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.768745, 36.966476, 18.665260>,  <28.695385, 37.192085, 18.701571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.768745, 36.966476, 18.665260>,  <28.891014, 36.590462, 18.604742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.768745, 36.966476, 18.665260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888283, 0.224338, 0.400781,
		0.342809, 0.256901, -0.903595,
		-0.305672, 0.940040, 0.151296,
		28.677044, 37.248489, 18.710649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.535885, 37.043858, 18.559845>,  <28.891014, 36.590462, 18.604742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.535885, 37.043858, 18.559845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.267996, 37.278545, 18.741934>,  <29.107262, 37.419357, 18.851187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.267996, 37.278545, 18.741934>,  <29.535885, 37.043858, 18.559845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.267996, 37.278545, 18.741934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726439, 0.390388, 0.565583,
		0.154128, 0.709474, -0.687671,
		-0.669724, 0.586723, 0.455220,
		29.067078, 37.454563, 18.878500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.931162, 37.552982, 18.701693>,  <29.535885, 37.043858, 18.559845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.931162, 37.552982, 18.701693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.620241, 37.626305, 18.942427>,  <29.433689, 37.670296, 19.086866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.620241, 37.626305, 18.942427>,  <29.931162, 37.552982, 18.701693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.620241, 37.626305, 18.942427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629113, 0.219586, 0.745653,
		0.004526, 0.958218, -0.286003,
		-0.777301, 0.183303, 0.601834,
		29.387051, 37.681297, 19.122976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.022730, 38.239567, 19.007181>,  <29.931162, 37.552982, 18.701693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.022730, 38.239567, 19.007181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.799461, 38.028660, 19.263441>,  <29.665501, 37.902115, 19.417196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.799461, 38.028660, 19.263441>,  <30.022730, 38.239567, 19.007181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.799461, 38.028660, 19.263441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724679, 0.066236, 0.685896,
		-0.404087, 0.847112, 0.345131,
		-0.558171, -0.527270, 0.640649,
		29.632010, 37.870480, 19.455635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.185646, 38.533714, 19.628294>,  <30.022730, 38.239567, 19.007181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.185646, 38.533714, 19.628294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.031887, 38.176216, 19.720772>,  <29.939631, 37.961716, 19.776258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.031887, 38.176216, 19.720772>,  <30.185646, 38.533714, 19.628294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.031887, 38.176216, 19.720772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622523, -0.066025, 0.779812,
		-0.681691, 0.443682, 0.581759,
		-0.384399, -0.893749, 0.231193,
		29.916567, 37.908092, 19.790131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.992329, 38.594372, 20.259577>,  <30.185646, 38.533714, 19.628294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.992329, 38.594372, 20.259577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.026194, 38.197826, 20.219524>,  <30.046513, 37.959900, 20.195494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.026194, 38.197826, 20.219524>,  <29.992329, 38.594372, 20.259577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.026194, 38.197826, 20.219524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375710, -0.061312, 0.924707,
		-0.922862, -0.115906, 0.367276,
		0.084661, -0.991366, -0.100130,
		30.051592, 37.900417, 20.189486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.846867, 38.371677, 20.898483>,  <29.992329, 38.594372, 20.259577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.846867, 38.371677, 20.898483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.003288, 38.055740, 20.709499>,  <30.097141, 37.866177, 20.596109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.003288, 38.055740, 20.709499>,  <29.846867, 38.371677, 20.898483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.003288, 38.055740, 20.709499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497286, -0.250630, 0.830597,
		-0.774457, -0.559756, 0.294770,
		0.391053, -0.789847, -0.472461,
		30.120604, 37.818787, 20.567760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.733841, 37.827656, 21.279165>,  <29.846867, 38.371677, 20.898483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.733841, 37.827656, 21.279165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.012863, 37.656445, 21.049309>,  <30.180277, 37.553719, 20.911394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.012863, 37.656445, 21.049309>,  <29.733841, 37.827656, 21.279165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.012863, 37.656445, 21.049309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433923, -0.385855, 0.814142,
		-0.570202, -0.817257, -0.083424,
		0.697553, -0.428026, -0.574643,
		30.222130, 37.528038, 20.876917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.692318, 37.158615, 21.385904>,  <29.733841, 37.827656, 21.279165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.692318, 37.158615, 21.385904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.058233, 37.200031, 21.229731>,  <30.277782, 37.224880, 21.136026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.058233, 37.200031, 21.229731>,  <29.692318, 37.158615, 21.385904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.058233, 37.200031, 21.229731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366334, -0.619902, 0.693917,
		-0.170181, -0.777817, -0.605011,
		0.914788, 0.103545, -0.390436,
		30.332670, 37.231094, 21.112600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.058668, 36.488758, 21.471218>,  <29.692318, 37.158615, 21.385904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.058668, 36.488758, 21.471218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.358847, 36.744793, 21.405350>,  <30.538954, 36.898415, 21.365829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.358847, 36.744793, 21.405350>,  <30.058668, 36.488758, 21.471218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.358847, 36.744793, 21.405350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584154, -0.525806, 0.618297,
		0.309181, -0.560192, -0.768500,
		0.750447, 0.640088, -0.164669,
		30.583981, 36.936821, 21.355949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.568865, 36.052872, 21.290440>,  <30.058668, 36.488758, 21.471218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.568865, 36.052872, 21.290440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.728848, 36.391579, 21.430737>,  <30.824837, 36.594803, 21.514914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.728848, 36.391579, 21.430737>,  <30.568865, 36.052872, 21.290440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.728848, 36.391579, 21.430737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481977, -0.519810, 0.705334,
		0.779573, -0.113053, -0.616023,
		0.399955, 0.846768, 0.350741,
		30.848833, 36.645611, 21.535959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.380882, 36.014397, 21.469318>,  <30.568865, 36.052872, 21.290440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.380882, 36.014397, 21.469318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.262272, 36.312061, 21.708752>,  <31.191105, 36.490658, 21.852411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.262272, 36.312061, 21.708752>,  <31.380882, 36.014397, 21.469318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.262272, 36.312061, 21.708752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632082, -0.316929, 0.707127,
		0.715922, 0.588035, -0.376391,
		-0.296526, 0.744158, 0.598583,
		31.173313, 36.535309, 21.888327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.948872, 36.248718, 21.748869>,  <31.380882, 36.014397, 21.469318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.948872, 36.248718, 21.748869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.659714, 36.349659, 22.006159>,  <31.486219, 36.410225, 22.160534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.659714, 36.349659, 22.006159>,  <31.948872, 36.248718, 21.748869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.659714, 36.349659, 22.006159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556300, -0.339583, 0.758428,
		0.409820, 0.906092, 0.105100,
		-0.722895, 0.252352, 0.643227,
		31.442844, 36.425365, 22.199127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.067589, 37.014004, 23.222095> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.772621, 37.208553, 23.409565>,  <37.595642, 37.325283, 23.522047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.772621, 37.208553, 23.409565>,  <38.067589, 37.014004, 23.222095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772621, 37.208553, 23.409565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575257, 0.088615, 0.813159,
		0.353966, 0.869247, -0.345135,
		-0.737419, 0.486372, 0.468674,
		37.551395, 37.354465, 23.550167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413204, 37.533951, 23.645901>,  <38.067589, 37.014004, 23.222095>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413204, 37.533951, 23.645901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.044147, 37.473003, 23.787609>,  <37.822712, 37.436436, 23.872635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.044147, 37.473003, 23.787609>,  <38.413204, 37.533951, 23.645901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044147, 37.473003, 23.787609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335038, 0.138242, 0.932008,
		-0.190981, 0.978608, -0.076500,
		-0.922646, -0.152365, 0.354273,
		37.767353, 37.427296, 23.893890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.343994, 37.976246, 24.209032>,  <38.413204, 37.533951, 23.645901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.343994, 37.976246, 24.209032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.047768, 37.718433, 24.285069>,  <37.870029, 37.563747, 24.330690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.047768, 37.718433, 24.285069>,  <38.343994, 37.976246, 24.209032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047768, 37.718433, 24.285069> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303546, -0.068489, 0.950352,
		-0.599514, 0.761503, 0.246366,
		-0.740569, -0.644533, 0.190091,
		37.825596, 37.525074, 24.342096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162453, 38.071331, 24.864811>,  <38.343994, 37.976246, 24.209032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162453, 38.071331, 24.864811> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.000023, 37.706833, 24.837282>,  <37.902565, 37.488132, 24.820765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.000023, 37.706833, 24.837282>,  <38.162453, 38.071331, 24.864811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000023, 37.706833, 24.837282> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090068, -0.114851, 0.989291,
		-0.909391, 0.395526, 0.128712,
		-0.406073, -0.911245, -0.068820,
		37.878201, 37.433460, 24.816635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842663, 38.035210, 25.499931>,  <38.162453, 38.071331, 24.864811>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842663, 38.035210, 25.499931> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.866325, 37.651470, 25.389553>,  <37.880524, 37.421227, 25.323326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.866325, 37.651470, 25.389553>,  <37.842663, 38.035210, 25.499931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.866325, 37.651470, 25.389553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161043, -0.263636, 0.951084,
		-0.985173, -0.100700, 0.138902,
		0.059155, -0.959352, -0.275944,
		37.884071, 37.363667, 25.306770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286682, 37.588509, 25.824312>,  <37.842663, 38.035210, 25.499931>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286682, 37.588509, 25.824312> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.587757, 37.342533, 25.730238>,  <37.768402, 37.194946, 25.673794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.587757, 37.342533, 25.730238>,  <37.286682, 37.588509, 25.824312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587757, 37.342533, 25.730238> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085039, -0.263418, 0.960926,
		-0.652867, -0.743273, -0.145977,
		0.752684, -0.614944, -0.235184,
		37.813560, 37.158051, 25.659683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055027, 36.952919, 26.121220>,  <37.286682, 37.588509, 25.824312>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.055027, 36.952919, 26.121220> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.452320, 36.960464, 26.075396>,  <37.690697, 36.964993, 26.047901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.452320, 36.960464, 26.075396>,  <37.055027, 36.952919, 26.121220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.452320, 36.960464, 26.075396> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115783, -0.234291, 0.965247,
		-0.008631, -0.971984, -0.234891,
		0.993237, 0.018865, -0.114561,
		37.750290, 36.966125, 26.041027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238319, 36.406693, 26.467430>,  <37.055027, 36.952919, 26.121220>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238319, 36.406693, 26.467430> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.575443, 36.621204, 26.449215>,  <37.777718, 36.749912, 26.438286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.575443, 36.621204, 26.449215>,  <37.238319, 36.406693, 26.467430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575443, 36.621204, 26.449215> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189518, -0.216520, 0.957706,
		0.503744, -0.815793, -0.284121,
		0.842808, 0.536285, -0.045537,
		37.828285, 36.782089, 26.435555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761860, 35.975193, 26.824434>,  <37.238319, 36.406693, 26.467430>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761860, 35.975193, 26.824434> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.920162, 36.342369, 26.813332>,  <38.015144, 36.562675, 26.806669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.920162, 36.342369, 26.813332>,  <37.761860, 35.975193, 26.824434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920162, 36.342369, 26.813332> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162265, -0.040144, 0.985930,
		0.903907, -0.394690, -0.164836,
		0.395754, 0.917937, -0.027758,
		38.038887, 36.617748, 26.805004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196659, 35.947243, 27.388332>,  <37.761860, 35.975193, 26.824434>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196659, 35.947243, 27.388332> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.172009, 36.336815, 27.301001>,  <38.157219, 36.570557, 27.248602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.172009, 36.336815, 27.301001>,  <38.196659, 35.947243, 27.388332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172009, 36.336815, 27.301001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093955, 0.223436, 0.970180,
		0.993668, 0.039272, -0.105274,
		-0.061623, 0.973927, -0.218331,
		38.153522, 36.628994, 27.235500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775875, 36.202946, 27.774075>,  <38.196659, 35.947243, 27.388332>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.775875, 36.202946, 27.774075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.521488, 36.497864, 27.682909>,  <38.368858, 36.674816, 27.628210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.521488, 36.497864, 27.682909>,  <38.775875, 36.202946, 27.774075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.521488, 36.497864, 27.682909> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079137, 0.356081, 0.931098,
		0.767651, 0.574108, -0.284802,
		-0.635963, 0.737297, -0.227912,
		38.330700, 36.719051, 27.614534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092159, 36.885479, 27.926910>,  <38.775875, 36.202946, 27.774075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.092159, 36.885479, 27.926910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.693462, 36.911938, 27.945406>,  <38.454247, 36.927814, 27.956503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.693462, 36.911938, 27.945406>,  <39.092159, 36.885479, 27.926910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.693462, 36.911938, 27.945406> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051683, 0.083122, 0.995198,
		0.061986, 0.994342, -0.086270,
		-0.996738, 0.066147, 0.046238,
		38.394440, 36.931782, 27.959278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972725, 37.366055, 28.313787>,  <39.092159, 36.885479, 27.926910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972725, 37.366055, 28.313787> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.601315, 37.221756, 28.348913>,  <38.378468, 37.135178, 28.369989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.601315, 37.221756, 28.348913>,  <38.972725, 37.366055, 28.313787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601315, 37.221756, 28.348913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098232, 0.466785, 0.878899,
		-0.358048, 0.807450, -0.468856,
		-0.928521, -0.360745, 0.087814,
		38.322758, 37.113533, 28.375257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528320, 37.804367, 28.729204>,  <38.972725, 37.366055, 28.313787>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.528320, 37.804367, 28.729204> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.282471, 37.490417, 28.760719>,  <38.134960, 37.302048, 28.779629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.282471, 37.490417, 28.760719>,  <38.528320, 37.804367, 28.729204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.282471, 37.490417, 28.760719> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375666, 0.379071, 0.845683,
		-0.693623, 0.490179, -0.527837,
		-0.614624, -0.784875, 0.078789,
		38.098083, 37.254955, 28.784355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.729912, 38.046677, 29.440359>,  <38.528320, 37.804367, 28.729204>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.729912, 38.046677, 29.440359> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.793880, 38.429668, 29.344309>,  <38.832260, 38.659462, 29.286678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.793880, 38.429668, 29.344309>,  <38.729912, 38.046677, 29.440359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793880, 38.429668, 29.344309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768067, -0.032113, -0.639564,
		-0.620081, 0.286709, 0.730273,
		0.159918, 0.957479, -0.240124,
		38.841854, 38.716911, 29.272272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088531, 38.326153, 29.567625>,  <38.729912, 38.046677, 29.440359>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.088531, 38.326153, 29.567625> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.285610, 38.586018, 29.336044>,  <38.403858, 38.741936, 29.197096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.285610, 38.586018, 29.336044>,  <38.088531, 38.326153, 29.567625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285610, 38.586018, 29.336044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847201, 0.206168, -0.489638,
		-0.198737, 0.731735, 0.651972,
		0.492701, 0.649660, -0.578953,
		38.433422, 38.780914, 29.162359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800461, 39.037254, 29.720114>,  <38.088531, 38.326153, 29.567625>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800461, 39.037254, 29.720114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.963421, 39.071609, 29.356432>,  <38.061195, 39.092224, 29.138224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.963421, 39.071609, 29.356432>,  <37.800461, 39.037254, 29.720114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.963421, 39.071609, 29.356432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863563, 0.360143, -0.352924,
		0.297131, 0.928935, 0.220892,
		0.407396, 0.085889, -0.909204,
		38.085640, 39.097378, 29.083672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556118, 39.683678, 29.389410>,  <37.800461, 39.037254, 29.720114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556118, 39.683678, 29.389410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.697918, 39.484226, 29.073006>,  <37.782997, 39.364555, 28.883163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.697918, 39.484226, 29.073006>,  <37.556118, 39.683678, 29.389410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697918, 39.484226, 29.073006> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827975, 0.225701, -0.513338,
		0.434496, 0.836917, -0.332840,
		0.354499, -0.498627, -0.791013,
		37.804268, 39.334637, 28.835701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517509, 40.095520, 28.743065>,  <37.556118, 39.683678, 29.389410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517509, 40.095520, 28.743065> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.544518, 39.715645, 28.620733>,  <37.560722, 39.487720, 28.547335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.544518, 39.715645, 28.620733>,  <37.517509, 40.095520, 28.743065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.544518, 39.715645, 28.620733> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683390, 0.179314, -0.707690,
		0.726925, 0.256783, -0.636901,
		0.067517, -0.949689, -0.305830,
		37.564774, 39.430737, 28.528984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241264, 40.089874, 28.057400>,  <37.517509, 40.095520, 28.743065>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241264, 40.089874, 28.057400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.255981, 39.699512, 28.143433>,  <37.264812, 39.465298, 28.195053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.255981, 39.699512, 28.143433>,  <37.241264, 40.089874, 28.057400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.255981, 39.699512, 28.143433> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653412, -0.186339, -0.733710,
		0.756108, -0.113544, -0.644522,
		0.036791, -0.975903, 0.215083,
		37.267017, 39.406742, 28.207958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377632, 39.750568, 27.486164>,  <37.241264, 40.089874, 28.057400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.377632, 39.750568, 27.486164> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.178864, 39.504162, 27.730652>,  <37.059601, 39.356316, 27.877344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.178864, 39.504162, 27.730652>,  <37.377632, 39.750568, 27.486164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.178864, 39.504162, 27.730652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672569, -0.171691, -0.719843,
		0.548378, -0.768792, -0.328999,
		-0.496924, -0.616020, 0.611217,
		37.029785, 39.319355, 27.914017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077694, 39.258331, 26.993576>,  <37.377632, 39.750568, 27.486164>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077694, 39.258331, 26.993576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.844193, 39.180077, 27.308781>,  <36.704094, 39.133125, 27.497904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.844193, 39.180077, 27.308781>,  <37.077694, 39.258331, 26.993576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844193, 39.180077, 27.308781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793301, -0.069308, -0.604872,
		0.172949, -0.978225, -0.114739,
		-0.583749, -0.195634, 0.788013,
		36.669067, 39.121387, 27.545185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518929, 38.769176, 26.723579>,  <37.077694, 39.258331, 26.993576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518929, 38.769176, 26.723579> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.396881, 38.972961, 27.045412>,  <36.323654, 39.095230, 27.238512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.396881, 38.972961, 27.045412>,  <36.518929, 38.769176, 26.723579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.396881, 38.972961, 27.045412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925781, 0.039363, -0.376006,
		-0.223231, -0.859593, 0.459638,
		-0.305120, 0.509460, 0.804582,
		36.305344, 39.125797, 27.286787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.932877, 38.312817, 26.882477>,  <36.518929, 38.769176, 26.723579>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.932877, 38.312817, 26.882477> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.866898, 38.647717, 27.091017>,  <35.827309, 38.848656, 27.216141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.866898, 38.647717, 27.091017>,  <35.932877, 38.312817, 26.882477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.866898, 38.647717, 27.091017> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956007, -0.005714, -0.293289,
		-0.242577, -0.546789, 0.801360,
		-0.164946, 0.837251, 0.521348,
		35.817413, 38.898891, 27.247421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.306728, 38.213039, 27.149921>,  <35.932877, 38.312817, 26.882477>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.306728, 38.213039, 27.149921> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.353127, 38.610340, 27.149881>,  <35.380966, 38.848721, 27.149857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.353127, 38.610340, 27.149881>,  <35.306728, 38.213039, 27.149921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.353127, 38.610340, 27.149881> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845691, 0.098706, -0.524465,
		-0.520915, 0.060920, 0.851432,
		0.115992, 0.993250, -0.000102,
		35.387924, 38.908314, 27.149851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.651974, 38.445671, 27.379013>,  <35.306728, 38.213039, 27.149921>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.651974, 38.445671, 27.379013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.832672, 38.741127, 27.178879>,  <34.941090, 38.918400, 27.058798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.832672, 38.741127, 27.178879>,  <34.651974, 38.445671, 27.379013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.832672, 38.741127, 27.178879> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807983, 0.100941, -0.580495,
		-0.378273, 0.666499, 0.642408,
		0.451745, 0.738640, -0.500337,
		34.968197, 38.962719, 27.028778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170704, 38.989647, 27.287685>,  <34.651974, 38.445671, 27.379013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170704, 38.989647, 27.287685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.438072, 39.054276, 26.997276>,  <34.598492, 39.093052, 26.823030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.438072, 39.054276, 26.997276>,  <34.170704, 38.989647, 27.287685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.438072, 39.054276, 26.997276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739143, 0.035426, -0.672617,
		-0.082954, 0.986225, 0.143102,
		0.668421, 0.161569, -0.726022,
		34.638599, 39.102745, 26.779470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836571, 39.439198, 26.859129>,  <34.170704, 38.989647, 27.287685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.836571, 39.439198, 26.859129> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.155899, 39.358120, 26.632290>,  <34.347496, 39.309471, 26.496185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.155899, 39.358120, 26.632290>,  <33.836571, 39.439198, 26.859129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.155899, 39.358120, 26.632290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548770, 0.143043, -0.823645,
		0.248069, 0.968738, 0.002960,
		0.798319, -0.202696, -0.567098,
		34.395393, 39.297310, 26.462160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141270, 40.182663, 27.057076>,  <33.836571, 39.439198, 26.859129>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141270, 40.182663, 27.057076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.874424, 40.406574, 27.253691>,  <33.714317, 40.540920, 27.371660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.874424, 40.406574, 27.253691>,  <34.141270, 40.182663, 27.057076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874424, 40.406574, 27.253691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307755, -0.393796, 0.866148,
		0.678416, 0.729091, 0.090431,
		-0.667112, 0.559778, 0.491539,
		33.674290, 40.574509, 27.401152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.549393, 40.583900, 27.541864>,  <34.141270, 40.182663, 27.057076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.549393, 40.583900, 27.541864> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.178783, 40.604225, 27.690975>,  <33.956417, 40.616421, 27.780441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.178783, 40.604225, 27.690975>,  <34.549393, 40.583900, 27.541864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.178783, 40.604225, 27.690975> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371135, -0.039020, 0.927759,
		0.061685, 0.997946, 0.017296,
		-0.926528, 0.050810, 0.372779,
		33.900826, 40.619469, 27.802809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592903, 41.058712, 28.108374>,  <34.549393, 40.583900, 27.541864>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592903, 41.058712, 28.108374> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.293900, 40.796272, 28.149864>,  <34.114498, 40.638809, 28.174759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.293900, 40.796272, 28.149864>,  <34.592903, 41.058712, 28.108374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.293900, 40.796272, 28.149864> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178080, -0.047504, 0.982869,
		-0.639932, 0.753178, 0.152348,
		-0.747512, -0.656100, 0.103727,
		34.069645, 40.599442, 28.180983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.354691, 41.105274, 28.817974>,  <34.592903, 41.058712, 28.108374>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.354691, 41.105274, 28.817974> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.179440, 40.760780, 28.714966>,  <34.074287, 40.554085, 28.653160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.179440, 40.760780, 28.714966>,  <34.354691, 41.105274, 28.817974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.179440, 40.760780, 28.714966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132570, -0.345255, 0.929099,
		-0.889082, 0.372926, 0.265440,
		-0.438130, -0.861235, -0.257521,
		34.048000, 40.502411, 28.637709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.945602, 40.863773, 29.438246>,  <34.354691, 41.105274, 28.817974>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.945602, 40.863773, 29.438246> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.952751, 40.531067, 29.216309>,  <33.957039, 40.331444, 29.083147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.952751, 40.531067, 29.216309>,  <33.945602, 40.863773, 29.438246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.952751, 40.531067, 29.216309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016113, -0.555099, 0.831628,
		-0.999710, -0.005923, -0.023323,
		0.017872, -0.831763, -0.554843,
		33.958115, 40.281540, 29.049856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534706, 40.326691, 29.801849>,  <33.945602, 40.863773, 29.438246>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534706, 40.326691, 29.801849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.746090, 40.114033, 29.537098>,  <33.872921, 39.986439, 29.378246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.746090, 40.114033, 29.537098>,  <33.534706, 40.326691, 29.801849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.746090, 40.114033, 29.537098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231333, -0.659955, 0.714804,
		-0.816833, -0.530858, -0.225772,
		0.528459, -0.531647, -0.661878,
		33.904629, 39.954540, 29.338535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.174679, 39.779865, 29.860579>,  <33.534706, 40.326691, 29.801849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.174679, 39.779865, 29.860579> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.547142, 39.728222, 29.724178>,  <33.770618, 39.697235, 29.642338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.547142, 39.728222, 29.724178>,  <33.174679, 39.779865, 29.860579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.547142, 39.728222, 29.724178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177881, -0.655523, 0.733926,
		-0.318293, -0.744056, -0.587426,
		0.931154, -0.129111, -0.341002,
		33.826488, 39.689487, 29.621878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307758, 39.053997, 29.942335>,  <33.174679, 39.779865, 29.860579>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307758, 39.053997, 29.942335> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.655621, 39.250122, 29.919380>,  <33.864338, 39.367798, 29.905607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.655621, 39.250122, 29.919380>,  <33.307758, 39.053997, 29.942335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655621, 39.250122, 29.919380> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347812, -0.526084, 0.776056,
		0.350317, -0.694862, -0.628049,
		0.869658, 0.490308, -0.057386,
		33.916519, 39.397213, 29.902164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812222, 38.573910, 29.987595>,  <33.307758, 39.053997, 29.942335>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812222, 38.573910, 29.987595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.023762, 38.904957, 30.062805>,  <34.150688, 39.103584, 30.107931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.023762, 38.904957, 30.062805>,  <33.812222, 38.573910, 29.987595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.023762, 38.904957, 30.062805> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428062, -0.451410, 0.782938,
		0.732854, -0.333573, -0.593004,
		0.528855, 0.827622, 0.188028,
		34.182419, 39.153244, 30.119213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469040, 38.365551, 30.172649>,  <33.812222, 38.573910, 29.987595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469040, 38.365551, 30.172649> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.428123, 38.734947, 30.320545>,  <34.403572, 38.956585, 30.409283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.428123, 38.734947, 30.320545>,  <34.469040, 38.365551, 30.172649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428123, 38.734947, 30.320545> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302247, -0.325261, 0.896020,
		0.947725, 0.203411, -0.245848,
		-0.102295, 0.923488, 0.369739,
		34.397434, 39.011993, 30.431467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098167, 38.636547, 30.414614>,  <34.469040, 38.365551, 30.172649>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098167, 38.636547, 30.414614> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.811420, 38.816883, 30.627348>,  <34.639374, 38.925083, 30.754988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.811420, 38.816883, 30.627348>,  <35.098167, 38.636547, 30.414614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811420, 38.816883, 30.627348> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359599, -0.414430, 0.836024,
		0.597320, 0.790564, 0.134969,
		-0.716866, 0.450839, 0.531834,
		34.596359, 38.952133, 30.786898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390129, 38.800537, 31.059641>,  <35.098167, 38.636547, 30.414614>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390129, 38.800537, 31.059641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.001751, 38.804008, 31.155300>,  <34.768723, 38.806091, 31.212696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.001751, 38.804008, 31.155300>,  <35.390129, 38.800537, 31.059641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001751, 38.804008, 31.155300> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216322, -0.395526, 0.892616,
		0.102337, 0.918413, 0.382156,
		-0.970944, 0.008679, 0.239150,
		34.710468, 38.806614, 31.227045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<32.070843, 41.451397, 24.068062> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.737291, 41.483006, 24.286570>,  <31.537161, 41.501968, 24.417673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.737291, 41.483006, 24.286570>,  <32.070843, 41.451397, 24.068062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.737291, 41.483006, 24.286570> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549296, 0.215783, 0.807286,
		-0.054086, 0.973239, -0.223340,
		-0.833875, 0.079017, 0.546267,
		31.487129, 41.506710, 24.450449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.233673, 42.021473, 24.566021>,  <32.070843, 41.451397, 24.068062>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.233673, 42.021473, 24.566021> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.935953, 41.825497, 24.747561>,  <31.757320, 41.707912, 24.856485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.935953, 41.825497, 24.747561>,  <32.233673, 42.021473, 24.566021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.935953, 41.825497, 24.747561> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518617, 0.004152, 0.854997,
		-0.420778, 0.871748, 0.250999,
		-0.744300, -0.489936, 0.453850,
		31.712664, 41.678516, 24.883715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.196529, 42.312431, 25.289413>,  <32.233673, 42.021473, 24.566021>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.196529, 42.312431, 25.289413> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.005520, 41.961094, 25.298304>,  <31.890915, 41.750294, 25.303638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.005520, 41.961094, 25.298304>,  <32.196529, 42.312431, 25.289413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.005520, 41.961094, 25.298304> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485026, -0.242429, 0.840225,
		-0.732615, 0.412005, 0.541782,
		-0.477521, -0.878339, 0.022226,
		31.862263, 41.697594, 25.304972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.895363, 42.319893, 25.887936>,  <32.196529, 42.312431, 25.289413>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.895363, 42.319893, 25.887936> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.966917, 41.942566, 25.776108>,  <32.009850, 41.716171, 25.709011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.966917, 41.942566, 25.776108>,  <31.895363, 42.319893, 25.887936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.966917, 41.942566, 25.776108> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491619, -0.160437, 0.855904,
		-0.852239, -0.290549, 0.435051,
		0.178883, -0.943314, -0.279570,
		32.020580, 41.659573, 25.692236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.735332, 41.842274, 26.504923>,  <31.895363, 42.319893, 25.887936>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.735332, 41.842274, 26.504923> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.957903, 41.625217, 26.253231>,  <32.091446, 41.494984, 26.102215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.957903, 41.625217, 26.253231>,  <31.735332, 41.842274, 26.504923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.957903, 41.625217, 26.253231> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591518, -0.273131, 0.758621,
		-0.583522, -0.794317, 0.169005,
		0.556425, -0.542642, -0.629231,
		32.124832, 41.462425, 26.064463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.797527, 41.215939, 26.769430>,  <31.735332, 41.842274, 26.504923>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.797527, 41.215939, 26.769430> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.119041, 41.227242, 26.531731>,  <32.311951, 41.234024, 26.389111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.119041, 41.227242, 26.531731>,  <31.797527, 41.215939, 26.769430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.119041, 41.227242, 26.531731> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573294, -0.303672, 0.760997,
		-0.158953, -0.952357, -0.260287,
		0.803784, 0.028258, -0.594251,
		32.360176, 41.235718, 26.353455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.120018, 40.613846, 26.869158>,  <31.797527, 41.215939, 26.769430>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.120018, 40.613846, 26.869158> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.401203, 40.860207, 26.726883>,  <32.569912, 41.008022, 26.641518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.401203, 40.860207, 26.726883>,  <32.120018, 40.613846, 26.869158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.401203, 40.860207, 26.726883> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638914, -0.327136, 0.696255,
		0.312467, -0.716692, -0.623471,
		0.702960, 0.615901, -0.355686,
		32.612091, 41.044975, 26.620176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630558, 40.113071, 26.944799>,  <32.120018, 40.613846, 26.869158>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630558, 40.113071, 26.944799> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.795811, 40.475250, 26.905842>,  <32.894962, 40.692558, 26.882467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.795811, 40.475250, 26.905842>,  <32.630558, 40.113071, 26.944799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.795811, 40.475250, 26.905842> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676857, -0.233753, 0.698014,
		0.609248, -0.354298, -0.709430,
		0.413136, 0.905446, -0.097396,
		32.919750, 40.746883, 26.876623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287849, 40.030296, 26.728601>,  <32.630558, 40.113071, 26.944799>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.287849, 40.030296, 26.728601> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.275558, 40.377148, 26.927458>,  <33.268185, 40.585258, 27.046772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.275558, 40.377148, 26.927458>,  <33.287849, 40.030296, 26.728601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275558, 40.377148, 26.927458> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588848, -0.386198, 0.710006,
		0.807659, 0.314557, -0.498739,
		-0.030725, 0.867124, 0.497143,
		33.266342, 40.637283, 27.076601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952644, 40.048687, 26.272966>,  <33.287849, 40.030296, 26.728601>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952644, 40.048687, 26.272966> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142719, 39.730164, 26.123251>,  <34.256763, 39.539051, 26.033422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142719, 39.730164, 26.123251>,  <33.952644, 40.048687, 26.272966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.142719, 39.730164, 26.123251> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403569, 0.180754, -0.896917,
		0.781877, 0.577253, -0.235473,
		0.475185, -0.796308, -0.374289,
		34.285275, 39.491272, 26.010963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.282707, 40.243191, 25.713835>,  <33.952644, 40.048687, 26.272966>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.282707, 40.243191, 25.713835> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.301514, 39.853588, 25.625198>,  <34.312798, 39.619827, 25.572018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.301514, 39.853588, 25.625198>,  <34.282707, 40.243191, 25.713835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.301514, 39.853588, 25.625198> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131941, 0.213835, -0.967919,
		0.990142, 0.074748, -0.118456,
		0.047020, -0.974006, -0.221589,
		34.315620, 39.561386, 25.558722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.688145, 40.166225, 25.066383>,  <34.282707, 40.243191, 25.713835>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.688145, 40.166225, 25.066383> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.509121, 39.808681, 25.077042>,  <34.401707, 39.594154, 25.083437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.509121, 39.808681, 25.077042>,  <34.688145, 40.166225, 25.066383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509121, 39.808681, 25.077042> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068462, 0.004539, -0.997644,
		0.891631, -0.448327, -0.063227,
		-0.447557, -0.893859, 0.026646,
		34.374855, 39.540524, 25.085035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969425, 39.477200, 24.641783>,  <34.688145, 40.166225, 25.066383>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969425, 39.477200, 24.641783> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574795, 39.478310, 24.707087>,  <34.338017, 39.478977, 24.746269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574795, 39.478310, 24.707087>,  <34.969425, 39.477200, 24.641783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574795, 39.478310, 24.707087> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160845, 0.155533, -0.974648,
		-0.028099, -0.987827, -0.152999,
		-0.986579, 0.002778, 0.163258,
		34.278820, 39.479141, 24.756063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.775539, 39.211510, 23.975418>,  <34.969425, 39.477200, 24.641783>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.775539, 39.211510, 23.975418> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433517, 39.332211, 24.144096>,  <34.228306, 39.404633, 24.245304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433517, 39.332211, 24.144096>,  <34.775539, 39.211510, 23.975418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.433517, 39.332211, 24.144096> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363055, 0.232266, -0.902354,
		-0.370237, -0.924660, -0.089045,
		-0.855053, 0.301757, 0.421696,
		34.177002, 39.422737, 24.270605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.256130, 38.892445, 23.716730>,  <34.775539, 39.211510, 23.975418>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.256130, 38.892445, 23.716730> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068317, 39.216110, 23.858034>,  <33.955627, 39.410309, 23.942816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068317, 39.216110, 23.858034>,  <34.256130, 38.892445, 23.716730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.068317, 39.216110, 23.858034> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424908, 0.143633, -0.893769,
		-0.773944, -0.569760, 0.276378,
		-0.469537, 0.809162, 0.353259,
		33.927456, 39.458858, 23.964012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664806, 38.933502, 23.356337>,  <34.256130, 38.892445, 23.716730>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664806, 38.933502, 23.356337> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664997, 39.307388, 23.498491>,  <33.665112, 39.531719, 23.583784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664997, 39.307388, 23.498491>,  <33.664806, 38.933502, 23.356337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.664997, 39.307388, 23.498491> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506163, 0.306721, -0.806053,
		-0.862438, -0.179502, 0.473266,
		0.000473, 0.934720, 0.355385,
		33.665138, 39.587803, 23.605106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.073586, 39.150482, 23.097788>,  <33.664806, 38.933502, 23.356337>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.073586, 39.150482, 23.097788> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273834, 39.481293, 23.200083>,  <33.393982, 39.679779, 23.261459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273834, 39.481293, 23.200083>,  <33.073586, 39.150482, 23.097788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.273834, 39.481293, 23.200083> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407652, 0.485840, -0.773162,
		-0.763675, 0.282809, 0.580361,
		0.500620, 0.827030, 0.255737,
		33.424019, 39.729401, 23.276804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547081, 39.722080, 23.135267>,  <33.073586, 39.150482, 23.097788>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547081, 39.722080, 23.135267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.899826, 39.904099, 23.085876>,  <33.111473, 40.013309, 23.056242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.899826, 39.904099, 23.085876>,  <32.547081, 39.722080, 23.135267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899826, 39.904099, 23.085876> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294563, 0.327220, -0.897864,
		-0.368164, 0.828168, 0.422603,
		0.881866, 0.455045, -0.123477,
		33.164387, 40.040611, 23.048834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.456207, 40.397121, 23.008801>,  <32.547081, 39.722080, 23.135267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.456207, 40.397121, 23.008801> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.820061, 40.334534, 22.854874>,  <33.038372, 40.296982, 22.762518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.820061, 40.334534, 22.854874>,  <32.456207, 40.397121, 23.008801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.820061, 40.334534, 22.854874> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314469, 0.345914, -0.883998,
		0.271429, 0.925128, 0.265451,
		0.909635, -0.156467, -0.384815,
		33.092953, 40.287594, 22.739429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.667316, 41.056953, 22.547501>,  <32.456207, 40.397121, 23.008801>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.667316, 41.056953, 22.547501> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.902481, 40.752136, 22.438951>,  <33.043579, 40.569244, 22.373821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.902481, 40.752136, 22.438951>,  <32.667316, 41.056953, 22.547501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.902481, 40.752136, 22.438951> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145464, 0.230413, -0.962159,
		0.795738, 0.605140, 0.024612,
		0.587912, -0.762047, -0.271375,
		33.078854, 40.523521, 22.357538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.039799, 41.353500, 22.073786>,  <32.667316, 41.056953, 22.547501>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.039799, 41.353500, 22.073786> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.015850, 40.957798, 22.020447>,  <33.001480, 40.720375, 21.988443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.015850, 40.957798, 22.020447>,  <33.039799, 41.353500, 22.073786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015850, 40.957798, 22.020447> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361271, 0.146005, -0.920959,
		0.930537, -0.006963, -0.366132,
		-0.059870, -0.989259, -0.133348,
		32.997890, 40.661018, 21.980442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289986, 41.238091, 21.402561>,  <33.039799, 41.353500, 22.073786>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289986, 41.238091, 21.402561> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.100983, 40.891678, 21.467957>,  <32.987583, 40.683830, 21.507193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.100983, 40.891678, 21.467957>,  <33.289986, 41.238091, 21.402561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.100983, 40.891678, 21.467957> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345208, 0.011184, -0.938460,
		0.810908, -0.499861, -0.304246,
		-0.472503, -0.866033, 0.163487,
		32.959232, 40.631866, 21.517002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570534, 40.802670, 20.866360>,  <33.289986, 41.238091, 21.402561>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570534, 40.802670, 20.866360> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.229126, 40.638107, 20.994267>,  <33.024281, 40.539371, 21.071011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.229126, 40.638107, 20.994267>,  <33.570534, 40.802670, 20.866360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.229126, 40.638107, 20.994267> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354140, 0.007856, -0.935160,
		0.382215, -0.911420, -0.152399,
		-0.853520, -0.411402, 0.319767,
		32.973068, 40.514687, 21.090197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<27.403439, 36.754505, 22.782677> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.735271, 36.971313, 22.729000>,  <27.934372, 37.101398, 22.696795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.735271, 36.971313, 22.729000>,  <27.403439, 36.754505, 22.782677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.735271, 36.971313, 22.729000> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436971, -0.480563, 0.760339,
		0.347632, -0.689401, -0.635514,
		0.829583, 0.542019, -0.134189,
		27.984146, 37.133919, 22.688744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.057924, 36.294991, 22.821405>,  <27.403439, 36.754505, 22.782677>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.057924, 36.294991, 22.821405> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.231798, 36.649178, 22.887127>,  <28.336123, 36.861691, 22.926559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.231798, 36.649178, 22.887127>,  <28.057924, 36.294991, 22.821405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.231798, 36.649178, 22.887127> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672859, -0.440582, 0.594263,
		0.598591, -0.147762, -0.787309,
		0.434683, 0.885468, 0.164306,
		28.362204, 36.914818, 22.936419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.843575, 36.141373, 22.853403>,  <28.057924, 36.294991, 22.821405>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.843575, 36.141373, 22.853403> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.739956, 36.478039, 23.042925>,  <28.677786, 36.680038, 23.156637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.739956, 36.478039, 23.042925>,  <28.843575, 36.141373, 22.853403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.739956, 36.478039, 23.042925> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700963, -0.173660, 0.691732,
		0.664490, 0.511308, -0.544993,
		-0.259045, 0.841669, 0.473803,
		28.662243, 36.730541, 23.185066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.496574, 36.665413, 22.966709>,  <28.843575, 36.141373, 22.853403>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.496574, 36.665413, 22.966709> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.220667, 36.768532, 23.237341>,  <29.055122, 36.830402, 23.399719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.220667, 36.768532, 23.237341>,  <29.496574, 36.665413, 22.966709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.220667, 36.768532, 23.237341> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707241, 0.039838, 0.705849,
		0.155013, 0.965377, -0.209805,
		-0.689768, 0.257798, 0.676579,
		29.013737, 36.845871, 23.440315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.832474, 37.169422, 23.300438>,  <29.496574, 36.665413, 22.966709>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.832474, 37.169422, 23.300438> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.529366, 37.089859, 23.549025>,  <29.347500, 37.042122, 23.698175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.529366, 37.089859, 23.549025>,  <29.832474, 37.169422, 23.300438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.529366, 37.089859, 23.549025> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619989, 0.077494, 0.780774,
		-0.203463, 0.976949, 0.064600,
		-0.757771, -0.198910, 0.621465,
		29.302034, 37.030186, 23.735464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.959532, 37.649212, 23.851355>,  <29.832474, 37.169422, 23.300438>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.959532, 37.649212, 23.851355> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.727484, 37.353680, 23.988523>,  <29.588255, 37.176361, 24.070826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.727484, 37.353680, 23.988523>,  <29.959532, 37.649212, 23.851355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.727484, 37.353680, 23.988523> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576377, -0.074866, 0.813747,
		-0.575545, 0.669723, 0.469275,
		-0.580118, -0.738827, 0.342924,
		29.553448, 37.132030, 24.091400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.743191, 37.868664, 24.510086>,  <29.959532, 37.649212, 23.851355>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.743191, 37.868664, 24.510086> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.711849, 37.469917, 24.505747>,  <29.693045, 37.230671, 24.503143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.711849, 37.469917, 24.505747>,  <29.743191, 37.868664, 24.510086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.711849, 37.469917, 24.505747> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391189, -0.040753, 0.919408,
		-0.916969, 0.067796, 0.393156,
		-0.078355, -0.996866, -0.010848,
		29.688343, 37.170856, 24.502493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.529619, 37.736935, 25.238558>,  <29.743191, 37.868664, 24.510086>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.529619, 37.736935, 25.238558> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.632599, 37.377831, 25.095596>,  <29.694387, 37.162369, 25.009819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.632599, 37.377831, 25.095596>,  <29.529619, 37.736935, 25.238558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.632599, 37.377831, 25.095596> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284407, -0.283087, 0.915955,
		-0.923489, -0.337461, 0.182450,
		0.257450, -0.897765, -0.357404,
		29.709833, 37.108501, 24.988375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.218187, 37.192448, 25.645138>,  <29.529619, 37.736935, 25.238558>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.218187, 37.192448, 25.645138> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.535240, 37.030697, 25.462614>,  <29.725471, 36.933647, 25.353100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.535240, 37.030697, 25.462614>,  <29.218187, 37.192448, 25.645138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.535240, 37.030697, 25.462614> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339042, -0.329698, 0.881107,
		-0.506742, -0.853100, -0.124229,
		0.792630, -0.404375, -0.456309,
		29.773029, 36.909386, 25.325722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.205685, 36.524052, 25.861458>,  <29.218187, 37.192448, 25.645138>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.205685, 36.524052, 25.861458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.567621, 36.625805, 25.724897>,  <29.784782, 36.686859, 25.642962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.567621, 36.625805, 25.724897>,  <29.205685, 36.524052, 25.861458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.567621, 36.625805, 25.724897> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409360, -0.299445, 0.861834,
		0.117009, -0.919576, -0.375085,
		0.904839, 0.254387, -0.341400,
		29.839073, 36.702122, 25.622477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.652567, 35.883808, 25.913925>,  <29.205685, 36.524052, 25.861458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.652567, 35.883808, 25.913925> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.933346, 36.168320, 25.899221>,  <30.101812, 36.339027, 25.890400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.933346, 36.168320, 25.899221>,  <29.652567, 35.883808, 25.913925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.933346, 36.168320, 25.899221> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384721, -0.335228, 0.860007,
		0.599383, -0.617822, -0.508956,
		0.701947, 0.711280, -0.036759,
		30.143930, 36.381702, 25.888193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.285143, 35.543640, 26.151646>,  <29.652567, 35.883808, 25.913925>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.285143, 35.543640, 26.151646> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.339888, 35.935772, 26.208519>,  <30.372734, 36.171051, 26.242643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.339888, 35.935772, 26.208519>,  <30.285143, 35.543640, 26.151646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.339888, 35.935772, 26.208519> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389288, -0.185212, 0.902304,
		0.910892, -0.068141, -0.406980,
		0.136862, 0.980333, 0.142181,
		30.380947, 36.229874, 26.251173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.870468, 35.513908, 26.584335>,  <30.285143, 35.543640, 26.151646>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.870468, 35.513908, 26.584335> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.724566, 35.886005, 26.600349>,  <30.637024, 36.109264, 26.609959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.724566, 35.886005, 26.600349>,  <30.870468, 35.513908, 26.584335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.724566, 35.886005, 26.600349> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521010, 0.168277, 0.836798,
		0.771688, 0.326086, -0.546046,
		-0.364755, 0.930242, 0.040036,
		30.615139, 36.165077, 26.612360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.505819, 35.982761, 26.581968>,  <30.870468, 35.513908, 26.584335>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.505819, 35.982761, 26.581968> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.197945, 36.167076, 26.758720>,  <31.013220, 36.277664, 26.864771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.197945, 36.167076, 26.758720>,  <31.505819, 35.982761, 26.581968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.197945, 36.167076, 26.758720> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489552, -0.018276, 0.871782,
		0.409779, 0.887324, -0.211511,
		-0.769688, 0.460784, 0.441881,
		30.967039, 36.305313, 26.891285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.224625, 36.377762, 26.274334>,  <31.505819, 35.982761, 26.581968>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.224625, 36.377762, 26.274334> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.537136, 36.181870, 26.119530>,  <32.724644, 36.064335, 26.026648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.537136, 36.181870, 26.119530>,  <32.224625, 36.377762, 26.274334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537136, 36.181870, 26.119530> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443638, 0.000483, -0.896206,
		0.439083, 0.871876, -0.216884,
		0.781275, -0.489727, -0.387010,
		32.771519, 36.034950, 26.003428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.392155, 36.616318, 25.535208>,  <32.224625, 36.377762, 26.274334>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.392155, 36.616318, 25.535208> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.571770, 36.258999, 25.527315>,  <32.679539, 36.044609, 25.522579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.571770, 36.258999, 25.527315>,  <32.392155, 36.616318, 25.535208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.571770, 36.258999, 25.527315> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145350, -0.051238, -0.988053,
		0.881609, 0.446546, -0.152848,
		0.449042, -0.893293, -0.019733,
		32.706482, 35.991013, 25.521395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.763611, 36.706615, 24.941185>,  <32.392155, 36.616318, 25.535208>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.763611, 36.706615, 24.941185> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.725365, 36.313984, 25.007353>,  <32.702415, 36.078407, 25.047054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.725365, 36.313984, 25.007353>,  <32.763611, 36.706615, 24.941185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.725365, 36.313984, 25.007353> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289159, -0.131627, -0.948189,
		0.952494, -0.138497, -0.271246,
		-0.095618, -0.981577, 0.165422,
		32.696678, 36.019512, 25.056980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071766, 36.430912, 24.438498>,  <32.763611, 36.706615, 24.941185>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071766, 36.430912, 24.438498> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.861107, 36.110817, 24.553226>,  <32.734711, 35.918762, 24.622065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.861107, 36.110817, 24.553226>,  <33.071766, 36.430912, 24.438498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.861107, 36.110817, 24.553226> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456540, -0.018367, -0.889513,
		0.717088, -0.599405, -0.355666,
		-0.526647, -0.800235, 0.286823,
		32.703114, 35.870747, 24.639273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.199547, 35.844654, 23.893003>,  <33.071766, 36.430912, 24.438498>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.199547, 35.844654, 23.893003> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.848934, 35.767292, 24.069313>,  <32.638565, 35.720875, 24.175098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.848934, 35.767292, 24.069313>,  <33.199547, 35.844654, 23.893003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.848934, 35.767292, 24.069313> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435437, -0.071668, -0.897362,
		0.205143, -0.978498, -0.021395,
		-0.876534, -0.193404, 0.440776,
		32.585976, 35.709270, 24.201546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926395, 35.305004, 23.443687>,  <33.199547, 35.844654, 23.893003>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926395, 35.305004, 23.443687> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.631248, 35.469696, 23.657614>,  <32.454159, 35.568512, 23.785971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.631248, 35.469696, 23.657614>,  <32.926395, 35.305004, 23.443687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.631248, 35.469696, 23.657614> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515821, 0.167039, -0.840254,
		-0.435292, -0.895867, 0.089125,
		-0.737868, 0.411728, 0.534818,
		32.409889, 35.593216, 23.818060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.232796, 35.136688, 23.150663>,  <32.926395, 35.305004, 23.443687>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.232796, 35.136688, 23.150663> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.116772, 35.427128, 23.400028>,  <32.047157, 35.601391, 23.549646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.116772, 35.427128, 23.400028>,  <32.232796, 35.136688, 23.150663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.116772, 35.427128, 23.400028> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571866, 0.390818, -0.721270,
		-0.767356, -0.565718, 0.301873,
		-0.290058, 0.726102, 0.623412,
		32.029755, 35.644958, 23.587051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.400991, 35.164948, 23.039001>,  <32.232796, 35.136688, 23.150663>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.400991, 35.164948, 23.039001> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.548489, 35.500332, 23.199509>,  <31.636988, 35.701561, 23.295813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.548489, 35.500332, 23.199509>,  <31.400991, 35.164948, 23.039001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.548489, 35.500332, 23.199509> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500499, 0.542861, -0.674390,
		-0.783281, 0.047843, 0.619825,
		0.368744, 0.838459, 0.401267,
		31.659111, 35.751869, 23.319889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.871393, 35.620502, 23.092766>,  <31.400991, 35.164948, 23.039001>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.871393, 35.620502, 23.092766> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.189552, 35.862865, 23.098679>,  <31.380447, 36.008282, 23.102226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.189552, 35.862865, 23.098679>,  <30.871393, 35.620502, 23.092766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.189552, 35.862865, 23.098679> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440754, 0.594997, -0.672096,
		-0.416023, 0.528069, 0.740316,
		0.795399, 0.605905, 0.014784,
		31.428173, 36.044636, 23.103113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.549860, 36.221478, 23.178690>,  <30.871393, 35.620502, 23.092766>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.549860, 36.221478, 23.178690> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.912437, 36.285927, 23.022535>,  <31.129984, 36.324596, 22.928843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.912437, 36.285927, 23.022535>,  <30.549860, 36.221478, 23.178690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.912437, 36.285927, 23.022535> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405256, 0.592014, -0.696625,
		0.118870, 0.789657, 0.601923,
		0.906442, 0.161125, -0.390386,
		31.184370, 36.334263, 22.905420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.677494, 36.996811, 23.040609>,  <30.549860, 36.221478, 23.178690>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.677494, 36.996811, 23.040609> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.926163, 36.823898, 22.779335>,  <31.075363, 36.720150, 22.622570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.926163, 36.823898, 22.779335>,  <30.677494, 36.996811, 23.040609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.926163, 36.823898, 22.779335> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393467, 0.548717, -0.737627,
		0.677279, 0.715570, 0.171033,
		0.621672, -0.432284, -0.653188,
		31.112665, 36.694214, 22.583378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.911282, 37.559052, 22.623528>,  <30.677494, 36.996811, 23.040609>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.911282, 37.559052, 22.623528> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.980656, 37.238884, 22.394005>,  <31.022280, 37.046783, 22.256290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.980656, 37.238884, 22.394005>,  <30.911282, 37.559052, 22.623528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.980656, 37.238884, 22.394005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380124, 0.483084, -0.788756,
		0.908530, 0.354915, -0.220475,
		0.173433, -0.800416, -0.573808,
		31.032686, 36.998760, 22.221863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.126356, 37.912529, 21.982738>,  <30.911282, 37.559052, 22.623528>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.126356, 37.912529, 21.982738> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.025486, 37.545280, 21.860449>,  <30.964964, 37.324932, 21.787075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.025486, 37.545280, 21.860449>,  <31.126356, 37.912529, 21.982738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.025486, 37.545280, 21.860449> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241990, 0.365727, -0.898713,
		0.936936, -0.152649, -0.314402,
		-0.252173, -0.918119, -0.305724,
		30.949835, 37.269844, 21.768732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.568123, 37.764549, 21.263420>,  <31.126356, 37.912529, 21.982738>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.568123, 37.764549, 21.263420> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.266727, 37.501789, 21.274290>,  <31.085890, 37.344135, 21.280811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.266727, 37.501789, 21.274290>,  <31.568123, 37.764549, 21.263420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.266727, 37.501789, 21.274290> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382658, 0.404565, -0.830602,
		0.534628, -0.636248, -0.556203,
		-0.753489, -0.656898, 0.027173,
		31.040680, 37.304718, 21.282442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.088840, 37.238514, 20.915361>,  <31.568123, 37.764549, 21.263420>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.088840, 37.238514, 20.915361> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.408382, 37.288490, 20.679998>,  <32.600109, 37.318474, 20.538780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.408382, 37.288490, 20.679998>,  <32.088840, 37.238514, 20.915361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.408382, 37.288490, 20.679998> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594710, -0.310865, 0.741406,
		-0.090284, -0.942207, -0.322638,
		0.798854, 0.124939, -0.588406,
		32.648037, 37.325974, 20.503477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.681797, 36.909950, 21.317514>,  <32.088840, 37.238514, 20.915361>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.681797, 36.909950, 21.317514> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.864388, 37.090096, 21.010582>,  <32.973942, 37.198181, 20.826422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.864388, 37.090096, 21.010582>,  <32.681797, 36.909950, 21.317514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.864388, 37.090096, 21.010582> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871452, -0.052375, 0.487677,
		0.179444, -0.891307, -0.416378,
		0.456478, 0.450364, -0.767333,
		33.001331, 37.225204, 20.780382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.190697, 36.485752, 21.132761>,  <32.681797, 36.909950, 21.317514>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.190697, 36.485752, 21.132761> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.299461, 36.855690, 21.026384>,  <33.364719, 37.077652, 20.962559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.299461, 36.855690, 21.026384>,  <33.190697, 36.485752, 21.132761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.299461, 36.855690, 21.026384> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904367, -0.151125, 0.399101,
		0.328918, -0.349026, -0.877493,
		0.271908, 0.924847, -0.265940,
		33.381035, 37.133144, 20.946602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826912, 36.424202, 20.968403>,  <33.190697, 36.485752, 21.132761>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826912, 36.424202, 20.968403> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.792862, 36.816032, 21.041271>,  <33.772430, 37.051132, 21.084991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.792862, 36.816032, 21.041271>,  <33.826912, 36.424202, 20.968403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.792862, 36.816032, 21.041271> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900630, -0.002554, 0.434578,
		0.426167, 0.201062, -0.882018,
		-0.085125, 0.979575, 0.182171,
		33.767326, 37.109905, 21.095922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453396, 36.794411, 20.637070>,  <33.826912, 36.424202, 20.968403>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453396, 36.794411, 20.637070> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.289196, 37.036858, 20.909573>,  <34.190674, 37.182327, 21.073074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.289196, 37.036858, 20.909573>,  <34.453396, 36.794411, 20.637070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.289196, 37.036858, 20.909573> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899065, 0.144320, 0.413345,
		0.152216, 0.782173, -0.604182,
		-0.410503, 0.606117, 0.681256,
		34.166046, 37.218693, 21.113949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791016, 37.470551, 20.754599>,  <34.453396, 36.794411, 20.637070>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791016, 37.470551, 20.754599> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.600685, 37.446335, 21.105579>,  <34.486485, 37.431805, 21.316168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.600685, 37.446335, 21.105579>,  <34.791016, 37.470551, 20.754599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.600685, 37.446335, 21.105579> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852420, 0.214079, 0.477022,
		-0.216721, 0.974939, -0.050263,
		-0.475828, -0.060536, 0.877453,
		34.457935, 37.428173, 21.368814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861603, 38.127373, 21.048693>,  <34.791016, 37.470551, 20.754599>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.861603, 38.127373, 21.048693> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.806828, 37.851036, 21.332661>,  <34.773964, 37.685234, 21.503042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.806828, 37.851036, 21.332661>,  <34.861603, 38.127373, 21.048693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.806828, 37.851036, 21.332661> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823850, 0.318503, 0.468857,
		-0.550017, 0.649074, 0.525532,
		-0.136939, -0.690839, 0.709922,
		34.765747, 37.643784, 21.545637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.188332, 38.371723, 21.714848>,  <34.861603, 38.127373, 21.048693>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.188332, 38.371723, 21.714848> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.155468, 37.978779, 21.782043>,  <35.135750, 37.743011, 21.822361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.155468, 37.978779, 21.782043>,  <35.188332, 38.371723, 21.714848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155468, 37.978779, 21.782043> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792862, 0.037698, 0.608234,
		-0.603837, 0.183166, 0.775778,
		-0.082163, -0.982359, 0.167989,
		35.130817, 37.684071, 21.832439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.319702, 38.304802, 22.390211>,  <35.188332, 38.371723, 21.714848>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.319702, 38.304802, 22.390211> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.386269, 37.944912, 22.228813>,  <35.426208, 37.728977, 22.131975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.386269, 37.944912, 22.228813>,  <35.319702, 38.304802, 22.390211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.386269, 37.944912, 22.228813> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799875, -0.116123, 0.588825,
		-0.576634, -0.420733, 0.700340,
		0.166412, -0.899722, -0.403495,
		35.436192, 37.674995, 22.107765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.379425, 37.868492, 22.871231>,  <35.319702, 38.304802, 22.390211>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.379425, 37.868492, 22.871231> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.579033, 37.655880, 22.597454>,  <35.698795, 37.528313, 22.433187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.579033, 37.655880, 22.597454>,  <35.379425, 37.868492, 22.871231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.579033, 37.655880, 22.597454> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754918, -0.121201, 0.644522,
		-0.425537, -0.838324, 0.340780,
		0.499015, -0.531529, -0.684442,
		35.728737, 37.496422, 22.392122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637596, 37.372269, 23.301073>,  <35.379425, 37.868492, 22.871231>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637596, 37.372269, 23.301073> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.863945, 37.397881, 22.972273>,  <35.999756, 37.413246, 22.774992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.863945, 37.397881, 22.972273>,  <35.637596, 37.372269, 23.301073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863945, 37.397881, 22.972273> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820997, 0.047942, 0.568916,
		0.075837, -0.996796, -0.025440,
		0.565873, 0.064031, -0.822002,
		36.033707, 37.417088, 22.725672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.105915, 36.810028, 23.393110>,  <35.637596, 37.372269, 23.301073>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.105915, 36.810028, 23.393110> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.274834, 37.036804, 23.110197>,  <36.376183, 37.172871, 22.940449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.274834, 37.036804, 23.110197>,  <36.105915, 36.810028, 23.393110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.274834, 37.036804, 23.110197> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873362, -0.045558, 0.484936,
		0.242708, -0.822498, -0.514384,
		0.422293, 0.566941, -0.707281,
		36.401520, 37.206886, 22.898012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668961, 36.462318, 23.268663>,  <36.105915, 36.810028, 23.393110>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668961, 36.462318, 23.268663> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.733646, 36.842354, 23.161951>,  <36.772457, 37.070377, 23.097923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.733646, 36.842354, 23.161951>,  <36.668961, 36.462318, 23.268663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733646, 36.842354, 23.161951> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844642, 0.006544, 0.535291,
		0.510322, -0.311900, -0.801430,
		0.161713, 0.950092, -0.266783,
		36.782162, 37.127380, 23.081917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.361488, 36.548969, 23.212397>,  <36.668961, 36.462318, 23.268663>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.361488, 36.548969, 23.212397> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.215534, 36.916290, 23.273821>,  <37.127960, 37.136681, 23.310677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.215534, 36.916290, 23.273821>,  <37.361488, 36.548969, 23.212397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215534, 36.916290, 23.273821> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750229, 0.192320, 0.632589,
		0.551373, 0.346032, -0.759111,
		-0.364888, 0.918300, 0.153563,
		37.106068, 37.191780, 23.319889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.439144, 40.205067, 20.334307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.090630, 40.302380, 20.504801>,  <32.881519, 40.360767, 20.607098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.090630, 40.302380, 20.504801>,  <33.439144, 40.205067, 20.334307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.090630, 40.302380, 20.504801> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418127, 0.086764, -0.904235,
		-0.256964, -0.966068, 0.026126,
		-0.871286, 0.243279, 0.426234,
		32.829243, 40.375362, 20.632671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992462, 39.863976, 19.981546>,  <33.439144, 40.205067, 20.334307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992462, 39.863976, 19.981546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.738541, 40.104992, 20.175028>,  <32.586189, 40.249603, 20.291117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.738541, 40.104992, 20.175028>,  <32.992462, 39.863976, 19.981546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738541, 40.104992, 20.175028> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589388, 0.027206, -0.807392,
		-0.499650, -0.797621, 0.337863,
		-0.634800, 0.602545, 0.483701,
		32.548100, 40.285755, 20.320139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.271011, 39.604095, 19.826571>,  <32.992462, 39.863976, 19.981546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.271011, 39.604095, 19.826571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.205574, 39.979328, 19.948715>,  <32.166313, 40.204468, 20.022001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.205574, 39.979328, 19.948715>,  <32.271011, 39.604095, 19.826571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.205574, 39.979328, 19.948715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545120, 0.172030, -0.820518,
		-0.822242, -0.300687, 0.483224,
		-0.163590, 0.938079, 0.305361,
		32.156498, 40.260754, 20.040323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.582508, 39.687695, 19.615486>,  <32.271011, 39.604095, 19.826571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.582508, 39.687695, 19.615486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.732470, 40.054287, 19.671358>,  <31.822447, 40.274242, 19.704882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.732470, 40.054287, 19.671358>,  <31.582508, 39.687695, 19.615486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.732470, 40.054287, 19.671358> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500497, 0.326917, -0.801641,
		-0.780351, 0.230631, 0.581259,
		0.374906, 0.916480, 0.139680,
		31.844942, 40.329231, 19.713263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.073509, 40.154240, 19.412930>,  <31.582508, 39.687695, 19.615486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.073509, 40.154240, 19.412930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.403088, 40.380493, 19.426620>,  <31.600834, 40.516247, 19.434835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.403088, 40.380493, 19.426620>,  <31.073509, 40.154240, 19.412930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.403088, 40.380493, 19.426620> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306936, 0.496245, -0.812115,
		-0.476345, 0.658634, 0.582492,
		0.823945, 0.565635, 0.034225,
		31.650270, 40.550182, 19.436888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.869623, 40.875927, 19.383091>,  <31.073509, 40.154240, 19.412930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.869623, 40.875927, 19.383091> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.245819, 40.842030, 19.251459>,  <31.471537, 40.821690, 19.172480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.245819, 40.842030, 19.251459>,  <30.869623, 40.875927, 19.383091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.245819, 40.842030, 19.251459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256247, 0.459180, -0.850583,
		0.223191, 0.884292, 0.410139,
		0.940491, -0.084746, -0.329082,
		31.527966, 40.816605, 19.152735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.014482, 41.550190, 19.107239>,  <30.869623, 40.875927, 19.383091>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.014482, 41.550190, 19.107239> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.269474, 41.297520, 18.930782>,  <31.422468, 41.145916, 18.824907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.269474, 41.297520, 18.930782>,  <31.014482, 41.550190, 19.107239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.269474, 41.297520, 18.930782> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317382, 0.306433, -0.897422,
		0.702062, 0.712098, -0.005139,
		0.637478, -0.631677, -0.441142,
		31.460718, 41.108017, 18.798439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.339710, 42.005627, 18.569544>,  <31.014482, 41.550190, 19.107239>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.339710, 42.005627, 18.569544> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.427439, 41.637714, 18.439371>,  <31.480076, 41.416969, 18.361267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.427439, 41.637714, 18.439371>,  <31.339710, 42.005627, 18.569544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.427439, 41.637714, 18.439371> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233459, 0.274389, -0.932849,
		0.947309, 0.280569, -0.154552,
		0.219321, -0.919778, -0.325432,
		31.493235, 41.361782, 18.341742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.785088, 42.039276, 17.991011>,  <31.339710, 42.005627, 18.569544>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.785088, 42.039276, 17.991011> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.636744, 41.672897, 17.929678>,  <31.547737, 41.453072, 17.892878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.636744, 41.672897, 17.929678>,  <31.785088, 42.039276, 17.991011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.636744, 41.672897, 17.929678> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428919, 0.315376, -0.846503,
		0.823705, -0.248169, -0.509826,
		-0.370862, -0.915943, -0.153332,
		31.525484, 41.398113, 17.883678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.901556, 41.861507, 17.266186>,  <31.785088, 42.039276, 17.991011>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.901556, 41.861507, 17.266186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.613794, 41.614342, 17.393076>,  <31.441137, 41.466042, 17.469210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.613794, 41.614342, 17.393076>,  <31.901556, 41.861507, 17.266186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.613794, 41.614342, 17.393076> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404177, 0.000984, -0.914680,
		0.564886, -0.786242, -0.250456,
		-0.719406, -0.617919, 0.317225,
		31.397972, 41.428967, 17.488243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.820227, 41.446754, 16.676657>,  <31.901556, 41.861507, 17.266186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.820227, 41.446754, 16.676657> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.487228, 41.416298, 16.896166>,  <31.287430, 41.398026, 17.027872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.487228, 41.416298, 16.896166>,  <31.820227, 41.446754, 16.676657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.487228, 41.416298, 16.896166> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553974, 0.100135, -0.826490,
		0.007979, -0.992056, -0.125542,
		-0.832496, -0.076142, 0.548775,
		31.237480, 41.393456, 17.060799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.527901, 40.843342, 16.411156>,  <31.820227, 41.446754, 16.676657>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.527901, 40.843342, 16.411156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.233759, 41.060905, 16.572855>,  <31.057274, 41.191444, 16.669874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.233759, 41.060905, 16.572855>,  <31.527901, 40.843342, 16.411156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.233759, 41.060905, 16.572855> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414320, 0.111212, -0.903311,
		-0.536280, -0.831739, 0.143574,
		-0.735352, 0.543913, 0.404247,
		31.013153, 41.224079, 16.694130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.858059, 40.418941, 16.580698>,  <31.527901, 40.843342, 16.411156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.858059, 40.418941, 16.580698> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.217707, 40.343304, 16.738600>,  <31.433495, 40.297920, 16.833340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.217707, 40.343304, 16.738600>,  <30.858059, 40.418941, 16.580698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.217707, 40.343304, 16.738600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425137, -0.591853, 0.684813,
		0.104141, -0.783552, -0.612537,
		0.899118, -0.189095, 0.394753,
		31.487442, 40.286575, 16.857025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.501968, 40.125340, 16.079483>,  <30.858059, 40.418941, 16.580698>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.501968, 40.125340, 16.079483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.515589, 40.357952, 15.754358>,  <30.523762, 40.497520, 15.559283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.515589, 40.357952, 15.754358>,  <30.501968, 40.125340, 16.079483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.515589, 40.357952, 15.754358> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995402, -0.053117, -0.079703,
		-0.089524, 0.811789, 0.577047,
		0.034051, 0.581530, -0.812813,
		30.525805, 40.532410, 15.510514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.837015, 39.738064, 16.096010>,  <30.501968, 40.125340, 16.079483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.837015, 39.738064, 16.096010> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.679272, 39.370617, 16.086054>,  <29.584625, 39.150146, 16.080080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.679272, 39.370617, 16.086054>,  <29.837015, 39.738064, 16.096010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.679272, 39.370617, 16.086054> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542387, -0.254538, 0.800641,
		-0.741820, 0.302240, 0.598627,
		-0.394359, -0.918619, -0.024891,
		29.560965, 39.095032, 16.078587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.556318, 39.505669, 16.778250>,  <29.837015, 39.738064, 16.096010>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.556318, 39.505669, 16.778250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.624981, 39.163162, 16.583378>,  <29.666178, 38.957657, 16.466455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.624981, 39.163162, 16.583378>,  <29.556318, 39.505669, 16.778250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.624981, 39.163162, 16.583378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536969, -0.333282, 0.774976,
		-0.825953, -0.394629, 0.402578,
		0.171656, -0.856266, -0.487179,
		29.676477, 38.906284, 16.437223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.319254, 38.906860, 17.239571>,  <29.556318, 39.505669, 16.778250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.319254, 38.906860, 17.239571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.591166, 38.778130, 16.975956>,  <29.754313, 38.700890, 16.817787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.591166, 38.778130, 16.975956>,  <29.319254, 38.906860, 17.239571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.591166, 38.778130, 16.975956> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556727, -0.358538, 0.749336,
		-0.477449, -0.876285, -0.064554,
		0.679777, -0.321831, -0.659035,
		29.795099, 38.681580, 16.778246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.746691, 38.603535, 17.692722>,  <29.319254, 38.906860, 17.239571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.746691, 38.603535, 17.692722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.951269, 38.465069, 17.378120>,  <30.074017, 38.381989, 17.189360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.951269, 38.465069, 17.378120>,  <29.746691, 38.603535, 17.692722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.951269, 38.465069, 17.378120> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575392, -0.541836, 0.612647,
		-0.638237, -0.765885, -0.077936,
		0.511446, -0.346170, -0.786505,
		30.104704, 38.361217, 17.142170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.858992, 37.933167, 17.903772>,  <29.746691, 38.603535, 17.692722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.858992, 37.933167, 17.903772> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.146463, 37.979282, 17.629484>,  <30.318947, 38.006950, 17.464912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.146463, 37.979282, 17.629484>,  <29.858992, 37.933167, 17.903772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.146463, 37.979282, 17.629484> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656804, -0.436307, 0.615016,
		-0.228278, -0.892381, -0.389288,
		0.718678, 0.115292, -0.685718,
		30.362066, 38.013870, 17.423769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.179316, 37.252934, 17.805256>,  <29.858992, 37.933167, 17.903772>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.179316, 37.252934, 17.805256> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.422340, 37.550880, 17.694958>,  <30.568155, 37.729649, 17.628778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.422340, 37.550880, 17.694958>,  <30.179316, 37.252934, 17.805256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.422340, 37.550880, 17.694958> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723910, -0.376442, 0.578140,
		0.326838, -0.550871, -0.767931,
		0.607562, 0.744871, -0.275745,
		30.604609, 37.774342, 17.612234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.714434, 36.834938, 17.661985>,  <30.179316, 37.252934, 17.805256>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.714434, 36.834938, 17.661985> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.853188, 37.203606, 17.731495>,  <30.936440, 37.424805, 17.773201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.853188, 37.203606, 17.731495>,  <30.714434, 36.834938, 17.661985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.853188, 37.203606, 17.731495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791632, -0.387077, 0.472748,
		0.502981, -0.026424, -0.863894,
		0.346885, 0.921669, 0.173774,
		30.957253, 37.480106, 17.783627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.452414, 36.872681, 17.693045>,  <30.714434, 36.834938, 17.661985>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.452414, 36.872681, 17.693045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.396473, 37.227211, 17.869619>,  <31.362909, 37.439930, 17.975563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.396473, 37.227211, 17.869619>,  <31.452414, 36.872681, 17.693045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.396473, 37.227211, 17.869619> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743166, -0.200649, 0.638314,
		0.654329, 0.417329, -0.630627,
		-0.139852, 0.886328, 0.441435,
		31.354517, 37.493111, 18.002050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.106808, 37.110146, 17.671610>,  <31.452414, 36.872681, 17.693045>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.106808, 37.110146, 17.671610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.897194, 37.316650, 17.942568>,  <31.771425, 37.440552, 18.105143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.897194, 37.316650, 17.942568>,  <32.106808, 37.110146, 17.671610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.897194, 37.316650, 17.942568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733391, -0.130874, 0.667091,
		0.433045, 0.846374, -0.310037,
		-0.524033, 0.516259, 0.677397,
		31.739985, 37.471527, 18.145786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.548523, 37.526749, 18.024496>,  <32.106808, 37.110146, 17.671610>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.548523, 37.526749, 18.024496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.243530, 37.538170, 18.283047>,  <32.060535, 37.545021, 18.438177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.243530, 37.538170, 18.283047>,  <32.548523, 37.526749, 18.024496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243530, 37.538170, 18.283047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646685, 0.002148, 0.762754,
		0.020391, 0.999590, -0.020104,
		-0.762485, 0.028554, 0.646376,
		32.014786, 37.546738, 18.476959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.796860, 37.932880, 18.635899>,  <32.548523, 37.526749, 18.024496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.796860, 37.932880, 18.635899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.472656, 37.731644, 18.755882>,  <32.278133, 37.610901, 18.827873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.472656, 37.731644, 18.755882>,  <32.796860, 37.932880, 18.635899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.472656, 37.731644, 18.755882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366722, -0.036543, 0.929613,
		-0.456723, 0.863458, 0.214114,
		-0.810505, -0.503096, 0.299959,
		32.229504, 37.580715, 18.845869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.448898, 38.344913, 19.124374>,  <32.796860, 37.932880, 18.635899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.448898, 38.344913, 19.124374> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.355335, 37.962425, 19.194715>,  <32.299198, 37.732933, 19.236919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.355335, 37.962425, 19.194715>,  <32.448898, 38.344913, 19.124374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.355335, 37.962425, 19.194715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427009, 0.061457, 0.902157,
		-0.873471, 0.286110, 0.393941,
		-0.233905, -0.956224, 0.175853,
		32.285164, 37.675556, 19.247471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.165630, 38.384731, 19.840618>,  <32.448898, 38.344913, 19.124374>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.165630, 38.384731, 19.840618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.241974, 37.997578, 19.775166>,  <32.287781, 37.765285, 19.735895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.241974, 37.997578, 19.775166>,  <32.165630, 38.384731, 19.840618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.241974, 37.997578, 19.775166> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455990, -0.060200, 0.887946,
		-0.869280, -0.244083, 0.429856,
		0.190855, -0.967884, -0.163630,
		32.299229, 37.707214, 19.726076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.945452, 37.945152, 20.467541>,  <32.165630, 38.384731, 19.840618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.945452, 37.945152, 20.467541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.235249, 37.747993, 20.274809>,  <32.409126, 37.629696, 20.159170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.235249, 37.747993, 20.274809>,  <31.945452, 37.945152, 20.467541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.235249, 37.747993, 20.274809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565391, 0.025122, 0.824440,
		-0.394263, -0.869722, 0.296883,
		0.724493, -0.492901, -0.481829,
		32.452595, 37.600124, 20.130260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.482426, 37.448864, 20.600866>,  <31.945452, 37.945152, 20.467541>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.482426, 37.448864, 20.600866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.125278, 37.344757, 20.747862>,  <30.910990, 37.282291, 20.836060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.125278, 37.344757, 20.747862>,  <31.482426, 37.448864, 20.600866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.125278, 37.344757, 20.747862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444471, 0.378252, -0.812017,
		0.072341, -0.888361, -0.453411,
		-0.892867, -0.260270, 0.367488,
		30.857418, 37.266678, 20.858109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.142031, 37.230915, 20.039257>,  <31.482426, 37.448864, 20.600866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.142031, 37.230915, 20.039257> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.860933, 37.314903, 20.311157>,  <30.692274, 37.365295, 20.474298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.860933, 37.314903, 20.311157>,  <31.142031, 37.230915, 20.039257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.860933, 37.314903, 20.311157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606240, 0.323286, -0.726608,
		-0.372321, -0.922712, -0.099895,
		-0.702744, 0.209971, 0.679752,
		30.650110, 37.377895, 20.515083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.679340, 36.639816, 19.939913>,  <31.142031, 37.230915, 20.039257>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.679340, 36.639816, 19.939913> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.528708, 36.972160, 20.103792>,  <30.438328, 37.171566, 20.202120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.528708, 36.972160, 20.103792>,  <30.679340, 36.639816, 19.939913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.528708, 36.972160, 20.103792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717608, 0.018053, -0.696213,
		-0.585856, -0.556181, 0.589437,
		-0.376580, 0.830865, 0.409697,
		30.415733, 37.221420, 20.226702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.089300, 36.612949, 19.968657>,  <30.679340, 36.639816, 19.939913>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.089300, 36.612949, 19.968657> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.071476, 37.003555, 20.052977>,  <30.060781, 37.237919, 20.103569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.071476, 37.003555, 20.052977>,  <30.089300, 36.612949, 19.968657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.071476, 37.003555, 20.052977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742283, 0.108856, -0.661185,
		-0.668603, -0.185937, 0.719998,
		-0.044562, 0.976513, 0.210799,
		30.058107, 37.296509, 20.116217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.356730, 36.764938, 20.042086>,  <30.089300, 36.612949, 19.968657>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.356730, 36.764938, 20.042086> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.532480, 37.118988, 19.980757>,  <29.637932, 37.331417, 19.943960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.532480, 37.118988, 19.980757>,  <29.356730, 36.764938, 20.042086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.532480, 37.118988, 19.980757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782860, 0.293591, -0.548575,
		-0.440542, 0.361061, 0.821923,
		0.439378, 0.885121, -0.153321,
		29.664293, 37.384525, 19.934761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.851248, 37.310230, 20.269289>,  <29.356730, 36.764938, 20.042086>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.851248, 37.310230, 20.269289> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.077320, 37.474564, 19.983133>,  <29.212963, 37.573162, 19.811440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.077320, 37.474564, 19.983133>,  <28.851248, 37.310230, 20.269289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.077320, 37.474564, 19.983133> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819586, 0.180753, -0.543697,
		-0.094060, 0.893613, 0.438872,
		0.565182, 0.410834, -0.715391,
		29.246876, 37.597813, 19.768517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.456863, 37.890053, 20.056538>,  <28.851248, 37.310230, 20.269289>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.456863, 37.890053, 20.056538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.714891, 37.773586, 19.773949>,  <28.869709, 37.703705, 19.604395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.714891, 37.773586, 19.773949>,  <28.456863, 37.890053, 20.056538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.714891, 37.773586, 19.773949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735409, 0.014493, -0.677468,
		0.207497, 0.956562, -0.204780,
		0.645072, -0.291170, -0.706472,
		28.908413, 37.686234, 19.562008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.920670, 38.452694, 20.012840>,  <28.456863, 37.890053, 20.056538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.920670, 38.452694, 20.012840> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.678934, 38.646217, 20.266045>,  <27.533894, 38.762333, 20.417967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.678934, 38.646217, 20.266045>,  <27.920670, 38.452694, 20.012840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.678934, 38.646217, 20.266045> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544403, -0.329347, 0.771464,
		0.581724, 0.810837, -0.064352,
		-0.604337, 0.483812, 0.633011,
		27.497633, 38.791363, 20.455948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.358534, 38.890835, 20.517750>,  <27.920670, 38.452694, 20.012840>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.358534, 38.890835, 20.517750> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.011761, 38.758354, 20.666735>,  <27.803696, 38.678867, 20.756126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.011761, 38.758354, 20.666735>,  <28.358534, 38.890835, 20.517750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.011761, 38.758354, 20.666735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481348, -0.362435, 0.798088,
		-0.129336, 0.871175, 0.473631,
		-0.866935, -0.331203, 0.372463,
		27.751680, 38.658993, 20.778473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.455467, 38.765083, 21.271587>,  <28.358534, 38.890835, 20.517750>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.455467, 38.765083, 21.271587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.083235, 38.619946, 21.252134>,  <27.859896, 38.532864, 21.240463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.083235, 38.619946, 21.252134>,  <28.455467, 38.765083, 21.271587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.083235, 38.619946, 21.252134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126369, -0.443050, 0.887546,
		-0.343588, 0.819786, 0.458146,
		-0.930579, -0.362846, -0.048631,
		27.804062, 38.511093, 21.237545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.213566, 38.802364, 21.957516>,  <28.455467, 38.765083, 21.271587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.213566, 38.802364, 21.957516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.004555, 38.532806, 21.748585>,  <27.879148, 38.371071, 21.623226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.004555, 38.532806, 21.748585>,  <28.213566, 38.802364, 21.957516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.004555, 38.532806, 21.748585> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066671, -0.643035, 0.762929,
		-0.850011, 0.363829, 0.380934,
		-0.522529, -0.673895, -0.522330,
		27.847795, 38.330639, 21.591887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.626501, 38.673527, 22.277790>,  <28.213566, 38.802364, 21.957516>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.626501, 38.673527, 22.277790> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.678093, 38.357101, 22.038595>,  <27.709047, 38.167248, 21.895079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.678093, 38.357101, 22.038595>,  <27.626501, 38.673527, 22.277790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.678093, 38.357101, 22.038595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118329, -0.586439, 0.801303,
		-0.984562, -0.174111, 0.017967,
		0.128979, -0.791059, -0.597989,
		27.716787, 38.119785, 21.859200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.194777, 38.121574, 22.554352>,  <27.626501, 38.673527, 22.277790>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.194777, 38.121574, 22.554352> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.484743, 37.939186, 22.347824>,  <27.658724, 37.829754, 22.223907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.484743, 37.939186, 22.347824>,  <27.194777, 38.121574, 22.554352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.484743, 37.939186, 22.347824> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129835, -0.645676, 0.752493,
		-0.676493, -0.612529, -0.408858,
		0.724914, -0.455972, -0.516323,
		27.702219, 37.802395, 22.192928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.142841, 37.432568, 22.708664>,  <27.194777, 38.121574, 22.554352>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.142841, 37.432568, 22.708664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.518225, 37.445000, 22.571066>,  <27.743454, 37.452461, 22.488508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.518225, 37.445000, 22.571066>,  <27.142841, 37.432568, 22.708664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.518225, 37.445000, 22.571066> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283363, -0.638755, 0.715331,
		-0.197493, -0.768782, -0.608252,
		0.938457, 0.031083, -0.343994,
		27.799763, 37.454323, 22.467867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.536840, 43.745201, 18.997679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.605740, 43.409325, 18.791672>,  <29.647079, 43.207798, 18.668068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.605740, 43.409325, 18.791672>,  <29.536840, 43.745201, 18.997679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.605740, 43.409325, 18.791672> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278086, -0.543016, 0.792340,
		-0.944986, 0.006741, -0.327041,
		0.172247, -0.839696, -0.515017,
		29.657413, 43.157417, 18.637167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.958866, 43.254612, 19.127747>,  <29.536840, 43.745201, 18.997679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.958866, 43.254612, 19.127747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.278284, 43.036949, 19.024811>,  <29.469934, 42.906353, 18.963049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.278284, 43.036949, 19.024811>,  <28.958866, 43.254612, 19.127747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.278284, 43.036949, 19.024811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234006, -0.674529, 0.700180,
		-0.554585, -0.498908, -0.665978,
		0.798547, -0.544152, -0.257337,
		29.517847, 42.873703, 18.947609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.699966, 42.579021, 19.187004>,  <28.958866, 43.254612, 19.127747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.699966, 42.579021, 19.187004> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.097937, 42.547310, 19.211790>,  <29.336718, 42.528282, 19.226662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.097937, 42.547310, 19.211790>,  <28.699966, 42.579021, 19.187004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.097937, 42.547310, 19.211790> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092473, -0.477638, 0.873676,
		-0.039671, -0.874972, -0.482546,
		0.994925, -0.079282, 0.061963,
		29.396414, 42.523525, 19.230379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.786058, 41.983231, 19.400434>,  <28.699966, 42.579021, 19.187004>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.786058, 41.983231, 19.400434> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.142799, 42.140919, 19.489155>,  <29.356844, 42.235531, 19.542387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.142799, 42.140919, 19.489155>,  <28.786058, 41.983231, 19.400434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.142799, 42.140919, 19.489155> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005530, -0.499816, 0.866114,
		0.452296, -0.771218, -0.447942,
		0.891851, 0.394216, 0.221800,
		29.410355, 42.259182, 19.555695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.230297, 41.424541, 19.549870>,  <28.786058, 41.983231, 19.400434>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.230297, 41.424541, 19.549870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.378010, 41.746140, 19.736300>,  <29.466639, 41.939098, 19.848158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.378010, 41.746140, 19.736300>,  <29.230297, 41.424541, 19.549870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.378010, 41.746140, 19.736300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157182, -0.548337, 0.821353,
		0.915928, -0.230053, -0.328865,
		0.369283, 0.803991, 0.466077,
		29.488794, 41.987335, 19.876123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.782505, 41.226139, 19.887522>,  <29.230297, 41.424541, 19.549870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.782505, 41.226139, 19.887522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.702370, 41.566799, 20.081247>,  <29.654287, 41.771194, 20.197483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.702370, 41.566799, 20.081247>,  <29.782505, 41.226139, 19.887522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.702370, 41.566799, 20.081247> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112726, -0.471013, 0.874894,
		0.973220, 0.229870, -0.001641,
		-0.200340, 0.851649, 0.484312,
		29.642267, 41.822292, 20.226542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.368252, 41.378952, 20.299427>,  <29.782505, 41.226139, 19.887522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.368252, 41.378952, 20.299427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.040422, 41.550888, 20.450972>,  <29.843725, 41.654049, 20.541899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.040422, 41.550888, 20.450972>,  <30.368252, 41.378952, 20.299427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.040422, 41.550888, 20.450972> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287207, -0.263965, 0.920780,
		0.495796, 0.863458, 0.092885,
		-0.819572, 0.429841, 0.378863,
		29.794550, 41.679840, 20.564631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.628653, 41.572018, 20.940094>,  <30.368252, 41.378952, 20.299427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.628653, 41.572018, 20.940094> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.236240, 41.631950, 20.989294>,  <30.000793, 41.667912, 21.018814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.236240, 41.631950, 20.989294>,  <30.628653, 41.572018, 20.940094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.236240, 41.631950, 20.989294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102973, -0.134788, 0.985509,
		0.164242, 0.979481, 0.116803,
		-0.981031, 0.149834, 0.122998,
		29.941931, 41.676899, 21.026194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.532917, 42.172798, 21.266447>,  <30.628653, 41.572018, 20.940094>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.532917, 42.172798, 21.266447> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.234428, 41.918476, 21.345337>,  <30.055334, 41.765881, 21.392670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.234428, 41.918476, 21.345337>,  <30.532917, 42.172798, 21.266447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.234428, 41.918476, 21.345337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246209, 0.011655, 0.969146,
		-0.618491, 0.771758, 0.147845,
		-0.746224, -0.635809, 0.197223,
		30.010561, 41.727734, 21.404503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.118401, 42.448872, 21.811577>,  <30.532917, 42.172798, 21.266447>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.118401, 42.448872, 21.811577> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.018301, 42.062393, 21.836372>,  <29.958241, 41.830505, 21.851250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.018301, 42.062393, 21.836372>,  <30.118401, 42.448872, 21.811577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.018301, 42.062393, 21.836372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266731, -0.007254, 0.963744,
		-0.930715, 0.257711, 0.259529,
		-0.250249, -0.966195, 0.061988,
		29.943226, 41.772533, 21.854969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.779770, 42.382072, 22.477747>,  <30.118401, 42.448872, 21.811577>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.779770, 42.382072, 22.477747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.850666, 41.998104, 22.390905>,  <29.893204, 41.767723, 22.338800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.850666, 41.998104, 22.390905>,  <29.779770, 42.382072, 22.477747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.850666, 41.998104, 22.390905> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040427, -0.227512, 0.972935,
		-0.983337, -0.163665, -0.079131,
		0.177239, -0.959923, -0.217105,
		29.903837, 41.710129, 22.325773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.326494, 41.958996, 22.926346>,  <29.779770, 42.382072, 22.477747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.326494, 41.958996, 22.926346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.626593, 41.726238, 22.800789>,  <29.806652, 41.586582, 22.725454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.626593, 41.726238, 22.800789>,  <29.326494, 41.958996, 22.926346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.626593, 41.726238, 22.800789> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395857, 0.015081, 0.918189,
		-0.529557, -0.813123, 0.241663,
		0.750245, -0.581897, -0.313894,
		29.851665, 41.551670, 22.706621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.645603, 41.663513, 23.107197>,  <29.326494, 41.958996, 22.926346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.645603, 41.663513, 23.107197> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.303099, 41.720844, 23.305698>,  <28.097595, 41.755245, 23.424799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.303099, 41.720844, 23.305698>,  <28.645603, 41.663513, 23.107197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.303099, 41.720844, 23.305698> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491984, 0.066396, -0.868069,
		-0.157371, -0.987445, 0.013664,
		-0.856263, 0.143331, 0.496256,
		28.046219, 41.763844, 23.454575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.200733, 41.189888, 22.828360>,  <28.645603, 41.663513, 23.107197>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.200733, 41.189888, 22.828360> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.976776, 41.484867, 22.979458>,  <27.842402, 41.661854, 23.070116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.976776, 41.484867, 22.979458>,  <28.200733, 41.189888, 22.828360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.976776, 41.484867, 22.979458> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499177, 0.063660, -0.864158,
		-0.661317, -0.672400, 0.332473,
		-0.559895, 0.737445, 0.377745,
		27.808807, 41.706100, 23.092781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.563972, 41.057194, 22.587172>,  <28.200733, 41.189888, 22.828360>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.563972, 41.057194, 22.587172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.514404, 41.438000, 22.699112>,  <27.484663, 41.666481, 22.766277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.514404, 41.438000, 22.699112>,  <27.563972, 41.057194, 22.587172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.514404, 41.438000, 22.699112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628662, 0.142882, -0.764440,
		-0.767742, -0.270664, 0.580787,
		-0.123922, 0.952011, 0.279853,
		27.477228, 41.723602, 22.783068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.837637, 41.139923, 22.436144>,  <27.563972, 41.057194, 22.587172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.837637, 41.139923, 22.436144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.037180, 41.484612, 22.473190>,  <27.156906, 41.691425, 22.495419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.037180, 41.484612, 22.473190>,  <26.837637, 41.139923, 22.436144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.037180, 41.484612, 22.473190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343399, 0.294640, -0.891776,
		-0.795751, 0.413063, 0.442898,
		0.498855, 0.861723, 0.092615,
		27.186836, 41.743130, 22.500975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.359047, 41.584244, 22.453112>,  <26.837637, 41.139923, 22.436144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.359047, 41.584244, 22.453112> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.680759, 41.804352, 22.363363>,  <26.873787, 41.936417, 22.309515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.680759, 41.804352, 22.363363>,  <26.359047, 41.584244, 22.453112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.680759, 41.804352, 22.363363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375053, 0.177167, -0.909916,
		-0.460945, 0.815978, 0.348871,
		0.804280, 0.550266, -0.224370,
		26.922043, 41.969433, 22.296053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.158119, 42.303715, 22.201876>,  <26.359047, 41.584244, 22.453112>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.158119, 42.303715, 22.201876> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.526150, 42.237766, 22.059734>,  <26.746967, 42.198196, 21.974449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.526150, 42.237766, 22.059734>,  <26.158119, 42.303715, 22.201876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.526150, 42.237766, 22.059734> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339222, 0.118361, -0.933231,
		0.195927, 0.979187, 0.052972,
		0.920077, -0.164875, -0.355351,
		26.802174, 42.188305, 21.953129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.275936, 42.896690, 21.741196>,  <26.158119, 42.303715, 22.201876>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.275936, 42.896690, 21.741196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.556541, 42.631432, 21.636803>,  <26.724905, 42.472275, 21.574167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.556541, 42.631432, 21.636803>,  <26.275936, 42.896690, 21.741196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.556541, 42.631432, 21.636803> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215268, 0.151921, -0.964665,
		0.679365, 0.732908, -0.036180,
		0.701515, -0.663148, -0.260982,
		26.766996, 42.432487, 21.558508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.670128, 43.266293, 21.213753>,  <26.275936, 42.896690, 21.741196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.670128, 43.266293, 21.213753> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.753773, 42.878986, 21.158993>,  <26.803959, 42.646603, 21.126137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.753773, 42.878986, 21.158993>,  <26.670128, 43.266293, 21.213753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.753773, 42.878986, 21.158993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085699, 0.121309, -0.988909,
		0.974130, 0.218523, -0.057612,
		0.209111, -0.968262, -0.136898,
		26.816505, 42.588509, 21.117924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.298233, 43.191948, 20.664104>,  <26.670128, 43.266293, 21.213753>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.298233, 43.191948, 20.664104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.066683, 42.865791, 20.666506>,  <26.927753, 42.670097, 20.667946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.066683, 42.865791, 20.666506>,  <27.298233, 43.191948, 20.664104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.066683, 42.865791, 20.666506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285138, 0.195522, -0.938332,
		0.763937, -0.544889, -0.345682,
		-0.578876, -0.815394, 0.006002,
		26.893021, 42.621174, 20.668306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.241549, 42.999855, 20.050262>,  <27.298233, 43.191948, 20.664104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.241549, 42.999855, 20.050262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.942186, 42.763767, 20.171278>,  <26.762569, 42.622116, 20.243887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.942186, 42.763767, 20.171278>,  <27.241549, 42.999855, 20.050262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.942186, 42.763767, 20.171278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455907, 0.126512, -0.880990,
		0.481702, -0.797268, -0.363767,
		-0.748406, -0.590219, 0.302539,
		26.717665, 42.586700, 20.262039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.097733, 42.606804, 19.487329>,  <27.241549, 42.999855, 20.050262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.097733, 42.606804, 19.487329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.766802, 42.606415, 19.712017>,  <26.568243, 42.606182, 19.846828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.766802, 42.606415, 19.712017>,  <27.097733, 42.606804, 19.487329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.766802, 42.606415, 19.712017> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559457, 0.091058, -0.823842,
		-0.050353, -0.995845, -0.075876,
		-0.827328, -0.000966, 0.561718,
		26.518602, 42.606125, 19.880533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.647530, 42.052555, 19.237913>,  <27.097733, 42.606804, 19.487329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.647530, 42.052555, 19.237913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.401531, 42.317604, 19.408894>,  <26.253931, 42.476631, 19.511482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.401531, 42.317604, 19.408894>,  <26.647530, 42.052555, 19.237913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.401531, 42.317604, 19.408894> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550289, 0.027600, -0.834518,
		-0.564766, -0.748447, 0.347659,
		-0.614997, 0.662620, 0.427450,
		26.217031, 42.516392, 19.537128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.938480, 41.973633, 18.937902>,  <26.647530, 42.052555, 19.237913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.938480, 41.973633, 18.937902> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.929012, 42.342602, 19.092087>,  <25.923332, 42.563984, 19.184597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.929012, 42.342602, 19.092087>,  <25.938480, 41.973633, 18.937902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.929012, 42.342602, 19.092087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660284, 0.275083, -0.698824,
		-0.750643, -0.271054, 0.602548,
		-0.023668, 0.922420, 0.385462,
		25.921911, 42.619328, 19.207726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.022892, 41.243412, 18.798914>,  <25.938480, 41.973633, 18.937902>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.022892, 41.243412, 18.798914> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.735979, 40.965595, 18.776588>,  <25.563831, 40.798904, 18.763193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.735979, 40.965595, 18.776588>,  <26.022892, 41.243412, 18.798914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.735979, 40.965595, 18.776588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439708, -0.513332, 0.736985,
		-0.540518, 0.504086, 0.673600,
		-0.717285, -0.694541, -0.055814,
		25.520794, 40.757233, 18.759844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.801538, 41.165363, 19.450026>,  <26.022892, 41.243412, 18.798914>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.801538, 41.165363, 19.450026> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.736610, 40.833145, 19.236916>,  <25.697653, 40.633816, 19.109049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.736610, 40.833145, 19.236916>,  <25.801538, 41.165363, 19.450026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.736610, 40.833145, 19.236916> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513552, -0.532154, 0.673109,
		-0.842565, -0.164348, 0.512907,
		-0.162321, -0.830543, -0.532776,
		25.687914, 40.583981, 19.077084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.755463, 40.687359, 19.966692>,  <25.801538, 41.165363, 19.450026>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.755463, 40.687359, 19.966692> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.824478, 40.443996, 19.656834>,  <25.865889, 40.297981, 19.470919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.824478, 40.443996, 19.656834>,  <25.755463, 40.687359, 19.966692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.824478, 40.443996, 19.656834> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439653, -0.656185, 0.613291,
		-0.881439, -0.446393, 0.154267,
		0.172541, -0.608403, -0.774645,
		25.876240, 40.261475, 19.424440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.661816, 40.013027, 20.217127>,  <25.755463, 40.687359, 19.966692>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.661816, 40.013027, 20.217127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.878428, 39.964474, 19.884378>,  <26.008394, 39.935341, 19.684729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.878428, 39.964474, 19.884378>,  <25.661816, 40.013027, 20.217127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.878428, 39.964474, 19.884378> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529767, -0.719054, 0.449787,
		-0.652755, -0.684272, -0.325088,
		0.541532, -0.121380, -0.831871,
		26.040888, 39.928059, 19.634817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.625967, 39.269501, 20.137407>,  <25.661816, 40.013027, 20.217127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.625967, 39.269501, 20.137407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.926628, 39.457829, 19.952648>,  <26.107025, 39.570824, 19.841793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.926628, 39.457829, 19.952648>,  <25.625967, 39.269501, 20.137407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.926628, 39.457829, 19.952648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640236, -0.689109, 0.339450,
		-0.158478, -0.550871, -0.819405,
		0.751653, 0.470818, -0.461896,
		26.152124, 39.599075, 19.814079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.977489, 38.749165, 19.851130>,  <25.625967, 39.269501, 20.137407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.977489, 38.749165, 19.851130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.236515, 39.052696, 19.878954>,  <26.391932, 39.234814, 19.895649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.236515, 39.052696, 19.878954>,  <25.977489, 38.749165, 19.851130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.236515, 39.052696, 19.878954> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652341, -0.599235, 0.464079,
		0.393840, -0.255143, -0.883058,
		0.647566, 0.758828, 0.069563,
		26.430784, 39.280346, 19.899822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.575405, 38.495224, 19.641262>,  <25.977489, 38.749165, 19.851130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.575405, 38.495224, 19.641262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.693188, 38.819126, 19.844275>,  <26.763857, 39.013470, 19.966082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.693188, 38.819126, 19.844275>,  <26.575405, 38.495224, 19.641262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.693188, 38.819126, 19.844275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767838, -0.516643, 0.378819,
		0.568964, 0.278156, -0.773892,
		0.294455, 0.809758, 0.507531,
		26.781525, 39.062054, 19.996534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.316191, 38.316971, 19.667450>,  <26.575405, 38.495224, 19.641262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.316191, 38.316971, 19.667450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.257708, 38.612877, 19.930166>,  <27.222618, 38.790421, 20.087795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.257708, 38.612877, 19.930166>,  <27.316191, 38.316971, 19.667450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.257708, 38.612877, 19.930166> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680536, -0.406647, 0.609516,
		0.717979, 0.536084, -0.443981,
		-0.146208, 0.739765, 0.656788,
		27.213844, 38.834805, 20.127203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.049679, 38.140491, 19.344116>,  <27.316191, 38.316971, 19.667450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.049679, 38.140491, 19.344116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.383327, 37.973129, 19.200354>,  <28.583517, 37.872711, 19.114096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.383327, 37.973129, 19.200354>,  <28.049679, 38.140491, 19.344116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.383327, 37.973129, 19.200354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469389, -0.196249, -0.860906,
		0.289674, 0.886805, -0.360091,
		0.834124, -0.418405, -0.359409,
		28.633564, 37.847607, 19.092531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.303061, 38.466145, 18.705824>,  <28.049679, 38.140491, 19.344116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.303061, 38.466145, 18.705824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.409122, 38.081070, 18.727465>,  <28.472759, 37.850025, 18.740450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.409122, 38.081070, 18.727465>,  <28.303061, 38.466145, 18.705824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.409122, 38.081070, 18.727465> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614879, -0.212046, -0.759578,
		0.742708, 0.168140, -0.648161,
		0.265156, -0.962686, 0.054103,
		28.488668, 37.792263, 18.743696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.340336, 38.225533, 17.984884>,  <28.303061, 38.466145, 18.705824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.340336, 38.225533, 17.984884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.311581, 37.878437, 18.181604>,  <28.294329, 37.670181, 18.299637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.311581, 37.878437, 18.181604>,  <28.340336, 38.225533, 17.984884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.311581, 37.878437, 18.181604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588643, -0.361142, -0.723240,
		0.805191, -0.341486, -0.484825,
		-0.071886, -0.867735, 0.491801,
		28.290014, 37.618118, 18.329145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.474670, 37.847637, 17.487064>,  <28.340336, 38.225533, 17.984884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.474670, 37.847637, 17.487064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.288696, 37.614655, 17.753771>,  <28.177111, 37.474865, 17.913795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.288696, 37.614655, 17.753771>,  <28.474670, 37.847637, 17.487064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.288696, 37.614655, 17.753771> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583274, -0.365060, -0.725619,
		0.666052, -0.726275, -0.170002,
		-0.464937, -0.582457, 0.666766,
		28.149216, 37.439919, 17.953800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.550247, 37.230701, 17.224924>,  <28.474670, 37.847637, 17.487064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.550247, 37.230701, 17.224924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.240044, 37.217453, 17.477112>,  <28.053923, 37.209503, 17.628424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.240044, 37.217453, 17.477112>,  <28.550247, 37.230701, 17.224924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.240044, 37.217453, 17.477112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579555, -0.358735, -0.731727,
		0.250407, -0.932852, 0.259006,
		-0.775507, -0.033122, 0.630469,
		28.007391, 37.207516, 17.666252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.258419, 36.486423, 17.093653>,  <28.550247, 37.230701, 17.224924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.258419, 36.486423, 17.093653> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.981188, 36.713085, 17.271887>,  <27.814850, 36.849083, 17.378828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.981188, 36.713085, 17.271887>,  <28.258419, 36.486423, 17.093653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.981188, 36.713085, 17.271887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695601, -0.363509, -0.619678,
		-0.189167, -0.739436, 0.646104,
		-0.693077, 0.566654, 0.445588,
		27.773266, 36.883083, 17.405563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.675934, 35.979961, 17.254740>,  <28.258419, 36.486423, 17.093653>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.675934, 35.979961, 17.254740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.513876, 36.345585, 17.247295>,  <27.416641, 36.564960, 17.242828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.513876, 36.345585, 17.247295>,  <27.675934, 35.979961, 17.254740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.513876, 36.345585, 17.247295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801148, -0.364757, -0.474462,
		-0.440476, -0.177318, 0.880079,
		-0.405146, 0.914063, -0.018609,
		27.392332, 36.619804, 17.241713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.052736, 35.814285, 17.307629>,  <27.675934, 35.979961, 17.254740>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.052736, 35.814285, 17.307629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.025175, 36.190048, 17.173309>,  <27.008638, 36.415508, 17.092718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.025175, 36.190048, 17.173309>,  <27.052736, 35.814285, 17.307629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.025175, 36.190048, 17.173309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862586, -0.225204, -0.453021,
		-0.501196, 0.258439, 0.825840,
		-0.068904, 0.939411, -0.335797,
		27.004503, 36.471870, 17.072571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.364735, 35.870808, 17.268410>,  <27.052736, 35.814285, 17.307629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.364735, 35.870808, 17.268410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.523277, 36.168068, 17.052767>,  <26.618402, 36.346424, 16.923382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.523277, 36.168068, 17.052767>,  <26.364735, 35.870808, 17.268410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.523277, 36.168068, 17.052767> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746535, -0.080921, -0.660407,
		-0.534405, 0.664216, 0.522712,
		0.396355, 0.743148, -0.539105,
		26.642183, 36.391014, 16.891035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.461994, 35.704834, 29.924189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.716030, 35.949509, 29.735508>,  <35.868450, 36.096313, 29.622299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.716030, 35.949509, 29.735508>,  <35.461994, 35.704834, 29.924189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716030, 35.949509, 29.735508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617764, 0.035616, -0.785557,
		-0.463712, 0.790300, 0.400496,
		0.635090, 0.611684, -0.471703,
		35.906555, 36.133015, 29.593998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042416, 36.250336, 29.743765>,  <35.461994, 35.704834, 29.924189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042416, 36.250336, 29.743765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.353603, 36.279724, 29.494169>,  <35.540318, 36.297359, 29.344412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.353603, 36.279724, 29.494169>,  <35.042416, 36.250336, 29.743765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.353603, 36.279724, 29.494169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627915, 0.125669, -0.768069,
		0.021984, 0.989348, 0.143902,
		0.777971, 0.073473, -0.623989,
		35.586994, 36.301765, 29.306973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945511, 36.874088, 29.349787>,  <35.042416, 36.250336, 29.743765>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945511, 36.874088, 29.349787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.192799, 36.631737, 29.149500>,  <35.341171, 36.486328, 29.029327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.192799, 36.631737, 29.149500>,  <34.945511, 36.874088, 29.349787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192799, 36.631737, 29.149500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533308, 0.144629, -0.833466,
		0.577395, 0.782302, -0.233706,
		0.618221, -0.605876, -0.500716,
		35.378265, 36.449974, 28.999285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085445, 37.288219, 28.720684>,  <34.945511, 36.874088, 29.349787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.085445, 37.288219, 28.720684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.161518, 36.898376, 28.673409>,  <35.207161, 36.664471, 28.645044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.161518, 36.898376, 28.673409>,  <35.085445, 37.288219, 28.720684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.161518, 36.898376, 28.673409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423183, 0.027244, -0.905635,
		0.885860, 0.222251, -0.407256,
		0.190183, -0.974609, -0.118187,
		35.218575, 36.605995, 28.637953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.105717, 37.145893, 27.978043>,  <35.085445, 37.288219, 28.720684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.105717, 37.145893, 27.978043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.048748, 36.778847, 28.126469>,  <35.014568, 36.558617, 28.215525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.048748, 36.778847, 28.126469>,  <35.105717, 37.145893, 27.978043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048748, 36.778847, 28.126469> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500672, -0.256602, -0.826730,
		0.853840, -0.303526, -0.422881,
		-0.142422, -0.917620, 0.371065,
		35.006020, 36.503559, 28.237787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208797, 36.678097, 27.337393>,  <35.105717, 37.145893, 27.978043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.208797, 36.678097, 27.337393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.990005, 36.490288, 27.614624>,  <34.858730, 36.377602, 27.780962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.990005, 36.490288, 27.614624>,  <35.208797, 36.678097, 27.337393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990005, 36.490288, 27.614624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556367, -0.414722, -0.720043,
		0.625514, -0.779455, -0.034385,
		-0.546981, -0.469527, 0.693077,
		34.825912, 36.349430, 27.822548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.018570, 36.118881, 26.993523>,  <35.208797, 36.678097, 27.337393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.018570, 36.118881, 26.993523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.757580, 36.118633, 27.296644>,  <34.600986, 36.118484, 27.478518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.757580, 36.118633, 27.296644>,  <35.018570, 36.118881, 26.993523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757580, 36.118633, 27.296644> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692062, -0.406931, -0.596203,
		0.308742, -0.913459, 0.265088,
		-0.652479, -0.000616, 0.757806,
		34.561836, 36.118450, 27.523987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764713, 35.395916, 27.046453>,  <35.018570, 36.118881, 26.993523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.764713, 35.395916, 27.046453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.518147, 35.661602, 27.215614>,  <34.370209, 35.821014, 27.317110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.518147, 35.661602, 27.215614>,  <34.764713, 35.395916, 27.046453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518147, 35.661602, 27.215614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715920, -0.249132, -0.652220,
		-0.327859, -0.704801, 0.629097,
		-0.616414, 0.664220, 0.422901,
		34.333221, 35.860867, 27.342485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.168129, 35.098106, 26.928699>,  <34.764713, 35.395916, 27.046453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.168129, 35.098106, 26.928699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.060642, 35.471058, 27.025417>,  <33.996151, 35.694828, 27.083448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.060642, 35.471058, 27.025417>,  <34.168129, 35.098106, 26.928699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060642, 35.471058, 27.025417> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804636, -0.079300, -0.588449,
		-0.529481, -0.352686, 0.771533,
		-0.268720, 0.932376, 0.241796,
		33.980026, 35.750771, 27.097956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.482750, 35.058548, 26.963234>,  <34.168129, 35.098106, 26.928699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.482750, 35.058548, 26.963234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.539337, 35.452740, 26.925663>,  <33.573292, 35.689255, 26.903120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.539337, 35.452740, 26.925663>,  <33.482750, 35.058548, 26.963234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539337, 35.452740, 26.925663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766670, 0.049044, -0.640165,
		-0.626261, 0.162576, 0.762473,
		0.141470, 0.985476, -0.093928,
		33.581779, 35.748383, 26.897484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880756, 35.323280, 27.069305>,  <33.482750, 35.058548, 26.963234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.880756, 35.323280, 27.069305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.093441, 35.592869, 26.864153>,  <33.221050, 35.754623, 26.741060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.093441, 35.592869, 26.864153>,  <32.880756, 35.323280, 27.069305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.093441, 35.592869, 26.864153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669384, -0.036573, -0.742016,
		-0.518854, 0.737853, 0.431699,
		0.531710, 0.673971, -0.512883,
		33.252953, 35.795059, 26.710289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.464840, 35.903282, 26.790342>,  <32.880756, 35.323280, 27.069305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.464840, 35.903282, 26.790342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.784309, 35.922276, 26.550388>,  <32.975990, 35.933674, 26.406416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.784309, 35.922276, 26.550388>,  <32.464840, 35.903282, 26.790342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784309, 35.922276, 26.550388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601138, 0.108300, -0.791773,
		0.027369, 0.992983, 0.115042,
		0.798676, 0.047486, -0.599884,
		33.023911, 35.936520, 26.370422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.845680, 36.281128, 27.142527>,  <32.464840, 35.903282, 26.790342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.845680, 36.281128, 27.142527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.461123, 36.327747, 27.242233>,  <31.230387, 36.355717, 27.302057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.461123, 36.327747, 27.242233>,  <31.845680, 36.281128, 27.142527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.461123, 36.327747, 27.242233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269087, 0.208812, 0.940207,
		0.057526, 0.970986, -0.232112,
		-0.961396, 0.116545, 0.249268,
		31.172703, 36.362709, 27.317013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.751711, 36.944809, 27.517195>,  <31.845680, 36.281128, 27.142527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.751711, 36.944809, 27.517195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.453722, 36.704796, 27.633797>,  <31.274929, 36.560787, 27.703758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.453722, 36.704796, 27.633797>,  <31.751711, 36.944809, 27.517195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.453722, 36.704796, 27.633797> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164452, 0.258301, 0.951964,
		-0.646506, 0.757127, -0.093751,
		-0.744974, -0.600033, 0.291504,
		31.230230, 36.524784, 27.721249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.425186, 37.318348, 28.109512>,  <31.751711, 36.944809, 27.517195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.425186, 37.318348, 28.109512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.337555, 36.928368, 28.124887>,  <31.284975, 36.694378, 28.134111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.337555, 36.928368, 28.124887>,  <31.425186, 37.318348, 28.109512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.337555, 36.928368, 28.124887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200659, -0.006469, 0.979640,
		-0.954851, 0.222331, 0.197050,
		-0.219079, -0.974950, 0.038436,
		31.271832, 36.635883, 28.136417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.340073, 37.216305, 28.787062>,  <31.425186, 37.318348, 28.109512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.340073, 37.216305, 28.787062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.341478, 36.828472, 28.689169>,  <31.342321, 36.595772, 28.630434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.341478, 36.828472, 28.689169>,  <31.340073, 37.216305, 28.787062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.341478, 36.828472, 28.689169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061569, -0.244060, 0.967804,
		-0.998097, -0.018467, 0.058839,
		0.003513, -0.969584, -0.244732,
		31.342531, 36.537598, 28.615749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.845341, 36.898338, 29.140629>,  <31.340073, 37.216305, 28.787062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.845341, 36.898338, 29.140629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.081619, 36.583691, 29.068726>,  <31.223387, 36.394901, 29.025583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.081619, 36.583691, 29.068726>,  <30.845341, 36.898338, 29.140629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.081619, 36.583691, 29.068726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055951, -0.182312, 0.981648,
		-0.804953, -0.589911, -0.063679,
		0.590694, -0.786618, -0.179758,
		31.258827, 36.347706, 29.014797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.563271, 36.344646, 29.620508>,  <30.845341, 36.898338, 29.140629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.563271, 36.344646, 29.620508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.927013, 36.218708, 29.511740>,  <31.145260, 36.143147, 29.446480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.927013, 36.218708, 29.511740>,  <30.563271, 36.344646, 29.620508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.927013, 36.218708, 29.511740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180613, -0.290027, 0.939821,
		-0.374765, -0.903745, -0.206873,
		0.909357, -0.314848, -0.271920,
		31.199821, 36.124256, 29.430164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.627987, 35.742859, 29.925632>,  <30.563271, 36.344646, 29.620508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.627987, 35.742859, 29.925632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.990532, 35.894295, 29.850615>,  <31.208059, 35.985157, 29.805603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.990532, 35.894295, 29.850615>,  <30.627987, 35.742859, 29.925632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.990532, 35.894295, 29.850615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277686, -0.199244, 0.939783,
		0.318424, -0.903865, -0.285717,
		0.906365, 0.378589, -0.187547,
		31.262442, 36.007870, 29.794350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.023491, 35.280056, 30.233845>,  <30.627987, 35.742859, 29.925632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.023491, 35.280056, 30.233845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.279358, 35.587074, 30.217339>,  <31.432878, 35.771286, 30.207436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.279358, 35.587074, 30.217339>,  <31.023491, 35.280056, 30.233845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.279358, 35.587074, 30.217339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151843, -0.073555, 0.985664,
		0.753505, -0.636763, -0.163597,
		0.639667, 0.767544, -0.041264,
		31.471258, 35.817337, 30.204960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.635365, 35.023506, 30.557819>,  <31.023491, 35.280056, 30.233845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.635365, 35.023506, 30.557819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.671137, 35.419880, 30.517723>,  <31.692600, 35.657703, 30.493666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.671137, 35.419880, 30.517723>,  <31.635365, 35.023506, 30.557819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.671137, 35.419880, 30.517723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283295, 0.071180, 0.956388,
		0.954854, -0.113929, -0.274362,
		0.089431, 0.990936, -0.100242,
		31.697966, 35.717159, 30.487650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.354149, 35.135544, 30.774023>,  <31.635365, 35.023506, 30.557819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.354149, 35.135544, 30.774023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.170128, 35.487061, 30.824757>,  <32.059715, 35.697971, 30.855198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.170128, 35.487061, 30.824757>,  <32.354149, 35.135544, 30.774023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.170128, 35.487061, 30.824757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379437, 0.065435, 0.922901,
		0.802734, 0.472707, -0.363548,
		-0.460050, 0.878787, 0.126836,
		32.032112, 35.750698, 30.862808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.814182, 35.541187, 30.962091>,  <32.354149, 35.135544, 30.774023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.814182, 35.541187, 30.962091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.471817, 35.690826, 31.104898>,  <32.266399, 35.780609, 31.190582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.471817, 35.690826, 31.104898>,  <32.814182, 35.541187, 30.962091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.471817, 35.690826, 31.104898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403074, 0.050141, 0.913793,
		0.323948, 0.926032, -0.193706,
		-0.855914, 0.374099, 0.357017,
		32.215042, 35.803055, 31.212004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071381, 36.099018, 31.433369>,  <32.814182, 35.541187, 30.962091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071381, 36.099018, 31.433369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.686085, 36.031185, 31.516714>,  <32.454906, 35.990486, 31.566721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.686085, 36.031185, 31.516714>,  <33.071381, 36.099018, 31.433369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.686085, 36.031185, 31.516714> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220761, -0.057643, 0.973623,
		-0.153097, 0.983829, 0.092961,
		-0.963237, -0.169581, 0.208366,
		32.397114, 35.980312, 31.579224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894646, 36.461597, 32.045830>,  <33.071381, 36.099018, 31.433369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.894646, 36.461597, 32.045830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.621922, 36.168987, 32.045197>,  <32.458286, 35.993420, 32.044815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.621922, 36.168987, 32.045197>,  <32.894646, 36.461597, 32.045830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.621922, 36.168987, 32.045197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001959, -0.000345, 0.999998,
		-0.731527, 0.681811, -0.001198,
		-0.681809, -0.731528, -0.001588,
		32.417377, 35.949528, 32.044720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.280731, 36.792492, 32.491482>,  <32.894646, 36.461597, 32.045830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.280731, 36.792492, 32.491482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.336178, 36.396736, 32.474056>,  <32.369446, 36.159283, 32.463600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.336178, 36.396736, 32.474056>,  <32.280731, 36.792492, 32.491482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.336178, 36.396736, 32.474056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130182, -0.025404, 0.991165,
		-0.981753, -0.143063, 0.125279,
		0.138616, -0.989388, -0.043565,
		32.377762, 36.099918, 32.460987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.297398, 37.502754, 32.839867>,  <32.280731, 36.792492, 32.491482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.297398, 37.502754, 32.839867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.324703, 37.856316, 33.024929>,  <32.341087, 38.068455, 33.135967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.324703, 37.856316, 33.024929>,  <32.297398, 37.502754, 32.839867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.324703, 37.856316, 33.024929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425860, 0.445180, -0.787691,
		-0.902210, -0.143254, 0.406811,
		0.068264, 0.883908, 0.462652,
		32.345181, 38.121487, 33.163723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.627028, 37.901871, 32.837582>,  <32.297398, 37.502754, 32.839867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.627028, 37.901871, 32.837582> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.951372, 38.133755, 32.869682>,  <32.145981, 38.272884, 32.888943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.951372, 38.133755, 32.869682>,  <31.627028, 37.901871, 32.837582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.951372, 38.133755, 32.869682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220867, 0.430110, -0.875342,
		-0.541961, 0.692056, 0.476798,
		0.810862, 0.579710, 0.080251,
		32.194630, 38.307667, 32.893757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.502581, 38.676895, 32.958237>,  <31.627028, 37.901871, 32.837582>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.502581, 38.676895, 32.958237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.843454, 38.643166, 32.751675>,  <32.047977, 38.622929, 32.627739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.843454, 38.643166, 32.751675>,  <31.502581, 38.676895, 32.958237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.843454, 38.643166, 32.751675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422110, 0.472416, -0.773722,
		0.309200, 0.877333, 0.366991,
		0.852184, -0.084324, -0.516402,
		32.099110, 38.617867, 32.596752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.630148, 39.342670, 32.686436>,  <31.502581, 38.676895, 32.958237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.630148, 39.342670, 32.686436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.863836, 39.095825, 32.475586>,  <32.004047, 38.947716, 32.349075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.863836, 39.095825, 32.475586>,  <31.630148, 39.342670, 32.686436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.863836, 39.095825, 32.475586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249430, 0.481528, -0.840188,
		0.772316, 0.622333, 0.127391,
		0.584219, -0.617116, -0.527120,
		32.039101, 38.910690, 32.317451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.960953, 39.816635, 32.211220>,  <31.630148, 39.342670, 32.686436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.960953, 39.816635, 32.211220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.987015, 39.460533, 32.030910>,  <32.002651, 39.246872, 31.922726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.987015, 39.460533, 32.030910>,  <31.960953, 39.816635, 32.211220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.987015, 39.460533, 32.030910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379549, 0.395668, -0.836295,
		0.922875, 0.225577, -0.312117,
		0.065154, -0.890259, -0.450770,
		32.006561, 39.193455, 31.895679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.287025, 39.940800, 31.571190>,  <31.960953, 39.816635, 32.211220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.287025, 39.940800, 31.571190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.083481, 39.600235, 31.520346>,  <31.961353, 39.395897, 31.489840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.083481, 39.600235, 31.520346>,  <32.287025, 39.940800, 31.571190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083481, 39.600235, 31.520346> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291427, 0.309320, -0.905203,
		0.810016, -0.423583, -0.405526,
		-0.508866, -0.851410, -0.127110,
		31.930820, 39.344810, 31.482212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.312817, 39.719379, 30.856663>,  <32.287025, 39.940800, 31.571190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.312817, 39.719379, 30.856663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.004868, 39.504543, 30.994549>,  <31.820099, 39.375641, 31.077280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.004868, 39.504543, 30.994549>,  <32.312817, 39.719379, 30.856663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.004868, 39.504543, 30.994549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568035, 0.330462, -0.753745,
		0.290921, -0.776093, -0.559503,
		-0.769871, -0.537098, 0.344710,
		31.773907, 39.343414, 31.097963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.066288, 39.206764, 30.253305>,  <32.312817, 39.719379, 30.856663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.066288, 39.206764, 30.253305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.776012, 39.259747, 30.523365>,  <31.601847, 39.291538, 30.685400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.776012, 39.259747, 30.523365>,  <32.066288, 39.206764, 30.253305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.776012, 39.259747, 30.523365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589873, 0.385321, -0.709632,
		-0.354146, -0.913226, -0.201490,
		-0.725693, 0.132460, 0.675148,
		31.558304, 39.299484, 30.725910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.486591, 39.001377, 29.866066>,  <32.066288, 39.206764, 30.253305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.486591, 39.001377, 29.866066> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.331446, 39.214848, 30.166668>,  <31.238359, 39.342930, 30.347029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.331446, 39.214848, 30.166668>,  <31.486591, 39.001377, 29.866066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.331446, 39.214848, 30.166668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604510, 0.468199, -0.644482,
		-0.695795, -0.704261, 0.141013,
		-0.387862, 0.533672, 0.751504,
		31.215088, 39.374950, 30.392118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.794750, 39.038464, 29.708353>,  <31.486591, 39.001377, 29.866066>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.794750, 39.038464, 29.708353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.822655, 39.324581, 29.986486>,  <30.839397, 39.496250, 30.153366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.822655, 39.324581, 29.986486>,  <30.794750, 39.038464, 29.708353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.822655, 39.324581, 29.986486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470583, 0.638197, -0.609308,
		-0.879594, -0.284704, 0.381128,
		0.069762, 0.715295, 0.695331,
		30.843584, 39.539169, 30.195086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.062120, 39.211975, 29.898851>,  <30.794750, 39.038464, 29.708353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.062120, 39.211975, 29.898851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.289223, 39.532207, 29.975513>,  <30.425484, 39.724346, 30.021511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.289223, 39.532207, 29.975513>,  <30.062120, 39.211975, 29.898851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.289223, 39.532207, 29.975513> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663269, 0.582778, -0.469514,
		-0.487574, 0.139450, 0.861873,
		0.567755, 0.800577, 0.191654,
		30.459549, 39.772381, 30.033010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.597868, 39.669025, 29.742607>,  <30.062120, 39.211975, 29.898851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.597868, 39.669025, 29.742607> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.932478, 39.884590, 29.782215>,  <30.133244, 40.013927, 29.805979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.932478, 39.884590, 29.782215>,  <29.597868, 39.669025, 29.742607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.932478, 39.884590, 29.782215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391773, 0.714612, -0.579520,
		-0.383069, 0.445989, 0.808920,
		0.836524, 0.538909, 0.099019,
		30.183435, 40.046265, 29.811920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.503923, 40.461464, 29.887094>,  <29.597868, 39.669025, 29.742607>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.503923, 40.461464, 29.887094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.844364, 40.424072, 29.680450>,  <30.048630, 40.401638, 29.556463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.844364, 40.424072, 29.680450>,  <29.503923, 40.461464, 29.887094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.844364, 40.424072, 29.680450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293430, 0.731277, -0.615738,
		0.435342, 0.675645, 0.594963,
		0.851103, -0.093476, -0.516610,
		30.099695, 40.396030, 29.525467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.540998, 41.141926, 29.689304>,  <29.503923, 40.461464, 29.887094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.540998, 41.141926, 29.689304> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.764891, 40.915684, 29.447052>,  <29.899227, 40.779938, 29.301701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.764891, 40.915684, 29.447052>,  <29.540998, 41.141926, 29.689304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.764891, 40.915684, 29.447052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357435, 0.494577, -0.792233,
		0.747623, 0.659913, 0.074665,
		0.559733, -0.565604, -0.605633,
		29.932810, 40.746002, 29.265362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.684031, 41.533485, 29.151344>,  <29.540998, 41.141926, 29.689304>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.684031, 41.533485, 29.151344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.789200, 41.184731, 28.986090>,  <29.852301, 40.975479, 28.886936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.789200, 41.184731, 28.986090>,  <29.684031, 41.533485, 29.151344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.789200, 41.184731, 28.986090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227279, 0.360182, -0.904773,
		0.937665, 0.331783, -0.103462,
		0.262923, -0.871888, -0.413137,
		29.868076, 40.923164, 28.862148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.118595, 41.734741, 28.596348>,  <29.684031, 41.533485, 29.151344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.118595, 41.734741, 28.596348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.997074, 41.366852, 28.496904>,  <29.924162, 41.146118, 28.437239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.997074, 41.366852, 28.496904>,  <30.118595, 41.734741, 28.596348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.997074, 41.366852, 28.496904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061796, 0.279413, -0.958180,
		0.950729, -0.275733, -0.141721,
		-0.303801, -0.919728, -0.248607,
		29.905933, 41.090935, 28.422321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.333946, 41.541183, 27.972391>,  <30.118595, 41.734741, 28.596348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.333946, 41.541183, 27.972391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.041033, 41.268948, 27.981874>,  <29.865284, 41.105606, 27.987564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.041033, 41.268948, 27.981874>,  <30.333946, 41.541183, 27.972391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.041033, 41.268948, 27.981874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151620, 0.129000, -0.979985,
		0.663908, -0.721220, -0.197656,
		-0.732283, -0.680588, 0.023707,
		29.821348, 41.064770, 27.988987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.392937, 41.201923, 27.336815>,  <30.333946, 41.541183, 27.972391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.392937, 41.201923, 27.336815> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.015417, 41.126404, 27.445330>,  <29.788904, 41.081093, 27.510439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.015417, 41.126404, 27.445330>,  <30.392937, 41.201923, 27.336815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.015417, 41.126404, 27.445330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305243, 0.183122, -0.934501,
		0.126748, -0.964792, -0.230458,
		-0.943802, -0.188792, 0.271286,
		29.732277, 41.069767, 27.526714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.120029, 40.824276, 26.857037>,  <30.392937, 41.201923, 27.336815>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.120029, 40.824276, 26.857037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.792139, 40.973602, 27.030788>,  <29.595406, 41.063198, 27.135040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.792139, 40.973602, 27.030788>,  <30.120029, 40.824276, 26.857037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.792139, 40.973602, 27.030788> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402911, 0.163174, -0.900576,
		-0.407079, -0.913241, 0.016655,
		-0.819726, 0.373316, 0.434380,
		29.546221, 41.085598, 27.161102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.505943, 40.311607, 26.607386>,  <30.120029, 40.824276, 26.857037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.505943, 40.311607, 26.607386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.379478, 40.682850, 26.686031>,  <29.303598, 40.905594, 26.733219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.379478, 40.682850, 26.686031>,  <29.505943, 40.311607, 26.607386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.379478, 40.682850, 26.686031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460553, 0.031037, -0.887089,
		-0.829416, -0.371018, 0.417629,
		-0.316164, 0.928107, 0.196617,
		29.284630, 40.961281, 26.745016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.785313, 40.333317, 26.450659>,  <29.505943, 40.311607, 26.607386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.785313, 40.333317, 26.450659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.874039, 40.723034, 26.466454>,  <28.927275, 40.956863, 26.475931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.874039, 40.723034, 26.466454>,  <28.785313, 40.333317, 26.450659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.874039, 40.723034, 26.466454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492654, 0.146925, -0.857732,
		-0.841481, 0.170805, 0.512578,
		0.221815, 0.974289, 0.039487,
		28.940582, 41.015320, 26.478300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.104078, 40.702961, 26.377474>,  <28.785313, 40.333317, 26.450659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.104078, 40.702961, 26.377474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.373182, 40.989174, 26.302214>,  <28.534645, 41.160904, 26.257057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.373182, 40.989174, 26.302214>,  <28.104078, 40.702961, 26.377474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.373182, 40.989174, 26.302214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498418, 0.250377, -0.829995,
		-0.546782, 0.652166, 0.525079,
		0.672762, 0.715535, -0.188150,
		28.575010, 41.203835, 26.245770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.731155, 41.229736, 26.232317>,  <28.104078, 40.702961, 26.377474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.731155, 41.229736, 26.232317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.079012, 41.325462, 26.059597>,  <28.287725, 41.382896, 25.955965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.079012, 41.325462, 26.059597>,  <27.731155, 41.229736, 26.232317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.079012, 41.325462, 26.059597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478580, 0.193976, -0.856349,
		-0.121174, 0.951369, 0.283219,
		0.869642, 0.239310, -0.431802,
		28.339905, 41.397255, 25.930056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.664028, 41.824013, 25.872797>,  <27.731155, 41.229736, 26.232317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.664028, 41.824013, 25.872797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.986660, 41.665913, 25.696976>,  <28.180239, 41.571053, 25.591484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.986660, 41.665913, 25.696976>,  <27.664028, 41.824013, 25.872797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.986660, 41.665913, 25.696976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444810, 0.083914, -0.891685,
		0.389326, 0.914731, -0.108130,
		0.806579, -0.395254, -0.439551,
		28.228634, 41.547337, 25.565111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.817545, 42.197842, 25.283594>,  <27.664028, 41.824013, 25.872797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.817545, 42.197842, 25.283594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.001976, 41.854652, 25.193005>,  <28.112635, 41.648739, 25.138651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.001976, 41.854652, 25.193005>,  <27.817545, 42.197842, 25.283594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.001976, 41.854652, 25.193005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261272, 0.112643, -0.958670,
		0.848024, 0.501191, -0.172227,
		0.461077, -0.857973, -0.226471,
		28.140299, 41.597260, 25.125063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.307669, 42.408550, 24.897640>,  <27.817545, 42.197842, 25.283594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.307669, 42.408550, 24.897640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.262781, 42.026634, 24.787529>,  <28.235847, 41.797485, 24.721462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.262781, 42.026634, 24.787529>,  <28.307669, 42.408550, 24.897640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.262781, 42.026634, 24.787529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095686, 0.286124, -0.953403,
		0.989066, -0.080650, -0.123469,
		-0.112220, -0.954792, -0.275278,
		28.229115, 41.740196, 24.704945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.594376, 42.326290, 24.302416>,  <28.307669, 42.408550, 24.897640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.594376, 42.326290, 24.302416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.420675, 41.967487, 24.269411>,  <28.316456, 41.752205, 24.249609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.420675, 41.967487, 24.269411>,  <28.594376, 42.326290, 24.302416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.420675, 41.967487, 24.269411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119969, 0.148372, -0.981628,
		0.892768, -0.416374, -0.172043,
		-0.434251, -0.897005, -0.082510,
		28.290400, 41.698387, 24.244658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.849192, 41.879551, 23.783592>,  <28.594376, 42.326290, 24.302416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.849192, 41.879551, 23.783592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.468445, 41.763500, 23.823151>,  <28.239998, 41.693871, 23.846886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.468445, 41.763500, 23.823151>,  <28.849192, 41.879551, 23.783592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.468445, 41.763500, 23.823151> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189017, 0.301591, -0.934514,
		0.241294, -0.908226, -0.341912,
		-0.951867, -0.290119, 0.098899,
		28.182884, 41.676464, 23.852819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.342573, 41.412220, 23.446215>,  <28.849192, 41.879551, 23.783592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.342573, 41.412220, 23.446215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.694315, 41.414669, 23.255762>,  <29.905359, 41.416138, 23.141491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.694315, 41.414669, 23.255762>,  <29.342573, 41.412220, 23.446215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.694315, 41.414669, 23.255762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470220, -0.168762, 0.866264,
		-0.075051, -0.985638, -0.151279,
		0.879352, 0.006121, -0.476132,
		29.958120, 41.416504, 23.112923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.807255, 40.823963, 23.767069>,  <29.342573, 41.412220, 23.446215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.807255, 40.823963, 23.767069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.066511, 41.056747, 23.570604>,  <30.222065, 41.196419, 23.452726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.066511, 41.056747, 23.570604>,  <29.807255, 40.823963, 23.767069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.066511, 41.056747, 23.570604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673076, -0.136096, 0.726943,
		0.356205, -0.801750, -0.479911,
		0.648141, 0.581957, -0.491161,
		30.260954, 41.231335, 23.423256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.414297, 40.396297, 23.804314>,  <29.807255, 40.823963, 23.767069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.414297, 40.396297, 23.804314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.515297, 40.773209, 23.716354>,  <30.575897, 40.999355, 23.663578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.515297, 40.773209, 23.716354>,  <30.414297, 40.396297, 23.804314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.515297, 40.773209, 23.716354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725174, -0.033825, 0.687734,
		0.640599, -0.333117, -0.691857,
		0.252498, 0.942279, -0.219900,
		30.591045, 41.055893, 23.650385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.114183, 40.459419, 23.859818>,  <30.414297, 40.396297, 23.804314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.114183, 40.459419, 23.859818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.008598, 40.844101, 23.889368>,  <30.945248, 41.074909, 23.907099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.008598, 40.844101, 23.889368>,  <31.114183, 40.459419, 23.859818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.008598, 40.844101, 23.889368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643369, 0.118486, 0.756332,
		0.718610, 0.247173, -0.650003,
		-0.263961, 0.961700, 0.073878,
		30.929411, 41.132610, 23.911531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.691534, 40.860928, 23.837132>,  <31.114183, 40.459419, 23.859818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.691534, 40.860928, 23.837132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.435804, 41.125229, 23.994440>,  <31.282366, 41.283810, 24.088825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.435804, 41.125229, 23.994440>,  <31.691534, 40.860928, 23.837132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.435804, 41.125229, 23.994440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674839, 0.236991, 0.698876,
		0.368585, 0.712205, -0.597418,
		-0.639326, 0.660756, 0.393272,
		31.244007, 41.323456, 24.112421>
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
