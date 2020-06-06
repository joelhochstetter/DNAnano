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
	<24.505327, 35.324905, 34.761490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.400772, 35.085590, 35.064472>,  <24.338039, 34.942001, 35.246262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.400772, 35.085590, 35.064472>,  <24.505327, 35.324905, 34.761490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.400772, 35.085590, 35.064472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281243, 0.703477, 0.652704,
		-0.923353, 0.383636, -0.015616,
		-0.261386, -0.598284, 0.757452,
		24.322357, 34.906105, 35.291706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.131582, 35.773254, 35.148083>,  <24.505327, 35.324905, 34.761490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.131582, 35.773254, 35.148083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.301889, 35.477684, 35.356972>,  <24.404074, 35.300343, 35.482304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.301889, 35.477684, 35.356972>,  <24.131582, 35.773254, 35.148083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.301889, 35.477684, 35.356972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108544, 0.614690, 0.781264,
		-0.898299, -0.275953, 0.341921,
		0.425768, -0.738922, 0.522222,
		24.429619, 35.256008, 35.513638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.776484, 35.647591, 35.834515>,  <24.131582, 35.773254, 35.148083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.776484, 35.647591, 35.834515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.119879, 35.455441, 35.906330>,  <24.325916, 35.340149, 35.949421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.119879, 35.455441, 35.906330>,  <23.776484, 35.647591, 35.834515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.119879, 35.455441, 35.906330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122044, 0.531412, 0.838276,
		-0.498100, -0.697738, 0.514838,
		0.858489, -0.480378, 0.179541,
		24.377426, 35.311329, 35.960194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.795650, 35.353630, 36.438713>,  <23.776484, 35.647591, 35.834515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.795650, 35.353630, 36.438713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.190857, 35.380226, 36.383003>,  <24.427980, 35.396183, 36.349575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.190857, 35.380226, 36.383003>,  <23.795650, 35.353630, 36.438713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.190857, 35.380226, 36.383003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090927, 0.478400, 0.873422,
		0.124707, -0.875621, 0.466622,
		0.988018, 0.066493, -0.139278,
		24.487263, 35.400173, 36.341221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.259010, 35.045162, 37.086006>,  <23.795650, 35.353630, 36.438713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.259010, 35.045162, 37.086006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.429876, 35.361462, 36.910622>,  <24.532396, 35.551243, 36.805389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.429876, 35.361462, 36.910622>,  <24.259010, 35.045162, 37.086006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.429876, 35.361462, 36.910622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197056, 0.391854, 0.898676,
		0.882440, -0.470282, 0.011564,
		0.427163, 0.790749, -0.438460,
		24.558025, 35.598686, 36.779083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.881723, 35.203445, 37.494656>,  <24.259010, 35.045162, 37.086006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.881723, 35.203445, 37.494656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.737360, 35.531757, 37.317539>,  <24.650742, 35.728745, 37.211269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.737360, 35.531757, 37.317539>,  <24.881723, 35.203445, 37.494656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.737360, 35.531757, 37.317539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172817, 0.525427, 0.833103,
		0.916450, 0.224151, -0.331475,
		-0.360907, 0.820782, -0.442790,
		24.629087, 35.777992, 37.184704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.405508, 35.701534, 37.487522>,  <24.881723, 35.203445, 37.494656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.405508, 35.701534, 37.487522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.050112, 35.884605, 37.474133>,  <24.836874, 35.994446, 37.466099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.050112, 35.884605, 37.474133>,  <25.405508, 35.701534, 37.487522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.050112, 35.884605, 37.474133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218376, 0.485835, 0.846331,
		0.403607, 0.744647, -0.531604,
		-0.888489, 0.457675, -0.033473,
		24.783566, 36.021908, 37.464092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.446659, 36.427040, 37.418770>,  <25.405508, 35.701534, 37.487522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.446659, 36.427040, 37.418770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.099958, 36.360992, 37.607014>,  <24.891937, 36.321362, 37.719959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.099958, 36.360992, 37.607014>,  <25.446659, 36.427040, 37.418770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.099958, 36.360992, 37.607014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346579, 0.479123, 0.806427,
		-0.358638, 0.862077, -0.358054,
		-0.866754, -0.165122, 0.470609,
		24.839931, 36.311455, 37.748196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.143116, 37.095325, 37.642792>,  <25.446659, 36.427040, 37.418770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.143116, 37.095325, 37.642792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.981054, 36.821911, 37.885654>,  <24.883818, 36.657864, 38.031372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.981054, 36.821911, 37.885654>,  <25.143116, 37.095325, 37.642792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.981054, 36.821911, 37.885654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314602, 0.519309, 0.794571,
		-0.858415, 0.512934, 0.004642,
		-0.405152, -0.683532, 0.607153,
		24.859509, 36.616852, 38.067799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.680531, 37.605022, 38.038525>,  <25.143116, 37.095325, 37.642792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.680531, 37.605022, 38.038525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.757647, 37.259094, 38.223965>,  <24.803915, 37.051537, 38.335228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.757647, 37.259094, 38.223965>,  <24.680531, 37.605022, 38.038525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.757647, 37.259094, 38.223965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002443, 0.472040, 0.881574,
		-0.981237, -0.171090, 0.088891,
		0.192788, -0.864816, 0.463601,
		24.815483, 36.999649, 38.363045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.183195, 37.597656, 38.610077>,  <24.680531, 37.605022, 38.038525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.183195, 37.597656, 38.610077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.477545, 37.345528, 38.709019>,  <24.654156, 37.194252, 38.768383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.477545, 37.345528, 38.709019>,  <24.183195, 37.597656, 38.610077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.477545, 37.345528, 38.709019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006361, 0.358852, 0.933373,
		-0.677087, -0.688419, 0.260060,
		0.735875, -0.630321, 0.247353,
		24.698307, 37.156433, 38.783226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.972279, 37.129356, 39.090710>,  <24.183195, 37.597656, 38.610077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.972279, 37.129356, 39.090710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.363258, 37.190857, 39.148617>,  <24.597845, 37.227757, 39.183361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.363258, 37.190857, 39.148617>,  <23.972279, 37.129356, 39.090710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.363258, 37.190857, 39.148617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188146, 0.322684, 0.927619,
		0.095907, -0.933936, 0.344334,
		0.977447, 0.153750, 0.144768,
		24.656492, 37.236980, 39.192047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.401403, 36.627789, 39.562428>,  <23.972279, 37.129356, 39.090710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.401403, 36.627789, 39.562428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.527460, 37.007107, 39.547379>,  <24.603094, 37.234699, 39.538349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.527460, 37.007107, 39.547379>,  <24.401403, 36.627789, 39.562428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.527460, 37.007107, 39.547379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108562, 0.075403, 0.991226,
		0.942815, -0.308293, 0.126712,
		0.315142, 0.948298, -0.037622,
		24.622004, 37.291595, 39.536091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.072811, 36.722366, 39.964996>,  <24.401403, 36.627789, 39.562428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.072811, 36.722366, 39.964996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.865726, 37.064568, 39.961342>,  <24.741476, 37.269890, 39.959148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.865726, 37.064568, 39.961342>,  <25.072811, 36.722366, 39.964996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.865726, 37.064568, 39.961342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046312, 0.038686, 0.998178,
		0.854301, 0.516344, -0.059648,
		-0.517711, 0.855507, -0.009137,
		24.710413, 37.321220, 39.958599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.715210, 37.122597, 39.907391>,  <25.072811, 36.722366, 39.964996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.715210, 37.122597, 39.907391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.368694, 37.118374, 39.707619>,  <25.160786, 37.115841, 39.587753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.368694, 37.118374, 39.707619>,  <25.715210, 37.122597, 39.907391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.368694, 37.118374, 39.707619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432874, -0.514874, -0.739950,
		-0.249331, -0.857201, 0.450600,
		-0.866288, -0.010561, -0.499434,
		25.108809, 37.115208, 39.557789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.959293, 36.821476, 39.321388>,  <25.715210, 37.122597, 39.907391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.959293, 36.821476, 39.321388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.560602, 36.849350, 39.304996>,  <25.321388, 36.866074, 39.295162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.560602, 36.849350, 39.304996>,  <25.959293, 36.821476, 39.321388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.560602, 36.849350, 39.304996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007292, -0.427346, -0.904059,
		-0.080506, -0.901399, 0.425439,
		-0.996727, 0.069680, -0.040977,
		25.261583, 36.870255, 39.292702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.634354, 36.219906, 39.100056>,  <25.959293, 36.821476, 39.321388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.634354, 36.219906, 39.100056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.340227, 36.476952, 39.013931>,  <25.163752, 36.631180, 38.962257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.340227, 36.476952, 39.013931>,  <25.634354, 36.219906, 39.100056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.340227, 36.476952, 39.013931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153709, -0.467550, -0.870500,
		-0.660065, -0.606996, 0.442572,
		-0.735315, 0.642614, -0.215313,
		25.119633, 36.669735, 38.949337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.989765, 35.879375, 39.004097>,  <25.634354, 36.219906, 39.100056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.989765, 35.879375, 39.004097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.944035, 36.224968, 38.807949>,  <24.916595, 36.432323, 38.690262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.944035, 36.224968, 38.807949>,  <24.989765, 35.879375, 39.004097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.944035, 36.224968, 38.807949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323682, -0.499064, -0.803844,
		-0.939233, 0.066822, 0.336713,
		-0.114327, 0.863985, -0.490367,
		24.909737, 36.484165, 38.660839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.320383, 35.729534, 38.828873>,  <24.989765, 35.879375, 39.004097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.320383, 35.729534, 38.828873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.487295, 35.999954, 38.585949>,  <24.587442, 36.162209, 38.440193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.487295, 35.999954, 38.585949>,  <24.320383, 35.729534, 38.828873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.487295, 35.999954, 38.585949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381996, -0.475887, -0.792219,
		-0.824594, 0.562570, 0.059670,
		0.417282, 0.676052, -0.607313,
		24.612480, 36.202770, 38.403755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.788116, 36.042580, 38.425629>,  <24.320383, 35.729534, 38.828873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.788116, 36.042580, 38.425629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.130987, 36.069172, 38.221340>,  <24.336710, 36.085129, 38.098766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.130987, 36.069172, 38.221340>,  <23.788116, 36.042580, 38.425629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.130987, 36.069172, 38.221340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466842, -0.318495, -0.824997,
		-0.217510, 0.945590, -0.241968,
		0.857174, 0.066484, -0.510717,
		24.388140, 36.089119, 38.068127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.868261, 36.626259, 37.965126>,  <23.788116, 36.042580, 38.425629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.868261, 36.626259, 37.965126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.242470, 36.613335, 37.824409>,  <24.466995, 36.605579, 37.739979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.242470, 36.613335, 37.824409>,  <23.868261, 36.626259, 37.965126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.242470, 36.613335, 37.824409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327734, -0.451103, -0.830118,
		-0.131868, 0.891887, -0.432607,
		0.935522, -0.032314, -0.351788,
		24.523127, 36.603642, 37.718872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.807493, 36.861599, 37.280388>,  <23.868261, 36.626259, 37.965126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.807493, 36.861599, 37.280388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.123457, 36.619316, 37.318661>,  <24.313036, 36.473946, 37.341625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.123457, 36.619316, 37.318661>,  <23.807493, 36.861599, 37.280388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.123457, 36.619316, 37.318661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272206, -0.486160, -0.830393,
		0.549494, 0.629892, -0.548901,
		0.789912, -0.605710, 0.095681,
		24.360430, 36.437603, 37.347366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.080505, 36.780548, 36.592297>,  <23.807493, 36.861599, 37.280388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.080505, 36.780548, 36.592297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.228407, 36.466572, 36.791153>,  <24.317148, 36.278187, 36.910465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.228407, 36.466572, 36.791153>,  <24.080505, 36.780548, 36.592297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.228407, 36.466572, 36.791153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153750, -0.579372, -0.800431,
		0.916320, 0.219528, -0.334911,
		0.369755, -0.784943, 0.497138,
		24.339333, 36.231091, 36.940292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.705650, 36.422768, 36.228832>,  <24.080505, 36.780548, 36.592297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.705650, 36.422768, 36.228832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.488832, 36.173573, 36.454426>,  <24.358742, 36.024055, 36.589783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.488832, 36.173573, 36.454426>,  <24.705650, 36.422768, 36.228832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.488832, 36.173573, 36.454426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008254, -0.667153, -0.744876,
		0.840310, -0.408410, 0.356483,
		-0.542043, -0.622984, 0.563986,
		24.326220, 35.986679, 36.623623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.987808, 35.819019, 35.996353>,  <24.705650, 36.422768, 36.228832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.987808, 35.819019, 35.996353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.617668, 35.741676, 36.126793>,  <24.395584, 35.695271, 36.205059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.617668, 35.741676, 36.126793>,  <24.987808, 35.819019, 35.996353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.617668, 35.741676, 36.126793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151797, -0.599239, -0.786047,
		0.347400, -0.776869, 0.525155,
		-0.925349, -0.193356, 0.326102,
		24.340063, 35.683670, 36.224625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.537294, 35.971340, 36.504089>,  <24.987808, 35.819019, 35.996353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.537294, 35.971340, 36.504089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.297075, 35.669674, 36.610348>,  <25.152943, 35.488674, 36.674103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.297075, 35.669674, 36.610348>,  <25.537294, 35.971340, 36.504089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.297075, 35.669674, 36.610348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033788, -0.308001, -0.950786,
		0.798873, -0.579970, 0.159488,
		-0.600550, -0.754168, 0.265650,
		25.116911, 35.443424, 36.690044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.761799, 35.319794, 36.204144>,  <25.537294, 35.971340, 36.504089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.761799, 35.319794, 36.204144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.367348, 35.334557, 36.268879>,  <25.130676, 35.343414, 36.307720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.367348, 35.334557, 36.268879>,  <25.761799, 35.319794, 36.204144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.367348, 35.334557, 36.268879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150240, -0.612975, -0.775686,
		0.070572, -0.789240, 0.610017,
		-0.986128, 0.036907, 0.161834,
		25.071510, 35.345627, 36.317429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.524498, 34.642883, 36.037239>,  <25.761799, 35.319794, 36.204144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.524498, 34.642883, 36.037239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.189093, 34.859997, 36.018127>,  <24.987848, 34.990265, 36.006660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.189093, 34.859997, 36.018127>,  <25.524498, 34.642883, 36.037239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.189093, 34.859997, 36.018127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261611, -0.477968, -0.838514,
		-0.477968, -0.690606, 0.542780,
		0.838514, -0.542780, 0.047783,
		24.937538, 35.022831, 36.003792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.926212, 34.172443, 36.101555>,  <25.524498, 34.642883, 36.037239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.926212, 34.172443, 36.101555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.819725, 34.499958, 35.898098>,  <24.755833, 34.696465, 35.776024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.819725, 34.499958, 35.898098>,  <24.926212, 34.172443, 36.101555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.819725, 34.499958, 35.898098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325533, -0.573056, -0.752087,
		-0.907279, -0.034638, 0.419100,
		-0.266219, 0.818784, -0.508646,
		24.739859, 34.745594, 35.745502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.075832, 33.581474, 35.935982>,  <24.926212, 34.172443, 36.101555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.075832, 33.581474, 35.935982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.156534, 33.368721, 36.264954>,  <25.204956, 33.241070, 36.462337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.156534, 33.368721, 36.264954>,  <25.075832, 33.581474, 35.935982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.156534, 33.368721, 36.264954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732366, -0.475624, -0.487259,
		0.650334, 0.700627, 0.293575,
		0.201755, -0.531886, 0.822431,
		25.217060, 33.209156, 36.511684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.621910, 33.445133, 35.691349>,  <25.075832, 33.581474, 35.935982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.621910, 33.445133, 35.691349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.612226, 33.210243, 36.014973>,  <25.606417, 33.069309, 36.209148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.612226, 33.210243, 36.014973>,  <25.621910, 33.445133, 35.691349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.612226, 33.210243, 36.014973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712332, -0.577959, -0.398179,
		0.701425, 0.566679, 0.432293,
		-0.024208, -0.587229, 0.809059,
		25.604963, 33.034073, 36.257690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.190678, 33.537418, 36.193359>,  <25.621910, 33.445133, 35.691349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.190678, 33.537418, 36.193359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.078411, 33.158718, 36.256477>,  <26.011051, 32.931499, 36.294350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.078411, 33.158718, 36.256477>,  <26.190678, 33.537418, 36.193359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.078411, 33.158718, 36.256477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885359, -0.318857, -0.338334,
		0.370631, 0.044745, 0.927702,
		-0.280665, -0.946746, 0.157794,
		25.994211, 32.874695, 36.303814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.729654, 33.210350, 36.469028>,  <26.190678, 33.537418, 36.193359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.729654, 33.210350, 36.469028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.491039, 32.962467, 36.265026>,  <26.347870, 32.813736, 36.142624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.491039, 32.962467, 36.265026>,  <26.729654, 33.210350, 36.469028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.491039, 32.962467, 36.265026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745885, -0.193471, -0.637357,
		0.296304, -0.760613, 0.577644,
		-0.596539, -0.619707, -0.510003,
		26.312077, 32.776554, 36.112026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.138960, 32.611935, 36.271107>,  <26.729654, 33.210350, 36.469028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.138960, 32.611935, 36.271107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.812475, 32.615917, 36.040039>,  <26.616585, 32.618309, 35.901398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.812475, 32.615917, 36.040039>,  <27.138960, 32.611935, 36.271107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.812475, 32.615917, 36.040039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577556, -0.011850, -0.816265,
		-0.015001, -0.999880, 0.003901,
		-0.816213, 0.009991, -0.577665,
		26.567612, 32.618904, 35.866741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.342356, 32.171158, 35.804363>,  <27.138960, 32.611935, 36.271107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.342356, 32.171158, 35.804363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.055357, 32.393551, 35.636517>,  <26.883158, 32.526989, 35.535809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.055357, 32.393551, 35.636517>,  <27.342356, 32.171158, 35.804363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.055357, 32.393551, 35.636517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534671, 0.053479, -0.843367,
		-0.446460, -0.829469, -0.335641,
		-0.717496, 0.555987, -0.419617,
		26.840109, 32.560349, 35.510632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.911074, 31.774235, 36.215511>,  <27.342356, 32.171158, 35.804363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.911074, 31.774235, 36.215511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.630354, 31.784067, 35.930733>,  <26.461922, 31.789967, 35.759865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.630354, 31.784067, 35.930733>,  <26.911074, 31.774235, 36.215511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.630354, 31.784067, 35.930733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704440, -0.124780, -0.698708,
		-0.106008, -0.991880, 0.070259,
		-0.701802, 0.024575, -0.711948,
		26.419813, 31.791441, 35.717148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.996138, 31.221848, 35.819836>,  <26.911074, 31.774235, 36.215511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.996138, 31.221848, 35.819836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.838833, 31.527174, 35.614822>,  <26.744450, 31.710371, 35.491814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.838833, 31.527174, 35.614822>,  <26.996138, 31.221848, 35.819836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.838833, 31.527174, 35.614822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770877, -0.030077, -0.636274,
		-0.501095, -0.645322, -0.576596,
		-0.393259, 0.763318, -0.512535,
		26.720856, 31.756170, 35.461063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.135492, 31.095308, 35.108032>,  <26.996138, 31.221848, 35.819836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.135492, 31.095308, 35.108032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.061991, 31.487810, 35.131256>,  <27.017891, 31.723312, 35.145191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.061991, 31.487810, 35.131256>,  <27.135492, 31.095308, 35.108032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.061991, 31.487810, 35.131256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652035, 0.165876, -0.739822,
		-0.735585, -0.098088, -0.670293,
		-0.183753, 0.981256, 0.058059,
		27.006865, 31.782187, 35.148674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.964441, 31.411018, 34.354435>,  <27.135492, 31.095308, 35.108032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.964441, 31.411018, 34.354435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.079453, 31.694197, 34.612473>,  <27.148460, 31.864103, 34.767296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.079453, 31.694197, 34.612473>,  <26.964441, 31.411018, 34.354435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.079453, 31.694197, 34.612473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789259, 0.206424, -0.578325,
		-0.542583, 0.675429, -0.499398,
		0.287530, 0.707944, 0.645091,
		27.165712, 31.906580, 34.806000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.150530, 32.095203, 33.896961>,  <26.964441, 31.411018, 34.354435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.150530, 32.095203, 33.896961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.331833, 32.039551, 34.249142>,  <27.440615, 32.006161, 34.460449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.331833, 32.039551, 34.249142>,  <27.150530, 32.095203, 33.896961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.331833, 32.039551, 34.249142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883357, -0.062105, -0.464568,
		0.119316, 0.988325, 0.094752,
		0.453259, -0.139130, 0.880454,
		27.467812, 31.997812, 34.513279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.656923, 32.668266, 34.030918>,  <27.150530, 32.095203, 33.896961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.656923, 32.668266, 34.030918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.725012, 32.317905, 34.211506>,  <27.765865, 32.107689, 34.319859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.725012, 32.317905, 34.211506>,  <27.656923, 32.668266, 34.030918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.725012, 32.317905, 34.211506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969239, 0.066174, -0.237058,
		0.177763, 0.477934, 0.860220,
		0.170222, -0.875899, 0.451469,
		27.776079, 32.055134, 34.346947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.058424, 32.782478, 34.642883>,  <27.656923, 32.668266, 34.030918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.058424, 32.782478, 34.642883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.137417, 32.445328, 34.442657>,  <28.184813, 32.243038, 34.322521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.137417, 32.445328, 34.442657>,  <28.058424, 32.782478, 34.642883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.137417, 32.445328, 34.442657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963011, 0.262294, -0.061737,
		0.183331, -0.469858, 0.863495,
		0.197482, -0.842874, -0.500565,
		28.196661, 32.192467, 34.292488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.111004, 32.454399, 35.315506>,  <28.058424, 32.782478, 34.642883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.111004, 32.454399, 35.315506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.844509, 32.416027, 35.019688>,  <27.684612, 32.393005, 34.842197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.844509, 32.416027, 35.019688>,  <28.111004, 32.454399, 35.315506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.844509, 32.416027, 35.019688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745538, 0.062686, 0.663509,
		-0.017290, 0.993413, -0.113282,
		-0.666239, -0.095928, -0.739543,
		27.644638, 32.387249, 34.797825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.600357, 32.918503, 35.422153>,  <28.111004, 32.454399, 35.315506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.600357, 32.918503, 35.422153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.426081, 32.626614, 35.211372>,  <27.321514, 32.451481, 35.084904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.426081, 32.626614, 35.211372>,  <27.600357, 32.918503, 35.422153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.426081, 32.626614, 35.211372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775658, 0.007378, 0.631110,
		-0.456646, 0.683706, -0.569228,
		-0.435693, -0.729720, -0.526953,
		27.295372, 32.407696, 35.053288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.873034, 33.122646, 35.185623>,  <27.600357, 32.918503, 35.422153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.873034, 33.122646, 35.185623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.905203, 32.724545, 35.207561>,  <26.924505, 32.485683, 35.220722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.905203, 32.724545, 35.207561>,  <26.873034, 33.122646, 35.185623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.905203, 32.724545, 35.207561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810954, -0.033344, 0.584159,
		-0.579556, -0.091455, -0.809784,
		0.080426, -0.995251, 0.054841,
		26.929331, 32.425968, 35.224014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.159403, 32.857941, 34.942352>,  <26.873034, 33.122646, 35.185623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.159403, 32.857941, 34.942352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.373707, 32.587673, 35.144913>,  <26.502289, 32.425514, 35.266449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.373707, 32.587673, 35.144913>,  <26.159403, 32.857941, 34.942352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.373707, 32.587673, 35.144913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752318, -0.109672, 0.649607,
		-0.383379, -0.729006, -0.567072,
		0.535760, -0.675665, 0.506399,
		26.534435, 32.384975, 35.296833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.783115, 32.225658, 35.066277>,  <26.159403, 32.857941, 34.942352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.783115, 32.225658, 35.066277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.043945, 32.270100, 35.366264>,  <26.200443, 32.296764, 35.546257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.043945, 32.270100, 35.366264>,  <25.783115, 32.225658, 35.066277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.043945, 32.270100, 35.366264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755950, 0.019920, 0.654326,
		0.057764, -0.993608, 0.096983,
		0.652076, 0.111111, 0.749968,
		26.239569, 32.303429, 35.591255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.532875, 31.799105, 35.592552>,  <25.783115, 32.225658, 35.066277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.532875, 31.799105, 35.592552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.771399, 32.079826, 35.748444>,  <25.914513, 32.248260, 35.841980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.771399, 32.079826, 35.748444>,  <25.532875, 31.799105, 35.592552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.771399, 32.079826, 35.748444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661671, 0.154801, 0.733640,
		0.454541, -0.695348, 0.556672,
		0.596309, 0.701804, 0.389728,
		25.950291, 32.290367, 35.865360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.536753, 31.672512, 36.380032>,  <25.532875, 31.799105, 35.592552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.536753, 31.672512, 36.380032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.650314, 32.049732, 36.310688>,  <25.718452, 32.276066, 36.269081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.650314, 32.049732, 36.310688>,  <25.536753, 31.672512, 36.380032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.650314, 32.049732, 36.310688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667592, 0.324185, 0.670243,
		0.688273, -0.074555, 0.721611,
		0.283905, 0.943051, -0.173355,
		25.735485, 32.332649, 36.258682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.562994, 31.987934, 36.995106>,  <25.536753, 31.672512, 36.380032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.562994, 31.987934, 36.995106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.499836, 32.291267, 36.742123>,  <25.461941, 32.473267, 36.590332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.499836, 32.291267, 36.742123>,  <25.562994, 31.987934, 36.995106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.499836, 32.291267, 36.742123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781391, 0.295647, 0.549564,
		0.603736, 0.580970, 0.545872,
		-0.157895, 0.758331, -0.632458,
		25.452467, 32.518768, 36.552383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.626934, 32.742977, 37.232513>,  <25.562994, 31.987934, 36.995106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.626934, 32.742977, 37.232513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.349466, 32.617214, 36.973293>,  <25.182985, 32.541756, 36.817760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.349466, 32.617214, 36.973293>,  <25.626934, 32.742977, 37.232513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.349466, 32.617214, 36.973293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717773, 0.226511, 0.658403,
		-0.060215, 0.921868, -0.382796,
		-0.693668, -0.314406, -0.648053,
		25.141365, 32.522892, 36.778877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.203146, 32.250660, 37.112118>,  <25.626934, 32.742977, 37.232513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.203146, 32.250660, 37.112118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.514650, 32.002693, 37.073692>,  <26.701553, 31.853912, 37.050636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.514650, 32.002693, 37.073692>,  <26.203146, 32.250660, 37.112118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.514650, 32.002693, 37.073692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468312, 0.472627, 0.746531,
		-0.417387, -0.626358, 0.658380,
		0.778763, -0.619919, -0.096063,
		26.748280, 31.816717, 37.044872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.208368, 31.829042, 37.682236>,  <26.203146, 32.250660, 37.112118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.208368, 31.829042, 37.682236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.576792, 31.873419, 37.532921>,  <26.797846, 31.900045, 37.443333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.576792, 31.873419, 37.532921>,  <26.208368, 31.829042, 37.682236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.576792, 31.873419, 37.532921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272331, 0.501695, 0.821059,
		0.278366, -0.857901, 0.431878,
		0.921058, 0.110941, -0.373288,
		26.853109, 31.906702, 37.420933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.721878, 31.827633, 38.276115>,  <26.208368, 31.829042, 37.682236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.721878, 31.827633, 38.276115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.966030, 31.967501, 37.991814>,  <27.112520, 32.051422, 37.821232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.966030, 31.967501, 37.991814>,  <26.721878, 31.827633, 38.276115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.966030, 31.967501, 37.991814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512456, 0.509892, 0.690940,
		0.604009, -0.785964, 0.132037,
		0.610379, 0.349671, -0.710752,
		27.149143, 32.072403, 37.778587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.499266, 31.696360, 38.475903>,  <26.721878, 31.827633, 38.276115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.499266, 31.696360, 38.475903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.419592, 32.023506, 38.259972>,  <27.371788, 32.219795, 38.130413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.419592, 32.023506, 38.259972>,  <27.499266, 31.696360, 38.475903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.419592, 32.023506, 38.259972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343634, 0.574184, 0.743121,
		0.917736, -0.037484, -0.395417,
		-0.199187, 0.817868, -0.539830,
		27.359837, 32.268867, 38.098022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.606911, 32.283325, 38.912083>,  <27.499266, 31.696360, 38.475903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.606911, 32.283325, 38.912083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.005867, 32.255180, 38.918560>,  <28.245241, 32.238293, 38.922447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.005867, 32.255180, 38.918560>,  <27.606911, 32.283325, 38.912083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.005867, 32.255180, 38.918560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067570, 0.830519, -0.552876,
		0.025451, 0.552528, 0.833106,
		0.997390, -0.070364, 0.016196,
		28.305084, 32.234070, 38.923420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.104111, 32.884399, 39.144588>,  <27.606911, 32.283325, 38.912083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.104111, 32.884399, 39.144588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.322855, 32.692314, 38.870262>,  <28.454102, 32.577065, 38.705666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.322855, 32.692314, 38.870262>,  <28.104111, 32.884399, 39.144588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.322855, 32.692314, 38.870262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030401, 0.830002, -0.556931,
		0.836673, 0.283714, 0.468493,
		0.546859, -0.480212, -0.685815,
		28.486912, 32.548252, 38.664516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.554369, 33.373920, 38.952663>,  <28.104111, 32.884399, 39.144588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.554369, 33.373920, 38.952663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.536377, 33.127384, 38.638184>,  <28.525581, 32.979462, 38.449497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.536377, 33.127384, 38.638184>,  <28.554369, 33.373920, 38.952663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.536377, 33.127384, 38.638184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234168, 0.771571, -0.591476,
		0.971155, 0.157496, -0.179033,
		-0.044982, -0.616338, -0.786196,
		28.522882, 32.942482, 38.402325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.070314, 33.635391, 38.467514>,  <28.554369, 33.373920, 38.952663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.070314, 33.635391, 38.467514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.783522, 33.432011, 38.276764>,  <28.611446, 33.309982, 38.162312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.783522, 33.432011, 38.276764>,  <29.070314, 33.635391, 38.467514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.783522, 33.432011, 38.276764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333781, 0.850982, -0.405488,
		0.611986, -0.131555, -0.779850,
		-0.716982, -0.508452, -0.476879,
		28.568428, 33.279476, 38.133701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.849409, 33.516190, 37.647076>,  <29.070314, 33.635391, 38.467514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.849409, 33.516190, 37.647076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.778315, 33.791985, 37.366215>,  <28.735659, 33.957462, 37.197697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.778315, 33.791985, 37.366215>,  <28.849409, 33.516190, 37.647076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.778315, 33.791985, 37.366215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413251, 0.699849, 0.582611,
		0.893103, -0.186615, -0.409318,
		-0.177737, 0.689483, -0.702156,
		28.724993, 33.998829, 37.155567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.362358, 33.947971, 37.668045>,  <28.849409, 33.516190, 37.647076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.362358, 33.947971, 37.668045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.066505, 34.148121, 37.488010>,  <28.888994, 34.268211, 37.379990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.066505, 34.148121, 37.488010>,  <29.362358, 33.947971, 37.668045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.066505, 34.148121, 37.488010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315659, 0.848554, 0.424636,
		0.594397, 0.172001, -0.785563,
		-0.739630, 0.500372, -0.450084,
		28.844616, 34.298233, 37.352985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.680326, 34.492950, 37.148708>,  <29.362358, 33.947971, 37.668045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.680326, 34.492950, 37.148708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.354748, 34.631611, 37.335178>,  <29.159401, 34.714809, 37.447060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.354748, 34.631611, 37.335178>,  <29.680326, 34.492950, 37.148708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.354748, 34.631611, 37.335178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465955, 0.868808, 0.167507,
		-0.346951, 0.353560, -0.868689,
		-0.813948, 0.346653, 0.466177,
		29.110563, 34.735607, 37.475033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.867800, 33.820477, 36.957470>,  <29.680326, 34.492950, 37.148708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.867800, 33.820477, 36.957470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.145250, 33.769108, 37.240990>,  <30.311720, 33.738285, 37.411102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.145250, 33.769108, 37.240990>,  <29.867800, 33.820477, 36.957470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.145250, 33.769108, 37.240990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587745, -0.467987, -0.659957,
		0.416460, 0.874355, -0.249129,
		0.693626, -0.128421, 0.708796,
		30.353338, 33.730583, 37.453629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.412302, 33.850765, 36.617691>,  <29.867800, 33.820477, 36.957470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.412302, 33.850765, 36.617691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.527802, 33.700809, 36.970074>,  <30.597101, 33.610836, 37.181503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.527802, 33.700809, 36.970074>,  <30.412302, 33.850765, 36.617691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.527802, 33.700809, 36.970074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761135, -0.468285, -0.448757,
		0.580773, 0.800104, 0.150125,
		0.288751, -0.374891, 0.880954,
		30.614428, 33.588341, 37.234360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.160820, 33.990429, 36.811390>,  <30.412302, 33.850765, 36.617691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.160820, 33.990429, 36.811390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.045681, 33.648403, 36.983910>,  <30.976599, 33.443188, 37.087421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.045681, 33.648403, 36.983910>,  <31.160820, 33.990429, 36.811390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.045681, 33.648403, 36.983910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823903, -0.450679, -0.343617,
		0.488190, 0.256439, 0.834212,
		-0.287845, -0.855060, 0.431297,
		30.959328, 33.391884, 37.113300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.617723, 33.691357, 37.375294>,  <31.160820, 33.990429, 36.811390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.617723, 33.691357, 37.375294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406466, 33.405895, 37.191223>,  <31.279711, 33.234619, 37.080780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406466, 33.405895, 37.191223>,  <31.617723, 33.691357, 37.375294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.406466, 33.405895, 37.191223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849123, -0.439103, -0.293564,
		0.007437, -0.545792, 0.837888,
		-0.528143, -0.713653, -0.460179,
		31.248022, 33.191799, 37.053169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.918800, 32.999428, 37.519188>,  <31.617723, 33.691357, 37.375294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.918800, 32.999428, 37.519188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.706324, 32.997463, 37.180294>,  <31.578838, 32.996284, 36.976955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.706324, 32.997463, 37.180294>,  <31.918800, 32.999428, 37.519188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.706324, 32.997463, 37.180294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798999, -0.335560, -0.499000,
		-0.281846, -0.942006, 0.182175,
		-0.531192, -0.004916, -0.847238,
		31.546967, 32.995991, 36.926125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.063557, 32.428802, 37.109238>,  <31.918800, 32.999428, 37.519188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.063557, 32.428802, 37.109238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.918806, 32.702457, 36.855942>,  <31.831957, 32.866650, 36.703964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.918806, 32.702457, 36.855942>,  <32.063557, 32.428802, 37.109238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.918806, 32.702457, 36.855942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801342, -0.118804, -0.586291,
		-0.476337, -0.719609, -0.505238,
		-0.361875, 0.684140, -0.633244,
		31.810244, 32.907700, 36.665970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.240425, 32.191532, 36.474983>,  <32.063557, 32.428802, 37.109238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.240425, 32.191532, 36.474983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.176746, 32.577995, 36.393791>,  <32.138538, 32.809872, 36.345078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.176746, 32.577995, 36.393791>,  <32.240425, 32.191532, 36.474983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.176746, 32.577995, 36.393791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810786, 0.010645, -0.585246,
		-0.563277, -0.257742, -0.785040,
		-0.159199, 0.966155, -0.202977,
		32.128986, 32.867844, 36.332897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.323452, 32.236790, 35.819099>,  <32.240425, 32.191532, 36.474983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.323452, 32.236790, 35.819099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381916, 32.609100, 35.953140>,  <32.416996, 32.832485, 36.033566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381916, 32.609100, 35.953140>,  <32.323452, 32.236790, 35.819099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.381916, 32.609100, 35.953140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780384, 0.099698, -0.617302,
		-0.607979, 0.351735, -0.711789,
		0.146163, 0.930775, 0.335103,
		32.425766, 32.888332, 36.053673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.416779, 32.701496, 35.214966>,  <32.323452, 32.236790, 35.819099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.416779, 32.701496, 35.214966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.561932, 32.923203, 35.514595>,  <32.649021, 33.056229, 35.694370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.561932, 32.923203, 35.514595>,  <32.416779, 32.701496, 35.214966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.561932, 32.923203, 35.514595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750958, 0.301989, -0.587251,
		-0.551706, 0.775621, -0.306647,
		0.362881, 0.554269, 0.749069,
		32.670795, 33.089481, 35.739315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.604031, 33.338482, 34.897354>,  <32.416779, 32.701496, 35.214966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.604031, 33.338482, 34.897354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.826366, 33.305454, 35.228226>,  <32.959766, 33.285637, 35.426750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.826366, 33.305454, 35.228226>,  <32.604031, 33.338482, 34.897354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.826366, 33.305454, 35.228226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788315, 0.368158, -0.492970,
		-0.263827, 0.926089, 0.269730,
		0.555838, -0.082573, 0.827180,
		32.993118, 33.280682, 35.476379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.954288, 33.931896, 34.848068>,  <32.604031, 33.338482, 34.897354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.954288, 33.931896, 34.848068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.148182, 33.688488, 35.099380>,  <33.264519, 33.542442, 35.250168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.148182, 33.688488, 35.099380>,  <32.954288, 33.931896, 34.848068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.148182, 33.688488, 35.099380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824103, 0.077071, -0.561172,
		0.293062, 0.789787, 0.538842,
		0.484736, -0.608520, 0.628280,
		33.293602, 33.505932, 35.287865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616875, 34.221180, 34.990265>,  <32.954288, 33.931896, 34.848068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.616875, 34.221180, 34.990265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672791, 33.839680, 35.096718>,  <33.706341, 33.610779, 35.160591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672791, 33.839680, 35.096718>,  <33.616875, 34.221180, 34.990265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672791, 33.839680, 35.096718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854773, -0.019439, -0.518638,
		0.499823, 0.299980, 0.812520,
		0.139786, -0.953747, 0.266131,
		33.714725, 33.553555, 35.176556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367073, 34.156860, 34.975109>,  <33.616875, 34.221180, 34.990265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.367073, 34.156860, 34.975109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.245964, 33.775970, 34.959145>,  <34.173298, 33.547436, 34.949566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.245964, 33.775970, 34.959145>,  <34.367073, 34.156860, 34.975109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245964, 33.775970, 34.959145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805130, -0.233142, -0.545353,
		0.509996, -0.197249, 0.837256,
		-0.302770, -0.952228, -0.039909,
		34.155132, 33.490303, 34.947170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895149, 33.705139, 35.153618>,  <34.367073, 34.156860, 34.975109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895149, 33.705139, 35.153618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.646358, 33.487225, 34.928638>,  <34.497082, 33.356476, 34.793652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.646358, 33.487225, 34.928638>,  <34.895149, 33.705139, 35.153618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.646358, 33.487225, 34.928638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759300, -0.244113, -0.603219,
		0.191324, -0.802257, 0.565490,
		-0.621980, -0.544787, -0.562449,
		34.459766, 33.323788, 34.759903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.380352, 33.286037, 34.878437>,  <34.895149, 33.705139, 35.153618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.380352, 33.286037, 34.878437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.050949, 33.197823, 34.669365>,  <34.853306, 33.144894, 34.543922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.050949, 33.197823, 34.669365>,  <35.380352, 33.286037, 34.878437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.050949, 33.197823, 34.669365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561162, -0.181515, -0.807558,
		0.083225, -0.958339, 0.273238,
		-0.823511, -0.220540, -0.522677,
		34.803894, 33.131660, 34.512562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410812, 32.558762, 34.514961>,  <35.380352, 33.286037, 34.878437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410812, 32.558762, 34.514961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.139187, 32.774273, 34.315525>,  <34.976212, 32.903580, 34.195862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.139187, 32.774273, 34.315525>,  <35.410812, 32.558762, 34.514961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139187, 32.774273, 34.315525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293514, -0.423274, -0.857140,
		-0.672846, -0.728397, 0.129293,
		-0.679064, 0.538774, -0.498593,
		34.935467, 32.935905, 34.165947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899864, 32.130211, 34.151726>,  <35.410812, 32.558762, 34.514961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899864, 32.130211, 34.151726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.935978, 32.474709, 33.951683>,  <34.957645, 32.681408, 33.831657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.935978, 32.474709, 33.951683>,  <34.899864, 32.130211, 34.151726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.935978, 32.474709, 33.951683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184535, -0.507930, -0.841400,
		-0.978670, -0.016323, -0.204788,
		0.090284, 0.861244, -0.500108,
		34.963062, 32.733082, 33.801651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675079, 31.913574, 33.456665>,  <34.899864, 32.130211, 34.151726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.675079, 31.913574, 33.456665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.769367, 32.296062, 33.387287>,  <34.825939, 32.525555, 33.345661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.769367, 32.296062, 33.387287>,  <34.675079, 31.913574, 33.456665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.769367, 32.296062, 33.387287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259684, -0.233957, -0.936925,
		-0.936484, 0.175807, -0.303463,
		0.235715, 0.956220, -0.173442,
		34.840080, 32.582928, 33.335255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.274319, 32.145763, 32.908825>,  <34.675079, 31.913574, 33.456665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.274319, 32.145763, 32.908825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589626, 32.390213, 32.937546>,  <34.778812, 32.536880, 32.954777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589626, 32.390213, 32.937546>,  <34.274319, 32.145763, 32.908825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589626, 32.390213, 32.937546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160171, -0.091119, -0.982875,
		-0.594114, 0.786274, -0.169711,
		0.788273, 0.611122, 0.071803,
		34.826107, 32.573551, 32.959087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149731, 32.692211, 32.449806>,  <34.274319, 32.145763, 32.908825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149731, 32.692211, 32.449806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.547077, 32.680248, 32.494205>,  <34.785484, 32.673069, 32.520844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.547077, 32.680248, 32.494205>,  <34.149731, 32.692211, 32.449806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.547077, 32.680248, 32.494205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109037, -0.060670, -0.992185,
		0.036411, 0.997710, -0.057006,
		0.993371, -0.029910, 0.110996,
		34.845089, 32.671276, 32.527504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.428543, 33.131119, 31.988306>,  <34.149731, 32.692211, 32.449806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.428543, 33.131119, 31.988306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751652, 32.905060, 32.055363>,  <34.945518, 32.769424, 32.095596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751652, 32.905060, 32.055363>,  <34.428543, 33.131119, 31.988306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.751652, 32.905060, 32.055363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141114, -0.090733, -0.985827,
		0.572352, 0.819983, 0.006459,
		0.807775, -0.565151, 0.167642,
		34.993984, 32.735516, 32.105656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957462, 33.475288, 31.663332>,  <34.428543, 33.131119, 31.988306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957462, 33.475288, 31.663332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.044712, 33.085846, 31.690176>,  <35.097061, 32.852180, 31.706282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.044712, 33.085846, 31.690176>,  <34.957462, 33.475288, 31.663332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.044712, 33.085846, 31.690176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133972, -0.038241, -0.990247,
		0.966681, 0.224990, 0.122095,
		0.218127, -0.973610, 0.067109,
		35.110149, 32.793762, 31.710308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322422, 33.305889, 30.988396>,  <34.957462, 33.475288, 31.663332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.322422, 33.305889, 30.988396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.274235, 32.936848, 31.134979>,  <35.245323, 32.715424, 31.222929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.274235, 32.936848, 31.134979>,  <35.322422, 33.305889, 30.988396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274235, 32.936848, 31.134979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291475, -0.385750, -0.875351,
		0.948963, 0.001366, 0.315384,
		-0.120463, -0.922602, 0.366460,
		35.238094, 32.660069, 31.244917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918945, 32.942337, 30.812004>,  <35.322422, 33.305889, 30.988396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918945, 32.942337, 30.812004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637630, 32.666294, 30.880287>,  <35.468842, 32.500668, 30.921257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637630, 32.666294, 30.880287>,  <35.918945, 32.942337, 30.812004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637630, 32.666294, 30.880287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125575, -0.356942, -0.925647,
		0.699727, -0.629559, 0.337693,
		-0.703287, -0.690107, 0.170706,
		35.426643, 32.459263, 30.931499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342884, 32.297199, 30.633032>,  <35.918945, 32.942337, 30.812004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.342884, 32.297199, 30.633032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.945606, 32.252346, 30.620487>,  <35.707237, 32.225433, 30.612961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.945606, 32.252346, 30.620487>,  <36.342884, 32.297199, 30.633032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.945606, 32.252346, 30.620487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071043, -0.370199, -0.926232,
		0.092254, -0.922160, 0.375648,
		-0.993198, -0.112136, -0.031360,
		35.647648, 32.218704, 30.611078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310101, 31.764925, 30.256681>,  <36.342884, 32.297199, 30.633032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310101, 31.764925, 30.256681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935135, 31.904001, 30.264286>,  <35.710155, 31.987448, 30.268848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935135, 31.904001, 30.264286>,  <36.310101, 31.764925, 30.256681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935135, 31.904001, 30.264286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150768, -0.356059, -0.922221,
		-0.313872, -0.867373, 0.386196,
		-0.937418, 0.347685, 0.019015,
		35.653912, 32.008308, 30.269989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831348, 31.195618, 30.009136>,  <36.310101, 31.764925, 30.256681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831348, 31.195618, 30.009136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.591888, 31.500473, 29.910540>,  <35.448212, 31.683386, 29.851381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.591888, 31.500473, 29.910540>,  <35.831348, 31.195618, 30.009136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.591888, 31.500473, 29.910540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128839, -0.395336, -0.909456,
		-0.790579, -0.512691, 0.334863,
		-0.598653, 0.762141, -0.246489,
		35.412292, 31.729115, 29.836594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217293, 30.920692, 29.747435>,  <35.831348, 31.195618, 30.009136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217293, 30.920692, 29.747435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.238857, 31.293234, 29.603394>,  <35.251797, 31.516758, 29.516970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.238857, 31.293234, 29.603394>,  <35.217293, 30.920692, 29.747435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238857, 31.293234, 29.603394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036542, -0.358545, -0.932797,
		-0.997877, 0.063443, 0.014705,
		0.053907, 0.931354, -0.360103,
		35.255028, 31.572639, 29.495363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758877, 30.968859, 29.226149>,  <35.217293, 30.920692, 29.747435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.758877, 30.968859, 29.226149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.003658, 31.272392, 29.136986>,  <35.150528, 31.454512, 29.083488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.003658, 31.272392, 29.136986>,  <34.758877, 30.968859, 29.226149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.003658, 31.272392, 29.136986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041710, -0.312413, -0.949030,
		-0.789795, 0.571463, -0.222832,
		0.611951, 0.758833, -0.222907,
		35.187244, 31.500042, 29.070114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.431583, 31.311169, 28.650341>,  <34.758877, 30.968859, 29.226149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.431583, 31.311169, 28.650341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825294, 31.381599, 28.655952>,  <35.061520, 31.423857, 28.659319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825294, 31.381599, 28.655952>,  <34.431583, 31.311169, 28.650341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825294, 31.381599, 28.655952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049909, -0.201038, -0.978311,
		-0.169436, 0.963629, -0.206664,
		0.984277, 0.176076, 0.014030,
		35.120579, 31.434422, 28.660162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.518269, 31.571081, 27.986794>,  <34.431583, 31.311169, 28.650341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.518269, 31.571081, 27.986794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899151, 31.516216, 28.095961>,  <35.127682, 31.483297, 28.161461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899151, 31.516216, 28.095961>,  <34.518269, 31.571081, 27.986794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899151, 31.516216, 28.095961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285092, 0.078387, -0.955290,
		0.109636, 0.987442, 0.113745,
		0.952209, -0.137162, 0.272918,
		35.184814, 31.475067, 28.177835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907093, 32.111614, 27.699749>,  <34.518269, 31.571081, 27.986794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907093, 32.111614, 27.699749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.159077, 31.807367, 27.762497>,  <35.310268, 31.624819, 27.800146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.159077, 31.807367, 27.762497>,  <34.907093, 32.111614, 27.699749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.159077, 31.807367, 27.762497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335367, 0.084242, -0.938313,
		0.700484, 0.643710, 0.308156,
		0.629961, -0.760619, 0.156869,
		35.348064, 31.579182, 27.809557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524178, 32.246281, 27.262379>,  <34.907093, 32.111614, 27.699749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.524178, 32.246281, 27.262379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.587914, 31.865747, 27.367882>,  <35.626156, 31.637426, 27.431185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.587914, 31.865747, 27.367882>,  <35.524178, 32.246281, 27.262379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.587914, 31.865747, 27.367882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300469, -0.207763, -0.930889,
		0.940387, 0.227582, 0.252741,
		0.159344, -0.951336, 0.263759,
		35.635715, 31.580347, 27.447010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241329, 32.095158, 27.091400>,  <35.524178, 32.246281, 27.262379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241329, 32.095158, 27.091400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.002701, 31.774710, 27.110611>,  <35.859524, 31.582441, 27.122137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.002701, 31.774710, 27.110611>,  <36.241329, 32.095158, 27.091400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002701, 31.774710, 27.110611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282020, -0.265283, -0.922003,
		0.751377, -0.536497, 0.384193,
		-0.596572, -0.801122, 0.048025,
		35.823730, 31.534372, 27.125019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600410, 31.616093, 26.922041>,  <36.241329, 32.095158, 27.091400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.600410, 31.616093, 26.922041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.233898, 31.471336, 26.853388>,  <36.013988, 31.384481, 26.812195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.233898, 31.471336, 26.853388>,  <36.600410, 31.616093, 26.922041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.233898, 31.471336, 26.853388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252451, -0.189133, -0.948945,
		0.310956, -0.912832, 0.264660,
		-0.916283, -0.361894, -0.171633,
		35.959015, 31.362768, 26.801897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715027, 30.916508, 26.604357>,  <36.600410, 31.616093, 26.922041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715027, 30.916508, 26.604357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.349998, 31.035030, 26.491629>,  <36.130981, 31.106144, 26.423992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.349998, 31.035030, 26.491629>,  <36.715027, 30.916508, 26.604357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.349998, 31.035030, 26.491629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156119, -0.384520, -0.909819,
		-0.377918, -0.874280, 0.304652,
		-0.912582, 0.296276, -0.281809,
		36.076229, 31.123922, 26.407082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.505814, 30.302563, 26.278172>,  <36.715027, 30.916508, 26.604357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.505814, 30.302563, 26.278172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294823, 30.615814, 26.146429>,  <36.168228, 30.803766, 26.067383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294823, 30.615814, 26.146429>,  <36.505814, 30.302563, 26.278172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294823, 30.615814, 26.146429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198264, -0.263502, -0.944064,
		-0.826112, -0.563270, -0.016275,
		-0.527475, 0.783130, -0.329358,
		36.136581, 30.850754, 26.047621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175629, 30.008886, 25.699150>,  <36.505814, 30.302563, 26.278172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175629, 30.008886, 25.699150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.069519, 30.386873, 25.622559>,  <36.005852, 30.613665, 25.576603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.069519, 30.386873, 25.622559>,  <36.175629, 30.008886, 25.699150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.069519, 30.386873, 25.622559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284971, -0.112878, -0.951867,
		-0.921097, -0.307073, -0.239345,
		-0.265276, 0.944968, -0.191479,
		35.989937, 30.670364, 25.565115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.576809, 29.955664, 25.186293>,  <36.175629, 30.008886, 25.699150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.576809, 29.955664, 25.186293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769650, 30.304781, 25.155811>,  <35.885353, 30.514252, 25.137524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769650, 30.304781, 25.155811>,  <35.576809, 29.955664, 25.186293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769650, 30.304781, 25.155811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218116, -0.203808, -0.954404,
		-0.848529, 0.443501, -0.288626,
		0.482103, 0.872794, -0.076202,
		35.914280, 30.566620, 25.132950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382835, 30.209534, 24.534178>,  <35.576809, 29.955664, 25.186293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.382835, 30.209534, 24.534178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690811, 30.438881, 24.646212>,  <35.875595, 30.576488, 24.713432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690811, 30.438881, 24.646212>,  <35.382835, 30.209534, 24.534178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690811, 30.438881, 24.646212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255711, 0.124909, -0.958650,
		-0.584643, 0.809721, -0.050444,
		0.769938, 0.573367, 0.280082,
		35.921791, 30.610891, 24.730236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423523, 30.932787, 24.191828>,  <35.382835, 30.209534, 24.534178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423523, 30.932787, 24.191828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798229, 30.821684, 24.276991>,  <36.023052, 30.755022, 24.328089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798229, 30.821684, 24.276991>,  <35.423523, 30.932787, 24.191828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798229, 30.821684, 24.276991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233771, 0.043893, -0.971301,
		0.260442, 0.959648, 0.106049,
		0.936761, -0.277759, 0.212906,
		36.079258, 30.738356, 24.340862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.880363, 31.280342, 23.747482>,  <35.423523, 30.932787, 24.191828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.880363, 31.280342, 23.747482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.103115, 30.965805, 23.854475>,  <36.236767, 30.777082, 23.918671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.103115, 30.965805, 23.854475>,  <35.880363, 31.280342, 23.747482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103115, 30.965805, 23.854475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137271, -0.230476, -0.963347,
		0.819169, 0.573190, -0.020406,
		0.556884, -0.786342, 0.267481,
		36.270180, 30.729902, 23.934719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446545, 31.229685, 23.321892>,  <35.880363, 31.280342, 23.747482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.446545, 31.229685, 23.321892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.419979, 30.847567, 23.437130>,  <36.404041, 30.618296, 23.506273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.419979, 30.847567, 23.437130>,  <36.446545, 31.229685, 23.321892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419979, 30.847567, 23.437130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099137, -0.280986, -0.954577,
		0.992855, -0.091958, -0.076044,
		-0.066414, -0.955296, 0.288095,
		36.400055, 30.560978, 23.523558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803425, 30.858459, 22.869434>,  <36.446545, 31.229685, 23.321892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803425, 30.858459, 22.869434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.583607, 30.572018, 23.041571>,  <36.451717, 30.400152, 23.144852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.583607, 30.572018, 23.041571>,  <36.803425, 30.858459, 22.869434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583607, 30.572018, 23.041571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244770, -0.354488, -0.902456,
		0.798804, -0.601275, 0.019526,
		-0.549546, -0.716105, 0.430340,
		36.418743, 30.357185, 23.170673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978886, 30.158442, 22.537149>,  <36.803425, 30.858459, 22.869434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978886, 30.158442, 22.537149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.612457, 30.102345, 22.687424>,  <36.392601, 30.068686, 22.777588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.612457, 30.102345, 22.687424>,  <36.978886, 30.158442, 22.537149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612457, 30.102345, 22.687424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267681, -0.483723, -0.833282,
		0.298591, -0.863912, 0.405586,
		-0.916073, -0.140243, 0.375688,
		36.337635, 30.060272, 22.800131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823681, 29.560009, 22.277491>,  <36.978886, 30.158442, 22.537149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823681, 29.560009, 22.277491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.462063, 29.710886, 22.357910>,  <36.245090, 29.801413, 22.406162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.462063, 29.710886, 22.357910>,  <36.823681, 29.560009, 22.277491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.462063, 29.710886, 22.357910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333767, -0.329146, -0.883325,
		-0.267003, -0.865675, 0.423457,
		-0.904051, 0.377186, 0.201051,
		36.190849, 29.824043, 22.418224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401409, 29.116203, 21.958559>,  <36.823681, 29.560009, 22.277491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.401409, 29.116203, 21.958559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.163956, 29.433537, 22.012548>,  <36.021484, 29.623936, 22.044943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.163956, 29.433537, 22.012548>,  <36.401409, 29.116203, 21.958559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163956, 29.433537, 22.012548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419384, -0.161841, -0.893266,
		-0.686813, -0.586881, 0.428786,
		-0.593637, 0.793333, 0.134974,
		35.985863, 29.671535, 22.053041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747009, 28.999304, 21.595318>,  <36.401409, 29.116203, 21.958559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747009, 28.999304, 21.595318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769878, 29.398645, 21.597233>,  <35.783600, 29.638250, 21.598383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769878, 29.398645, 21.597233>,  <35.747009, 28.999304, 21.595318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769878, 29.398645, 21.597233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630028, 0.039802, -0.775552,
		-0.774465, 0.041325, 0.631266,
		0.057176, 0.998353, 0.004789,
		35.787029, 29.698151, 21.598669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.783077, 28.641432, 20.830503>,  <35.747009, 28.999304, 21.595318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.783077, 28.641432, 20.830503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.616188, 28.999847, 20.769785>,  <35.516056, 29.214897, 20.733353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.616188, 28.999847, 20.769785>,  <35.783077, 28.641432, 20.830503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616188, 28.999847, 20.769785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565325, -0.386670, -0.728625,
		-0.711571, -0.218184, 0.667880,
		-0.417223, 0.896037, -0.151798,
		35.491020, 29.268658, 20.724245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931587, 28.669506, 20.876593>,  <35.783077, 28.641432, 20.830503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.931587, 28.669506, 20.876593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147221, 28.899500, 20.630411>,  <35.276600, 29.037497, 20.482702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147221, 28.899500, 20.630411>,  <34.931587, 28.669506, 20.876593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147221, 28.899500, 20.630411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410143, -0.459024, -0.788086,
		-0.735645, 0.677268, -0.011626,
		0.539082, 0.574983, -0.615456,
		35.308945, 29.071995, 20.445774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.509750, 28.740721, 20.275986>,  <34.931587, 28.669506, 20.876593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.509750, 28.740721, 20.275986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881653, 28.845579, 20.172571>,  <35.104794, 28.908493, 20.110523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881653, 28.845579, 20.172571>,  <34.509750, 28.740721, 20.275986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881653, 28.845579, 20.172571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234947, -0.118220, -0.964792,
		-0.283479, 0.957760, -0.048325,
		0.929752, 0.262145, -0.258536,
		35.160580, 28.924223, 20.095011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399548, 29.091827, 19.686857>,  <34.509750, 28.740721, 20.275986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399548, 29.091827, 19.686857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.784447, 28.983841, 19.700705>,  <35.015385, 28.919050, 19.709013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.784447, 28.983841, 19.700705>,  <34.399548, 29.091827, 19.686857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784447, 28.983841, 19.700705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043472, -0.278005, -0.959595,
		0.268682, 0.921863, -0.279246,
		0.962248, -0.269965, 0.034619,
		35.073120, 28.902851, 19.711090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.829086, 29.326225, 20.213772>,  <34.399548, 29.091827, 19.686857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.829086, 29.326225, 20.213772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855385, 29.536524, 19.874533>,  <33.871166, 29.662703, 19.670990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855385, 29.536524, 19.874533>,  <33.829086, 29.326225, 20.213772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855385, 29.536524, 19.874533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009012, 0.849587, 0.527371,
		0.997795, -0.042317, 0.051121,
		0.065748, 0.525748, -0.848095,
		33.875111, 29.694248, 19.620104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409046, 29.741804, 20.338720>,  <33.829086, 29.326225, 20.213772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409046, 29.741804, 20.338720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.170303, 29.898865, 20.058836>,  <34.027058, 29.993101, 19.890905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.170303, 29.898865, 20.058836>,  <34.409046, 29.741804, 20.338720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.170303, 29.898865, 20.058836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010486, 0.875816, 0.482531,
		0.802282, 0.280663, -0.526851,
		-0.596853, 0.392650, -0.699709,
		33.991249, 30.016661, 19.848923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618629, 30.386122, 20.057674>,  <34.409046, 29.741804, 20.338720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618629, 30.386122, 20.057674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.225658, 30.383272, 19.983076>,  <33.989876, 30.381561, 19.938316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.225658, 30.383272, 19.983076>,  <34.618629, 30.386122, 20.057674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.225658, 30.383272, 19.983076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059989, 0.958301, 0.279394,
		0.176727, 0.285673, -0.941891,
		-0.982430, -0.007126, -0.186495,
		33.930931, 30.381134, 19.927128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478500, 30.907669, 19.566048>,  <34.618629, 30.386122, 20.057674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.478500, 30.907669, 19.566048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.184956, 30.814920, 19.821449>,  <34.008831, 30.759272, 19.974689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.184956, 30.814920, 19.821449>,  <34.478500, 30.907669, 19.566048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.184956, 30.814920, 19.821449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197687, 0.826361, 0.527302,
		-0.649901, 0.513188, -0.560595,
		-0.733859, -0.231872, 0.638504,
		33.964798, 30.745359, 20.013000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.011826, 31.444193, 19.602272>,  <34.478500, 30.907669, 19.566048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.011826, 31.444193, 19.602272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996052, 31.238188, 19.944782>,  <33.986588, 31.114584, 20.150288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996052, 31.238188, 19.944782>,  <34.011826, 31.444193, 19.602272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996052, 31.238188, 19.944782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177211, 0.839751, 0.513239,
		-0.983383, 0.171981, 0.058152,
		-0.039434, -0.515015, 0.856274,
		33.984222, 31.083683, 20.201664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.852547, 31.896620, 20.085581>,  <34.011826, 31.444193, 19.602272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.852547, 31.896620, 20.085581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.953159, 31.585863, 20.316465>,  <34.013527, 31.399410, 20.454996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.953159, 31.585863, 20.316465>,  <33.852547, 31.896620, 20.085581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.953159, 31.585863, 20.316465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342955, 0.629233, 0.697458,
		-0.905048, 0.022521, 0.424713,
		0.251536, -0.776890, 0.577210,
		34.028622, 31.352797, 20.489628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.585499, 31.878639, 20.687014>,  <33.852547, 31.896620, 20.085581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.585499, 31.878639, 20.687014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.900677, 31.666630, 20.812376>,  <34.089783, 31.539425, 20.887594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.900677, 31.666630, 20.812376>,  <33.585499, 31.878639, 20.687014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.900677, 31.666630, 20.812376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043862, 0.556005, 0.830021,
		-0.614184, -0.640262, 0.461348,
		0.787943, -0.530021, 0.313406,
		34.137058, 31.507624, 20.906399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472412, 31.694319, 21.316921>,  <33.585499, 31.878639, 20.687014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472412, 31.694319, 21.316921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869709, 31.647923, 21.318045>,  <34.108089, 31.620085, 21.318720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869709, 31.647923, 21.318045>,  <33.472412, 31.694319, 21.316921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.869709, 31.647923, 21.318045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047063, 0.424901, 0.904016,
		-0.106052, -0.897778, 0.427490,
		0.993247, -0.115992, 0.002810,
		34.167683, 31.613125, 21.318888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.606770, 31.527964, 21.951878>,  <33.472412, 31.694319, 21.316921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.606770, 31.527964, 21.951878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.983238, 31.617538, 21.850649>,  <34.209122, 31.671284, 21.789911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.983238, 31.617538, 21.850649>,  <33.606770, 31.527964, 21.951878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.983238, 31.617538, 21.850649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094701, 0.544109, 0.833653,
		0.324383, -0.808578, 0.490894,
		0.941173, 0.223935, -0.253073,
		34.265591, 31.684719, 21.774727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105850, 31.402020, 22.495031>,  <33.606770, 31.527964, 21.951878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105850, 31.402020, 22.495031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254013, 31.701977, 22.275774>,  <34.342911, 31.881950, 22.144220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254013, 31.701977, 22.275774>,  <34.105850, 31.402020, 22.495031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.254013, 31.701977, 22.275774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166012, 0.527171, 0.833385,
		0.913913, -0.399692, 0.070778,
		0.370409, 0.749891, -0.548142,
		34.365135, 31.926945, 22.111332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670315, 31.577053, 22.972090>,  <34.105850, 31.402020, 22.495031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670315, 31.577053, 22.972090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.636932, 31.872917, 22.704975>,  <34.616905, 32.050434, 22.544706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.636932, 31.872917, 22.704975>,  <34.670315, 31.577053, 22.972090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.636932, 31.872917, 22.704975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241170, 0.665195, 0.706649,
		0.966888, -0.102078, -0.233897,
		-0.083454, 0.739659, -0.667787,
		34.611897, 32.094814, 22.504639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161842, 32.047729, 23.142056>,  <34.670315, 31.577053, 22.972090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161842, 32.047729, 23.142056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899780, 32.269417, 22.936678>,  <34.742542, 32.402428, 22.813452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899780, 32.269417, 22.936678>,  <35.161842, 32.047729, 23.142056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899780, 32.269417, 22.936678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187103, 0.777462, 0.600454,
		0.731963, 0.297321, -0.613050,
		-0.655151, 0.554214, -0.513444,
		34.703236, 32.435680, 22.782644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504536, 32.705559, 23.047937>,  <35.161842, 32.047729, 23.142056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504536, 32.705559, 23.047937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.105835, 32.736748, 23.039948>,  <34.866615, 32.755463, 23.035154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.105835, 32.736748, 23.039948>,  <35.504536, 32.705559, 23.047937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105835, 32.736748, 23.039948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037230, 0.666632, 0.744457,
		0.071364, 0.741297, -0.667372,
		-0.996755, 0.077973, -0.019975,
		34.806808, 32.760139, 23.033955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.392242, 33.371819, 23.242044>,  <35.504536, 32.705559, 23.047937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.392242, 33.371819, 23.242044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.026783, 33.212204, 23.273062>,  <34.807507, 33.116436, 23.291672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.026783, 33.212204, 23.273062>,  <35.392242, 33.371819, 23.242044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026783, 33.212204, 23.273062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107634, 0.421416, 0.900457,
		-0.391997, 0.814355, -0.427976,
		-0.913648, -0.399041, 0.077542,
		34.752689, 33.092491, 23.296324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.970619, 33.941845, 23.347395>,  <35.392242, 33.371819, 23.242044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.970619, 33.941845, 23.347395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.746201, 33.644451, 23.492975>,  <34.611549, 33.466015, 23.580324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.746201, 33.644451, 23.492975>,  <34.970619, 33.941845, 23.347395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746201, 33.644451, 23.492975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059196, 0.474579, 0.878220,
		-0.825667, 0.471176, -0.310271,
		-0.561044, -0.743484, 0.363952,
		34.577888, 33.421406, 23.602161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307823, 34.260120, 23.632957>,  <34.970619, 33.941845, 23.347395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.307823, 34.260120, 23.632957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348576, 33.902294, 23.807028>,  <34.373028, 33.687599, 23.911470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348576, 33.902294, 23.807028>,  <34.307823, 34.260120, 23.632957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348576, 33.902294, 23.807028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199872, 0.410126, 0.889858,
		-0.974511, -0.177636, -0.137015,
		0.101878, -0.894562, 0.435177,
		34.379139, 33.633926, 23.937580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856331, 34.339916, 24.193533>,  <34.307823, 34.260120, 23.632957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856331, 34.339916, 24.193533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065365, 34.014591, 24.295847>,  <34.190784, 33.819397, 24.357235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065365, 34.014591, 24.295847>,  <33.856331, 34.339916, 24.193533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065365, 34.014591, 24.295847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226435, 0.156838, 0.961316,
		-0.821968, -0.560289, -0.102201,
		0.522586, -0.813313, 0.255785,
		34.222141, 33.770596, 24.372583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460464, 33.911812, 24.528168>,  <33.856331, 34.339916, 24.193533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460464, 33.911812, 24.528168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.826683, 33.818336, 24.659107>,  <34.046413, 33.762253, 24.737671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.826683, 33.818336, 24.659107>,  <33.460464, 33.911812, 24.528168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826683, 33.818336, 24.659107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285158, 0.196828, 0.938053,
		-0.283641, -0.952182, 0.113568,
		0.915550, -0.233686, 0.327350,
		34.101349, 33.748230, 24.757313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.357372, 33.437359, 25.064489>,  <33.460464, 33.911812, 24.528168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.357372, 33.437359, 25.064489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711086, 33.617859, 25.112518>,  <33.923313, 33.726158, 25.141336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711086, 33.617859, 25.112518>,  <33.357372, 33.437359, 25.064489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711086, 33.617859, 25.112518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194620, 0.122424, 0.973209,
		0.424464, -0.883959, 0.196080,
		0.884282, 0.451253, 0.120072,
		33.976372, 33.753235, 25.148540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.619705, 33.215969, 25.675797>,  <33.357372, 33.437359, 25.064489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.619705, 33.215969, 25.675797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835346, 33.548847, 25.623930>,  <33.964729, 33.748573, 25.592810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835346, 33.548847, 25.623930>,  <33.619705, 33.215969, 25.675797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835346, 33.548847, 25.623930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194531, 0.272824, 0.942191,
		0.819466, -0.482714, 0.308969,
		0.539103, 0.832198, -0.129667,
		33.997078, 33.798508, 25.585030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.945496, 33.284004, 26.318691>,  <33.619705, 33.215969, 25.675797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.945496, 33.284004, 26.318691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.974445, 33.646564, 26.152220>,  <33.991814, 33.864101, 26.052338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.974445, 33.646564, 26.152220>,  <33.945496, 33.284004, 26.318691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.974445, 33.646564, 26.152220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243284, 0.420713, 0.873964,
		0.967251, 0.037997, 0.250961,
		0.072375, 0.906398, -0.416179,
		33.996159, 33.918484, 26.027367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.205025, 33.760456, 26.833372>,  <33.945496, 33.284004, 26.318691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.205025, 33.760456, 26.833372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.042999, 34.045490, 26.604237>,  <33.945786, 34.216511, 26.466755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.042999, 34.045490, 26.604237>,  <34.205025, 33.760456, 26.833372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.042999, 34.045490, 26.604237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427825, 0.405985, 0.807553,
		0.808015, 0.572185, 0.140412,
		-0.405065, 0.712587, -0.572837,
		33.921478, 34.259266, 26.432384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391563, 34.420818, 27.052513>,  <34.205025, 33.760456, 26.833372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.391563, 34.420818, 27.052513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045910, 34.490974, 26.863831>,  <33.838516, 34.533070, 26.750622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045910, 34.490974, 26.863831>,  <34.391563, 34.420818, 27.052513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045910, 34.490974, 26.863831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325587, 0.519878, 0.789759,
		0.383746, 0.836041, -0.392140,
		-0.864136, 0.175391, -0.471706,
		33.786671, 34.543591, 26.722319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.331741, 35.112801, 27.054220>,  <34.391563, 34.420818, 27.052513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.331741, 35.112801, 27.054220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.959423, 34.990673, 26.973816>,  <33.736034, 34.917397, 26.925573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.959423, 34.990673, 26.973816>,  <34.331741, 35.112801, 27.054220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.959423, 34.990673, 26.973816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350950, 0.592542, 0.725071,
		-0.102273, 0.745435, -0.658686,
		-0.930792, -0.305321, -0.201010,
		33.680187, 34.899078, 26.913513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867970, 35.727077, 27.145338>,  <34.331741, 35.112801, 27.054220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.867970, 35.727077, 27.145338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.599720, 35.433975, 27.191526>,  <33.438770, 35.258114, 27.219240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.599720, 35.433975, 27.191526>,  <33.867970, 35.727077, 27.145338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.599720, 35.433975, 27.191526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535479, 0.585922, 0.608241,
		-0.513351, 0.346065, -0.785308,
		-0.670621, -0.732758, 0.115473,
		33.398533, 35.214149, 27.226168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.362343, 36.117905, 27.457788>,  <33.867970, 35.727077, 27.145338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.362343, 36.117905, 27.457788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262627, 35.734589, 27.513699>,  <33.202797, 35.504601, 27.547245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262627, 35.734589, 27.513699>,  <33.362343, 36.117905, 27.457788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262627, 35.734589, 27.513699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596926, 0.265704, 0.757021,
		-0.762583, 0.105284, -0.638265,
		-0.249292, -0.958289, 0.139774,
		33.187840, 35.447102, 27.555632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.671688, 36.046547, 27.490192>,  <33.362343, 36.117905, 27.457788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.671688, 36.046547, 27.490192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762917, 35.708714, 27.683960>,  <32.817654, 35.506012, 27.800220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762917, 35.708714, 27.683960>,  <32.671688, 36.046547, 27.490192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762917, 35.708714, 27.683960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528754, 0.310332, 0.790009,
		-0.817560, -0.436314, -0.375800,
		0.228070, -0.844585, 0.484417,
		32.831337, 35.455338, 27.829285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.064358, 35.657032, 27.724468>,  <32.671688, 36.046547, 27.490192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.064358, 35.657032, 27.724468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.341698, 35.489620, 27.959110>,  <32.508102, 35.389172, 28.099895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.341698, 35.489620, 27.959110>,  <32.064358, 35.657032, 27.724468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.341698, 35.489620, 27.959110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557763, 0.203721, 0.804611,
		-0.456256, -0.885060, -0.092190,
		0.693347, -0.418529, 0.586603,
		32.549702, 35.364063, 28.135092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.679405, 35.232903, 28.272308>,  <32.064358, 35.657032, 27.724468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.679405, 35.232903, 28.272308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.043369, 35.266365, 28.434820>,  <32.261749, 35.286442, 28.532328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.043369, 35.266365, 28.434820>,  <31.679405, 35.232903, 28.272308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.043369, 35.266365, 28.434820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414393, 0.139704, 0.899311,
		0.018471, -0.986653, 0.161784,
		0.909911, 0.083653, 0.406282,
		32.316341, 35.291462, 28.556705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.773520, 34.657722, 28.825138>,  <31.679405, 35.232903, 28.272308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.773520, 34.657722, 28.825138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.974909, 35.000042, 28.872679>,  <32.095741, 35.205433, 28.901203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.974909, 35.000042, 28.872679>,  <31.773520, 34.657722, 28.825138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.974909, 35.000042, 28.872679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315684, 0.054159, 0.947317,
		0.804275, -0.514468, 0.297429,
		0.503473, 0.855798, 0.118851,
		32.125950, 35.256783, 28.908335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.064804, 34.533901, 29.506159>,  <31.773520, 34.657722, 28.825138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.064804, 34.533901, 29.506159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.131508, 34.923454, 29.444529>,  <32.171528, 35.157188, 29.407551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.131508, 34.923454, 29.444529>,  <32.064804, 34.533901, 29.506159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.131508, 34.923454, 29.444529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013971, 0.153912, 0.987986,
		0.985899, -0.166905, 0.012059,
		0.166756, 0.973886, -0.154074,
		32.181534, 35.215622, 29.398306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.568943, 34.763031, 29.993814>,  <32.064804, 34.533901, 29.506159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.568943, 34.763031, 29.993814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353527, 35.079819, 29.878742>,  <32.224277, 35.269890, 29.809698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353527, 35.079819, 29.878742>,  <32.568943, 34.763031, 29.993814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353527, 35.079819, 29.878742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121097, 0.265130, 0.956578,
		0.833851, 0.549996, -0.046880,
		-0.538543, 0.791966, -0.287682,
		32.191963, 35.317410, 29.792439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.912472, 35.341064, 30.268805>,  <32.568943, 34.763031, 29.993814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.912472, 35.341064, 30.268805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.536316, 35.461163, 30.204903>,  <32.310623, 35.533222, 30.166561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.536316, 35.461163, 30.204903>,  <32.912472, 35.341064, 30.268805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.536316, 35.461163, 30.204903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088449, 0.237662, 0.967312,
		0.328403, 0.923778, -0.196938,
		-0.940387, 0.300250, -0.159756,
		32.254200, 35.551239, 30.156975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880920, 35.993778, 30.641605>,  <32.912472, 35.341064, 30.268805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.880920, 35.993778, 30.641605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.495216, 35.909584, 30.577225>,  <32.263794, 35.859066, 30.538597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.495216, 35.909584, 30.577225>,  <32.880920, 35.993778, 30.641605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.495216, 35.909584, 30.577225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223730, 0.321300, 0.920169,
		-0.141971, 0.923288, -0.356907,
		-0.964256, -0.210488, -0.160952,
		32.205940, 35.846439, 30.528938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.346165, 36.588181, 30.880749>,  <32.880920, 35.993778, 30.641605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.346165, 36.588181, 30.880749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.108536, 36.266468, 30.886595>,  <31.965960, 36.073441, 30.890102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.108536, 36.266468, 30.886595>,  <32.346165, 36.588181, 30.880749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.108536, 36.266468, 30.886595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269643, 0.216220, 0.938372,
		-0.757876, 0.553515, -0.345318,
		-0.594068, -0.804282, 0.014617,
		31.930315, 36.025185, 30.890980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.897694, 36.815781, 31.402315>,  <32.346165, 36.588181, 30.880749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.897694, 36.815781, 31.402315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.851133, 36.421886, 31.350548>,  <31.823196, 36.185551, 31.319487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.851133, 36.421886, 31.350548>,  <31.897694, 36.815781, 31.402315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.851133, 36.421886, 31.350548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309886, -0.087792, 0.946712,
		-0.943622, 0.150302, -0.294937,
		-0.116400, -0.984734, -0.129419,
		31.816214, 36.126465, 31.311722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.223825, 36.659092, 31.676777>,  <31.897694, 36.815781, 31.402315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.223825, 36.659092, 31.676777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.417299, 36.309135, 31.666866>,  <31.533384, 36.099163, 31.660921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.417299, 36.309135, 31.666866>,  <31.223825, 36.659092, 31.676777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.417299, 36.309135, 31.666866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355326, -0.222153, 0.907960,
		-0.799870, -0.430363, -0.418324,
		0.483685, -0.874892, -0.024775,
		31.562405, 36.046669, 31.659433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.719685, 36.139641, 31.982521>,  <31.223825, 36.659092, 31.676777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.719685, 36.139641, 31.982521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.091341, 36.002007, 32.036636>,  <31.314335, 35.919426, 32.069107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.091341, 36.002007, 32.036636>,  <30.719685, 36.139641, 31.982521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.091341, 36.002007, 32.036636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260651, -0.350081, 0.899725,
		-0.262218, -0.871235, -0.414961,
		0.929141, -0.344084, 0.135291,
		31.370083, 35.898781, 32.077225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.626310, 35.497177, 32.244377>,  <30.719685, 36.139641, 31.982521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.626310, 35.497177, 32.244377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.010609, 35.557934, 32.337242>,  <31.241188, 35.594387, 32.392960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.010609, 35.557934, 32.337242>,  <30.626310, 35.497177, 32.244377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.010609, 35.557934, 32.337242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179237, -0.298910, 0.937298,
		0.211761, -0.942116, -0.259952,
		0.960745, 0.151890, 0.232159,
		31.298832, 35.603500, 32.406891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.664219, 35.138523, 32.831104>,  <30.626310, 35.497177, 32.244377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.664219, 35.138523, 32.831104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.033474, 35.292000, 32.840858>,  <31.255028, 35.384087, 32.846710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.033474, 35.292000, 32.840858>,  <30.664219, 35.138523, 32.831104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.033474, 35.292000, 32.840858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154100, -0.427378, 0.890843,
		0.352230, -0.818614, -0.453657,
		0.923140, 0.383690, 0.024387,
		31.310415, 35.407108, 32.848175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.003799, 34.656231, 33.137005>,  <30.664219, 35.138523, 32.831104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.003799, 34.656231, 33.137005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.228991, 34.982052, 33.192947>,  <31.364105, 35.177544, 33.226513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.228991, 34.982052, 33.192947>,  <31.003799, 34.656231, 33.137005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.228991, 34.982052, 33.192947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152626, -0.268773, 0.951034,
		0.812257, -0.514066, -0.275635,
		0.562978, 0.814553, 0.139853,
		31.397884, 35.226418, 33.234905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.593838, 34.463673, 33.578472>,  <31.003799, 34.656231, 33.137005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.593838, 34.463673, 33.578472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.522144, 34.856472, 33.602295>,  <31.479128, 35.092152, 33.616589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.522144, 34.856472, 33.602295>,  <31.593838, 34.463673, 33.578472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.522144, 34.856472, 33.602295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076472, -0.046443, 0.995989,
		0.980830, 0.183067, -0.066771,
		-0.179232, 0.982003, 0.059552,
		31.468374, 35.151073, 33.620159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.062515, 34.723568, 33.958195>,  <31.593838, 34.463673, 33.578472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.062515, 34.723568, 33.958195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.804384, 35.024124, 34.013287>,  <31.649506, 35.204456, 34.046341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.804384, 35.024124, 34.013287>,  <32.062515, 34.723568, 33.958195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.804384, 35.024124, 34.013287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198397, -0.009258, 0.980078,
		0.737696, 0.659793, -0.143099,
		-0.645324, 0.751390, 0.137731,
		31.610786, 35.249542, 34.054607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.388836, 35.093945, 34.359890>,  <32.062515, 34.723568, 33.958195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.388836, 35.093945, 34.359890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.014698, 35.231861, 34.391537>,  <31.790216, 35.314610, 34.410526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.014698, 35.231861, 34.391537>,  <32.388836, 35.093945, 34.359890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.014698, 35.231861, 34.391537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102121, 0.049048, 0.993562,
		0.338687, 0.937398, -0.081087,
		-0.935341, 0.344788, 0.079116,
		31.734097, 35.335297, 34.415272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.347584, 35.777889, 34.733494>,  <32.388836, 35.093945, 34.359890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.347584, 35.777889, 34.733494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.007256, 35.572441, 34.777847>,  <31.803059, 35.449173, 34.804459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.007256, 35.572441, 34.777847>,  <32.347584, 35.777889, 34.733494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.007256, 35.572441, 34.777847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188487, -0.101342, 0.976833,
		-0.490483, 0.852012, 0.183035,
		-0.850823, -0.513620, 0.110887,
		31.752008, 35.418354, 34.811115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.790810, 36.319527, 34.282917>,  <32.347584, 35.777889, 34.733494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.790810, 36.319527, 34.282917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.160240, 36.282337, 34.431702>,  <33.381901, 36.260021, 34.520973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.160240, 36.282337, 34.431702>,  <32.790810, 36.319527, 34.282917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.160240, 36.282337, 34.431702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380192, 0.096777, -0.919831,
		0.049526, 0.990954, 0.124730,
		0.923581, -0.092977, 0.371959,
		33.437313, 36.254444, 34.543289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196976, 36.676811, 33.916817>,  <32.790810, 36.319527, 34.282917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196976, 36.676811, 33.916817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494293, 36.479797, 34.097893>,  <33.672684, 36.361591, 34.206539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494293, 36.479797, 34.097893>,  <33.196976, 36.676811, 33.916817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.494293, 36.479797, 34.097893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497856, -0.044709, -0.866107,
		0.446825, 0.869145, 0.211978,
		0.743294, -0.492533, 0.452686,
		33.717281, 36.332039, 34.233700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.780270, 37.151382, 33.930904>,  <33.196976, 36.676811, 33.916817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.780270, 37.151382, 33.930904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886189, 36.766594, 33.957699>,  <33.949741, 36.535721, 33.973774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886189, 36.766594, 33.957699>,  <33.780270, 37.151382, 33.930904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886189, 36.766594, 33.957699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677815, 0.136271, -0.722494,
		0.685893, 0.236716, 0.688125,
		0.264797, -0.961975, 0.066982,
		33.965626, 36.478001, 33.977795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.543655, 37.129028, 33.955311>,  <33.780270, 37.151382, 33.930904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.543655, 37.129028, 33.955311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.449398, 36.756538, 33.844112>,  <34.392841, 36.533043, 33.777393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.449398, 36.756538, 33.844112>,  <34.543655, 37.129028, 33.955311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.449398, 36.756538, 33.844112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784900, -0.013690, -0.619471,
		0.573063, -0.364177, 0.734148,
		-0.235648, -0.931229, -0.277997,
		34.378704, 36.477169, 33.760712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.274952, 36.679226, 33.901913>,  <34.543655, 37.129028, 33.955311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.274952, 36.679226, 33.901913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.985435, 36.490761, 33.700268>,  <34.811726, 36.377682, 33.579281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.985435, 36.490761, 33.700268>,  <35.274952, 36.679226, 33.901913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.985435, 36.490761, 33.700268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543040, 0.061797, -0.837430,
		0.425722, -0.879877, 0.211134,
		-0.723788, -0.471167, -0.504117,
		34.768299, 36.349411, 33.549034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628784, 36.438770, 33.317650>,  <35.274952, 36.679226, 33.901913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628784, 36.438770, 33.317650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244026, 36.399948, 33.215401>,  <35.013172, 36.376656, 33.154049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244026, 36.399948, 33.215401>,  <35.628784, 36.438770, 33.317650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244026, 36.399948, 33.215401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259300, -0.027111, -0.965416,
		0.086769, -0.994910, 0.051245,
		-0.961891, -0.097056, -0.255627,
		34.955460, 36.370831, 33.138714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.705540, 36.074947, 32.800133>,  <35.628784, 36.438770, 33.317650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.705540, 36.074947, 32.800133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.330318, 36.201492, 32.743614>,  <35.105186, 36.277420, 32.709705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.330318, 36.201492, 32.743614>,  <35.705540, 36.074947, 32.800133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330318, 36.201492, 32.743614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219925, 0.228546, -0.948367,
		-0.267740, -0.920695, -0.283966,
		-0.938055, 0.316367, -0.141293,
		35.048901, 36.296402, 32.701225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634216, 35.820915, 32.169712>,  <35.705540, 36.074947, 32.800133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.634216, 35.820915, 32.169712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.348557, 36.099865, 32.193893>,  <35.177162, 36.267235, 32.208401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.348557, 36.099865, 32.193893>,  <35.634216, 35.820915, 32.169712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348557, 36.099865, 32.193893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241419, 0.326448, -0.913865,
		-0.657044, -0.638041, -0.401493,
		-0.714150, 0.697377, 0.060455,
		35.134312, 36.309078, 32.212029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251564, 35.857769, 31.429420>,  <35.634216, 35.820915, 32.169712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251564, 35.857769, 31.429420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.205425, 36.201359, 31.628963>,  <35.177742, 36.407513, 31.748690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.205425, 36.201359, 31.628963>,  <35.251564, 35.857769, 31.429420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205425, 36.201359, 31.628963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189049, 0.512011, -0.837917,
		-0.975170, -0.002340, -0.221445,
		-0.115343, 0.858976, 0.498856,
		35.170822, 36.459053, 31.778620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658951, 36.230183, 31.119970>,  <35.251564, 35.857769, 31.429420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658951, 36.230183, 31.119970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900482, 36.490322, 31.304335>,  <35.045403, 36.646404, 31.414953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900482, 36.490322, 31.304335>,  <34.658951, 36.230183, 31.119970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900482, 36.490322, 31.304335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061436, 0.538533, -0.840361,
		-0.794740, 0.535755, 0.285229,
		0.603833, 0.650345, 0.460909,
		35.081631, 36.685425, 31.442608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517799, 36.774117, 30.756361>,  <34.658951, 36.230183, 31.119970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517799, 36.774117, 30.756361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818882, 36.973087, 30.928871>,  <34.999531, 37.092472, 31.032377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818882, 36.973087, 30.928871>,  <34.517799, 36.774117, 30.756361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818882, 36.973087, 30.928871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127627, 0.532400, -0.836816,
		-0.645867, 0.684919, 0.337256,
		0.752706, 0.497429, 0.431274,
		35.044693, 37.122314, 31.058254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479851, 37.565830, 30.562138>,  <34.517799, 36.774117, 30.756361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479851, 37.565830, 30.562138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.852470, 37.455425, 30.656824>,  <35.076042, 37.389183, 30.713636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.852470, 37.455425, 30.656824>,  <34.479851, 37.565830, 30.562138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852470, 37.455425, 30.656824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281416, 0.134996, -0.950043,
		0.230269, 0.951626, 0.203429,
		0.931548, -0.276013, 0.236718,
		35.131935, 37.372620, 30.727839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973446, 38.115452, 30.381056>,  <34.479851, 37.565830, 30.562138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973446, 38.115452, 30.381056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.160194, 37.762032, 30.395916>,  <35.272243, 37.549980, 30.404833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.160194, 37.762032, 30.395916>,  <34.973446, 38.115452, 30.381056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160194, 37.762032, 30.395916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322924, 0.131224, -0.937284,
		0.823259, 0.449583, 0.346582,
		0.466867, -0.883547, 0.037150,
		35.300255, 37.496967, 30.407061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469589, 38.288712, 29.835403>,  <34.973446, 38.115452, 30.381056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.469589, 38.288712, 29.835403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507748, 37.893692, 29.885433>,  <35.530643, 37.656681, 29.915451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507748, 37.893692, 29.885433>,  <35.469589, 38.288712, 29.835403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507748, 37.893692, 29.885433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204832, -0.103487, -0.973311,
		0.974137, 0.118468, 0.192410,
		0.095394, -0.987550, 0.125076,
		35.536366, 37.597427, 29.922956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156013, 38.066814, 29.566378>,  <35.469589, 38.288712, 29.835403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156013, 38.066814, 29.566378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.942291, 37.728844, 29.556458>,  <35.814056, 37.526062, 29.550505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.942291, 37.728844, 29.556458>,  <36.156013, 38.066814, 29.566378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942291, 37.728844, 29.556458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359440, -0.200547, -0.911364,
		0.765064, -0.495859, 0.410854,
		-0.534304, -0.844929, -0.024800,
		35.782001, 37.475365, 29.549017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433964, 37.714996, 28.928425>,  <36.156013, 38.066814, 29.566378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433964, 37.714996, 28.928425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114876, 37.489475, 29.013994>,  <35.923424, 37.354164, 29.065336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114876, 37.489475, 29.013994>,  <36.433964, 37.714996, 28.928425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114876, 37.489475, 29.013994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008622, -0.365377, -0.930820,
		0.602961, -0.740693, 0.296331,
		-0.797724, -0.563803, 0.213921,
		35.875557, 37.320335, 29.078171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663784, 37.024212, 28.688259>,  <36.433964, 37.714996, 28.928425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.663784, 37.024212, 28.688259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.266376, 37.045254, 28.728558>,  <36.027931, 37.057880, 28.752737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.266376, 37.045254, 28.728558>,  <36.663784, 37.024212, 28.688259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266376, 37.045254, 28.728558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113123, -0.372176, -0.921243,
		-0.010968, -0.926670, 0.375715,
		-0.993520, 0.052607, 0.100746,
		35.968319, 37.061035, 28.758781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.395824, 36.407425, 28.487146>,  <36.663784, 37.024212, 28.688259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.395824, 36.407425, 28.487146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.053360, 36.611156, 28.452328>,  <35.847881, 36.733395, 28.431437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.053360, 36.611156, 28.452328>,  <36.395824, 36.407425, 28.487146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053360, 36.611156, 28.452328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167938, -0.433599, -0.885318,
		-0.488665, -0.743352, 0.456764,
		-0.856156, 0.509332, -0.087048,
		35.796513, 36.763954, 28.426214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903229, 35.873470, 28.465797>,  <36.395824, 36.407425, 28.487146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903229, 35.873470, 28.465797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.773590, 36.212948, 28.298620>,  <35.695808, 36.416634, 28.198315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.773590, 36.212948, 28.298620>,  <35.903229, 35.873470, 28.465797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.773590, 36.212948, 28.298620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124832, -0.476291, -0.870381,
		-0.937753, -0.229913, 0.260308,
		-0.324094, 0.848697, -0.417942,
		35.676361, 36.467556, 28.173237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257862, 35.669548, 28.060740>,  <35.903229, 35.873470, 28.465797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257862, 35.669548, 28.060740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412670, 36.013462, 27.927481>,  <35.505554, 36.219810, 27.847525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412670, 36.013462, 27.927481>,  <35.257862, 35.669548, 28.060740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412670, 36.013462, 27.927481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217612, -0.265931, -0.939109,
		-0.896024, 0.435953, 0.084177,
		0.387023, 0.859782, -0.333149,
		35.528778, 36.271397, 27.827536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881737, 35.828339, 27.428751>,  <35.257862, 35.669548, 28.060740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881737, 35.828339, 27.428751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.204994, 36.062111, 27.399502>,  <35.398949, 36.202374, 27.381952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.204994, 36.062111, 27.399502>,  <34.881737, 35.828339, 27.428751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.204994, 36.062111, 27.399502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078265, -0.229605, -0.970132,
		-0.583762, 0.778283, -0.231294,
		0.808144, 0.584429, -0.073122,
		35.447437, 36.237438, 27.377565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832623, 36.042385, 26.748413>,  <34.881737, 35.828339, 27.428751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832623, 36.042385, 26.748413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.222652, 36.091629, 26.822258>,  <35.456669, 36.121174, 26.866566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.222652, 36.091629, 26.822258>,  <34.832623, 36.042385, 26.748413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.222652, 36.091629, 26.822258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215476, -0.326636, -0.920260,
		-0.052989, 0.937098, -0.345020,
		0.975070, 0.123108, 0.184614,
		35.515175, 36.128563, 26.877642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242661, 36.358540, 26.206495>,  <34.832623, 36.042385, 26.748413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242661, 36.358540, 26.206495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.537968, 36.189217, 26.416550>,  <35.715153, 36.087624, 26.542582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.537968, 36.189217, 26.416550>,  <35.242661, 36.358540, 26.206495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537968, 36.189217, 26.416550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433013, -0.299492, -0.850179,
		0.517163, 0.855052, -0.037807,
		0.738270, -0.423310, 0.525135,
		35.759449, 36.062225, 26.574091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856014, 36.450634, 25.695257>,  <35.242661, 36.358540, 26.206495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856014, 36.450634, 25.695257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.950687, 36.184147, 25.978138>,  <36.007492, 36.024254, 26.147867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.950687, 36.184147, 25.978138>,  <35.856014, 36.450634, 25.695257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950687, 36.184147, 25.978138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527084, -0.523419, -0.669488,
		0.816187, 0.531214, 0.227266,
		0.236686, -0.666216, 0.707203,
		36.021694, 35.984283, 26.190298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554989, 36.403545, 25.673731>,  <35.856014, 36.450634, 25.695257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554989, 36.403545, 25.673731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430637, 36.076183, 25.867044>,  <36.356026, 35.879765, 25.983032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430637, 36.076183, 25.867044>,  <36.554989, 36.403545, 25.673731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430637, 36.076183, 25.867044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497856, -0.573360, -0.650691,
		0.809625, 0.038317, 0.585696,
		-0.310882, -0.818408, 0.483283,
		36.337372, 35.830662, 26.012030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093697, 35.929905, 25.743038>,  <36.554989, 36.403545, 25.673731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093697, 35.929905, 25.743038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.797215, 35.664112, 25.781145>,  <36.619324, 35.504635, 25.804010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.797215, 35.664112, 25.781145>,  <37.093697, 35.929905, 25.743038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797215, 35.664112, 25.781145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433150, -0.581852, -0.688352,
		0.512832, -0.468944, 0.719093,
		-0.741205, -0.664484, 0.095269,
		36.574852, 35.464767, 25.809727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432961, 35.353695, 25.690359>,  <37.093697, 35.929905, 25.743038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432961, 35.353695, 25.690359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058033, 35.262527, 25.584913>,  <36.833076, 35.207829, 25.521646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058033, 35.262527, 25.584913>,  <37.432961, 35.353695, 25.690359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058033, 35.262527, 25.584913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348457, -0.604199, -0.716604,
		0.004052, -0.763543, 0.645745,
		-0.937316, -0.227918, -0.263613,
		36.776836, 35.194153, 25.505829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483723, 34.666611, 25.452116>,  <37.432961, 35.353695, 25.690359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483723, 34.666611, 25.452116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.139153, 34.792881, 25.292973>,  <36.932411, 34.868641, 25.197487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.139153, 34.792881, 25.292973>,  <37.483723, 34.666611, 25.452116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139153, 34.792881, 25.292973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152888, -0.585854, -0.795865,
		-0.484316, -0.746410, 0.456410,
		-0.861431, 0.315670, -0.397856,
		36.880722, 34.887581, 25.173616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043491, 34.023369, 25.311628>,  <37.483723, 34.666611, 25.452116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043491, 34.023369, 25.311628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.888851, 34.303787, 25.071936>,  <36.796066, 34.472038, 24.928120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.888851, 34.303787, 25.071936>,  <37.043491, 34.023369, 25.311628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.888851, 34.303787, 25.071936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402206, -0.456544, -0.793598,
		-0.829923, -0.547818, -0.105466,
		-0.386597, 0.701044, -0.599233,
		36.772873, 34.514099, 24.892166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644939, 33.653751, 24.856024>,  <37.043491, 34.023369, 25.311628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644939, 33.653751, 24.856024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.722004, 34.001789, 24.674551>,  <36.768242, 34.210609, 24.565668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.722004, 34.001789, 24.674551>,  <36.644939, 33.653751, 24.856024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722004, 34.001789, 24.674551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223672, -0.489111, -0.843055,
		-0.955433, 0.060949, -0.288848,
		0.192662, 0.870090, -0.453680,
		36.779804, 34.262817, 24.538446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.349388, 33.604961, 24.153299>,  <36.644939, 33.653751, 24.856024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.349388, 33.604961, 24.153299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.622444, 33.897263, 24.154173>,  <36.786278, 34.072643, 24.154697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.622444, 33.897263, 24.154173>,  <36.349388, 33.604961, 24.153299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622444, 33.897263, 24.154173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396819, -0.368177, -0.840821,
		-0.613628, 0.574844, -0.541309,
		0.682639, 0.730753, 0.002186,
		36.827236, 34.116489, 24.154829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176052, 34.096909, 23.651712>,  <36.349388, 33.604961, 24.153299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.176052, 34.096909, 23.651712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.571457, 34.141598, 23.692432>,  <36.808701, 34.168411, 23.716864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.571457, 34.141598, 23.692432>,  <36.176052, 34.096909, 23.651712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571457, 34.141598, 23.692432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133718, -0.332454, -0.933592,
		-0.070461, 0.936478, -0.343574,
		0.988511, 0.111724, 0.101799,
		36.868011, 34.175114, 23.722973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481567, 34.513382, 23.075602>,  <36.176052, 34.096909, 23.651712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.481567, 34.513382, 23.075602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.776608, 34.281342, 23.213837>,  <36.953632, 34.142117, 23.296778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.776608, 34.281342, 23.213837>,  <36.481567, 34.513382, 23.075602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776608, 34.281342, 23.213837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295298, -0.183140, -0.937688,
		0.607246, 0.793688, 0.036219,
		0.737599, -0.580103, 0.345585,
		36.997887, 34.107311, 23.317513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899437, 34.502579, 22.566504>,  <36.481567, 34.513382, 23.075602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899437, 34.502579, 22.566504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.126007, 34.235413, 22.759604>,  <37.261948, 34.075111, 22.875463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.126007, 34.235413, 22.759604>,  <36.899437, 34.502579, 22.566504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126007, 34.235413, 22.759604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365789, -0.321155, -0.873532,
		0.738486, 0.671375, 0.062407,
		0.566426, -0.667919, 0.482749,
		37.295937, 34.035038, 22.904428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518223, 34.558670, 22.299702>,  <36.899437, 34.502579, 22.566504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518223, 34.558670, 22.299702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.488514, 34.184689, 22.438469>,  <37.470688, 33.960300, 22.521729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.488514, 34.184689, 22.438469>,  <37.518223, 34.558670, 22.299702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488514, 34.184689, 22.438469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436799, -0.343234, -0.831503,
		0.896488, 0.089776, 0.433878,
		-0.074273, -0.934950, 0.346919,
		37.466232, 33.904205, 22.542545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152512, 34.239117, 22.111807>,  <37.518223, 34.558670, 22.299702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.152512, 34.239117, 22.111807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897808, 33.941940, 22.194347>,  <37.744984, 33.763634, 22.243872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897808, 33.941940, 22.194347>,  <38.152512, 34.239117, 22.111807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897808, 33.941940, 22.194347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215845, -0.428667, -0.877300,
		0.740234, -0.514091, 0.433318,
		-0.636761, -0.742937, 0.206350,
		37.706779, 33.719059, 22.256252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481842, 33.719868, 21.894527>,  <38.152512, 34.239117, 22.111807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481842, 33.719868, 21.894527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.108143, 33.579281, 21.918728>,  <37.883923, 33.494930, 21.933249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.108143, 33.579281, 21.918728>,  <38.481842, 33.719868, 21.894527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108143, 33.579281, 21.918728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142470, -0.523327, -0.840138,
		0.326939, -0.776275, 0.538988,
		-0.934245, -0.351464, 0.060500,
		37.827869, 33.473843, 21.936878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598339, 32.967113, 21.710373>,  <38.481842, 33.719868, 21.894527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598339, 32.967113, 21.710373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.221546, 33.091599, 21.660059>,  <37.995472, 33.166290, 21.629871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.221546, 33.091599, 21.660059>,  <38.598339, 32.967113, 21.710373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221546, 33.091599, 21.660059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017634, -0.328325, -0.944400,
		-0.335246, -0.891811, 0.303783,
		-0.941965, 0.311249, -0.125796,
		37.938953, 33.184963, 21.622324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139870, 33.308773, 22.157169>,  <38.598339, 32.967113, 21.710373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.139870, 33.308773, 22.157169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.535942, 33.315548, 22.101660>,  <39.773586, 33.319614, 22.068354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.535942, 33.315548, 22.101660>,  <39.139870, 33.308773, 22.157169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.535942, 33.315548, 22.101660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123006, 0.366187, 0.922375,
		0.066442, -0.930387, 0.360508,
		0.990179, 0.016939, -0.138774,
		39.832996, 33.320629, 22.060028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506981, 32.868042, 22.666298>,  <39.139870, 33.308773, 22.157169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506981, 32.868042, 22.666298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.796440, 33.114719, 22.542351>,  <39.970116, 33.262726, 22.467983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.796440, 33.114719, 22.542351>,  <39.506981, 32.868042, 22.666298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.796440, 33.114719, 22.542351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123777, 0.325731, 0.937325,
		0.678976, -0.716651, 0.159384,
		0.723651, 0.616693, -0.309869,
		40.013535, 33.299728, 22.449390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141994, 32.714214, 22.980864>,  <39.506981, 32.868042, 22.666298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.141994, 32.714214, 22.980864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.140347, 33.105110, 22.896017>,  <40.139359, 33.339645, 22.845110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.140347, 33.105110, 22.896017>,  <40.141994, 32.714214, 22.980864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.140347, 33.105110, 22.896017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029734, 0.212144, 0.976786,
		0.999549, -0.002283, -0.029931,
		-0.004120, 0.977236, -0.212116,
		40.139111, 33.398281, 22.832382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.399784, 33.042061, 23.601402>,  <40.141994, 32.714214, 22.980864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.399784, 33.042061, 23.601402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.276192, 33.367977, 23.405180>,  <40.202038, 33.563526, 23.287447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.276192, 33.367977, 23.405180>,  <40.399784, 33.042061, 23.601402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.276192, 33.367977, 23.405180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195054, 0.559120, 0.805815,
		0.930852, 0.153296, -0.331686,
		-0.308981, 0.814791, -0.490557,
		40.183498, 33.612415, 23.258013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.913963, 33.568153, 23.753601>,  <40.399784, 33.042061, 23.601402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.913963, 33.568153, 23.753601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.580864, 33.743286, 23.618048>,  <40.381004, 33.848366, 23.536716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.580864, 33.743286, 23.618048>,  <40.913963, 33.568153, 23.753601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.580864, 33.743286, 23.618048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016208, 0.592539, 0.805379,
		0.553420, 0.676168, -0.486337,
		-0.832745, 0.437830, -0.338882,
		40.331039, 33.874634, 23.516382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.006603, 34.272316, 23.904018>,  <40.913963, 33.568153, 23.753601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.006603, 34.272316, 23.904018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.613140, 34.237553, 23.840937>,  <40.377064, 34.216694, 23.803087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.613140, 34.237553, 23.840937>,  <41.006603, 34.272316, 23.904018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.613140, 34.237553, 23.840937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179821, 0.519698, 0.835212,
		0.009370, 0.849919, -0.526831,
		-0.983655, -0.086909, -0.157703,
		40.318043, 34.211479, 23.793625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.710407, 35.041843, 23.947643>,  <41.006603, 34.272316, 23.904018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.710407, 35.041843, 23.947643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.408356, 34.789700, 24.019674>,  <40.227127, 34.638412, 24.062893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.408356, 34.789700, 24.019674>,  <40.710407, 35.041843, 23.947643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.408356, 34.789700, 24.019674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240500, 0.521898, 0.818402,
		-0.609872, 0.574688, -0.545701,
		-0.755127, -0.630361, 0.180079,
		40.181816, 34.600590, 24.073698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.019852, 35.421276, 24.067667>,  <40.710407, 35.041843, 23.947643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.019852, 35.421276, 24.067667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.967407, 35.064888, 24.241552>,  <39.935940, 34.851055, 24.345884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.967407, 35.064888, 24.241552>,  <40.019852, 35.421276, 24.067667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.967407, 35.064888, 24.241552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445625, 0.444668, 0.776974,
		-0.885567, -0.091852, -0.455340,
		-0.131108, -0.890974, 0.434715,
		39.928074, 34.797596, 24.371967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.314541, 35.355328, 24.282545>,  <40.019852, 35.421276, 24.067667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.314541, 35.355328, 24.282545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.536400, 35.102882, 24.499454>,  <39.669514, 34.951416, 24.629601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.536400, 35.102882, 24.499454>,  <39.314541, 35.355328, 24.282545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.536400, 35.102882, 24.499454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458938, 0.311584, 0.832040,
		-0.694078, -0.710357, -0.116825,
		0.554645, -0.631117, 0.542274,
		39.702793, 34.913548, 24.662136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836021, 35.203106, 24.737444>,  <39.314541, 35.355328, 24.282545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836021, 35.203106, 24.737444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.195927, 35.102909, 24.880373>,  <39.411869, 35.042789, 24.966131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.195927, 35.102909, 24.880373>,  <38.836021, 35.203106, 24.737444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195927, 35.102909, 24.880373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260511, 0.348581, 0.900347,
		-0.350085, -0.903186, 0.248385,
		0.899764, -0.250492, 0.357323,
		39.465855, 35.027763, 24.987570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.728802, 34.776192, 25.455090>,  <38.836021, 35.203106, 24.737444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.728802, 34.776192, 25.455090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095295, 34.935940, 25.442295>,  <39.315189, 35.031788, 25.434618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095295, 34.935940, 25.442295>,  <38.728802, 34.776192, 25.455090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095295, 34.935940, 25.442295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141976, 0.398296, 0.906202,
		0.374644, -0.825753, 0.421633,
		0.916234, 0.399365, -0.031982,
		39.370163, 35.055752, 25.432699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861923, 34.665009, 26.148392>,  <38.728802, 34.776192, 25.455090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861923, 34.665009, 26.148392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.129253, 34.933216, 26.019554>,  <39.289654, 35.094139, 25.942251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.129253, 34.933216, 26.019554>,  <38.861923, 34.665009, 26.148392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.129253, 34.933216, 26.019554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341109, 0.661045, 0.668330,
		0.661045, -0.336794, 0.670514,
		-0.668330, -0.670514, 0.322096,
		39.329754, 35.134369, 25.922926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.189751, 34.898918, 26.770758>,  <38.861923, 34.665009, 26.148392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.189751, 34.898918, 26.770758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.239059, 35.177620, 26.488104>,  <39.268642, 35.344841, 26.318512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.239059, 35.177620, 26.488104>,  <39.189751, 34.898918, 26.770758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.239059, 35.177620, 26.488104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141488, 0.717131, 0.682425,
		0.982235, 0.015859, 0.186982,
		0.123268, 0.696758, -0.706635,
		39.276039, 35.386646, 26.276114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772671, 35.524487, 26.975554>,  <39.189751, 34.898918, 26.770758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.772671, 35.524487, 26.975554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.517159, 35.670101, 26.704426>,  <39.363850, 35.757469, 26.541750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.517159, 35.670101, 26.704426>,  <39.772671, 35.524487, 26.975554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517159, 35.670101, 26.704426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239964, 0.742772, 0.625066,
		0.731010, 0.561932, -0.387113,
		-0.638781, 0.364036, -0.677817,
		39.325523, 35.779312, 26.501081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958046, 36.140686, 26.998363>,  <39.772671, 35.524487, 26.975554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.958046, 36.140686, 26.998363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.590096, 36.116314, 26.843384>,  <39.369328, 36.101688, 26.750395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.590096, 36.116314, 26.843384>,  <39.958046, 36.140686, 26.998363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.590096, 36.116314, 26.843384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319151, 0.690489, 0.649129,
		0.227978, 0.720772, -0.654609,
		-0.919874, -0.060932, -0.387451,
		39.314133, 36.098034, 26.727148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.701103, 36.786690, 27.064583>,  <39.958046, 36.140686, 26.998363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.701103, 36.786690, 27.064583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360275, 36.589142, 26.995228>,  <39.155777, 36.470612, 26.953615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360275, 36.589142, 26.995228>,  <39.701103, 36.786690, 27.064583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360275, 36.589142, 26.995228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492760, 0.645160, 0.583915,
		-0.176515, 0.582977, -0.793083,
		-0.852074, -0.493869, -0.173387,
		39.104652, 36.440983, 26.943213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114315, 37.305840, 26.925182>,  <39.701103, 36.786690, 27.064583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.114315, 37.305840, 26.925182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.937126, 36.974861, 27.063231>,  <38.830811, 36.776276, 27.146059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.937126, 36.974861, 27.063231>,  <39.114315, 37.305840, 26.925182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.937126, 36.974861, 27.063231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618932, 0.560743, 0.549992,
		-0.648611, 0.030028, -0.760527,
		-0.442975, -0.827445, 0.345119,
		38.804234, 36.726627, 27.166767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485786, 37.557278, 27.075430>,  <39.114315, 37.305840, 26.925182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485786, 37.557278, 27.075430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.498619, 37.209087, 27.271893>,  <38.506317, 37.000172, 27.389771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.498619, 37.209087, 27.271893>,  <38.485786, 37.557278, 27.075430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498619, 37.209087, 27.271893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484213, 0.416355, 0.769537,
		-0.874362, -0.262514, -0.408140,
		0.032083, -0.870480, 0.491157,
		38.508244, 36.947945, 27.419239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842041, 37.549442, 27.376064>,  <38.485786, 37.557278, 27.075430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842041, 37.549442, 27.376064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.045818, 37.277290, 27.586798>,  <38.168083, 37.113998, 27.713238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.045818, 37.277290, 27.586798>,  <37.842041, 37.549442, 27.376064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.045818, 37.277290, 27.586798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512617, 0.251790, 0.820869,
		-0.691156, -0.688245, -0.220504,
		0.509438, -0.680383, 0.526832,
		38.198650, 37.073177, 27.744848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382828, 37.224884, 27.915806>,  <37.842041, 37.549442, 27.376064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382828, 37.224884, 27.915806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749992, 37.153801, 28.057716>,  <37.970291, 37.111153, 28.142862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749992, 37.153801, 28.057716>,  <37.382828, 37.224884, 27.915806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749992, 37.153801, 28.057716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320449, 0.195297, 0.926915,
		-0.234007, -0.964510, 0.122319,
		0.917907, -0.177708, 0.354777,
		38.025364, 37.100491, 28.164150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335068, 36.626133, 28.394192>,  <37.382828, 37.224884, 27.915806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.335068, 36.626133, 28.394192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.658794, 36.842445, 28.485895>,  <37.853031, 36.972233, 28.540916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.658794, 36.842445, 28.485895>,  <37.335068, 36.626133, 28.394192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658794, 36.842445, 28.485895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334310, 0.103174, 0.936799,
		0.482951, -0.834811, 0.264290,
		0.809318, 0.540783, 0.229258,
		37.901588, 37.004681, 28.554672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614613, 36.259068, 28.900162>,  <37.335068, 36.626133, 28.394192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614613, 36.259068, 28.900162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.764992, 36.626465, 28.949224>,  <37.855217, 36.846901, 28.978662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.764992, 36.626465, 28.949224>,  <37.614613, 36.259068, 28.900162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.764992, 36.626465, 28.949224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149324, -0.070589, 0.986265,
		0.914532, -0.389096, 0.110615,
		0.375944, 0.918488, 0.122657,
		37.877773, 36.902012, 28.986021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831615, 36.233509, 29.658649>,  <37.614613, 36.259068, 28.900162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831615, 36.233509, 29.658649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.853771, 36.622131, 29.566555>,  <37.867065, 36.855305, 29.511299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.853771, 36.622131, 29.566555>,  <37.831615, 36.233509, 29.658649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.853771, 36.622131, 29.566555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136113, 0.235784, 0.962226,
		0.989144, -0.021960, 0.145302,
		0.055390, 0.971557, -0.230235,
		37.870388, 36.913597, 29.497484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.465542, 36.529385, 29.988733>,  <37.831615, 36.233509, 29.658649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.465542, 36.529385, 29.988733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.196739, 36.820587, 29.934465>,  <38.035458, 36.995308, 29.901905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.196739, 36.820587, 29.934465>,  <38.465542, 36.529385, 29.988733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196739, 36.820587, 29.934465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024758, 0.205187, 0.978410,
		0.740129, 0.654142, -0.155911,
		-0.672010, 0.728009, -0.135670,
		37.995136, 37.038990, 29.893764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660397, 36.937946, 30.454969>,  <38.465542, 36.529385, 29.988733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.660397, 36.937946, 30.454969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303158, 37.104942, 30.387947>,  <38.088814, 37.205139, 30.347733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303158, 37.104942, 30.387947>,  <38.660397, 36.937946, 30.454969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303158, 37.104942, 30.387947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006125, 0.361151, 0.932487,
		0.449815, 0.833831, -0.319987,
		-0.893101, 0.417487, -0.167558,
		38.035229, 37.230190, 30.337679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701893, 37.508873, 30.793238>,  <38.660397, 36.937946, 30.454969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.701893, 37.508873, 30.793238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.306091, 37.484688, 30.740740>,  <38.068611, 37.470177, 30.709240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.306091, 37.484688, 30.740740>,  <38.701893, 37.508873, 30.793238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306091, 37.484688, 30.740740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143454, 0.301730, 0.942539,
		-0.017389, 0.951474, -0.307237,
		-0.989504, -0.060464, -0.131246,
		38.009239, 37.466549, 30.701366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462620, 38.102840, 30.971712>,  <38.701893, 37.508873, 30.793238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.462620, 38.102840, 30.971712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.151928, 37.853985, 31.010954>,  <37.965511, 37.704670, 31.034498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.151928, 37.853985, 31.010954>,  <38.462620, 38.102840, 30.971712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151928, 37.853985, 31.010954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076548, 0.247856, 0.965768,
		-0.625161, 0.742635, -0.240142,
		-0.776733, -0.622142, 0.098103,
		37.918907, 37.667343, 31.040384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935596, 38.477310, 31.242573>,  <38.462620, 38.102840, 30.971712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935596, 38.477310, 31.242573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819496, 38.109474, 31.348490>,  <37.749836, 37.888775, 31.412041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819496, 38.109474, 31.348490>,  <37.935596, 38.477310, 31.242573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819496, 38.109474, 31.348490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008218, 0.279090, 0.960230,
		-0.956916, 0.276530, -0.088563,
		-0.290249, -0.919587, 0.264794,
		37.732422, 37.833599, 31.427927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452278, 38.553120, 31.754427>,  <37.935596, 38.477310, 31.242573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452278, 38.553120, 31.754427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.540787, 38.169636, 31.825876>,  <37.593891, 37.939545, 31.868746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.540787, 38.169636, 31.825876>,  <37.452278, 38.553120, 31.754427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.540787, 38.169636, 31.825876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173352, 0.141577, 0.974631,
		-0.959681, -0.246624, -0.134868,
		0.221274, -0.958714, 0.178622,
		37.607170, 37.882023, 31.879463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948982, 38.339108, 32.174038>,  <37.452278, 38.553120, 31.754427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.948982, 38.339108, 32.174038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.228168, 38.056602, 32.221428>,  <37.395679, 37.887100, 32.249863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.228168, 38.056602, 32.221428>,  <36.948982, 38.339108, 32.174038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228168, 38.056602, 32.221428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126912, 0.040828, 0.991073,
		-0.704800, -0.706767, -0.061137,
		0.697962, -0.706267, 0.118473,
		37.437557, 37.844723, 32.256969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648861, 37.837521, 32.647007>,  <36.948982, 38.339108, 32.174038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648861, 37.837521, 32.647007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.041538, 37.761738, 32.654938>,  <37.277145, 37.716270, 32.659698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.041538, 37.761738, 32.654938>,  <36.648861, 37.837521, 32.647007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041538, 37.761738, 32.654938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021147, -0.004932, 0.999764,
		-0.189313, -0.981877, -0.008848,
		0.981689, -0.189455, 0.019830,
		37.336044, 37.704903, 32.660885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765980, 37.274658, 33.086117>,  <36.648861, 37.837521, 32.647007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765980, 37.274658, 33.086117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087601, 37.509556, 33.123302>,  <37.280575, 37.650494, 33.145615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087601, 37.509556, 33.123302>,  <36.765980, 37.274658, 33.086117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087601, 37.509556, 33.123302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181864, 0.094060, 0.978815,
		0.566063, -0.803923, 0.182428,
		0.804051, 0.587248, 0.092960,
		37.328815, 37.685730, 33.151192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043640, 37.036663, 33.767288>,  <36.765980, 37.274658, 33.086117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043640, 37.036663, 33.767288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.233803, 37.381687, 33.698044>,  <37.347900, 37.588703, 33.656498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.233803, 37.381687, 33.698044>,  <37.043640, 37.036663, 33.767288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.233803, 37.381687, 33.698044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091767, 0.244313, 0.965344,
		0.874965, -0.443049, 0.195304,
		0.475411, 0.862565, -0.173108,
		37.376427, 37.640457, 33.646111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570393, 37.138367, 34.316002>,  <37.043640, 37.036663, 33.767288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570393, 37.138367, 34.316002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.520382, 37.503139, 34.159668>,  <37.490376, 37.722004, 34.065868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.520382, 37.503139, 34.159668>,  <37.570393, 37.138367, 34.316002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.520382, 37.503139, 34.159668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100532, 0.403546, 0.909419,
		0.987047, 0.074408, -0.142131,
		-0.125025, 0.911928, -0.390839,
		37.482876, 37.776718, 34.042416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068951, 37.561161, 34.628319>,  <37.570393, 37.138367, 34.316002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.068951, 37.561161, 34.628319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.777542, 37.798244, 34.490940>,  <37.602699, 37.940495, 34.408512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.777542, 37.798244, 34.490940>,  <38.068951, 37.561161, 34.628319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777542, 37.798244, 34.490940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113053, 0.390460, 0.913652,
		0.675634, 0.704439, -0.217449,
		-0.728518, 0.592711, -0.343447,
		37.558987, 37.976059, 34.387905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263988, 38.257713, 34.871319>,  <38.068951, 37.561161, 34.628319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263988, 38.257713, 34.871319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871571, 38.286877, 34.799503>,  <37.636120, 38.304375, 34.756413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871571, 38.286877, 34.799503>,  <38.263988, 38.257713, 34.871319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871571, 38.286877, 34.799503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143439, 0.349724, 0.925807,
		0.130292, 0.934011, -0.332637,
		-0.981045, 0.072912, -0.179540,
		37.577255, 38.308750, 34.745640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120922, 38.914265, 35.208172>,  <38.263988, 38.257713, 34.871319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.120922, 38.914265, 35.208172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.786011, 38.701336, 35.158207>,  <37.585064, 38.573578, 35.128227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.786011, 38.701336, 35.158207>,  <38.120922, 38.914265, 35.208172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.786011, 38.701336, 35.158207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386702, 0.414980, 0.823561,
		-0.386566, 0.737850, -0.553303,
		-0.837274, -0.532325, -0.124911,
		37.534828, 38.541637, 35.120735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529526, 39.435814, 35.432613>,  <38.120922, 38.914265, 35.208172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.529526, 39.435814, 35.432613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.394882, 39.059200, 35.438381>,  <37.314095, 38.833233, 35.441841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.394882, 39.059200, 35.438381>,  <37.529526, 39.435814, 35.432613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.394882, 39.059200, 35.438381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364250, 0.144312, 0.920052,
		-0.868340, 0.304447, -0.391531,
		-0.336610, -0.941534, 0.014417,
		37.293900, 38.776741, 35.442707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838600, 39.439175, 35.609295>,  <37.529526, 39.435814, 35.432613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.838600, 39.439175, 35.609295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.980488, 39.079281, 35.711002>,  <37.065620, 38.863346, 35.772026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.980488, 39.079281, 35.711002>,  <36.838600, 39.439175, 35.609295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980488, 39.079281, 35.711002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470249, 0.063373, 0.880255,
		-0.808109, -0.431814, -0.400620,
		0.354718, -0.899734, 0.254272,
		37.086903, 38.809361, 35.787285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327644, 39.099823, 36.018345>,  <36.838600, 39.439175, 35.609295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327644, 39.099823, 36.018345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621513, 38.851955, 36.128815>,  <36.797832, 38.703236, 36.195095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621513, 38.851955, 36.128815>,  <36.327644, 39.099823, 36.018345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621513, 38.851955, 36.128815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450488, -0.141205, 0.881545,
		-0.507269, -0.772057, -0.382892,
		0.734669, -0.619669, 0.276173,
		36.841915, 38.666054, 36.211666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048553, 38.498394, 36.419559>,  <36.327644, 39.099823, 36.018345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048553, 38.498394, 36.419559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.432201, 38.472935, 36.529854>,  <36.662392, 38.457657, 36.596031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.432201, 38.472935, 36.529854>,  <36.048553, 38.498394, 36.419559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432201, 38.472935, 36.529854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281459, -0.113464, 0.952841,
		-0.029359, -0.991501, -0.126740,
		0.959124, -0.063647, 0.275736,
		36.719940, 38.453838, 36.612576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025936, 37.961361, 36.684902>,  <36.048553, 38.498394, 36.419559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025936, 37.961361, 36.684902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.344189, 38.134697, 36.854221>,  <36.535141, 38.238701, 36.955814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.344189, 38.134697, 36.854221>,  <36.025936, 37.961361, 36.684902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344189, 38.134697, 36.854221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197333, -0.475255, 0.857434,
		0.572740, -0.765732, -0.292615,
		0.795631, 0.433344, 0.423302,
		36.582878, 38.264702, 36.981213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382839, 37.469353, 36.946445>,  <36.025936, 37.961361, 36.684902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382839, 37.469353, 36.946445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.510044, 37.785755, 37.155514>,  <36.586365, 37.975597, 37.280952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.510044, 37.785755, 37.155514>,  <36.382839, 37.469353, 36.946445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.510044, 37.785755, 37.155514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233387, -0.469007, 0.851800,
		0.918912, -0.392865, 0.035461,
		0.318010, 0.791005, 0.522666,
		36.605446, 38.023056, 37.312313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947636, 37.227726, 37.265831>,  <36.382839, 37.469353, 36.946445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.947636, 37.227726, 37.265831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.774448, 37.523403, 37.472183>,  <36.670536, 37.700809, 37.595997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.774448, 37.523403, 37.472183>,  <36.947636, 37.227726, 37.265831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.774448, 37.523403, 37.472183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138557, -0.620080, 0.772206,
		0.890697, 0.262861, 0.370894,
		-0.432967, 0.739192, 0.515882,
		36.644558, 37.745159, 37.626949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238235, 37.048744, 37.895790>,  <36.947636, 37.227726, 37.265831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238235, 37.048744, 37.895790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.936672, 37.309273, 37.930222>,  <36.755733, 37.465588, 37.950878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.936672, 37.309273, 37.930222>,  <37.238235, 37.048744, 37.895790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936672, 37.309273, 37.930222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358133, -0.517267, 0.777288,
		0.550784, 0.555177, 0.623230,
		-0.753908, 0.651317, 0.086075,
		36.710499, 37.504669, 37.956043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992958, 36.912865, 38.506695>,  <37.238235, 37.048744, 37.895790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992958, 36.912865, 38.506695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.715855, 37.187630, 38.418842>,  <36.549595, 37.352489, 38.366131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.715855, 37.187630, 38.418842>,  <36.992958, 36.912865, 38.506695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715855, 37.187630, 38.418842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546850, -0.301808, 0.780940,
		0.470156, 0.661103, 0.584719,
		-0.692754, 0.686917, -0.219628,
		36.508030, 37.393703, 38.352955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005596, 37.362099, 39.056633>,  <36.992958, 36.912865, 38.506695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005596, 37.362099, 39.056633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.652813, 37.329258, 38.870983>,  <36.441143, 37.309551, 38.759594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.652813, 37.329258, 38.870983>,  <37.005596, 37.362099, 39.056633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652813, 37.329258, 38.870983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397983, -0.397823, 0.826648,
		-0.252510, 0.913781, 0.318187,
		-0.881957, -0.082104, -0.464124,
		36.388226, 37.304626, 38.731747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.598011, 37.495552, 39.619400>,  <37.005596, 37.362099, 39.056633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.598011, 37.495552, 39.619400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.351250, 37.339428, 39.346024>,  <36.203194, 37.245754, 39.181999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.351250, 37.339428, 39.346024>,  <36.598011, 37.495552, 39.619400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.351250, 37.339428, 39.346024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559701, -0.392934, 0.729615,
		-0.553320, 0.832624, 0.023948,
		-0.616905, -0.390307, -0.683439,
		36.166180, 37.222336, 39.140991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.938229, 37.631386, 39.946396>,  <36.598011, 37.495552, 39.619400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.938229, 37.631386, 39.946396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.881691, 37.359123, 39.658859>,  <35.847771, 37.195766, 39.486340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.881691, 37.359123, 39.658859>,  <35.938229, 37.631386, 39.946396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.881691, 37.359123, 39.658859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605911, -0.514751, 0.606549,
		-0.782875, 0.521282, -0.339663,
		-0.141341, -0.680658, -0.718837,
		35.839287, 37.154926, 39.443207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.295052, 37.430630, 40.051029>,  <35.938229, 37.631386, 39.946396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.295052, 37.430630, 40.051029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.409073, 37.167385, 39.772282>,  <35.477486, 37.009438, 39.605034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.409073, 37.167385, 39.772282>,  <35.295052, 37.430630, 40.051029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.409073, 37.167385, 39.772282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687775, -0.646826, 0.329518,
		-0.667616, 0.385363, -0.637012,
		0.285051, -0.658112, -0.696874,
		35.494587, 36.969952, 39.563221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718964, 37.242863, 39.618568>,  <35.295052, 37.430630, 40.051029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718964, 37.242863, 39.618568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982353, 36.944633, 39.659622>,  <35.140388, 36.765697, 39.684254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982353, 36.944633, 39.659622>,  <34.718964, 37.242863, 39.618568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982353, 36.944633, 39.659622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748252, -0.633921, 0.195608,
		-0.080778, -0.205598, -0.975297,
		0.658478, -0.745569, 0.102632,
		35.179897, 36.720963, 39.690411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.423683, 36.668648, 39.228462>,  <34.718964, 37.242863, 39.618568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.423683, 36.668648, 39.228462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.692467, 36.497108, 39.469978>,  <34.853737, 36.394184, 39.614887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.692467, 36.497108, 39.469978>,  <34.423683, 36.668648, 39.228462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.692467, 36.497108, 39.469978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660944, -0.715063, 0.227677,
		0.334108, -0.552060, -0.763938,
		0.671956, -0.428852, 0.603789,
		34.894054, 36.368454, 39.651115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001644, 36.143745, 39.323364>,  <34.423683, 36.668648, 39.228462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001644, 36.143745, 39.323364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246830, 36.007954, 39.608749>,  <34.393944, 35.926479, 39.779980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246830, 36.007954, 39.608749>,  <34.001644, 36.143745, 39.323364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.246830, 36.007954, 39.608749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747561, -0.541509, 0.384605,
		0.255781, -0.769105, -0.585707,
		0.612967, -0.339477, 0.713461,
		34.430721, 35.906109, 39.822788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076466, 35.426338, 39.230957>,  <34.001644, 36.143745, 39.323364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076466, 35.426338, 39.230957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152271, 35.511364, 39.614395>,  <34.197754, 35.562378, 39.844456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152271, 35.511364, 39.614395>,  <34.076466, 35.426338, 39.230957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.152271, 35.511364, 39.614395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753984, -0.593873, 0.280754,
		0.628960, -0.775972, 0.047719,
		0.189518, 0.212562, 0.958593,
		34.209126, 35.575134, 39.901974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157738, 34.796654, 39.465534>,  <34.076466, 35.426338, 39.230957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157738, 34.796654, 39.465534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.050426, 35.038803, 39.765282>,  <33.986042, 35.184093, 39.945129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.050426, 35.038803, 39.765282>,  <34.157738, 34.796654, 39.465534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.050426, 35.038803, 39.765282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572942, -0.725618, 0.381072,
		0.774446, -0.327114, 0.541508,
		-0.268274, 0.605372, 0.749369,
		33.969944, 35.220413, 39.990093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242218, 34.408020, 40.076679>,  <34.157738, 34.796654, 39.465534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242218, 34.408020, 40.076679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.974159, 34.699799, 40.131542>,  <33.813324, 34.874866, 40.164459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.974159, 34.699799, 40.131542>,  <34.242218, 34.408020, 40.076679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.974159, 34.699799, 40.131542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586605, -0.633735, 0.504257,
		0.454752, 0.257466, 0.852591,
		-0.670146, 0.729446, 0.137162,
		33.773117, 34.918633, 40.172691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.672928, 34.086231, 40.437012>,  <34.242218, 34.408020, 40.076679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.672928, 34.086231, 40.437012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473610, 34.432999, 40.441879>,  <33.354019, 34.641060, 40.444801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473610, 34.432999, 40.441879>,  <33.672928, 34.086231, 40.437012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473610, 34.432999, 40.441879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858812, -0.495464, 0.130223,
		0.118922, 0.054438, 0.991410,
		-0.498297, 0.866921, 0.012169,
		33.324120, 34.693073, 40.445530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.297455, 34.177696, 41.078014>,  <33.672928, 34.086231, 40.437012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.297455, 34.177696, 41.078014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123196, 34.417313, 40.809280>,  <33.018639, 34.561085, 40.648041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123196, 34.417313, 40.809280>,  <33.297455, 34.177696, 41.078014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123196, 34.417313, 40.809280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889475, -0.400937, 0.219282,
		-0.138003, 0.693107, 0.707501,
		-0.435649, 0.599043, -0.671831,
		32.992500, 34.597027, 40.607731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.743092, 34.473064, 41.402100>,  <33.297455, 34.177696, 41.078014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.743092, 34.473064, 41.402100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626537, 34.504189, 41.020725>,  <32.556606, 34.522865, 40.791901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626537, 34.504189, 41.020725>,  <32.743092, 34.473064, 41.402100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.626537, 34.504189, 41.020725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770245, -0.610143, 0.185603,
		-0.567290, 0.788461, 0.237720,
		-0.291384, 0.077812, -0.953436,
		32.539124, 34.527531, 40.734695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.973352, 34.521488, 41.396770>,  <32.743092, 34.473064, 41.402100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.973352, 34.521488, 41.396770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.081482, 34.401085, 41.030968>,  <32.146358, 34.328842, 40.811485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.081482, 34.401085, 41.030968>,  <31.973352, 34.521488, 41.396770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.081482, 34.401085, 41.030968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845404, -0.528711, -0.075871,
		-0.460672, 0.793636, -0.397397,
		0.270322, -0.301009, -0.914505,
		32.162579, 34.310783, 40.756615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.213142, 34.720016, 41.457584>,  <31.973352, 34.521488, 41.396770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.213142, 34.720016, 41.457584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.030815, 34.725758, 41.101601>,  <30.921419, 34.729202, 40.888012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.030815, 34.725758, 41.101601>,  <31.213142, 34.720016, 41.457584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.030815, 34.725758, 41.101601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698281, -0.614255, -0.367552,
		-0.551935, -0.788977, 0.269969,
		-0.455820, 0.014351, -0.889956,
		30.894070, 34.730064, 40.834614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.115528, 34.014904, 41.199940>,  <31.213142, 34.720016, 41.457584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.115528, 34.014904, 41.199940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.139286, 34.259476, 40.884312>,  <31.153540, 34.406219, 40.694935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.139286, 34.259476, 40.884312>,  <31.115528, 34.014904, 41.199940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.139286, 34.259476, 40.884312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523011, -0.692343, -0.497112,
		-0.850254, -0.383166, -0.360904,
		0.059392, 0.611429, -0.789067,
		31.157104, 34.442905, 40.647591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.915316, 33.712421, 40.514343>,  <31.115528, 34.014904, 41.199940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.915316, 33.712421, 40.514343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.214617, 33.973858, 40.468842>,  <31.394197, 34.130718, 40.441540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.214617, 33.973858, 40.468842>,  <30.915316, 33.712421, 40.514343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.214617, 33.973858, 40.468842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563779, -0.716836, -0.410244,
		-0.349675, 0.242832, -0.904853,
		0.748252, 0.653589, -0.113756,
		31.439093, 34.169933, 40.434715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.118677, 33.718727, 39.879795>,  <30.915316, 33.712421, 40.514343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.118677, 33.718727, 39.879795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.432499, 33.802090, 40.113392>,  <31.620792, 33.852108, 40.253548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.432499, 33.802090, 40.113392>,  <31.118677, 33.718727, 39.879795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.432499, 33.802090, 40.113392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535242, -0.703102, -0.468149,
		0.313040, 0.679863, -0.663169,
		0.784552, 0.208407, 0.583990,
		31.667864, 33.864613, 40.288589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.803114, 33.893044, 39.518467>,  <31.118677, 33.718727, 39.879795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.803114, 33.893044, 39.518467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.890724, 33.729877, 39.873013>,  <31.943291, 33.631977, 40.085739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.890724, 33.729877, 39.873013>,  <31.803114, 33.893044, 39.518467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.890724, 33.729877, 39.873013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562495, -0.689483, -0.456303,
		0.797262, 0.598516, 0.078433,
		0.219026, -0.407912, 0.886361,
		31.956432, 33.607506, 40.138920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.446251, 33.768963, 39.575279>,  <31.803114, 33.893044, 39.518467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.446251, 33.768963, 39.575279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238613, 33.495102, 39.779938>,  <32.114029, 33.330784, 39.902733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238613, 33.495102, 39.779938>,  <32.446251, 33.768963, 39.575279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.238613, 33.495102, 39.779938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193889, -0.677342, -0.709658,
		0.832432, -0.269179, 0.484354,
		-0.519098, -0.684654, 0.511650,
		32.082882, 33.289707, 39.933434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.343845, 34.569145, 39.443615>,  <32.446251, 33.768963, 39.575279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.343845, 34.569145, 39.443615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377373, 34.569778, 39.842205>,  <32.397491, 34.570160, 40.081360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377373, 34.569778, 39.842205>,  <32.343845, 34.569145, 39.443615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.377373, 34.569778, 39.842205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779239, 0.623185, -0.066537,
		-0.621096, 0.782073, 0.051002,
		0.083821, 0.001583, 0.996480,
		32.402519, 34.570255, 40.141148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.416351, 35.331615, 39.697281>,  <32.343845, 34.569145, 39.443615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.416351, 35.331615, 39.697281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.567566, 35.081516, 39.970383>,  <32.658295, 34.931458, 40.134243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.567566, 35.081516, 39.970383>,  <32.416351, 35.331615, 39.697281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.567566, 35.081516, 39.970383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842727, 0.537721, 0.025823,
		-0.383279, 0.565617, 0.730188,
		0.378032, -0.625247, 0.682758,
		32.680977, 34.893944, 40.175209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632732, 35.796844, 40.235466>,  <32.416351, 35.331615, 39.697281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.632732, 35.796844, 40.235466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.848957, 35.465290, 40.293087>,  <32.978691, 35.266357, 40.327660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.848957, 35.465290, 40.293087>,  <32.632732, 35.796844, 40.235466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.848957, 35.465290, 40.293087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836259, 0.548108, 0.015773,
		-0.092030, 0.111939, 0.989444,
		0.540557, -0.828883, 0.144053,
		33.011124, 35.216625, 40.336304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.158958, 36.020973, 40.630581>,  <32.632732, 35.796844, 40.235466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.158958, 36.020973, 40.630581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.309856, 35.661949, 40.539307>,  <33.400394, 35.446533, 40.484543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.309856, 35.661949, 40.539307>,  <33.158958, 36.020973, 40.630581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.309856, 35.661949, 40.539307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913941, 0.400627, -0.064888,
		0.149659, -0.184073, 0.971452,
		0.377246, -0.897561, -0.228190,
		33.423031, 35.392681, 40.470848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709854, 36.070461, 40.967587>,  <33.158958, 36.020973, 40.630581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709854, 36.070461, 40.967587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822903, 35.791683, 40.703953>,  <33.890732, 35.624416, 40.545773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822903, 35.791683, 40.703953>,  <33.709854, 36.070461, 40.967587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822903, 35.791683, 40.703953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773993, 0.571560, -0.272495,
		0.566620, -0.433115, 0.700966,
		0.282622, -0.696944, -0.659086,
		33.907688, 35.582600, 40.506226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460079, 35.905788, 41.097294>,  <33.709854, 36.070461, 40.967587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460079, 35.905788, 41.097294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.369751, 35.821239, 40.716908>,  <34.315556, 35.770512, 40.488678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.369751, 35.821239, 40.716908>,  <34.460079, 35.905788, 41.097294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.369751, 35.821239, 40.716908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800641, 0.515833, -0.304779,
		0.554958, -0.830204, 0.052746,
		-0.225821, -0.211371, -0.950961,
		34.302006, 35.757828, 40.431618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021194, 35.639790, 41.008095>,  <34.460079, 35.905788, 41.097294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021194, 35.639790, 41.008095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846878, 35.769543, 40.672272>,  <34.742287, 35.847393, 40.470776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846878, 35.769543, 40.672272>,  <35.021194, 35.639790, 41.008095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846878, 35.769543, 40.672272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870340, 0.389550, -0.301262,
		0.229328, -0.861991, -0.452084,
		-0.435795, 0.324379, -0.839560,
		34.716141, 35.866856, 40.420403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460327, 36.210197, 40.855896>,  <35.021194, 35.639790, 41.008095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.460327, 36.210197, 40.855896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289848, 36.092213, 40.513817>,  <35.187561, 36.021423, 40.308571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289848, 36.092213, 40.513817>,  <35.460327, 36.210197, 40.855896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.289848, 36.092213, 40.513817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636651, 0.573807, -0.515190,
		0.642676, -0.764032, -0.056767,
		-0.426195, -0.294960, -0.855194,
		35.161991, 36.003723, 40.257259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975029, 36.000530, 40.343369>,  <35.460327, 36.210197, 40.855896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975029, 36.000530, 40.343369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.647640, 36.077492, 40.126816>,  <35.451206, 36.123669, 39.996883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.647640, 36.077492, 40.126816>,  <35.975029, 36.000530, 40.343369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.647640, 36.077492, 40.126816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551127, 0.529220, -0.645124,
		0.162384, -0.826382, -0.539189,
		-0.818469, 0.192404, -0.541378,
		35.402100, 36.135212, 39.964401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125381, 35.825672, 39.726414>,  <35.975029, 36.000530, 40.343369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125381, 35.825672, 39.726414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.844906, 36.110512, 39.712296>,  <35.676620, 36.281418, 39.703827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.844906, 36.110512, 39.712296>,  <36.125381, 35.825672, 39.726414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844906, 36.110512, 39.712296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487946, 0.443199, -0.751986,
		-0.519849, -0.544505, -0.658233,
		-0.701189, 0.712102, -0.035293,
		35.634548, 36.324142, 39.701706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.953175, 35.772900, 39.107346>,  <36.125381, 35.825672, 39.726414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.953175, 35.772900, 39.107346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.854755, 36.126072, 39.267292>,  <35.795704, 36.337975, 39.363258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.854755, 36.126072, 39.267292>,  <35.953175, 35.772900, 39.107346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854755, 36.126072, 39.267292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051551, 0.423886, -0.904247,
		-0.967885, -0.201879, -0.149814,
		-0.246052, 0.882930, 0.399866,
		35.780941, 36.390949, 39.387253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284431, 36.169746, 38.890808>,  <35.953175, 35.772900, 39.107346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284431, 36.169746, 38.890808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.580078, 36.414150, 39.004208>,  <35.757465, 36.560795, 39.072247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.580078, 36.414150, 39.004208>,  <35.284431, 36.169746, 38.890808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580078, 36.414150, 39.004208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168631, 0.575336, -0.800345,
		-0.652129, 0.543740, 0.528275,
		0.739115, 0.611011, 0.283502,
		35.801811, 36.597454, 39.089260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282558, 36.591080, 38.305618>,  <35.284431, 36.169746, 38.890808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282558, 36.591080, 38.305618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.553310, 36.778381, 38.532799>,  <35.715763, 36.890762, 38.669109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.553310, 36.778381, 38.532799>,  <35.282558, 36.591080, 38.305618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553310, 36.778381, 38.532799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121739, 0.689743, -0.713746,
		-0.725956, 0.552263, 0.409869,
		0.676880, 0.468252, 0.567956,
		35.756374, 36.918858, 38.703186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167717, 37.258156, 38.284782>,  <35.282558, 36.591080, 38.305618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167717, 37.258156, 38.284782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.545700, 37.283409, 38.413204>,  <35.772488, 37.298561, 38.490257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.545700, 37.283409, 38.413204>,  <35.167717, 37.258156, 38.284782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.545700, 37.283409, 38.413204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210706, 0.633259, -0.744705,
		-0.250326, 0.771360, 0.585098,
		0.944955, 0.063135, 0.321052,
		35.829185, 37.302349, 38.509521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410187, 37.809299, 37.993011>,  <35.167717, 37.258156, 38.284782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410187, 37.809299, 37.993011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.758419, 37.688480, 38.148369>,  <35.967358, 37.615990, 38.241585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.758419, 37.688480, 38.148369>,  <35.410187, 37.809299, 37.993011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758419, 37.688480, 38.148369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480260, 0.693245, -0.537365,
		-0.106944, 0.654353, 0.748589,
		0.870582, -0.302050, 0.388397,
		36.019592, 37.597866, 38.264889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808754, 38.354401, 38.361305>,  <35.410187, 37.809299, 37.993011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808754, 38.354401, 38.361305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082676, 38.098965, 38.220879>,  <36.247028, 37.945702, 38.136623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082676, 38.098965, 38.220879>,  <35.808754, 38.354401, 38.361305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082676, 38.098965, 38.220879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479833, 0.757713, -0.442303,
		0.548458, 0.134437, 0.825300,
		0.684802, -0.638591, -0.351067,
		36.288116, 37.907387, 38.115559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470531, 38.734325, 38.405293>,  <35.808754, 38.354401, 38.361305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470531, 38.734325, 38.405293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.525394, 38.441471, 38.138409>,  <36.558311, 38.265759, 37.978279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.525394, 38.441471, 38.138409>,  <36.470531, 38.734325, 38.405293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525394, 38.441471, 38.138409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487330, 0.636294, -0.598029,
		0.862379, -0.243129, 0.444061,
		0.137155, -0.732132, -0.667211,
		36.566540, 38.221832, 37.938244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994862, 39.028908, 38.005924>,  <36.470531, 38.734325, 38.405293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994862, 39.028908, 38.005924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.891972, 38.701096, 37.801102>,  <36.830238, 38.504406, 37.678207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.891972, 38.701096, 37.801102>,  <36.994862, 39.028908, 38.005924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891972, 38.701096, 37.801102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472716, 0.355448, -0.806347,
		0.842838, -0.449468, 0.295978,
		-0.257222, -0.819534, -0.512056,
		36.814804, 38.455235, 37.647484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.654003, 38.760464, 37.536091>,  <36.994862, 39.028908, 38.005924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.654003, 38.760464, 37.536091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.322884, 38.634003, 37.350712>,  <37.124210, 38.558125, 37.239483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.322884, 38.634003, 37.350712>,  <37.654003, 38.760464, 37.536091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322884, 38.634003, 37.350712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411289, 0.219835, -0.884598,
		0.381555, -0.922885, -0.051948,
		-0.827803, -0.316157, -0.463452,
		37.074543, 38.539154, 37.211678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015415, 38.556480, 36.901272>,  <37.654003, 38.760464, 37.536091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015415, 38.556480, 36.901272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628185, 38.505577, 36.814880>,  <37.395847, 38.475033, 36.763046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628185, 38.505577, 36.814880>,  <38.015415, 38.556480, 36.901272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628185, 38.505577, 36.814880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223218, -0.045541, -0.973704,
		0.114079, -0.990823, 0.072494,
		-0.968070, -0.127261, -0.215974,
		37.337765, 38.467400, 36.750088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765465, 38.636314, 36.801445>,  <38.015415, 38.556480, 36.901272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765465, 38.636314, 36.801445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.941784, 38.277275, 36.799828>,  <39.047577, 38.061852, 36.798859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.941784, 38.277275, 36.799828>,  <38.765465, 38.636314, 36.801445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941784, 38.277275, 36.799828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635154, 0.315089, -0.705194,
		0.634254, 0.308281, 0.709003,
		0.440797, -0.897598, -0.004040,
		39.074024, 38.007996, 36.798615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570583, 38.672031, 36.654648>,  <38.765465, 38.636314, 36.801445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.570583, 38.672031, 36.654648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.422974, 38.318462, 36.539749>,  <39.334408, 38.106323, 36.470810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.422974, 38.318462, 36.539749>,  <39.570583, 38.672031, 36.654648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.422974, 38.318462, 36.539749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117139, 0.262362, -0.957833,
		0.922010, -0.387108, 0.006724,
		-0.369021, -0.883920, -0.287246,
		39.312267, 38.053288, 36.453575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075558, 38.906612, 36.088490>,  <39.570583, 38.672031, 36.654648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075558, 38.906612, 36.088490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.417877, 38.701038, 36.112122>,  <40.623268, 38.577694, 36.126301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.417877, 38.701038, 36.112122>,  <40.075558, 38.906612, 36.088490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.417877, 38.701038, 36.112122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258505, 0.523775, 0.811686,
		-0.448098, -0.679363, 0.581098,
		0.855794, -0.513932, 0.059084,
		40.674614, 38.546860, 36.129848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.385986, 38.753883, 36.776890>,  <40.075558, 38.906612, 36.088490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.385986, 38.753883, 36.776890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.723698, 38.774910, 36.563560>,  <40.926323, 38.787525, 36.435562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.723698, 38.774910, 36.563560>,  <40.385986, 38.753883, 36.776890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.723698, 38.774910, 36.563560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508763, 0.234079, 0.828473,
		0.168384, -0.970796, 0.170888,
		0.844279, 0.052560, -0.533320,
		40.976982, 38.790680, 36.403564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.060589, 38.334133, 36.916645>,  <40.385986, 38.753883, 36.776890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.060589, 38.334133, 36.916645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.203899, 38.671947, 36.757450>,  <41.289886, 38.874638, 36.661934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.203899, 38.671947, 36.757450>,  <41.060589, 38.334133, 36.916645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.203899, 38.671947, 36.757450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683558, 0.053068, 0.727965,
		0.635913, -0.532863, -0.558276,
		0.358279, 0.844536, -0.397990,
		41.311382, 38.925308, 36.638054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.850189, 38.335361, 36.864880>,  <41.060589, 38.334133, 36.916645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.850189, 38.335361, 36.864880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.759228, 38.724369, 36.884876>,  <41.704651, 38.957771, 36.896873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.759228, 38.724369, 36.884876>,  <41.850189, 38.335361, 36.864880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.759228, 38.724369, 36.884876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566311, 0.090308, 0.819229,
		0.792199, 0.214606, -0.571284,
		-0.227403, 0.972517, 0.049992,
		41.691006, 39.016125, 36.899876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.484612, 38.624786, 36.750343>,  <41.850189, 38.335361, 36.864880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.484612, 38.624786, 36.750343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.222809, 38.806221, 36.992294>,  <42.065727, 38.915081, 37.137466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.222809, 38.806221, 36.992294>,  <42.484612, 38.624786, 36.750343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.222809, 38.806221, 36.992294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685360, 0.018157, 0.727978,
		0.319216, 0.891029, -0.322752,
		-0.654510, 0.453583, 0.604879,
		42.026455, 38.942295, 37.173759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.655640, 39.379711, 36.829144>,  <42.484612, 38.624786, 36.750343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.655640, 39.379711, 36.829144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.991158, 39.545406, 36.970470>,  <43.192467, 39.644825, 37.055267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.991158, 39.545406, 36.970470>,  <42.655640, 39.379711, 36.829144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.991158, 39.545406, 36.970470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466139, -0.881703, -0.072904,
		0.281324, 0.225848, -0.932658,
		0.838792, 0.414238, 0.353320,
		43.242794, 39.669678, 37.076466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.201527, 39.224083, 36.466461>,  <42.655640, 39.379711, 36.829144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.201527, 39.224083, 36.466461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.420868, 39.329262, 36.783993>,  <43.552471, 39.392368, 36.974510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.420868, 39.329262, 36.783993>,  <43.201527, 39.224083, 36.466461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.420868, 39.329262, 36.783993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428990, -0.903305, 0.002878,
		0.717827, 0.338967, -0.608133,
		0.548354, 0.262949, 0.793830,
		43.585373, 39.408146, 37.022141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.902874, 38.957317, 36.432423>,  <43.201527, 39.224083, 36.466461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.902874, 38.957317, 36.432423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.850216, 39.016075, 36.824562>,  <43.818623, 39.051331, 37.059845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.850216, 39.016075, 36.824562>,  <43.902874, 38.957317, 36.432423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.850216, 39.016075, 36.824562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377047, -0.907209, 0.186567,
		0.916791, 0.394199, 0.064040,
		-0.131642, 0.146897, 0.980353,
		43.810722, 39.060143, 37.118668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.801308, 38.164761, 36.344944>,  <43.902874, 38.957317, 36.432423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.801308, 38.164761, 36.344944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.060707, 38.312679, 36.078804>,  <44.216347, 38.401428, 35.919121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.060707, 38.312679, 36.078804>,  <43.801308, 38.164761, 36.344944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.060707, 38.312679, 36.078804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759076, -0.379586, 0.528883,
		-0.056981, -0.848037, -0.526864,
		0.648503, 0.369794, -0.665354,
		44.255257, 38.423618, 35.879196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.153122, 37.611256, 36.182262>,  <43.801308, 38.164761, 36.344944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.153122, 37.611256, 36.182262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.374092, 37.933941, 36.098320>,  <44.506676, 38.127552, 36.047955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.374092, 37.933941, 36.098320>,  <44.153122, 37.611256, 36.182262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.374092, 37.933941, 36.098320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803540, -0.448420, 0.391463,
		0.221695, -0.384881, -0.895945,
		0.552426, 0.806714, -0.209854,
		44.539822, 38.175957, 36.035362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.861202, 37.402626, 36.000881>,  <44.153122, 37.611256, 36.182262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.861202, 37.402626, 36.000881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.876850, 37.762722, 36.174339>,  <44.886238, 37.978779, 36.278412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.876850, 37.762722, 36.174339>,  <44.861202, 37.402626, 36.000881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.876850, 37.762722, 36.174339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830871, -0.270383, 0.486361,
		0.555089, 0.341275, -0.758556,
		0.039118, 0.900236, 0.433642,
		44.888584, 38.032791, 36.304432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.352413, 37.009800, 36.236942>,  <44.861202, 37.402626, 36.000881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.352413, 37.009800, 36.236942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.444992, 36.636642, 36.347324>,  <45.500538, 36.412750, 36.413551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.444992, 36.636642, 36.347324>,  <45.352413, 37.009800, 36.236942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.444992, 36.636642, 36.347324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770782, 0.002774, -0.637093,
		0.593572, 0.360152, 0.719696,
		0.231447, -0.932890, 0.275952,
		45.514427, 36.356777, 36.430111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.147430, 37.005184, 36.243423>,  <45.352413, 37.009800, 36.236942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.147430, 37.005184, 36.243423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.012112, 36.629379, 36.221992>,  <45.930920, 36.403896, 36.209133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.012112, 36.629379, 36.221992>,  <46.147430, 37.005184, 36.243423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.012112, 36.629379, 36.221992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827630, -0.269952, -0.492092,
		0.447864, -0.210812, 0.868893,
		-0.338299, -0.939513, -0.053573,
		45.910622, 36.347527, 36.205921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.543205, 36.449574, 36.662357>,  <46.147430, 37.005184, 36.243423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.543205, 36.449574, 36.662357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.412155, 36.268887, 36.330425>,  <46.333527, 36.160473, 36.131268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.412155, 36.268887, 36.330425>,  <46.543205, 36.449574, 36.662357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.412155, 36.268887, 36.330425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918051, -0.359746, -0.166628,
		-0.223257, -0.816414, 0.532564,
		-0.327625, -0.451720, -0.829826,
		46.313869, 36.133369, 36.081478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.123280, 36.118240, 36.548992>,  <46.543205, 36.449574, 36.662357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.123280, 36.118240, 36.548992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.923676, 36.016033, 36.217766>,  <46.803913, 35.954708, 36.019028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.923676, 36.016033, 36.217766>,  <47.123280, 36.118240, 36.548992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.923676, 36.016033, 36.217766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760139, -0.587921, -0.276656,
		-0.416147, -0.767501, 0.487610,
		-0.499010, -0.255522, -0.828069,
		46.773972, 35.939377, 35.969345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.203735, 35.309483, 36.402531>,  <47.123280, 36.118240, 36.548992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.203735, 35.309483, 36.402531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.124863, 35.504169, 36.062126>,  <47.077541, 35.620983, 35.857883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.124863, 35.504169, 36.062126>,  <47.203735, 35.309483, 36.402531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.124863, 35.504169, 36.062126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728047, -0.508644, -0.459596,
		-0.656558, -0.710200, -0.254063,
		-0.197177, 0.486721, -0.851013,
		47.065708, 35.650185, 35.806824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.087448, 34.773254, 35.873253>,  <47.203735, 35.309483, 36.402531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.087448, 34.773254, 35.873253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.201351, 35.110409, 35.690628>,  <47.269691, 35.312702, 35.581051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.201351, 35.110409, 35.690628>,  <47.087448, 34.773254, 35.873253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.201351, 35.110409, 35.690628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568399, -0.531987, -0.627625,
		-0.771904, -0.080790, -0.630584,
		0.284757, 0.842890, -0.456564,
		47.286777, 35.363277, 35.553658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.021980, 34.753323, 35.085804>,  <47.087448, 34.773254, 35.873253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.021980, 34.753323, 35.085804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.290623, 35.032734, 35.184593>,  <47.451809, 35.200382, 35.243866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.290623, 35.032734, 35.184593>,  <47.021980, 34.753323, 35.085804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.290623, 35.032734, 35.184593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642620, -0.383285, -0.663425,
		-0.368761, 0.604273, -0.706307,
		0.671606, 0.698532, 0.246977,
		47.492104, 35.242294, 35.258686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.238049, 35.158607, 34.382923>,  <47.021980, 34.753323, 35.085804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.238049, 35.158607, 34.382923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.548809, 35.130527, 34.633205>,  <47.735264, 35.113678, 34.783375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.548809, 35.130527, 34.633205>,  <47.238049, 35.158607, 34.382923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.548809, 35.130527, 34.633205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586642, -0.280188, -0.759833,
		0.228655, 0.957375, -0.176495,
		0.776897, -0.070200, 0.625702,
		47.781879, 35.109467, 34.820915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.007690, 31.386015, 30.230291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.630695, 31.362928, 30.098606>,  <38.404499, 31.349077, 30.019596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.630695, 31.362928, 30.098606>,  <39.007690, 31.386015, 30.230291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.630695, 31.362928, 30.098606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324831, 0.390141, 0.861554,
		0.078715, 0.918944, -0.386452,
		-0.942491, -0.057715, -0.329211,
		38.347946, 31.345613, 29.999844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620056, 32.127266, 30.333597>,  <39.007690, 31.386015, 30.230291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620056, 32.127266, 30.333597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.362331, 31.821587, 30.321857>,  <38.207695, 31.638180, 30.314814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.362331, 31.821587, 30.321857>,  <38.620056, 32.127266, 30.333597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.362331, 31.821587, 30.321857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412751, 0.315184, 0.854573,
		-0.643811, 0.562729, -0.518501,
		-0.644316, -0.764196, -0.029348,
		38.169037, 31.592327, 30.313053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999371, 32.426586, 30.369095>,  <38.620056, 32.127266, 30.333597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.999371, 32.426586, 30.369095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.963360, 32.048038, 30.493210>,  <37.941753, 31.820910, 30.567678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.963360, 32.048038, 30.493210>,  <37.999371, 32.426586, 30.369095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.963360, 32.048038, 30.493210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474715, 0.314661, 0.821970,
		-0.875523, -0.073300, -0.477584,
		-0.090027, -0.946370, 0.310289,
		37.936352, 31.764128, 30.586296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380432, 32.404449, 30.763813>,  <37.999371, 32.426586, 30.369095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380432, 32.404449, 30.763813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.569172, 32.068153, 30.870031>,  <37.682415, 31.866375, 30.933764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.569172, 32.068153, 30.870031>,  <37.380432, 32.404449, 30.763813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569172, 32.068153, 30.870031> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447918, 0.030841, 0.893543,
		-0.759427, -0.540560, -0.362030,
		0.471848, -0.840740, 0.265548,
		37.710728, 31.815931, 30.949696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849415, 31.988453, 31.080168>,  <37.380432, 32.404449, 30.763813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849415, 31.988453, 31.080168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.196598, 31.862764, 31.234001>,  <37.404907, 31.787352, 31.326302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.196598, 31.862764, 31.234001>,  <36.849415, 31.988453, 31.080168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.196598, 31.862764, 31.234001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346013, 0.172884, 0.922164,
		-0.356253, -0.933475, 0.041332,
		0.867962, -0.314222, 0.384585,
		37.456985, 31.768497, 31.349377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.591446, 31.627497, 31.691126>,  <36.849415, 31.988453, 31.080168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.591446, 31.627497, 31.691126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.981533, 31.703283, 31.736826>,  <37.215584, 31.748755, 31.764246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.981533, 31.703283, 31.736826>,  <36.591446, 31.627497, 31.691126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981533, 31.703283, 31.736826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101769, -0.074366, 0.992025,
		0.196450, -0.979067, -0.053242,
		0.975218, 0.189465, 0.114248,
		37.274097, 31.760122, 31.771101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781181, 31.273867, 32.301395>,  <36.591446, 31.627497, 31.691126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781181, 31.273867, 32.301395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.071289, 31.540129, 32.231094>,  <37.245354, 31.699886, 32.188915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.071289, 31.540129, 32.231094>,  <36.781181, 31.273867, 32.301395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.071289, 31.540129, 32.231094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000923, 0.254340, 0.967114,
		0.688466, -0.701579, 0.183851,
		0.725268, 0.665656, -0.175752,
		37.288868, 31.739826, 32.178368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262894, 31.282427, 32.938728>,  <36.781181, 31.273867, 32.301395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.262894, 31.282427, 32.938728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.352230, 31.628859, 32.759830>,  <37.405830, 31.836718, 32.652493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.352230, 31.628859, 32.759830>,  <37.262894, 31.282427, 32.938728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.352230, 31.628859, 32.759830> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025794, 0.463923, 0.885500,
		0.974400, -0.186229, 0.125951,
		0.223337, 0.866080, -0.447243,
		37.419231, 31.888683, 32.625656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722717, 31.509342, 33.343639>,  <37.262894, 31.282427, 32.938728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722717, 31.509342, 33.343639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.602486, 31.835749, 33.146149>,  <37.530346, 32.031593, 33.027653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.602486, 31.835749, 33.146149>,  <37.722717, 31.509342, 33.343639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602486, 31.835749, 33.146149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116126, 0.545126, 0.830272,
		0.946661, 0.192228, -0.258615,
		-0.300580, 0.816018, -0.493727,
		37.512310, 32.080555, 32.998032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106529, 32.037548, 33.554604>,  <37.722717, 31.509342, 33.343639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.106529, 32.037548, 33.554604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.824917, 32.274513, 33.397942>,  <37.655949, 32.416691, 33.303944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.824917, 32.274513, 33.397942>,  <38.106529, 32.037548, 33.554604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.824917, 32.274513, 33.397942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195023, 0.691567, 0.695486,
		0.682866, 0.413263, -0.602418,
		-0.704031, 0.592409, -0.391652,
		37.613708, 32.452236, 33.280445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344807, 32.616138, 33.506618>,  <38.106529, 32.037548, 33.554604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.344807, 32.616138, 33.506618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.954571, 32.703979, 33.507542>,  <37.720428, 32.756683, 33.508095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.954571, 32.703979, 33.507542>,  <38.344807, 32.616138, 33.506618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.954571, 32.703979, 33.507542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150844, 0.662422, 0.733787,
		0.159617, 0.716220, -0.679376,
		-0.975586, 0.219605, 0.002304,
		37.661896, 32.769859, 33.508232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295204, 33.331902, 33.512516>,  <38.344807, 32.616138, 33.506618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.295204, 33.331902, 33.512516> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.927746, 33.209602, 33.612595>,  <37.707272, 33.136223, 33.672642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.927746, 33.209602, 33.612595>,  <38.295204, 33.331902, 33.512516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927746, 33.209602, 33.612595> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050724, 0.719340, 0.692804,
		-0.391803, 0.623753, -0.676330,
		-0.918650, -0.305748, 0.250200,
		37.652149, 33.117878, 33.687656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747177, 33.922962, 33.396652>,  <38.295204, 33.331902, 33.512516>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747177, 33.922962, 33.396652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.623524, 33.664509, 33.675777>,  <37.549332, 33.509438, 33.843254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.623524, 33.664509, 33.675777>,  <37.747177, 33.922962, 33.396652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.623524, 33.664509, 33.675777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110535, 0.753193, 0.648446,
		-0.944573, 0.123324, -0.304258,
		-0.309134, -0.646136, 0.697814,
		37.530785, 33.470669, 33.885120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335274, 34.389145, 33.801628>,  <37.747177, 33.922962, 33.396652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.335274, 34.389145, 33.801628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.376934, 34.052799, 34.014080>,  <37.401932, 33.850990, 34.141552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.376934, 34.052799, 34.014080>,  <37.335274, 34.389145, 33.801628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376934, 34.052799, 34.014080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152288, 0.514252, 0.844010,
		-0.982833, -0.168788, -0.074495,
		0.104150, -0.840866, 0.531128,
		37.408180, 33.800541, 34.173420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792984, 34.378998, 34.390316>,  <37.335274, 34.389145, 33.801628>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792984, 34.378998, 34.390316> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.097572, 34.134712, 34.477215>,  <37.280327, 33.988140, 34.529354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.097572, 34.134712, 34.477215>,  <36.792984, 34.378998, 34.390316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.097572, 34.134712, 34.477215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005097, 0.340783, 0.940128,
		-0.648181, -0.714771, 0.262608,
		0.761469, -0.610712, 0.217246,
		37.326012, 33.951500, 34.542389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633732, 34.111271, 35.057514>,  <36.792984, 34.378998, 34.390316>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633732, 34.111271, 35.057514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.019512, 34.010597, 35.025295>,  <37.250980, 33.950195, 35.005962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.019512, 34.010597, 35.025295>,  <36.633732, 34.111271, 35.057514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.019512, 34.010597, 35.025295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182713, 0.414900, 0.891333,
		-0.190911, -0.874366, 0.446137,
		0.964452, -0.251680, -0.080548,
		37.308849, 33.935093, 35.001129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810612, 33.756485, 35.642715>,  <36.633732, 34.111271, 35.057514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.810612, 33.756485, 35.642715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.150238, 33.906944, 35.494331>,  <37.354012, 33.997219, 35.405300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.150238, 33.906944, 35.494331>,  <36.810612, 33.756485, 35.642715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.150238, 33.906944, 35.494331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149668, 0.502145, 0.851734,
		0.506675, -0.778684, 0.370044,
		0.849046, 0.376168, -0.370968,
		37.404957, 34.019787, 35.383045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298649, 33.734489, 36.256332>,  <36.810612, 33.756485, 35.642715>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.298649, 33.734489, 36.256332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.488422, 33.983105, 36.006981>,  <37.602287, 34.132275, 35.857368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.488422, 33.983105, 36.006981>,  <37.298649, 33.734489, 36.256332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488422, 33.983105, 36.006981> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230082, 0.595982, 0.769329,
		0.849692, -0.508422, 0.139747,
		0.474431, 0.621540, -0.623381,
		37.630753, 34.169567, 35.819965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.931507, 33.895905, 36.577572>,  <37.298649, 33.734489, 36.256332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.931507, 33.895905, 36.577572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.850292, 34.195377, 36.325142>,  <37.801563, 34.375061, 36.173683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.850292, 34.195377, 36.325142>,  <37.931507, 33.895905, 36.577572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850292, 34.195377, 36.325142> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039972, 0.637620, 0.769313,
		0.978356, 0.181422, -0.099532,
		-0.203033, 0.748684, -0.631071,
		37.789383, 34.419983, 36.135822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181690, 34.428719, 36.966732>,  <37.931507, 33.895905, 36.577572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181690, 34.428719, 36.966732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.952976, 34.606991, 36.691219>,  <37.815746, 34.713955, 36.525909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.952976, 34.606991, 36.691219>,  <38.181690, 34.428719, 36.966732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.952976, 34.606991, 36.691219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290137, 0.675461, 0.677918,
		0.767384, 0.587468, -0.256911,
		-0.571789, 0.445684, -0.688784,
		37.781441, 34.740696, 36.484585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331181, 35.135719, 36.990898>,  <38.181690, 34.428719, 36.966732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.331181, 35.135719, 36.990898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.969837, 35.121479, 36.819939>,  <37.753029, 35.112934, 36.717365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.969837, 35.121479, 36.819939>,  <38.331181, 35.135719, 36.990898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969837, 35.121479, 36.819939> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335083, 0.680583, 0.651557,
		0.267684, 0.731806, -0.626742,
		-0.903363, -0.035599, -0.427397,
		37.698830, 35.110798, 36.691719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.243301, 35.702396, 36.753761>,  <38.331181, 35.135719, 36.990898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.243301, 35.702396, 36.753761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.873405, 35.571537, 36.831570>,  <37.651470, 35.493023, 36.878254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.873405, 35.571537, 36.831570>,  <38.243301, 35.702396, 36.753761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.873405, 35.571537, 36.831570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094528, 0.692471, 0.715226,
		-0.368686, 0.643007, -0.671277,
		-0.924735, -0.327148, 0.194522,
		37.595985, 35.473392, 36.889927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451290, 36.209290, 36.284565>,  <38.243301, 35.702396, 36.753761>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.451290, 36.209290, 36.284565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.683887, 36.502735, 36.143898>,  <38.823448, 36.678802, 36.059498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.683887, 36.502735, 36.143898>,  <38.451290, 36.209290, 36.284565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.683887, 36.502735, 36.143898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291068, -0.591259, -0.752125,
		-0.759699, 0.334997, -0.557346,
		0.581496, 0.733614, -0.351671,
		38.858337, 36.722820, 36.038395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349331, 36.145504, 35.575237>,  <38.451290, 36.209290, 36.284565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.349331, 36.145504, 35.575237> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.695393, 36.321011, 35.672390>,  <38.903030, 36.426315, 35.730682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.695393, 36.321011, 35.672390>,  <38.349331, 36.145504, 35.575237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.695393, 36.321011, 35.672390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472726, -0.551787, -0.687067,
		-0.167445, 0.709234, -0.684798,
		0.865154, 0.438768, 0.242879,
		38.954941, 36.452641, 35.745255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698471, 36.383308, 34.900063>,  <38.349331, 36.145504, 35.575237>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698471, 36.383308, 34.900063> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.995644, 36.392471, 35.167652>,  <39.173946, 36.397968, 35.328205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.995644, 36.392471, 35.167652>,  <38.698471, 36.383308, 34.900063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995644, 36.392471, 35.167652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606213, -0.446806, -0.657928,
		0.283832, 0.894337, -0.345832,
		0.742930, 0.022907, 0.668977,
		39.218521, 36.399345, 35.368347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339508, 36.600979, 34.420841>,  <38.698471, 36.383308, 34.900063>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.339508, 36.600979, 34.420841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.497761, 36.458916, 34.759624>,  <39.592712, 36.373676, 34.962894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.497761, 36.458916, 34.759624>,  <39.339508, 36.600979, 34.420841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.497761, 36.458916, 34.759624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691598, -0.491576, -0.529192,
		0.604293, 0.795119, 0.051147,
		0.395628, -0.355160, 0.846959,
		39.616447, 36.352367, 35.013714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.129669, 36.800789, 34.511539>,  <39.339508, 36.600979, 34.420841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.129669, 36.800789, 34.511539> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.044556, 36.470089, 34.719849>,  <39.993488, 36.271667, 34.844833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.044556, 36.470089, 34.719849>,  <40.129669, 36.800789, 34.511539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.044556, 36.470089, 34.719849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767095, -0.471478, -0.435056,
		0.605216, 0.306909, 0.734520,
		-0.212787, -0.826750, 0.520774,
		39.980721, 36.222065, 34.876080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.764687, 36.601688, 34.671566>,  <40.129669, 36.800789, 34.511539>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.764687, 36.601688, 34.671566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.527691, 36.279766, 34.685631>,  <40.385494, 36.086613, 34.694069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.527691, 36.279766, 34.685631>,  <40.764687, 36.601688, 34.671566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.527691, 36.279766, 34.685631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592478, -0.464917, -0.657892,
		0.545823, -0.368964, 0.752291,
		-0.592492, -0.804809, 0.035159,
		40.349945, 36.038322, 34.696178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.275673, 36.036686, 34.509270>,  <40.764687, 36.601688, 34.671566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.275673, 36.036686, 34.509270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.912266, 35.876556, 34.461372>,  <40.694221, 35.780479, 34.432632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.912266, 35.876556, 34.461372>,  <41.275673, 36.036686, 34.509270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.912266, 35.876556, 34.461372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381756, -0.678707, -0.627391,
		0.169886, -0.615709, 0.769442,
		-0.908516, -0.400324, -0.119748,
		40.639709, 35.756458, 34.425449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.462387, 35.359016, 34.410725>,  <41.275673, 36.036686, 34.509270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.462387, 35.359016, 34.410725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.093964, 35.404980, 34.261890>,  <40.872910, 35.432556, 34.172592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.093964, 35.404980, 34.261890>,  <41.462387, 35.359016, 34.410725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.093964, 35.404980, 34.261890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227424, -0.616885, -0.753480,
		-0.316111, -0.778621, 0.542055,
		-0.921060, 0.114907, -0.372081,
		40.817646, 35.439453, 34.150265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.156731, 34.687725, 34.389153>,  <41.462387, 35.359016, 34.410725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.156731, 34.687725, 34.389153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.959885, 34.916416, 34.126568>,  <40.841778, 35.053631, 33.969017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.959885, 34.916416, 34.126568>,  <41.156731, 34.687725, 34.389153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.959885, 34.916416, 34.126568> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077491, -0.722336, -0.687187,
		-0.867074, -0.389045, 0.311169,
		-0.492115, 0.571729, -0.656466,
		40.812248, 35.087936, 33.929626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.634773, 34.283215, 34.090878>,  <41.156731, 34.687725, 34.389153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.634773, 34.283215, 34.090878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.659508, 34.593880, 33.840126>,  <40.674347, 34.780277, 33.689674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.659508, 34.593880, 33.840126>,  <40.634773, 34.283215, 34.090878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.659508, 34.593880, 33.840126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281036, -0.589116, -0.757603,
		-0.957703, 0.223021, 0.181842,
		0.061836, 0.776663, -0.626875,
		40.678059, 34.826878, 33.652065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.066608, 34.215942, 33.697456>,  <40.634773, 34.283215, 34.090878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.066608, 34.215942, 33.697456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.333904, 34.434799, 33.495827>,  <40.494282, 34.566113, 33.374847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.333904, 34.434799, 33.495827>,  <40.066608, 34.215942, 33.697456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.333904, 34.434799, 33.495827> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026138, -0.659887, -0.750910,
		-0.743485, 0.514965, -0.426663,
		0.668241, 0.547139, -0.504076,
		40.534378, 34.598942, 33.344604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.782856, 34.153904, 33.126221>,  <40.066608, 34.215942, 33.697456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.782856, 34.153904, 33.126221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.159035, 34.275372, 33.065109>,  <40.384743, 34.348251, 33.028442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.159035, 34.275372, 33.065109>,  <39.782856, 34.153904, 33.126221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.159035, 34.275372, 33.065109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027429, -0.515763, -0.856292,
		-0.338831, 0.801107, -0.493377,
		0.940447, 0.303671, -0.152782,
		40.441170, 34.366474, 33.019276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.810459, 34.239975, 32.425129>,  <39.782856, 34.153904, 33.126221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.810459, 34.239975, 32.425129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.200691, 34.214954, 32.509342>,  <40.434830, 34.199940, 32.559872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.200691, 34.214954, 32.509342>,  <39.810459, 34.239975, 32.425129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.200691, 34.214954, 32.509342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164407, -0.427624, -0.888880,
		0.145635, 0.901790, -0.406898,
		0.975582, -0.062556, 0.210537,
		40.493366, 34.196186, 32.572502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.173840, 34.541767, 31.849428>,  <39.810459, 34.239975, 32.425129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.173840, 34.541767, 31.849428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.429016, 34.307434, 32.049362>,  <40.582123, 34.166836, 32.169323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.429016, 34.307434, 32.049362>,  <40.173840, 34.541767, 31.849428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.429016, 34.307434, 32.049362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098862, -0.581390, -0.807597,
		0.763712, 0.564614, -0.312976,
		0.637942, -0.585830, 0.499833,
		40.620399, 34.131683, 32.199314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.753666, 34.467144, 31.442976>,  <40.173840, 34.541767, 31.849428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.753666, 34.467144, 31.442976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.765526, 34.154022, 31.691599>,  <40.772640, 33.966148, 31.840773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.765526, 34.154022, 31.691599>,  <40.753666, 34.467144, 31.442976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.765526, 34.154022, 31.691599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076063, -0.618260, -0.782285,
		0.996662, 0.070473, 0.041211,
		0.029651, -0.782808, 0.621556,
		40.774422, 33.919178, 31.878065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.337814, 34.086071, 31.227261>,  <40.753666, 34.467144, 31.442976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.337814, 34.086071, 31.227261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.111996, 33.808929, 31.406700>,  <40.976505, 33.642643, 31.514364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.111996, 33.808929, 31.406700>,  <41.337814, 34.086071, 31.227261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.111996, 33.808929, 31.406700> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197868, -0.641246, -0.741385,
		0.801334, -0.329783, 0.499107,
		-0.564546, -0.692854, 0.448598,
		40.942631, 33.601074, 31.541279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.656605, 33.423840, 31.211081>,  <41.337814, 34.086071, 31.227261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.656605, 33.423840, 31.211081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.264462, 33.358139, 31.254765>,  <41.029175, 33.318718, 31.280975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.264462, 33.358139, 31.254765>,  <41.656605, 33.423840, 31.211081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.264462, 33.358139, 31.254765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011410, -0.599969, -0.799942,
		0.196917, -0.782980, 0.590056,
		-0.980354, -0.164254, 0.109210,
		40.970356, 33.308865, 31.287527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.636742, 32.821354, 31.054296>,  <41.656605, 33.423840, 31.211081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.636742, 32.821354, 31.054296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.249493, 32.918732, 31.030714>,  <41.017143, 32.977158, 31.016565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.249493, 32.918732, 31.030714>,  <41.636742, 32.821354, 31.054296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.249493, 32.918732, 31.030714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089862, -0.557253, -0.825466,
		-0.233811, -0.793853, 0.561365,
		-0.968121, 0.243448, -0.058955,
		40.959057, 32.991768, 31.013027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.281830, 32.219307, 30.764023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.023045, 32.514618, 30.687721>,  <40.867771, 32.691803, 30.641941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.023045, 32.514618, 30.687721>,  <41.281830, 32.219307, 30.764023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.023045, 32.514618, 30.687721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342775, -0.505044, -0.792108,
		-0.681131, -0.447082, 0.579808,
		-0.646966, 0.738273, -0.190753,
		40.828953, 32.736099, 30.630495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.634304, 31.882612, 30.623125>,  <41.281830, 32.219307, 30.764023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.634304, 31.882612, 30.623125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.650707, 32.238499, 30.441257>,  <40.660549, 32.452030, 30.332136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.650707, 32.238499, 30.441257>,  <40.634304, 31.882612, 30.623125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.650707, 32.238499, 30.441257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279858, -0.426610, -0.860049,
		-0.959165, 0.162509, 0.231501,
		0.041005, 0.889716, -0.454669,
		40.663010, 32.505413, 30.304857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.145206, 31.839739, 30.121035>,  <40.634304, 31.882612, 30.623125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.145206, 31.839739, 30.121035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.292328, 32.192688, 30.003641>,  <40.380600, 32.404457, 29.933205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.292328, 32.192688, 30.003641>,  <40.145206, 31.839739, 30.121035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.292328, 32.192688, 30.003641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410890, -0.128913, -0.902525,
		-0.834199, 0.452544, 0.315144,
		0.367806, 0.882375, -0.293485,
		40.402668, 32.457401, 29.915596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.604530, 32.215836, 29.672974>,  <40.145206, 31.839739, 30.121035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.604530, 32.215836, 29.672974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.960529, 32.369522, 29.574770>,  <40.174129, 32.461735, 29.515848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.960529, 32.369522, 29.574770>,  <39.604530, 32.215836, 29.672974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.960529, 32.369522, 29.574770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282646, 0.042395, -0.958287,
		-0.357785, 0.922267, 0.146330,
		0.890000, 0.384221, -0.245507,
		40.227528, 32.484787, 29.501118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.467575, 32.809170, 29.181765>,  <39.604530, 32.215836, 29.672974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.467575, 32.809170, 29.181765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.839886, 32.669582, 29.138165>,  <40.063271, 32.585831, 29.112005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.839886, 32.669582, 29.138165>,  <39.467575, 32.809170, 29.181765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.839886, 32.669582, 29.138165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162560, -0.127989, -0.978362,
		0.327470, 0.928352, -0.175858,
		0.930773, -0.348972, -0.109001,
		40.119118, 32.564892, 29.105465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570515, 32.940025, 28.466061>,  <39.467575, 32.809170, 29.181765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.570515, 32.940025, 28.466061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.915123, 32.752605, 28.544289>,  <40.121887, 32.640152, 28.591225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.915123, 32.752605, 28.544289>,  <39.570515, 32.940025, 28.466061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.915123, 32.752605, 28.544289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148684, -0.135475, -0.979561,
		0.485469, 0.872987, -0.047048,
		0.861518, -0.468551, 0.195568,
		40.173580, 32.612041, 28.602959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073208, 33.194130, 27.966579>,  <39.570515, 32.940025, 28.466061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.073208, 33.194130, 27.966579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.167294, 32.833115, 28.110853>,  <40.223743, 32.616505, 28.197418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.167294, 32.833115, 28.110853>,  <40.073208, 33.194130, 27.966579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.167294, 32.833115, 28.110853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134338, -0.337345, -0.931747,
		0.962615, 0.267615, 0.041896,
		0.235216, -0.902541, 0.360684,
		40.237858, 32.562351, 28.219059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.677372, 33.009064, 27.711704>,  <40.073208, 33.194130, 27.966579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.677372, 33.009064, 27.711704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.524834, 32.660118, 27.834049>,  <40.433311, 32.450748, 27.907455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.524834, 32.660118, 27.834049>,  <40.677372, 33.009064, 27.711704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.524834, 32.660118, 27.834049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212034, -0.404584, -0.889580,
		0.899788, -0.274384, 0.339257,
		-0.381345, -0.872368, 0.305861,
		40.410431, 32.398407, 27.925808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.226463, 32.496464, 27.466822>,  <40.677372, 33.009064, 27.711704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.226463, 32.496464, 27.466822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.872837, 32.316662, 27.518013>,  <40.660660, 32.208782, 27.548727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.872837, 32.316662, 27.518013>,  <41.226463, 32.496464, 27.466822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.872837, 32.316662, 27.518013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075741, -0.408001, -0.909834,
		0.461187, -0.794659, 0.394744,
		-0.884064, -0.449502, 0.127976,
		40.607616, 32.181812, 27.556406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.341953, 31.808344, 27.226866>,  <41.226463, 32.496464, 27.466822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.341953, 31.808344, 27.226866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.947044, 31.871798, 27.222420>,  <40.710098, 31.909870, 27.219751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.947044, 31.871798, 27.222420>,  <41.341953, 31.808344, 27.226866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.947044, 31.871798, 27.222420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046925, -0.357399, -0.932772,
		-0.151943, -0.920381, 0.360295,
		-0.987275, 0.158635, -0.011116,
		40.650864, 31.919388, 27.219086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.079666, 31.072853, 27.038807>,  <41.341953, 31.808344, 27.226866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.079666, 31.072853, 27.038807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.792450, 31.340336, 26.961599>,  <40.620121, 31.500826, 26.915276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.792450, 31.340336, 26.961599>,  <41.079666, 31.072853, 27.038807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.792450, 31.340336, 26.961599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029239, -0.306057, -0.951564,
		-0.695392, -0.677614, 0.239312,
		-0.718036, 0.668707, -0.193017,
		40.577038, 31.540947, 26.903694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.548912, 30.810869, 26.781935>,  <41.079666, 31.072853, 27.038807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.548912, 30.810869, 26.781935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.470596, 31.181879, 26.654583>,  <40.423607, 31.404484, 26.578171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.470596, 31.181879, 26.654583>,  <40.548912, 30.810869, 26.781935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.470596, 31.181879, 26.654583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056821, -0.334849, -0.940557,
		-0.978998, -0.166062, 0.118263,
		-0.195791, 0.927523, -0.318381,
		40.411858, 31.460136, 26.559069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974499, 30.761385, 26.374012>,  <40.548912, 30.810869, 26.781935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.974499, 30.761385, 26.374012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.151794, 31.100670, 26.258030>,  <40.258171, 31.304241, 26.188440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.151794, 31.100670, 26.258030>,  <39.974499, 30.761385, 26.374012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.151794, 31.100670, 26.258030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201671, -0.220816, -0.954237,
		-0.873425, 0.481428, 0.073187,
		0.443236, 0.848214, -0.289957,
		40.284763, 31.355135, 26.171043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.747623, 30.859526, 25.674959>,  <39.974499, 30.761385, 26.374012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.747623, 30.859526, 25.674959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.053982, 31.115927, 25.695034>,  <40.237797, 31.269768, 25.707079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.053982, 31.115927, 25.695034>,  <39.747623, 30.859526, 25.674959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.053982, 31.115927, 25.695034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031167, 0.114975, -0.992879,
		-0.642208, 0.758879, 0.108037,
		0.765897, 0.641002, 0.050186,
		40.283752, 31.308228, 25.710091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490356, 31.466103, 25.285849>,  <39.747623, 30.859526, 25.674959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.490356, 31.466103, 25.285849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.889896, 31.447399, 25.281776>,  <40.129620, 31.436176, 25.279333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.889896, 31.447399, 25.281776>,  <39.490356, 31.466103, 25.285849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.889896, 31.447399, 25.281776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005019, 0.109148, -0.994013,
		0.047589, 0.992925, 0.108788,
		0.998854, -0.046758, -0.010178,
		40.189552, 31.433372, 25.278723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654835, 32.036037, 24.874926>,  <39.490356, 31.466103, 25.285849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654835, 32.036037, 24.874926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.977383, 31.800560, 24.897596>,  <40.170910, 31.659275, 24.911198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.977383, 31.800560, 24.897596>,  <39.654835, 32.036037, 24.874926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.977383, 31.800560, 24.897596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025416, -0.061248, -0.997799,
		0.590866, 0.806035, -0.034426,
		0.806369, -0.588690, 0.056676,
		40.219292, 31.623953, 24.914598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.106110, 32.288635, 24.320055>,  <39.654835, 32.036037, 24.874926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.106110, 32.288635, 24.320055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.255886, 31.928751, 24.409779>,  <40.345753, 31.712820, 24.463614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.255886, 31.928751, 24.409779>,  <40.106110, 32.288635, 24.320055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.255886, 31.928751, 24.409779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241153, -0.139093, -0.960467,
		0.895343, 0.413730, 0.164886,
		0.374440, -0.899711, 0.224309,
		40.368217, 31.658838, 24.477072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.783451, 32.357822, 24.129545>,  <40.106110, 32.288635, 24.320055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.783451, 32.357822, 24.129545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.674343, 31.972994, 24.127995>,  <40.608879, 31.742096, 24.127064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.674343, 31.972994, 24.127995>,  <40.783451, 32.357822, 24.129545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.674343, 31.972994, 24.127995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364115, -0.099504, -0.926023,
		0.890516, -0.253998, 0.377446,
		-0.272766, -0.962073, -0.003875,
		40.592514, 31.684372, 24.126833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.295670, 32.053116, 23.809132>,  <40.783451, 32.357822, 24.129545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.295670, 32.053116, 23.809132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.002434, 31.784603, 23.765387>,  <40.826492, 31.623495, 23.739140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.002434, 31.784603, 23.765387>,  <41.295670, 32.053116, 23.809132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.002434, 31.784603, 23.765387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362067, -0.249066, -0.898262,
		0.575747, -0.698104, 0.425636,
		-0.733092, -0.671280, -0.109361,
		40.782505, 31.583220, 23.732578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.646946, 31.436472, 23.614660>,  <41.295670, 32.053116, 23.809132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.646946, 31.436472, 23.614660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.271484, 31.375219, 23.491058>,  <41.046207, 31.338469, 23.416897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.271484, 31.375219, 23.491058>,  <41.646946, 31.436472, 23.614660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.271484, 31.375219, 23.491058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338792, -0.242007, -0.909204,
		0.064446, -0.958115, 0.279040,
		-0.938652, -0.153131, -0.309005,
		40.989887, 31.329281, 23.398357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.712677, 30.835379, 23.185759>,  <41.646946, 31.436472, 23.614660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.712677, 30.835379, 23.185759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.368084, 31.007399, 23.077757>,  <41.161327, 31.110611, 23.012957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.368084, 31.007399, 23.077757>,  <41.712677, 30.835379, 23.185759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.368084, 31.007399, 23.077757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170473, -0.255928, -0.951546,
		-0.478315, -0.865770, 0.147165,
		-0.861484, 0.430051, -0.270004,
		41.109638, 31.136414, 22.996756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.452168, 30.442156, 22.712234>,  <41.712677, 30.835379, 23.185759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.452168, 30.442156, 22.712234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.247978, 30.774464, 22.623480>,  <41.125465, 30.973848, 22.570227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.247978, 30.774464, 22.623480>,  <41.452168, 30.442156, 22.712234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.247978, 30.774464, 22.623480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040856, -0.234316, -0.971302,
		-0.858921, -0.504891, 0.085671,
		-0.510476, 0.830771, -0.221887,
		41.094837, 31.023695, 22.556913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.892151, 30.222988, 22.335346>,  <41.452168, 30.442156, 22.712234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.892151, 30.222988, 22.335346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.975742, 30.605755, 22.254705>,  <41.025898, 30.835415, 22.206320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.975742, 30.605755, 22.254705>,  <40.892151, 30.222988, 22.335346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.975742, 30.605755, 22.254705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022544, -0.210814, -0.977266,
		-0.977661, 0.199679, -0.065627,
		0.208975, 0.956914, -0.201604,
		41.038433, 30.892830, 22.194223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.501793, 30.394936, 21.678772>,  <40.892151, 30.222988, 22.335346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.501793, 30.394936, 21.678772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.819099, 30.625647, 21.756809>,  <41.009483, 30.764072, 21.803633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.819099, 30.625647, 21.756809>,  <40.501793, 30.394936, 21.678772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.819099, 30.625647, 21.756809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260218, -0.031464, -0.965037,
		-0.550473, 0.816296, -0.175047,
		0.793263, 0.576777, 0.195094,
		41.057079, 30.798679, 21.815338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.963917, 30.236959, 22.111876>,  <40.501793, 30.394936, 21.678772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.963917, 30.236959, 22.111876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.598938, 30.110603, 22.007833>,  <39.379951, 30.034790, 21.945408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.598938, 30.110603, 22.007833>,  <39.963917, 30.236959, 22.111876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.598938, 30.110603, 22.007833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330860, 0.195508, 0.923205,
		-0.240779, 0.928434, -0.282906,
		-0.912446, -0.315891, -0.260107,
		39.325203, 30.015837, 21.929802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.425144, 30.706188, 22.378454>,  <39.963917, 30.236959, 22.111876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.425144, 30.706188, 22.378454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.235748, 30.355455, 22.345057>,  <39.122112, 30.145016, 22.325018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.235748, 30.355455, 22.345057>,  <39.425144, 30.706188, 22.378454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.235748, 30.355455, 22.345057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392792, 0.125355, 0.911044,
		-0.788368, 0.464164, -0.403767,
		-0.473488, -0.876834, -0.083494,
		39.093700, 30.092405, 22.320009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.857327, 30.794796, 22.838953>,  <39.425144, 30.706188, 22.378454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.857327, 30.794796, 22.838953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.877426, 30.397903, 22.793438>,  <38.889484, 30.159767, 22.766129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.877426, 30.397903, 22.793438>,  <38.857327, 30.794796, 22.838953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.877426, 30.397903, 22.793438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507317, -0.123498, 0.852864,
		-0.860293, 0.014872, -0.509583,
		0.050248, -0.992233, -0.113789,
		38.892502, 30.100233, 22.759302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206806, 30.510639, 22.969618>,  <38.857327, 30.794796, 22.838953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206806, 30.510639, 22.969618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.458248, 30.207201, 23.038193>,  <38.609112, 30.025139, 23.079338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.458248, 30.207201, 23.038193>,  <38.206806, 30.510639, 22.969618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.458248, 30.207201, 23.038193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371052, -0.098801, 0.923341,
		-0.683505, -0.644027, -0.343585,
		0.628603, -0.758596, 0.171437,
		38.646828, 29.979622, 23.089624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813713, 30.128050, 23.461010>,  <38.206806, 30.510639, 22.969618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813713, 30.128050, 23.461010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.178127, 29.975174, 23.522902>,  <38.396778, 29.883450, 23.560036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.178127, 29.975174, 23.522902>,  <37.813713, 30.128050, 23.461010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178127, 29.975174, 23.522902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206776, -0.098824, 0.973385,
		-0.356726, -0.918785, -0.169060,
		0.911038, -0.382189, 0.154729,
		38.451439, 29.860518, 23.569321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779358, 29.537836, 23.829365>,  <37.813713, 30.128050, 23.461010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779358, 29.537836, 23.829365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.142059, 29.687817, 23.906521>,  <38.359680, 29.777805, 23.952814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.142059, 29.687817, 23.906521>,  <37.779358, 29.537836, 23.829365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142059, 29.687817, 23.906521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204293, -0.009525, 0.978864,
		0.368861, -0.926997, 0.067963,
		0.906756, 0.374949, 0.192892,
		38.414085, 29.800301, 23.964388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080986, 29.009762, 24.299835>,  <37.779358, 29.537836, 23.829365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080986, 29.009762, 24.299835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.268974, 29.358534, 24.354774>,  <38.381767, 29.567797, 24.387737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.268974, 29.358534, 24.354774>,  <38.080986, 29.009762, 24.299835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.268974, 29.358534, 24.354774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046599, -0.179894, 0.982581,
		0.881450, -0.455386, -0.125176,
		0.469972, 0.871930, 0.137347,
		38.409966, 29.620113, 24.395979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.402962, 28.880663, 24.860952>,  <38.080986, 29.009762, 24.299835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.402962, 28.880663, 24.860952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.429623, 29.279060, 24.837107>,  <38.445621, 29.518099, 24.822800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.429623, 29.279060, 24.837107>,  <38.402962, 28.880663, 24.860952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429623, 29.279060, 24.837107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050200, 0.063020, 0.996749,
		0.996512, -0.063446, 0.054200,
		0.066655, 0.995993, -0.059616,
		38.449619, 29.577858, 24.819221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836494, 29.081816, 25.440084>,  <38.402962, 28.880663, 24.860952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836494, 29.081816, 25.440084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.661095, 29.429291, 25.347914>,  <38.555855, 29.637775, 25.292612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.661095, 29.429291, 25.347914>,  <38.836494, 29.081816, 25.440084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.661095, 29.429291, 25.347914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119945, 0.197531, 0.972931,
		0.890691, 0.454269, 0.017577,
		-0.438501, 0.868689, -0.230426,
		38.529545, 29.689898, 25.278786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.124500, 29.661766, 25.825552>,  <38.836494, 29.081816, 25.440084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.124500, 29.661766, 25.825552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.771980, 29.820141, 25.722366>,  <38.560467, 29.915165, 25.660454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.771980, 29.820141, 25.722366>,  <39.124500, 29.661766, 25.825552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.771980, 29.820141, 25.722366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038673, 0.483632, 0.874417,
		0.470974, 0.780599, -0.410912,
		-0.881299, 0.395937, -0.257966,
		38.507591, 29.938921, 25.644976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220181, 30.371223, 26.024586>,  <39.124500, 29.661766, 25.825552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.220181, 30.371223, 26.024586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.822754, 30.332022, 26.001888>,  <38.584297, 30.308500, 25.988270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.822754, 30.332022, 26.001888>,  <39.220181, 30.371223, 26.024586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822754, 30.332022, 26.001888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100649, 0.534499, 0.839155,
		-0.051912, 0.839467, -0.540925,
		-0.993567, -0.098006, -0.056745,
		38.524685, 30.302620, 25.984865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.910301, 31.058397, 26.086803>,  <39.220181, 30.371223, 26.024586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.910301, 31.058397, 26.086803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.626411, 30.803761, 26.207499>,  <38.456078, 30.650978, 26.279915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.626411, 30.803761, 26.207499>,  <38.910301, 31.058397, 26.086803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.626411, 30.803761, 26.207499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003491, 0.425127, 0.905127,
		-0.704471, 0.643444, -0.299501,
		-0.709725, -0.636590, 0.301736,
		38.413494, 30.612783, 26.298019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384075, 31.381388, 26.391710>,  <38.910301, 31.058397, 26.086803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384075, 31.381388, 26.391710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.370892, 31.010965, 26.542089>,  <38.362984, 30.788712, 26.632317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.370892, 31.010965, 26.542089>,  <38.384075, 31.381388, 26.391710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370892, 31.010965, 26.542089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036925, 0.377024, 0.925467,
		-0.998774, 0.016619, -0.046620,
		-0.032957, -0.926055, 0.375948,
		38.361004, 30.733149, 26.654875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822021, 31.503710, 26.905243>,  <38.384075, 31.381388, 26.391710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.822021, 31.503710, 26.905243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.995186, 31.158035, 27.007822>,  <38.099083, 30.950630, 27.069370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.995186, 31.158035, 27.007822>,  <37.822021, 31.503710, 26.905243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.995186, 31.158035, 27.007822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144699, 0.214181, 0.966017,
		-0.889747, -0.455309, -0.032325,
		0.432912, -0.864188, 0.256450,
		38.125061, 30.898779, 27.084757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381752, 31.185284, 27.397366>,  <37.822021, 31.503710, 26.905243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.381752, 31.185284, 27.397366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.734161, 31.003746, 27.450768>,  <37.945606, 30.894823, 27.482809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.734161, 31.003746, 27.450768>,  <37.381752, 31.185284, 27.397366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734161, 31.003746, 27.450768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058511, 0.175503, 0.982738,
		-0.469440, -0.873627, 0.128068,
		0.881024, -0.453843, 0.133505,
		37.998470, 30.867594, 27.490818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245403, 30.813478, 28.023228>,  <37.381752, 31.185284, 27.397366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245403, 30.813478, 28.023228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.642834, 30.802052, 27.979412>,  <37.881290, 30.795195, 27.953123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.642834, 30.802052, 27.979412>,  <37.245403, 30.813478, 28.023228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642834, 30.802052, 27.979412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112578, 0.147745, 0.982597,
		-0.011890, -0.988613, 0.150011,
		0.993572, -0.028571, -0.109539,
		37.940907, 30.793480, 27.946550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.441078, 30.352629, 28.564220>,  <37.245403, 30.813478, 28.023228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.441078, 30.352629, 28.564220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.760052, 30.588381, 28.512472>,  <37.951435, 30.729832, 28.481422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.760052, 30.588381, 28.512472>,  <37.441078, 30.352629, 28.564220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.760052, 30.588381, 28.512472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104000, 0.076948, 0.991596,
		0.594381, -0.804183, 0.000065,
		0.797430, 0.589380, -0.129371,
		37.999279, 30.765194, 28.473661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915451, 30.106638, 29.105967>,  <37.441078, 30.352629, 28.564220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915451, 30.106638, 29.105967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.047405, 30.464924, 28.986719>,  <38.126575, 30.679895, 28.915171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.047405, 30.464924, 28.986719>,  <37.915451, 30.106638, 29.105967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047405, 30.464924, 28.986719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170633, 0.254017, 0.952029,
		0.928473, -0.364927, -0.069042,
		0.329884, 0.895714, -0.298116,
		38.146370, 30.733639, 28.897284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557438, 30.287661, 29.460461>,  <37.915451, 30.106638, 29.105967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557438, 30.287661, 29.460461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.410240, 30.636892, 29.332514>,  <38.321922, 30.846432, 29.255745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.410240, 30.636892, 29.332514>,  <38.557438, 30.287661, 29.460461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.410240, 30.636892, 29.332514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055732, 0.364098, 0.929692,
		0.928157, 0.324293, -0.182644,
		-0.367993, 0.873079, -0.319867,
		38.299843, 30.898815, 29.236553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.979095, 30.740540, 29.768438>,  <38.557438, 30.287661, 29.460461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.979095, 30.740540, 29.768438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.642025, 30.935640, 29.677227>,  <38.439785, 31.052702, 29.622499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.642025, 30.935640, 29.677227>,  <38.979095, 30.740540, 29.768438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.642025, 30.935640, 29.677227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140024, 0.210416, 0.967532,
		0.519899, 0.847243, -0.109015,
		-0.842674, 0.487754, -0.228030,
		38.389221, 31.081966, 29.608818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.661526, 34.651821, 32.651604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.287003, 34.566826, 32.763451>,  <41.062290, 34.515831, 32.830559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.287003, 34.566826, 32.763451>,  <41.661526, 34.651821, 32.651604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.287003, 34.566826, 32.763451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001814, 0.799112, 0.601180,
		-0.351187, 0.562379, -0.748597,
		-0.936303, -0.212485, 0.279618,
		41.006111, 34.503082, 32.847336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.417015, 35.298679, 32.749676>,  <41.661526, 34.651821, 32.651604>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.417015, 35.298679, 32.749676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.112995, 35.098656, 32.915691>,  <40.930584, 34.978642, 33.015301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.112995, 35.098656, 32.915691>,  <41.417015, 35.298679, 32.749676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.112995, 35.098656, 32.915691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047925, 0.680052, 0.731596,
		-0.648092, 0.536160, -0.540841,
		-0.760053, -0.500061, 0.415041,
		40.884979, 34.948639, 33.040203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.893326, 35.805679, 32.890495>,  <41.417015, 35.298679, 32.749676>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.893326, 35.805679, 32.890495> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.815529, 35.498466, 33.134563>,  <40.768852, 35.314140, 33.281006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.815529, 35.498466, 33.134563>,  <40.893326, 35.805679, 32.890495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.815529, 35.498466, 33.134563> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353287, 0.635148, 0.686859,
		-0.915075, -0.081979, -0.394863,
		-0.194488, -0.768028, 0.610170,
		40.757183, 35.268059, 33.317616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.135563, 35.864628, 33.146038>,  <40.893326, 35.805679, 32.890495>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.135563, 35.864628, 33.146038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.326740, 35.611164, 33.389362>,  <40.441448, 35.459084, 33.535355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.326740, 35.611164, 33.389362>,  <40.135563, 35.864628, 33.146038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.326740, 35.611164, 33.389362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418604, 0.444519, 0.791943,
		-0.772229, -0.633147, -0.052797,
		0.477947, -0.633663, 0.608308,
		40.470123, 35.421066, 33.571854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.647007, 35.717316, 33.715088>,  <40.135563, 35.864628, 33.146038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.647007, 35.717316, 33.715088> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.002285, 35.606060, 33.861374>,  <40.215450, 35.539307, 33.949146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.002285, 35.606060, 33.861374>,  <39.647007, 35.717316, 33.715088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.002285, 35.606060, 33.861374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238620, 0.400964, 0.884471,
		-0.392646, -0.872849, 0.289764,
		0.888195, -0.278141, 0.365716,
		40.268742, 35.522617, 33.971088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463081, 35.230461, 34.170273>,  <39.647007, 35.717316, 33.715088>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.463081, 35.230461, 34.170273> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.817104, 35.393028, 34.261051>,  <40.029518, 35.490566, 34.315517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.817104, 35.393028, 34.261051>,  <39.463081, 35.230461, 34.170273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.817104, 35.393028, 34.261051> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353107, 0.268503, 0.896226,
		0.303312, -0.873342, 0.381150,
		0.885053, 0.406423, 0.226943,
		40.082623, 35.514954, 34.329136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531872, 35.071938, 34.859135>,  <39.463081, 35.230461, 34.170273>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.531872, 35.071938, 34.859135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.805386, 35.361115, 34.819546>,  <39.969494, 35.534622, 34.795792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.805386, 35.361115, 34.819546>,  <39.531872, 35.071938, 34.859135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.805386, 35.361115, 34.819546> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281129, 0.386177, 0.878540,
		0.673357, -0.572904, 0.467301,
		0.683781, 0.722944, -0.098975,
		40.010521, 35.577999, 34.789852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772842, 35.147865, 35.583927>,  <39.531872, 35.071938, 34.859135>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.772842, 35.147865, 35.583927> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.838634, 35.470036, 35.356159>,  <39.878109, 35.663338, 35.219498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.838634, 35.470036, 35.356159>,  <39.772842, 35.147865, 35.583927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838634, 35.470036, 35.356159> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380803, 0.584380, 0.716581,
		0.909909, 0.098973, 0.402828,
		0.164483, 0.805422, -0.569422,
		39.887978, 35.711662, 35.185333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933205, 35.726467, 36.101418>,  <39.772842, 35.147865, 35.583927>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.933205, 35.726467, 36.101418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.843685, 35.933140, 35.770855>,  <39.789974, 36.057144, 35.572517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.843685, 35.933140, 35.770855>,  <39.933205, 35.726467, 36.101418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.843685, 35.933140, 35.770855> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416884, 0.715687, 0.560357,
		0.880978, 0.469924, 0.055227,
		-0.223800, 0.516686, -0.826408,
		39.776546, 36.088146, 35.522934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.165939, 36.410366, 36.196445>,  <39.933205, 35.726467, 36.101418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.165939, 36.410366, 36.196445> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.894493, 36.429268, 35.903259>,  <39.731625, 36.440609, 35.727348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.894493, 36.429268, 35.903259>,  <40.165939, 36.410366, 36.196445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.894493, 36.429268, 35.903259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523590, 0.668732, 0.527875,
		0.515102, 0.742001, -0.429074,
		-0.678619, 0.047251, -0.732969,
		39.690907, 36.443443, 35.683369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.053833, 37.146061, 36.011326>,  <40.165939, 36.410366, 36.196445>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.053833, 37.146061, 36.011326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.721508, 36.939171, 35.929127>,  <39.522114, 36.815037, 35.879807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.721508, 36.939171, 35.929127>,  <40.053833, 37.146061, 36.011326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.721508, 36.939171, 35.929127> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540474, 0.661706, 0.519647,
		-0.132796, 0.542795, -0.829300,
		-0.830815, -0.517222, -0.205495,
		39.472263, 36.784004, 35.867477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.638557, 37.650955, 35.613922>,  <40.053833, 37.146061, 36.011326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.638557, 37.650955, 35.613922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.391834, 37.361343, 35.737427>,  <39.243801, 37.187576, 35.811531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.391834, 37.361343, 35.737427>,  <39.638557, 37.650955, 35.613922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.391834, 37.361343, 35.737427> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611846, 0.687809, 0.390593,
		-0.495169, 0.052007, -0.867239,
		-0.616808, -0.724026, 0.308761,
		39.206791, 37.144135, 35.830055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955711, 37.895050, 35.616272>,  <39.638557, 37.650955, 35.613922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955711, 37.895050, 35.616272> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.944004, 37.585041, 35.868771>,  <38.936981, 37.399036, 36.020271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.944004, 37.585041, 35.868771>,  <38.955711, 37.895050, 35.616272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.944004, 37.585041, 35.868771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565414, 0.533614, 0.628939,
		-0.824288, -0.338511, -0.453827,
		-0.029265, -0.775027, 0.631250,
		38.935223, 37.352531, 36.058147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304981, 37.831585, 35.985943>,  <38.955711, 37.895050, 35.616272>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304981, 37.831585, 35.985943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.579475, 37.650848, 36.213947>,  <38.744171, 37.542404, 36.350750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.579475, 37.650848, 36.213947>,  <38.304981, 37.831585, 35.985943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.579475, 37.650848, 36.213947> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370773, 0.456908, 0.808556,
		-0.625787, -0.766206, 0.146014,
		0.686235, -0.451845, 0.570015,
		38.785347, 37.515293, 36.384953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870148, 37.914364, 36.555706>,  <38.304981, 37.831585, 35.985943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870148, 37.914364, 36.555706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.570927, 38.153103, 36.439651>,  <37.391392, 38.296349, 36.370018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.570927, 38.153103, 36.439651>,  <37.870148, 37.914364, 36.555706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570927, 38.153103, 36.439651> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303827, -0.080678, -0.949305,
		-0.590002, -0.798285, -0.120988,
		-0.748056, 0.596851, -0.290141,
		37.346512, 38.332157, 36.352608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451782, 37.531605, 35.968338>,  <37.870148, 37.914364, 36.555706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.451782, 37.531605, 35.968338> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.318123, 37.904423, 35.912289>,  <37.237926, 38.128113, 35.878658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.318123, 37.904423, 35.912289>,  <37.451782, 37.531605, 35.968338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.318123, 37.904423, 35.912289> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049084, -0.131255, -0.990133,
		-0.941241, -0.337731, -0.001890,
		-0.334151, 0.932046, -0.140120,
		37.217876, 38.184036, 35.870255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793221, 37.565517, 35.542526>,  <37.451782, 37.531605, 35.968338>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793221, 37.565517, 35.542526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.956833, 37.928631, 35.505375>,  <37.055000, 38.146500, 35.483086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.956833, 37.928631, 35.505375>,  <36.793221, 37.565517, 35.542526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.956833, 37.928631, 35.505375> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021070, -0.111151, -0.993580,
		-0.912278, 0.404445, -0.064591,
		0.409028, 0.907783, -0.092879,
		37.079540, 38.200966, 35.477512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465530, 37.872551, 34.922565>,  <36.793221, 37.565517, 35.542526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.465530, 37.872551, 34.922565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.794334, 38.087109, 34.999077>,  <36.991615, 38.215843, 35.044983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.794334, 38.087109, 34.999077>,  <36.465530, 37.872551, 34.922565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.794334, 38.087109, 34.999077> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156154, 0.110706, -0.981509,
		-0.547651, 0.836675, 0.007241,
		0.822006, 0.536394, 0.191279,
		37.040936, 38.248028, 35.056461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298912, 38.344318, 34.466003>,  <36.465530, 37.872551, 34.922565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298912, 38.344318, 34.466003> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.691223, 38.371529, 34.539154>,  <36.926609, 38.387856, 34.583046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.691223, 38.371529, 34.539154>,  <36.298912, 38.344318, 34.466003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691223, 38.371529, 34.539154> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191823, -0.164523, -0.967541,
		-0.035731, 0.984025, -0.174410,
		0.980779, 0.068027, 0.182880,
		36.985458, 38.391937, 34.594017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684273, 38.902012, 34.035896>,  <36.298912, 38.344318, 34.466003>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.684273, 38.902012, 34.035896> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.942078, 38.613491, 34.137352>,  <37.096760, 38.440380, 34.198223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.942078, 38.613491, 34.137352>,  <36.684273, 38.902012, 34.035896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.942078, 38.613491, 34.137352> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064938, -0.278887, -0.958126,
		0.761829, 0.633997, -0.132907,
		0.644515, -0.721298, 0.253635,
		37.135433, 38.397102, 34.213444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.173149, 38.945869, 33.641926>,  <36.684273, 38.902012, 34.035896>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.173149, 38.945869, 33.641926> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.265507, 38.573879, 33.756359>,  <37.320923, 38.350685, 33.825020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.265507, 38.573879, 33.756359>,  <37.173149, 38.945869, 33.641926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265507, 38.573879, 33.756359> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418514, -0.170509, -0.892061,
		0.878370, 0.325701, 0.349836,
		0.230895, -0.929971, 0.286080,
		37.334774, 38.294888, 33.842182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832874, 38.818401, 33.341877>,  <37.173149, 38.945869, 33.641926>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.832874, 38.818401, 33.341877> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.673931, 38.464973, 33.441006>,  <37.578564, 38.252918, 33.500484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.673931, 38.464973, 33.441006>,  <37.832874, 38.818401, 33.341877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.673931, 38.464973, 33.441006> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411629, -0.412982, -0.812408,
		0.820162, -0.220808, 0.527804,
		-0.397360, -0.883566, 0.247821,
		37.554722, 38.199905, 33.515350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410053, 38.328728, 33.401329>,  <37.832874, 38.818401, 33.341877>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.410053, 38.328728, 33.401329> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.077347, 38.125683, 33.311440>,  <37.877724, 38.003857, 33.257507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.077347, 38.125683, 33.311440>,  <38.410053, 38.328728, 33.401329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077347, 38.125683, 33.311440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458692, -0.400424, -0.793261,
		0.312680, -0.762886, 0.565894,
		-0.831765, -0.507608, -0.224725,
		37.827816, 37.973400, 33.244022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653351, 37.816082, 32.849995>,  <38.410053, 38.328728, 33.401329>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653351, 37.816082, 32.849995> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.262245, 37.776516, 32.776024>,  <38.027584, 37.752777, 32.731640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.262245, 37.776516, 32.776024>,  <38.653351, 37.816082, 32.849995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.262245, 37.776516, 32.776024> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209680, -0.443217, -0.871546,
		0.004245, -0.890940, 0.454101,
		-0.977761, -0.098915, -0.184931,
		37.968918, 37.746841, 32.720543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.545620, 37.095516, 32.446815>,  <38.653351, 37.816082, 32.849995>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.545620, 37.095516, 32.446815> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.206604, 37.297745, 32.382217>,  <38.003197, 37.419083, 32.343460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.206604, 37.297745, 32.382217>,  <38.545620, 37.095516, 32.446815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206604, 37.297745, 32.382217> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088511, -0.434658, -0.896236,
		-0.523307, -0.745297, 0.413137,
		-0.847535, 0.505573, -0.161493,
		37.952343, 37.449417, 32.333771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.020103, 36.692688, 32.008179>,  <38.545620, 37.095516, 32.446815>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.020103, 36.692688, 32.008179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.856396, 37.056316, 31.976942>,  <37.758171, 37.274494, 31.958200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.856396, 37.056316, 31.976942>,  <38.020103, 36.692688, 32.008179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.856396, 37.056316, 31.976942> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315822, -0.221439, -0.922616,
		-0.856013, -0.352933, 0.377731,
		-0.409266, 0.909067, -0.078091,
		37.733616, 37.329037, 31.953514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.339142, 36.572865, 31.832190>,  <38.020103, 36.692688, 32.008179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.339142, 36.572865, 31.832190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.475437, 36.927971, 31.708397>,  <37.557213, 37.141033, 31.634121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.475437, 36.927971, 31.708397>,  <37.339142, 36.572865, 31.832190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475437, 36.927971, 31.708397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222311, -0.243763, -0.944011,
		-0.913498, 0.390458, 0.114301,
		0.340734, 0.887762, -0.309480,
		37.577656, 37.194298, 31.615553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002293, 36.750896, 31.156746>,  <37.339142, 36.572865, 31.832190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002293, 36.750896, 31.156746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.290844, 37.026478, 31.128557>,  <37.463974, 37.191826, 31.111643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.290844, 37.026478, 31.128557>,  <37.002293, 36.750896, 31.156746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290844, 37.026478, 31.128557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058474, -0.040803, -0.997455,
		-0.690071, 0.723660, 0.010851,
		0.721375, 0.688949, -0.070473,
		37.507256, 37.233162, 31.107416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329353, 36.995106, 31.073685>,  <37.002293, 36.750896, 31.156746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.329353, 36.995106, 31.073685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.965660, 37.122864, 30.966883>,  <35.747444, 37.199516, 30.902802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.965660, 37.122864, 30.966883>,  <36.329353, 36.995106, 31.073685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.965660, 37.122864, 30.966883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301511, -0.062993, 0.951379,
		0.287045, 0.945526, 0.153576,
		-0.909228, 0.319393, -0.267005,
		35.692890, 37.218681, 30.886782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137993, 37.585594, 31.499737>,  <36.329353, 36.995106, 31.073685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137993, 37.585594, 31.499737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.796165, 37.415623, 31.380308>,  <35.591068, 37.313641, 31.308651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.796165, 37.415623, 31.380308>,  <36.137993, 37.585594, 31.499737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.796165, 37.415623, 31.380308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267138, -0.133351, 0.954387,
		-0.445365, 0.895349, 0.000441,
		-0.854568, -0.424933, -0.298572,
		35.539795, 37.288143, 31.290737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570171, 37.698078, 31.974403>,  <36.137993, 37.585594, 31.499737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570171, 37.698078, 31.974403> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.413731, 37.366013, 31.815470>,  <35.319866, 37.166775, 31.720110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.413731, 37.366013, 31.815470>,  <35.570171, 37.698078, 31.974403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413731, 37.366013, 31.815470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307545, -0.289021, 0.906578,
		-0.867443, 0.476760, -0.142276,
		-0.391099, -0.830161, -0.397335,
		35.296402, 37.116962, 31.696270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896278, 37.598793, 32.349407>,  <35.570171, 37.698078, 31.974403>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.896278, 37.598793, 32.349407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.987907, 37.246857, 32.182842>,  <35.042885, 37.035694, 32.082901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.987907, 37.246857, 32.182842>,  <34.896278, 37.598793, 32.349407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987907, 37.246857, 32.182842> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416740, -0.475249, 0.774898,
		-0.879689, -0.003972, -0.475533,
		0.229074, -0.879842, -0.416416,
		35.056629, 36.982903, 32.057919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264729, 37.287090, 32.377857>,  <34.896278, 37.598793, 32.349407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264729, 37.287090, 32.377857> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.559101, 37.016541, 32.365704>,  <34.735725, 36.854210, 32.358414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.559101, 37.016541, 32.365704>,  <34.264729, 37.287090, 32.377857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.559101, 37.016541, 32.365704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374330, -0.443865, 0.814163,
		-0.564159, -0.587800, -0.579841,
		0.735936, -0.676369, -0.030379,
		34.779881, 36.813629, 32.356590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846821, 36.678799, 32.440289>,  <34.264729, 37.287090, 32.377857>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846821, 36.678799, 32.440289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.222065, 36.571068, 32.527382>,  <34.447212, 36.506432, 32.579639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.222065, 36.571068, 32.527382>,  <33.846821, 36.678799, 32.440289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.222065, 36.571068, 32.527382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331280, -0.514515, 0.790903,
		-0.100980, -0.814088, -0.571895,
		0.938113, -0.269322, 0.217735,
		34.503498, 36.490273, 32.592701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.735146, 36.064697, 32.681770>,  <33.846821, 36.678799, 32.440289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.735146, 36.064697, 32.681770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.093773, 36.165245, 32.827637>,  <34.308949, 36.225574, 32.915157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.093773, 36.165245, 32.827637>,  <33.735146, 36.064697, 32.681770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093773, 36.165245, 32.827637> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228052, -0.443816, 0.866614,
		0.379681, -0.860141, -0.340586,
		0.896568, 0.251366, 0.364666,
		34.362743, 36.240654, 32.937035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964256, 35.491016, 32.977097>,  <33.735146, 36.064697, 32.681770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964256, 35.491016, 32.977097> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.218227, 35.746780, 33.150543>,  <34.370609, 35.900238, 33.254612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.218227, 35.746780, 33.150543>,  <33.964256, 35.491016, 32.977097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.218227, 35.746780, 33.150543> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274088, -0.338332, 0.900226,
		0.722318, -0.690428, -0.039563,
		0.634927, 0.639406, 0.433621,
		34.408707, 35.938602, 33.280628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264320, 35.144192, 33.503490>,  <33.964256, 35.491016, 32.977097>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264320, 35.144192, 33.503490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.295097, 35.532845, 33.592949>,  <34.313564, 35.766037, 33.646626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.295097, 35.532845, 33.592949>,  <34.264320, 35.144192, 33.503490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.295097, 35.532845, 33.592949> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361668, -0.181837, 0.914402,
		0.929127, -0.151242, 0.337416,
		0.076941, 0.971628, 0.223649,
		34.318180, 35.824333, 33.660042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455513, 35.266087, 34.232632>,  <34.264320, 35.144192, 33.503490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.455513, 35.266087, 34.232632> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.338028, 35.640564, 34.155411>,  <34.267536, 35.865250, 34.109077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.338028, 35.640564, 34.155411>,  <34.455513, 35.266087, 34.232632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.338028, 35.640564, 34.155411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437135, 0.048059, 0.898111,
		0.850086, 0.348178, 0.395128,
		-0.293713, 0.936196, -0.193055,
		34.249912, 35.921421, 34.097496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663841, 35.600510, 34.758404>,  <34.455513, 35.266087, 34.232632>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663841, 35.600510, 34.758404> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.369198, 35.822456, 34.603725>,  <34.192413, 35.955624, 34.510918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.369198, 35.822456, 34.603725>,  <34.663841, 35.600510, 34.758404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.369198, 35.822456, 34.603725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451669, 0.021979, 0.891915,
		0.503392, 0.831650, 0.234426,
		-0.736608, 0.554865, -0.386694,
		34.148216, 35.988914, 34.487717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605499, 36.242214, 35.201679>,  <34.663841, 35.600510, 34.758404>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605499, 36.242214, 35.201679> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.258556, 36.182808, 35.011677>,  <34.050388, 36.147163, 34.897675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.258556, 36.182808, 35.011677>,  <34.605499, 36.242214, 35.201679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.258556, 36.182808, 35.011677> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497341, 0.223430, 0.838290,
		-0.018373, 0.963338, -0.267659,
		-0.867360, -0.148520, -0.475003,
		33.998348, 36.138252, 34.869175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.534042, 36.891117, 27.163950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186600, 36.700451, 27.218077>,  <35.978134, 36.586052, 27.250553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186600, 36.700451, 27.218077>,  <36.534042, 36.891117, 27.163950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.186600, 36.700451, 27.218077> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201477, 0.589256, 0.782422,
		-0.452692, 0.652353, -0.607869,
		-0.868606, -0.476668, 0.135317,
		35.926018, 36.557449, 27.258673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978916, 37.434715, 27.361715>,  <36.534042, 36.891117, 27.163950>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978916, 37.434715, 27.361715> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.818962, 37.090103, 27.486841>,  <35.722988, 36.883335, 27.561916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.818962, 37.090103, 27.486841>,  <35.978916, 37.434715, 27.361715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818962, 37.090103, 27.486841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233381, 0.425749, 0.874226,
		-0.886353, 0.276588, -0.371318,
		-0.399889, -0.861531, 0.312814,
		35.698994, 36.831642, 27.580685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271507, 37.564148, 27.647854>,  <35.978916, 37.434715, 27.361715>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.271507, 37.564148, 27.647854> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346375, 37.208679, 27.815292>,  <35.391296, 36.995396, 27.915756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346375, 37.208679, 27.815292>,  <35.271507, 37.564148, 27.647854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346375, 37.208679, 27.815292> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121054, 0.402013, 0.907596,
		-0.974840, -0.220547, -0.032333,
		0.187170, -0.888675, 0.418597,
		35.402527, 36.942078, 27.940872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.760662, 37.496330, 28.163460>,  <35.271507, 37.564148, 27.647854>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.760662, 37.496330, 28.163460> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.078373, 37.269966, 28.251892>,  <35.268997, 37.134148, 28.304951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.078373, 37.269966, 28.251892>,  <34.760662, 37.496330, 28.163460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078373, 37.269966, 28.251892> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104376, 0.231375, 0.967249,
		-0.598526, -0.791337, 0.124708,
		0.794275, -0.565907, 0.221080,
		35.316654, 37.100193, 28.318216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664192, 37.344669, 28.900482>,  <34.760662, 37.496330, 28.163460>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664192, 37.344669, 28.900482> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035957, 37.211262, 28.837290>,  <35.259018, 37.131218, 28.799374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035957, 37.211262, 28.837290>,  <34.664192, 37.344669, 28.900482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035957, 37.211262, 28.837290> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218847, 0.153402, 0.963625,
		-0.297152, -0.930179, 0.215563,
		0.929412, -0.333518, -0.157983,
		35.314781, 37.111206, 28.789894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785587, 36.709438, 29.236311>,  <34.664192, 37.344669, 28.900482>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.785587, 36.709438, 29.236311> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136944, 36.897514, 29.202017>,  <35.347755, 37.010361, 29.181440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136944, 36.897514, 29.202017>,  <34.785587, 36.709438, 29.236311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136944, 36.897514, 29.202017> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055790, 0.077288, 0.995447,
		0.474679, -0.879173, 0.041657,
		0.878389, 0.470194, -0.085736,
		35.400459, 37.038574, 29.176296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190311, 36.401840, 29.730568>,  <34.785587, 36.709438, 29.236311>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.190311, 36.401840, 29.730568> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.365059, 36.756126, 29.667761>,  <35.469910, 36.968697, 29.630077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.365059, 36.756126, 29.667761>,  <35.190311, 36.401840, 29.730568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.365059, 36.756126, 29.667761> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025983, 0.186909, 0.982033,
		0.899148, -0.424944, 0.104669,
		0.436872, 0.885713, -0.157018,
		35.496120, 37.021839, 29.620655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.715935, 36.352596, 30.132250>,  <35.190311, 36.401840, 29.730568>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.715935, 36.352596, 30.132250> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651875, 36.742649, 30.070963>,  <35.613438, 36.976681, 30.034191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651875, 36.742649, 30.070963>,  <35.715935, 36.352596, 30.132250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.651875, 36.742649, 30.070963> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141973, 0.176364, 0.974033,
		0.976830, 0.134237, -0.166686,
		-0.160149, 0.975129, -0.153219,
		35.603828, 37.035187, 30.024998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231491, 36.568802, 30.503643>,  <35.715935, 36.352596, 30.132250>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231491, 36.568802, 30.503643> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950790, 36.851990, 30.471827>,  <35.782372, 37.021904, 30.452736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950790, 36.851990, 30.471827>,  <36.231491, 36.568802, 30.503643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950790, 36.851990, 30.471827> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049239, 0.063186, 0.996786,
		0.710721, 0.703410, -0.009481,
		-0.701749, 0.707970, -0.079543,
		35.740265, 37.064381, 30.447964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.871635, 37.018513, 30.467213>,  <36.231491, 36.568802, 30.503643>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.871635, 37.018513, 30.467213> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216225, 37.208363, 30.539434>,  <37.422977, 37.322273, 30.582767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216225, 37.208363, 30.539434>,  <36.871635, 37.018513, 30.467213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.216225, 37.208363, 30.539434> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146142, 0.108788, -0.983264,
		-0.486325, 0.873438, 0.024355,
		0.861470, 0.474627, 0.180553,
		37.474667, 37.350750, 30.593599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821983, 37.662994, 30.053181>,  <36.871635, 37.018513, 30.467213>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.821983, 37.662994, 30.053181> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194363, 37.542141, 30.135197>,  <37.417789, 37.469627, 30.184406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194363, 37.542141, 30.135197>,  <36.821983, 37.662994, 30.053181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194363, 37.542141, 30.135197> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219254, 0.013509, -0.975574,
		0.291987, 0.953169, 0.078821,
		0.930952, -0.302137, 0.205041,
		37.473648, 37.451500, 30.196709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213242, 38.023891, 29.655914>,  <36.821983, 37.662994, 30.053181>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213242, 38.023891, 29.655914> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453438, 37.715969, 29.742458>,  <37.597557, 37.531216, 29.794384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453438, 37.715969, 29.742458>,  <37.213242, 38.023891, 29.655914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.453438, 37.715969, 29.742458> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333733, -0.004609, -0.942656,
		0.726659, 0.638262, 0.254141,
		0.600490, -0.769805, 0.216358,
		37.633583, 37.485027, 29.807365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839989, 38.137257, 29.139235>,  <37.213242, 38.023891, 29.655914>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.839989, 38.137257, 29.139235> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873337, 37.761906, 29.273396>,  <37.893345, 37.536694, 29.353891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873337, 37.761906, 29.273396>,  <37.839989, 38.137257, 29.139235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.873337, 37.761906, 29.273396> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367565, -0.283884, -0.885610,
		0.926253, 0.197114, 0.321248,
		0.083369, -0.938379, 0.335401,
		37.898346, 37.480392, 29.374016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628635, 37.924515, 29.007273>,  <37.839989, 38.137257, 29.139235>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.628635, 37.924515, 29.007273> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378769, 37.612160, 29.008495>,  <38.228851, 37.424747, 29.009228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378769, 37.612160, 29.008495>,  <38.628635, 37.924515, 29.007273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378769, 37.612160, 29.008495> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326846, -0.265006, -0.907162,
		0.709202, -0.565672, 0.420770,
		-0.624663, -0.780888, 0.003055,
		38.191368, 37.377892, 29.009413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053513, 37.476345, 28.864117>,  <38.628635, 37.924515, 29.007273>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.053513, 37.476345, 28.864117> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696564, 37.318474, 28.776569>,  <38.482395, 37.223751, 28.724041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696564, 37.318474, 28.776569>,  <39.053513, 37.476345, 28.864117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.696564, 37.318474, 28.776569> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368849, -0.358384, -0.857620,
		0.260046, -0.846044, 0.465389,
		-0.892371, -0.394679, -0.218866,
		38.428852, 37.200069, 28.710909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201130, 36.809650, 28.627913>,  <39.053513, 37.476345, 28.864117>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201130, 36.809650, 28.627913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842922, 36.901733, 28.475569>,  <38.627998, 36.956982, 28.384163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842922, 36.901733, 28.475569>,  <39.201130, 36.809650, 28.627913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842922, 36.901733, 28.475569> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243228, -0.463498, -0.852062,
		-0.372676, -0.855673, 0.359078,
		-0.895518, 0.230205, -0.380858,
		38.574268, 36.970795, 28.361311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936249, 36.163078, 28.278677>,  <39.201130, 36.809650, 28.627913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.936249, 36.163078, 28.278677> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683105, 36.426609, 28.115980>,  <38.531219, 36.584728, 28.018362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683105, 36.426609, 28.115980>,  <38.936249, 36.163078, 28.278677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.683105, 36.426609, 28.115980> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145156, -0.415052, -0.898143,
		-0.760538, -0.627439, 0.167037,
		-0.632860, 0.658826, -0.406740,
		38.493248, 36.624256, 27.993958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397041, 35.771645, 27.909729>,  <38.936249, 36.163078, 28.278677>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397041, 35.771645, 27.909729> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433628, 36.135246, 27.747076>,  <38.455578, 36.353405, 27.649485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433628, 36.135246, 27.747076>,  <38.397041, 35.771645, 27.909729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.433628, 36.135246, 27.747076> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107607, -0.414975, -0.903447,
		-0.989977, 0.038878, -0.135771,
		0.091465, 0.909002, -0.406632,
		38.461067, 36.407948, 27.625086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.019535, 35.699825, 27.342592>,  <38.397041, 35.771645, 27.909729>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.019535, 35.699825, 27.342592> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267635, 36.009525, 27.292267>,  <38.416496, 36.195343, 27.262072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267635, 36.009525, 27.292267>,  <38.019535, 35.699825, 27.342592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.267635, 36.009525, 27.292267> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266030, -0.358522, -0.894812,
		-0.737913, 0.521538, -0.428347,
		0.620251, 0.774248, -0.125813,
		38.453712, 36.241798, 27.254522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091869, 35.719231, 26.634277>,  <38.019535, 35.699825, 27.342592>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.091869, 35.719231, 26.634277> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.390457, 35.962029, 26.743343>,  <38.569611, 36.107708, 26.808783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.390457, 35.962029, 26.743343>,  <38.091869, 35.719231, 26.634277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.390457, 35.962029, 26.743343> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520218, -0.276828, -0.807923,
		-0.414925, 0.744932, -0.522412,
		0.746466, 0.606995, 0.272664,
		38.614395, 36.144127, 26.825142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125797, 36.179646, 26.159567>,  <38.091869, 35.719231, 26.634277>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125797, 36.179646, 26.159567> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490223, 36.150085, 26.321798>,  <38.708878, 36.132347, 26.419136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490223, 36.150085, 26.321798>,  <38.125797, 36.179646, 26.159567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490223, 36.150085, 26.321798> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317235, -0.502611, -0.804204,
		0.263281, 0.861348, -0.434469,
		0.911068, -0.073903, 0.405578,
		38.763542, 36.127914, 26.443472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578289, 36.335510, 25.620888>,  <38.125797, 36.179646, 26.159567>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.578289, 36.335510, 25.620888> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803902, 36.147518, 25.892475>,  <38.939270, 36.034725, 26.055428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803902, 36.147518, 25.892475>,  <38.578289, 36.335510, 25.620888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803902, 36.147518, 25.892475> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414727, -0.549786, -0.725077,
		0.714055, 0.690549, -0.115182,
		0.564027, -0.469976, 0.678967,
		38.973110, 36.006527, 26.096165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.308056, 36.267540, 25.318403>,  <38.578289, 36.335510, 25.620888>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.308056, 36.267540, 25.318403> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315758, 36.003075, 25.618401>,  <39.320381, 35.844395, 25.798399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315758, 36.003075, 25.618401>,  <39.308056, 36.267540, 25.318403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.315758, 36.003075, 25.618401> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484250, -0.650106, -0.585546,
		0.874718, 0.374459, 0.307651,
		0.019257, -0.661167, 0.749991,
		39.321533, 35.804726, 25.843397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.685661, 30.332922, 27.720806> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.671783, 30.724022, 27.638054>,  <35.663456, 30.958681, 27.588402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.671783, 30.724022, 27.638054>,  <35.685661, 30.332922, 27.720806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.671783, 30.724022, 27.638054> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111370, 0.201935, 0.973046,
		0.993173, 0.056799, 0.101887,
		-0.034693, 0.977751, -0.206882,
		35.661377, 31.017347, 27.575989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093056, 30.640400, 28.213083>,  <35.685661, 30.332922, 27.720806>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093056, 30.640400, 28.213083> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.874454, 30.937927, 28.059164>,  <35.743294, 31.116444, 27.966812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.874454, 30.937927, 28.059164>,  <36.093056, 30.640400, 28.213083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874454, 30.937927, 28.059164> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163797, 0.355671, 0.920146,
		0.821285, 0.565888, -0.072538,
		-0.546499, 0.743821, -0.384798,
		35.710506, 31.161074, 27.943726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452503, 31.339540, 28.406738>,  <36.093056, 30.640400, 28.213083>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452503, 31.339540, 28.406738> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.056355, 31.353952, 28.353270>,  <35.818665, 31.362598, 28.321188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.056355, 31.353952, 28.353270>,  <36.452503, 31.339540, 28.406738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056355, 31.353952, 28.353270> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097754, 0.501717, 0.859491,
		0.098031, 0.864281, -0.493364,
		-0.990371, 0.036029, -0.133671,
		35.759243, 31.364761, 28.313168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313198, 31.958899, 28.623001>,  <36.452503, 31.339540, 28.406738>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.313198, 31.958899, 28.623001> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.947548, 31.798027, 28.643473>,  <35.728157, 31.701504, 28.655756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.947548, 31.798027, 28.643473>,  <36.313198, 31.958899, 28.623001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947548, 31.798027, 28.643473> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137882, 0.427116, 0.893622,
		-0.381255, 0.809830, -0.445893,
		-0.914130, -0.402179, 0.051179,
		35.673309, 31.677374, 28.658827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945072, 32.495811, 28.813957>,  <36.313198, 31.958899, 28.623001>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.945072, 32.495811, 28.813957> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.701153, 32.185402, 28.878361>,  <35.554802, 31.999155, 28.917004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.701153, 32.185402, 28.878361>,  <35.945072, 32.495811, 28.813957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.701153, 32.185402, 28.878361> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365536, 0.455639, 0.811651,
		-0.703224, 0.436092, -0.561515,
		-0.609803, -0.776026, 0.161009,
		35.518211, 31.952595, 28.926664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232521, 32.733578, 28.967340>,  <35.945072, 32.495811, 28.813957>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232521, 32.733578, 28.967340> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.255146, 32.370930, 29.134598>,  <35.268723, 32.153339, 29.234951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.255146, 32.370930, 29.134598>,  <35.232521, 32.733578, 28.967340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.255146, 32.370930, 29.134598> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365805, 0.370870, 0.853606,
		-0.928971, -0.201239, -0.310669,
		0.056561, -0.906619, 0.418141,
		35.272114, 32.098946, 29.260040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679729, 32.688274, 29.458282>,  <35.232521, 32.733578, 28.967340>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.679729, 32.688274, 29.458282> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.910824, 32.402901, 29.616892>,  <35.049480, 32.231674, 29.712057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.910824, 32.402901, 29.616892>,  <34.679729, 32.688274, 29.458282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.910824, 32.402901, 29.616892> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195502, 0.350709, 0.915851,
		-0.792467, -0.606638, 0.063138,
		0.577733, -0.713438, 0.396524,
		35.084145, 32.188869, 29.735849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464684, 32.535824, 30.108385>,  <34.679729, 32.688274, 29.458282>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.464684, 32.535824, 30.108385> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.834473, 32.391151, 30.156622>,  <35.056347, 32.304348, 30.185564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.834473, 32.391151, 30.156622>,  <34.464684, 32.535824, 30.108385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834473, 32.391151, 30.156622> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103696, 0.065844, 0.992427,
		-0.366880, -0.929975, 0.023366,
		0.924471, -0.361678, 0.120592,
		35.111813, 32.282646, 30.192799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.338627, 32.008259, 30.685770>,  <34.464684, 32.535824, 30.108385>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.338627, 32.008259, 30.685770> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.729076, 32.088516, 30.652468>,  <34.963345, 32.136669, 30.632486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.729076, 32.088516, 30.652468>,  <34.338627, 32.008259, 30.685770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.729076, 32.088516, 30.652468> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067212, 0.085507, 0.994068,
		0.206571, -0.975926, 0.069980,
		0.976120, 0.200642, -0.083258,
		35.021912, 32.148708, 30.627491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.569096, 31.554495, 31.202341>,  <34.338627, 32.008259, 30.685770>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.569096, 31.554495, 31.202341> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.853561, 31.825346, 31.126720>,  <35.024242, 31.987856, 31.081348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.853561, 31.825346, 31.126720>,  <34.569096, 31.554495, 31.202341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.853561, 31.825346, 31.126720> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055631, 0.213868, 0.975277,
		0.700819, -0.704101, 0.114427,
		0.711166, 0.677128, -0.189052,
		35.066910, 32.028484, 31.070005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044971, 31.456059, 31.696608>,  <34.569096, 31.554495, 31.202341>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.044971, 31.456059, 31.696608> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.105915, 31.824940, 31.554436>,  <35.142483, 32.046268, 31.469133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.105915, 31.824940, 31.554436>,  <35.044971, 31.456059, 31.696608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105915, 31.824940, 31.554436> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129826, 0.337836, 0.932208,
		0.979761, -0.188177, -0.068252,
		0.152362, 0.922202, -0.355429,
		35.151623, 32.101601, 31.447807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760273, 31.665075, 31.889305>,  <35.044971, 31.456059, 31.696608>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.760273, 31.665075, 31.889305> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.525719, 31.984261, 31.833586>,  <35.384987, 32.175774, 31.800154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.525719, 31.984261, 31.833586>,  <35.760273, 31.665075, 31.889305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525719, 31.984261, 31.833586> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201690, 0.310379, 0.928970,
		0.784519, 0.516643, -0.342944,
		-0.586388, 0.797963, -0.139297,
		35.349804, 32.223648, 31.791798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904289, 31.946577, 32.484566>,  <35.760273, 31.665075, 31.889305>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904289, 31.946577, 32.484566> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.619286, 32.194111, 32.352276>,  <35.448284, 32.342632, 32.272903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.619286, 32.194111, 32.352276>,  <35.904289, 31.946577, 32.484566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.619286, 32.194111, 32.352276> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032586, 0.441652, 0.896594,
		0.700908, 0.649606, -0.294515,
		-0.712507, 0.618833, -0.330726,
		35.405533, 32.379761, 32.253059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131878, 32.651093, 32.729134>,  <35.904289, 31.946577, 32.484566>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.131878, 32.651093, 32.729134> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.734604, 32.650860, 32.682522>,  <35.496239, 32.650719, 32.654556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.734604, 32.650860, 32.682522>,  <36.131878, 32.651093, 32.729134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734604, 32.650860, 32.682522> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107087, 0.398897, 0.910722,
		0.045952, 0.916996, -0.396242,
		-0.993187, -0.000583, -0.116528,
		35.436649, 32.650684, 32.647564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625816, 33.189194, 32.938564>,  <36.131878, 32.651093, 32.729134>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625816, 33.189194, 32.938564> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.927670, 32.945679, 33.036472>,  <37.108780, 32.799568, 33.095219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.927670, 32.945679, 33.036472>,  <36.625816, 33.189194, 32.938564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927670, 32.945679, 33.036472> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049304, -0.424594, -0.904041,
		0.654296, 0.670148, -0.350427,
		0.754630, -0.608787, 0.244769,
		37.154060, 32.763042, 33.109901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089279, 33.206841, 32.417114>,  <36.625816, 33.189194, 32.938564>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089279, 33.206841, 32.417114> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.216179, 32.866821, 32.585289>,  <37.292320, 32.662807, 32.686195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.216179, 32.866821, 32.585289>,  <37.089279, 33.206841, 32.417114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.216179, 32.866821, 32.585289> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203165, -0.372125, -0.905675,
		0.926324, 0.372744, 0.054644,
		0.317251, -0.850050, 0.420437,
		37.311356, 32.611805, 32.711418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658775, 33.051971, 32.088741>,  <37.089279, 33.206841, 32.417114>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658775, 33.051971, 32.088741> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.575920, 32.692505, 32.243397>,  <37.526207, 32.476826, 32.336189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.575920, 32.692505, 32.243397>,  <37.658775, 33.051971, 32.088741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575920, 32.692505, 32.243397> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304037, -0.434775, -0.847663,
		0.929868, -0.058031, 0.363287,
		-0.207139, -0.898667, 0.386640,
		37.513779, 32.422905, 32.359390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.286476, 32.573467, 32.084816>,  <37.658775, 33.051971, 32.088741>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.286476, 32.573467, 32.084816> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.976891, 32.320675, 32.100731>,  <37.791138, 32.168999, 32.110279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.976891, 32.320675, 32.100731>,  <38.286476, 32.573467, 32.084816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976891, 32.320675, 32.100731> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261613, -0.376345, -0.888776,
		0.576663, -0.677470, 0.456611,
		-0.773963, -0.631980, 0.039790,
		37.744701, 32.131081, 32.112667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548897, 31.906761, 32.039371>,  <38.286476, 32.573467, 32.084816>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.548897, 31.906761, 32.039371> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.163670, 31.859455, 31.942614>,  <37.932533, 31.831072, 31.884558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.163670, 31.859455, 31.942614>,  <38.548897, 31.906761, 32.039371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163670, 31.859455, 31.942614> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269186, -0.443721, -0.854781,
		-0.006245, -0.888327, 0.459168,
		-0.963068, -0.118263, -0.241897,
		37.874748, 31.823977, 31.870045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598583, 31.237123, 31.747082>,  <38.548897, 31.906761, 32.039371>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598583, 31.237123, 31.747082> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.245720, 31.394039, 31.642841>,  <38.034004, 31.488188, 31.580297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.245720, 31.394039, 31.642841>,  <38.598583, 31.237123, 31.747082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.245720, 31.394039, 31.642841> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116325, -0.354704, -0.927714,
		-0.456368, -0.848702, 0.267271,
		-0.882154, 0.392289, -0.260601,
		37.981071, 31.511724, 31.564661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203381, 30.717735, 31.390860>,  <38.598583, 31.237123, 31.747082>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.203381, 30.717735, 31.390860> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.053413, 31.058277, 31.244093>,  <37.963432, 31.262602, 31.156033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.053413, 31.058277, 31.244093>,  <38.203381, 30.717735, 31.390860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053413, 31.058277, 31.244093> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024712, -0.386469, -0.921971,
		-0.926728, -0.354733, 0.123856,
		-0.374920, 0.851356, -0.366918,
		37.940937, 31.313684, 31.134018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659485, 30.523624, 30.913044>,  <38.203381, 30.717735, 31.390860>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.659485, 30.523624, 30.913044> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.740150, 30.902372, 30.812828>,  <37.788551, 31.129622, 30.752699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.740150, 30.902372, 30.812828>,  <37.659485, 30.523624, 30.913044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.740150, 30.902372, 30.812828> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042712, -0.264053, -0.963562,
		-0.978522, 0.183619, -0.093694,
		0.201668, 0.946869, -0.250539,
		37.800652, 31.186434, 30.737667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334377, 30.606453, 30.267860>,  <37.659485, 30.523624, 30.913044>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334377, 30.606453, 30.267860> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.579845, 30.922184, 30.260235>,  <37.727127, 31.111624, 30.255659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.579845, 30.922184, 30.260235>,  <37.334377, 30.606453, 30.267860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.579845, 30.922184, 30.260235> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095900, -0.098483, -0.990507,
		-0.783714, 0.606019, -0.136133,
		0.613673, 0.789330, -0.019066,
		37.763947, 31.158983, 30.254515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153549, 31.035597, 29.674770>,  <37.334377, 30.606453, 30.267860>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.153549, 31.035597, 29.674770> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.513618, 31.173193, 29.781620>,  <37.729660, 31.255751, 29.845730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.513618, 31.173193, 29.781620>,  <37.153549, 31.035597, 29.674770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513618, 31.173193, 29.781620> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225557, 0.156459, -0.961584,
		-0.372572, 0.925845, 0.063250,
		0.900175, 0.343993, 0.267123,
		37.783672, 31.276390, 29.861757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292683, 31.705969, 29.381466>,  <37.153549, 31.035597, 29.674770>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292683, 31.705969, 29.381466> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.635014, 31.506563, 29.436655>,  <37.840412, 31.386919, 29.469769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.635014, 31.506563, 29.436655>,  <37.292683, 31.705969, 29.381466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635014, 31.506563, 29.436655> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145176, -0.024521, -0.989102,
		0.496465, 0.866534, 0.051387,
		0.855831, -0.498515, 0.137974,
		37.891762, 31.357008, 29.478046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733170, 32.040859, 28.890505>,  <37.292683, 31.705969, 29.381466>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733170, 32.040859, 28.890505> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.914238, 31.699072, 28.992472>,  <38.022877, 31.493999, 29.053652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.914238, 31.699072, 28.992472>,  <37.733170, 32.040859, 28.890505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914238, 31.699072, 28.992472> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267845, -0.142381, -0.952883,
		0.850501, 0.499617, 0.164413,
		0.452667, -0.854465, 0.254915,
		38.050037, 31.442732, 29.068947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363941, 31.975216, 28.463375>,  <37.733170, 32.040859, 28.890505>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.363941, 31.975216, 28.463375> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.296108, 31.603815, 28.595514>,  <38.255409, 31.380976, 28.674797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.296108, 31.603815, 28.595514>,  <38.363941, 31.975216, 28.463375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296108, 31.603815, 28.595514> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312900, -0.368584, -0.875351,
		0.934525, -0.045075, 0.353032,
		-0.169578, -0.928501, 0.330347,
		38.245235, 31.325264, 28.694618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990089, 31.502842, 28.256296>,  <38.363941, 31.975216, 28.463375>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.990089, 31.502842, 28.256296> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.679996, 31.254471, 28.302721>,  <38.493942, 31.105448, 28.330576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.679996, 31.254471, 28.302721>,  <38.990089, 31.502842, 28.256296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679996, 31.254471, 28.302721> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180767, -0.394120, -0.901106,
		0.605263, -0.677584, 0.417776,
		-0.775229, -0.620926, 0.116061,
		38.447426, 31.068193, 28.337540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.790413, 31.355066, 28.259941>,  <38.990089, 31.502842, 28.256296>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.790413, 31.355066, 28.259941> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.998940, 31.676790, 28.145878>,  <40.124054, 31.869825, 28.077440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.998940, 31.676790, 28.145878>,  <39.790413, 31.355066, 28.259941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.998940, 31.676790, 28.145878> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142505, 0.247413, 0.958373,
		0.841382, -0.540250, 0.014361,
		0.521315, 0.804311, -0.285157,
		40.155334, 31.918083, 28.060331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.386318, 31.340191, 28.595327>,  <39.790413, 31.355066, 28.259941>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.386318, 31.340191, 28.595327> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.352993, 31.721790, 28.480125>,  <40.332996, 31.950750, 28.411003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.352993, 31.721790, 28.480125>,  <40.386318, 31.340191, 28.595327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.352993, 31.721790, 28.480125> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363368, 0.298194, 0.882634,
		0.927913, -0.031118, -0.371496,
		-0.083312, 0.953998, -0.288006,
		40.327999, 32.007988, 28.393724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.061222, 31.696499, 28.647854>,  <40.386318, 31.340191, 28.595327>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.061222, 31.696499, 28.647854> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.767723, 31.967245, 28.671413>,  <40.591625, 32.129692, 28.685549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.767723, 31.967245, 28.671413>,  <41.061222, 31.696499, 28.647854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.767723, 31.967245, 28.671413> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442963, 0.410848, 0.796861,
		0.515167, 0.610786, -0.601285,
		-0.733748, 0.676864, 0.058900,
		40.547600, 32.170303, 28.689083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.322273, 32.281544, 28.760315>,  <41.061222, 31.696499, 28.647854>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.322273, 32.281544, 28.760315> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.954823, 32.381706, 28.882576>,  <40.734352, 32.441803, 28.955933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.954823, 32.381706, 28.882576>,  <41.322273, 32.281544, 28.760315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.954823, 32.381706, 28.882576> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389899, 0.449023, 0.803964,
		0.064070, 0.857716, -0.510116,
		-0.918626, 0.250403, 0.305654,
		40.679234, 32.456829, 28.974272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.343613, 32.993671, 29.095043>,  <41.322273, 32.281544, 28.760315>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.343613, 32.993671, 29.095043> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.988934, 32.865868, 29.228724>,  <40.776127, 32.789185, 29.308931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.988934, 32.865868, 29.228724>,  <41.343613, 32.993671, 29.095043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.988934, 32.865868, 29.228724> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201297, 0.383948, 0.901146,
		-0.416239, 0.866313, -0.276128,
		-0.886693, -0.319508, 0.334200,
		40.722927, 32.770016, 29.328983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.967262, 33.530315, 29.455143>,  <41.343613, 32.993671, 29.095043>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.967262, 33.530315, 29.455143> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.798847, 33.192921, 29.588566>,  <40.697800, 32.990482, 29.668619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.798847, 33.192921, 29.588566>,  <40.967262, 33.530315, 29.455143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.798847, 33.192921, 29.588566> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042725, 0.348891, 0.936189,
		-0.906038, 0.408419, -0.110857,
		-0.421034, -0.843486, 0.333558,
		40.672539, 32.939877, 29.688633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.563293, 33.743881, 29.906176>,  <40.967262, 33.530315, 29.455143>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.563293, 33.743881, 29.906176> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.581993, 33.354328, 29.995054>,  <40.593212, 33.120598, 30.048382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.581993, 33.354328, 29.995054>,  <40.563293, 33.743881, 29.906176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.581993, 33.354328, 29.995054> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064694, 0.224924, 0.972226,
		-0.996809, -0.031077, 0.073519,
		0.046750, -0.973881, 0.222196,
		40.596020, 33.062164, 30.061712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.971535, 33.664417, 30.428461>,  <40.563293, 33.743881, 29.906176>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.971535, 33.664417, 30.428461> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.237370, 33.376942, 30.510250>,  <40.396870, 33.204456, 30.559324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.237370, 33.376942, 30.510250>,  <39.971535, 33.664417, 30.428461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.237370, 33.376942, 30.510250> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011044, 0.283066, 0.959037,
		-0.747129, -0.635106, 0.196059,
		0.664587, -0.718689, 0.204473,
		40.436745, 33.161335, 30.571592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739159, 33.356258, 31.057575>,  <39.971535, 33.664417, 30.428461>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.739159, 33.356258, 31.057575> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.118542, 33.229641, 31.051558>,  <40.346172, 33.153671, 31.047947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.118542, 33.229641, 31.051558>,  <39.739159, 33.356258, 31.057575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.118542, 33.229641, 31.051558> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072656, 0.171001, 0.982588,
		-0.308460, -0.933037, 0.185186,
		0.948459, -0.316544, -0.015043,
		40.403080, 33.134678, 31.047045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858688, 32.851925, 31.699762>,  <39.739159, 33.356258, 31.057575>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.858688, 32.851925, 31.699762> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.205585, 32.996826, 31.563133>,  <40.413723, 33.083767, 31.481155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.205585, 32.996826, 31.563133>,  <39.858688, 32.851925, 31.699762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.205585, 32.996826, 31.563133> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226642, 0.323615, 0.918644,
		0.443316, -0.874099, 0.198550,
		0.867239, 0.362250, -0.341571,
		40.465759, 33.105499, 31.460663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.252426, 32.814629, 32.342236>,  <39.858688, 32.851925, 31.699762>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.252426, 32.814629, 32.342236> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.467133, 33.040977, 32.091900>,  <40.595955, 33.176788, 31.941700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.467133, 33.040977, 32.091900>,  <40.252426, 32.814629, 32.342236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.467133, 33.040977, 32.091900> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355019, 0.521412, 0.775945,
		0.765407, -0.638682, 0.078978,
		0.536763, 0.565875, -0.625836,
		40.628162, 33.210739, 31.904148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.764267, 32.940220, 32.698666>,  <40.252426, 32.814629, 32.342236>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.764267, 32.940220, 32.698666> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.794296, 33.242012, 32.437859>,  <40.812313, 33.423088, 32.281376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.794296, 33.242012, 32.437859>,  <40.764267, 32.940220, 32.698666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.794296, 33.242012, 32.437859> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268963, 0.614306, 0.741813,
		0.960220, -0.231060, -0.156808,
		0.075076, 0.754479, -0.652016,
		40.816818, 33.468357, 32.242252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.394485, 33.347809, 32.833076>,  <40.764267, 32.940220, 32.698666>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.394485, 33.347809, 32.833076> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.169945, 33.602299, 32.621380>,  <41.035221, 33.754993, 32.494362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.169945, 33.602299, 32.621380>,  <41.394485, 33.347809, 32.833076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.169945, 33.602299, 32.621380> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186257, 0.720230, 0.668264,
		0.806348, 0.276552, -0.522801,
		-0.561347, 0.636229, -0.529246,
		41.001541, 33.793167, 32.462605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.743980, 33.973392, 32.839848>,  <41.394485, 33.347809, 32.833076>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.743980, 33.973392, 32.839848> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.359051, 34.051174, 32.763817>,  <41.128094, 34.097843, 32.718201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.359051, 34.051174, 32.763817>,  <41.743980, 33.973392, 32.839848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.359051, 34.051174, 32.763817> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006058, 0.683510, 0.729916,
		0.271851, 0.703565, -0.656577,
		-0.962320, 0.194451, -0.190075,
		41.070354, 34.109509, 32.706795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.141903, 35.970303, 25.374502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.896450, 35.709244, 25.552267>,  <39.749176, 35.552608, 25.658926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.896450, 35.709244, 25.552267>,  <40.141903, 35.970303, 25.374502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.896450, 35.709244, 25.552267> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299262, -0.713085, -0.633996,
		0.730680, -0.256047, 0.632887,
		-0.613635, -0.652648, 0.444412,
		39.712360, 35.513451, 25.685591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.592274, 35.380085, 25.581879>,  <40.141903, 35.970303, 25.374502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.592274, 35.380085, 25.581879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.207047, 35.287918, 25.526159>,  <39.975910, 35.232616, 25.492727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.207047, 35.287918, 25.526159>,  <40.592274, 35.380085, 25.581879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.207047, 35.287918, 25.526159> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256417, -0.627074, -0.735547,
		0.082133, -0.744101, 0.662999,
		-0.963070, -0.230417, -0.139297,
		39.918125, 35.218792, 25.484369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.622799, 34.660900, 25.557411>,  <40.592274, 35.380085, 25.581879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.622799, 34.660900, 25.557411> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.276665, 34.777512, 25.394339>,  <40.068985, 34.847477, 25.296495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.276665, 34.777512, 25.394339>,  <40.622799, 34.660900, 25.557411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.276665, 34.777512, 25.394339> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101011, -0.695286, -0.711600,
		-0.490905, -0.656954, 0.572210,
		-0.865338, 0.291528, -0.407679,
		40.017063, 34.864971, 25.272036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.349957, 34.015808, 25.362932>,  <40.622799, 34.660900, 25.557411>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.349957, 34.015808, 25.362932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.124599, 34.276108, 25.159317>,  <39.989388, 34.432289, 25.037148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.124599, 34.276108, 25.159317>,  <40.349957, 34.015808, 25.362932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.124599, 34.276108, 25.159317> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072544, -0.574780, -0.815086,
		-0.823002, -0.496137, 0.276616,
		-0.563388, 0.650750, -0.509037,
		39.955582, 34.471333, 25.006605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860561, 33.608463, 24.872738>,  <40.349957, 34.015808, 25.362932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.860561, 33.608463, 24.872738> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.850620, 33.977295, 24.718258>,  <39.844654, 34.198593, 24.625570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.850620, 33.977295, 24.718258>,  <39.860561, 33.608463, 24.872738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850620, 33.977295, 24.718258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062788, -0.386998, -0.919941,
		-0.997717, 0.001383, 0.067514,
		-0.024856, 0.922080, -0.386201,
		39.843163, 34.253918, 24.602398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275555, 33.765881, 24.354239>,  <39.860561, 33.608463, 24.872738>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275555, 33.765881, 24.354239> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.553097, 34.038635, 24.261637>,  <39.719620, 34.202290, 24.206076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.553097, 34.038635, 24.261637>,  <39.275555, 33.765881, 24.354239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.553097, 34.038635, 24.261637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042432, -0.359637, -0.932127,
		-0.718865, 0.636936, -0.278469,
		0.693853, 0.681890, -0.231505,
		39.761253, 34.243202, 24.192184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.045578, 34.085613, 23.707090>,  <39.275555, 33.765881, 24.354239>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.045578, 34.085613, 23.707090> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.442257, 34.114872, 23.749386>,  <39.680264, 34.132427, 23.774763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.442257, 34.114872, 23.749386>,  <39.045578, 34.085613, 23.707090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.442257, 34.114872, 23.749386> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126260, -0.398741, -0.908330,
		-0.024283, 0.914142, -0.404667,
		0.991700, 0.073150, 0.105737,
		39.739765, 34.136818, 23.781107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.202496, 34.430943, 23.130150>,  <39.045578, 34.085613, 23.707090>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.202496, 34.430943, 23.130150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.547268, 34.262241, 23.242718>,  <39.754131, 34.161022, 23.310259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.547268, 34.262241, 23.242718>,  <39.202496, 34.430943, 23.130150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.547268, 34.262241, 23.242718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166440, -0.288929, -0.942771,
		0.478924, 0.859446, -0.178842,
		0.861933, -0.421750, 0.281421,
		39.805847, 34.135715, 23.327145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.647018, 34.640060, 22.628582>,  <39.202496, 34.430943, 23.130150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.647018, 34.640060, 22.628582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.810207, 34.318905, 22.802448>,  <39.908123, 34.126213, 22.906767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.810207, 34.318905, 22.802448>,  <39.647018, 34.640060, 22.628582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.810207, 34.318905, 22.802448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326830, -0.316105, -0.890651,
		0.852490, 0.505424, 0.133445,
		0.407974, -0.802885, 0.434664,
		39.932598, 34.078041, 22.932848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.292206, 34.589695, 22.399294>,  <39.647018, 34.640060, 22.628582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.292206, 34.589695, 22.399294> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.215508, 34.223671, 22.541220>,  <40.169491, 34.004055, 22.626375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.215508, 34.223671, 22.541220>,  <40.292206, 34.589695, 22.399294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.215508, 34.223671, 22.541220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415637, -0.403215, -0.815269,
		0.889089, -0.008848, 0.457648,
		-0.191744, -0.915063, 0.354816,
		40.157986, 33.949154, 22.647665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.804104, 34.263622, 22.067575>,  <40.292206, 34.589695, 22.399294>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.804104, 34.263622, 22.067575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.552547, 33.976387, 22.186806>,  <40.401615, 33.804047, 22.258345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.552547, 33.976387, 22.186806>,  <40.804104, 34.263622, 22.067575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.552547, 33.976387, 22.186806> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167182, -0.499307, -0.850143,
		0.759310, -0.484810, 0.434059,
		-0.628887, -0.718089, 0.298077,
		40.363880, 33.760960, 22.276228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.081650, 33.582253, 21.747873>,  <40.804104, 34.263622, 22.067575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.081650, 33.582253, 21.747873> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.708393, 33.477222, 21.846100>,  <40.484440, 33.414204, 21.905037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.708393, 33.477222, 21.846100>,  <41.081650, 33.582253, 21.747873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.708393, 33.477222, 21.846100> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005257, -0.692955, -0.720962,
		0.359472, -0.671468, 0.648005,
		-0.933141, -0.262572, 0.245568,
		40.428452, 33.398449, 21.919771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.015606, 32.761742, 21.908638>,  <41.081650, 33.582253, 21.747873>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.015606, 32.761742, 21.908638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.667381, 32.915276, 21.785490>,  <40.458447, 33.007397, 21.711601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.667381, 32.915276, 21.785490>,  <41.015606, 32.761742, 21.908638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.667381, 32.915276, 21.785490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097204, -0.747512, -0.657097,
		-0.482357, -0.542119, 0.688069,
		-0.870565, 0.383838, -0.307871,
		40.406212, 33.030426, 21.693129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.133644, 32.160709, 22.206837>,  <41.015606, 32.761742, 21.908638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.133644, 32.160709, 22.206837> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.029274, 31.779335, 22.146334>,  <40.966652, 31.550510, 22.110031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.029274, 31.779335, 22.146334>,  <41.133644, 32.160709, 22.206837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.029274, 31.779335, 22.146334> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438288, -0.022606, 0.898550,
		-0.860130, 0.300747, -0.411981,
		-0.260923, -0.953436, -0.151258,
		40.950996, 31.493303, 22.100956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.414368, 32.077045, 22.437004>,  <41.133644, 32.160709, 22.206837>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.414368, 32.077045, 22.437004> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.592548, 31.720137, 22.466457>,  <40.699459, 31.505991, 22.484129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.592548, 31.720137, 22.466457>,  <40.414368, 32.077045, 22.437004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.592548, 31.720137, 22.466457> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335010, -0.089851, 0.937921,
		-0.830264, -0.442468, -0.338945,
		0.445454, -0.892271, 0.073632,
		40.726185, 31.452456, 22.488546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988163, 31.691795, 22.712919>,  <40.414368, 32.077045, 22.437004>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.988163, 31.691795, 22.712919> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.336056, 31.503593, 22.772501>,  <40.544792, 31.390673, 22.808250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.336056, 31.503593, 22.772501>,  <39.988163, 31.691795, 22.712919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336056, 31.503593, 22.772501> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188270, -0.037325, 0.981408,
		-0.456198, -0.881607, -0.121044,
		0.869734, -0.470505, 0.148953,
		40.596977, 31.362442, 22.817186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729828, 31.171410, 23.120823>,  <39.988163, 31.691795, 22.712919>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.729828, 31.171410, 23.120823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.118576, 31.213234, 23.205242>,  <40.351826, 31.238329, 23.255894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.118576, 31.213234, 23.205242>,  <39.729828, 31.171410, 23.120823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.118576, 31.213234, 23.205242> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198213, -0.120937, 0.972669,
		0.127226, -0.987138, -0.096810,
		0.971867, 0.104560, 0.211050,
		40.410137, 31.244602, 23.268557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.852764, 30.741741, 23.610497>,  <39.729828, 31.171410, 23.120823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.852764, 30.741741, 23.610497> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.164303, 30.990421, 23.643681>,  <40.351227, 31.139629, 23.663591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.164303, 30.990421, 23.643681>,  <39.852764, 30.741741, 23.610497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.164303, 30.990421, 23.643681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127402, -0.286327, 0.949624,
		0.614134, -0.729046, -0.302212,
		0.778851, 0.621698, 0.082961,
		40.397957, 31.176931, 23.668570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.385319, 30.423990, 24.070347>,  <39.852764, 30.741741, 23.610497>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.385319, 30.423990, 24.070347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.422256, 30.821003, 24.102242>,  <40.444420, 31.059210, 24.121378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.422256, 30.821003, 24.102242>,  <40.385319, 30.423990, 24.070347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.422256, 30.821003, 24.102242> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128917, -0.091320, 0.987442,
		0.987346, -0.080905, -0.136386,
		0.092344, 0.992530, 0.079735,
		40.449959, 31.118761, 24.126162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.979065, 30.493874, 24.589058>,  <40.385319, 30.423990, 24.070347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.979065, 30.493874, 24.589058> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.781185, 30.840298, 24.560188>,  <40.662457, 31.048153, 24.542866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.781185, 30.840298, 24.560188>,  <40.979065, 30.493874, 24.589058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.781185, 30.840298, 24.560188> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016912, 0.092629, 0.995557,
		0.868898, 0.491283, -0.060470,
		-0.494702, 0.866060, -0.072176,
		40.632774, 31.100117, 24.538536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.349865, 30.902737, 25.017912>,  <40.979065, 30.493874, 24.589058>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.349865, 30.902737, 25.017912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.016056, 31.120377, 24.983217>,  <40.815769, 31.250961, 24.962400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.016056, 31.120377, 24.983217>,  <41.349865, 30.902737, 25.017912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.016056, 31.120377, 24.983217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040028, 0.216884, 0.975376,
		0.549516, 0.810503, -0.202774,
		-0.834524, 0.544101, -0.086739,
		40.765697, 31.283607, 24.957195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.554760, 31.438385, 25.449854>,  <41.349865, 30.902737, 25.017912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.554760, 31.438385, 25.449854> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.157856, 31.457352, 25.403938>,  <40.919716, 31.468731, 25.376389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.157856, 31.457352, 25.403938>,  <41.554760, 31.438385, 25.449854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.157856, 31.457352, 25.403938> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084195, 0.422644, 0.902376,
		0.091303, 0.905054, -0.415380,
		-0.992258, 0.047417, -0.114790,
		40.860180, 31.471577, 25.369501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.389599, 31.997923, 25.769163>,  <41.554760, 31.438385, 25.449854>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.389599, 31.997923, 25.769163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.041504, 31.804846, 25.729763>,  <40.832649, 31.688999, 25.706123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.041504, 31.804846, 25.729763>,  <41.389599, 31.997923, 25.769163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.041504, 31.804846, 25.729763> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315003, 0.391484, 0.864588,
		-0.378768, 0.783422, -0.492732,
		-0.870234, -0.482691, -0.098498,
		40.780434, 31.660038, 25.700214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.836742, 32.429173, 25.706287>,  <41.389599, 31.997923, 25.769163>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.836742, 32.429173, 25.706287> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.672073, 32.100151, 25.863226>,  <40.573273, 31.902739, 25.957390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.672073, 32.100151, 25.863226>,  <40.836742, 32.429173, 25.706287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.672073, 32.100151, 25.863226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343396, 0.538798, 0.769270,
		-0.844158, 0.181959, -0.504270,
		-0.411675, -0.822550, 0.392347,
		40.548573, 31.853386, 25.980930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131214, 32.560596, 25.974573>,  <40.836742, 32.429173, 25.706287>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.131214, 32.560596, 25.974573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.232502, 32.219303, 26.156946>,  <40.293274, 32.014526, 26.266371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.232502, 32.219303, 26.156946>,  <40.131214, 32.560596, 25.974573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.232502, 32.219303, 26.156946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347630, 0.359561, 0.865950,
		-0.902793, -0.377768, -0.205563,
		0.253216, -0.853233, 0.455933,
		40.308468, 31.963333, 26.293726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593849, 32.343822, 26.552084>,  <40.131214, 32.560596, 25.974573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593849, 32.343822, 26.552084> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.897324, 32.111103, 26.669317>,  <40.079411, 31.971470, 26.739656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.897324, 32.111103, 26.669317>,  <39.593849, 32.343822, 26.552084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.897324, 32.111103, 26.669317> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210310, 0.207061, 0.955456,
		-0.616571, -0.786532, 0.034737,
		0.758689, -0.581801, 0.293083,
		40.124931, 31.936563, 26.757242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.382206, 32.017559, 27.192276>,  <39.593849, 32.343822, 26.552084>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.382206, 32.017559, 27.192276> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.781765, 31.998762, 27.193022>,  <40.021500, 31.987484, 27.193470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.781765, 31.998762, 27.193022>,  <39.382206, 32.017559, 27.192276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.781765, 31.998762, 27.193022> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001626, 0.074131, 0.997247,
		-0.047002, -0.996141, 0.074125,
		0.998893, -0.046993, 0.001864,
		40.081432, 31.984665, 27.193581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445412, 31.561537, 27.663033>,  <39.382206, 32.017559, 27.192276>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445412, 31.561537, 27.663033> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.776783, 31.783897, 27.635649>,  <39.975605, 31.917315, 27.619219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.776783, 31.783897, 27.635649>,  <39.445412, 31.561537, 27.663033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.776783, 31.783897, 27.635649> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080833, 0.002291, 0.996725,
		0.554238, -0.831245, -0.043037,
		0.828424, 0.555901, -0.068462,
		40.025311, 31.950668, 27.615110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220314, 30.874510, 28.025774>,  <39.445412, 31.561537, 27.663033>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.220314, 30.874510, 28.025774> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.821400, 30.888361, 27.999796>,  <38.582050, 30.896671, 27.984209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.821400, 30.888361, 27.999796>,  <39.220314, 30.874510, 28.025774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.821400, 30.888361, 27.999796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038997, -0.499740, -0.865297,
		-0.062420, -0.865483, 0.497034,
		-0.997288, 0.034629, -0.064945,
		38.522213, 30.898750, 27.980312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141933, 30.344624, 27.640581>,  <39.220314, 30.874510, 28.025774>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.141933, 30.344624, 27.640581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.776375, 30.503498, 27.607037>,  <38.557041, 30.598824, 27.586910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.776375, 30.503498, 27.607037>,  <39.141933, 30.344624, 27.640581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.776375, 30.503498, 27.607037> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140083, -0.502455, -0.853180,
		-0.381007, -0.767973, 0.514832,
		-0.913898, 0.397186, -0.083859,
		38.502205, 30.622654, 27.581879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782185, 29.787498, 27.406685>,  <39.141933, 30.344624, 27.640581>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.782185, 29.787498, 27.406685> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.574028, 30.114407, 27.307684>,  <38.449135, 30.310553, 27.248283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.574028, 30.114407, 27.307684>,  <38.782185, 29.787498, 27.406685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574028, 30.114407, 27.307684> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111609, -0.352449, -0.929152,
		-0.846602, -0.455901, 0.274627,
		-0.520393, 0.817272, -0.247502,
		38.417912, 30.359589, 27.233433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.018986, 29.581060, 27.109043>,  <38.782185, 29.787498, 27.406685>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.018986, 29.581060, 27.109043> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.120094, 29.938721, 26.961203>,  <38.180759, 30.153316, 26.872498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.120094, 29.938721, 26.961203>,  <38.018986, 29.581060, 27.109043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.120094, 29.938721, 26.961203> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210395, -0.322069, -0.923042,
		-0.944374, 0.311077, 0.106716,
		0.252767, 0.894149, -0.369602,
		38.195923, 30.206966, 26.850323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544621, 29.691698, 26.554291>,  <38.018986, 29.581060, 27.109043>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544621, 29.691698, 26.554291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.802094, 29.989651, 26.484064>,  <37.956577, 30.168423, 26.441927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.802094, 29.989651, 26.484064>,  <37.544621, 29.691698, 26.554291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802094, 29.989651, 26.484064> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101245, -0.144511, -0.984310,
		-0.758568, 0.651357, -0.017603,
		0.643680, 0.744883, -0.175568,
		37.995197, 30.213116, 26.431393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266193, 30.080561, 25.878178>,  <37.544621, 29.691698, 26.554291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266193, 30.080561, 25.878178> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.659004, 30.147726, 25.912643>,  <37.894691, 30.188025, 25.933323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.659004, 30.147726, 25.912643>,  <37.266193, 30.080561, 25.878178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.659004, 30.147726, 25.912643> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065044, 0.127459, -0.989709,
		-0.177167, 0.977527, 0.114247,
		0.982029, 0.167913, 0.086164,
		37.953613, 30.198099, 25.938492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342949, 30.494156, 25.336149>,  <37.266193, 30.080561, 25.878178>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342949, 30.494156, 25.336149> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.692921, 30.321627, 25.424198>,  <37.902905, 30.218109, 25.477028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.692921, 30.321627, 25.424198>,  <37.342949, 30.494156, 25.336149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692921, 30.321627, 25.424198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223824, -0.042891, -0.973685,
		0.429413, 0.901178, 0.059013,
		0.874933, -0.431322, 0.220123,
		37.955399, 30.192230, 25.490234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138500, 31.143225, 24.921991>,  <37.342949, 30.494156, 25.336149>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138500, 31.143225, 24.921991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.777073, 30.977495, 24.878361>,  <36.560215, 30.878057, 24.852182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.777073, 30.977495, 24.878361>,  <37.138500, 31.143225, 24.921991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.777073, 30.977495, 24.878361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294780, 0.416440, 0.860048,
		-0.310915, 0.809266, -0.498417,
		-0.903569, -0.414326, -0.109078,
		36.506001, 30.853197, 24.845638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648533, 31.681425, 25.113173>,  <37.138500, 31.143225, 24.921991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648533, 31.681425, 25.113173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.420433, 31.353083, 25.125902>,  <36.283573, 31.156078, 25.133539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.420433, 31.353083, 25.125902>,  <36.648533, 31.681425, 25.113173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420433, 31.353083, 25.125902> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411996, 0.319300, 0.853409,
		-0.710686, 0.473545, -0.520269,
		-0.570250, -0.820855, 0.031824,
		36.249359, 31.106827, 25.135448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098930, 31.957642, 25.433094>,  <36.648533, 31.681425, 25.113173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.098930, 31.957642, 25.433094> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.041569, 31.562880, 25.462626>,  <36.007153, 31.326021, 25.480345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.041569, 31.562880, 25.462626>,  <36.098930, 31.957642, 25.433094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.041569, 31.562880, 25.462626> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478370, 0.134428, 0.867809,
		-0.866371, 0.089130, -0.491384,
		-0.143403, -0.986907, 0.073828,
		35.998547, 31.266808, 25.484774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293125, 31.789438, 25.605627>,  <36.098930, 31.957642, 25.433094>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293125, 31.789438, 25.605627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.557587, 31.518364, 25.734383>,  <35.716263, 31.355721, 25.811636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.557587, 31.518364, 25.734383>,  <35.293125, 31.789438, 25.605627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.557587, 31.518364, 25.734383> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377174, 0.070646, 0.923444,
		-0.648545, -0.731951, -0.208897,
		0.661158, -0.677685, 0.321890,
		35.755936, 31.315058, 25.830950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834202, 31.299658, 26.120590>,  <35.293125, 31.789438, 25.605627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.834202, 31.299658, 26.120590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.222878, 31.274521, 26.211699>,  <35.456081, 31.259439, 26.266363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.222878, 31.274521, 26.211699>,  <34.834202, 31.299658, 26.120590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.222878, 31.274521, 26.211699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230987, -0.049734, 0.971685,
		-0.049734, -0.996784, -0.062841,
		-0.971685, 0.062841, -0.227770,
		35.514381, 31.255669, 26.280029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785503, 30.826656, 26.607021>,  <34.834202, 31.299658, 26.120590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.785503, 30.826656, 26.607021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.154907, 30.972219, 26.655531>,  <35.376549, 31.059557, 26.684637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.154907, 30.972219, 26.655531>,  <34.785503, 30.826656, 26.607021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154907, 30.972219, 26.655531> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125837, -0.011237, 0.991987,
		0.362353, -0.931368, 0.035416,
		0.923507, 0.363907, 0.121272,
		35.431961, 31.081392, 26.691912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022152, 30.439121, 27.180487>,  <34.785503, 30.826656, 26.607021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.022152, 30.439121, 27.180487> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.250381, 30.767351, 27.167162>,  <35.387318, 30.964289, 27.159166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.250381, 30.767351, 27.167162>,  <35.022152, 30.439121, 27.180487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250381, 30.767351, 27.167162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028091, 0.060040, 0.997801,
		0.820768, -0.568380, 0.057307,
		0.570570, 0.820573, -0.033313,
		35.421551, 31.013523, 27.157167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<36.668488, 33.653934, 21.501461> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.031567, 33.487648, 21.524292>,  <37.249416, 33.387875, 21.537991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.031567, 33.487648, 21.524292>,  <36.668488, 33.653934, 21.501461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031567, 33.487648, 21.524292> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131312, 0.410599, 0.902311,
		-0.398542, -0.811534, 0.427290,
		0.907701, -0.415717, 0.057077,
		37.303879, 33.362934, 21.541414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606884, 33.200733, 22.012531>,  <36.668488, 33.653934, 21.501461>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606884, 33.200733, 22.012531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.002018, 33.254250, 21.980812>,  <37.239098, 33.286358, 21.961781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.002018, 33.254250, 21.980812>,  <36.606884, 33.200733, 22.012531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.002018, 33.254250, 21.980812> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046219, 0.234299, 0.971065,
		0.148492, -0.962915, 0.225265,
		0.987833, 0.133784, -0.079297,
		37.298367, 33.294384, 21.957024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959473, 32.729156, 22.549999>,  <36.606884, 33.200733, 22.012531>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959473, 32.729156, 22.549999> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.199589, 33.036079, 22.459772>,  <37.343658, 33.220234, 22.405636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.199589, 33.036079, 22.459772>,  <36.959473, 32.729156, 22.549999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199589, 33.036079, 22.459772> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039378, 0.253341, 0.966575,
		0.798810, -0.589111, 0.121864,
		0.600293, 0.767311, -0.225569,
		37.379677, 33.266273, 22.392101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433212, 32.731384, 23.120409>,  <36.959473, 32.729156, 22.549999>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433212, 32.731384, 23.120409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.471771, 33.089771, 22.946993>,  <37.494907, 33.304802, 22.842943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.471771, 33.089771, 22.946993>,  <37.433212, 32.731384, 23.120409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471771, 33.089771, 22.946993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042945, 0.431417, 0.901130,
		0.994416, -0.105481, 0.003108,
		0.096393, 0.895965, -0.433538,
		37.500690, 33.358562, 22.816931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948021, 33.134716, 23.518938>,  <37.433212, 32.731384, 23.120409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.948021, 33.134716, 23.518938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.726578, 33.409214, 23.330223>,  <37.593712, 33.573914, 23.216995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.726578, 33.409214, 23.330223>,  <37.948021, 33.134716, 23.518938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726578, 33.409214, 23.330223> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075205, 0.523009, 0.849003,
		0.829373, 0.505498, -0.237934,
		-0.553611, 0.686246, -0.471786,
		37.560493, 33.615089, 23.188688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137024, 33.829460, 23.821289>,  <37.948021, 33.134716, 23.518938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137024, 33.829460, 23.821289> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.784508, 33.919060, 23.654840>,  <37.572998, 33.972820, 23.554972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.784508, 33.919060, 23.654840>,  <38.137024, 33.829460, 23.821289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.784508, 33.919060, 23.654840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218348, 0.587904, 0.778905,
		0.419114, 0.777298, -0.469202,
		-0.881288, 0.224000, -0.416120,
		37.520123, 33.986259, 23.530005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105289, 34.475372, 23.992062>,  <38.137024, 33.829460, 23.821289>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.105289, 34.475372, 23.992062> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.733624, 34.368057, 23.890345>,  <37.510624, 34.303669, 23.829313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.733624, 34.368057, 23.890345>,  <38.105289, 34.475372, 23.992062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.733624, 34.368057, 23.890345> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356940, 0.472304, 0.805930,
		-0.096118, 0.839613, -0.534614,
		-0.929169, -0.268289, -0.254294,
		37.454872, 34.287571, 23.814056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724522, 35.115932, 24.092861>,  <38.105289, 34.475372, 23.992062>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724522, 35.115932, 24.092861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.461918, 34.816044, 24.126108>,  <37.304356, 34.636112, 24.146057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.461918, 34.816044, 24.126108>,  <37.724522, 35.115932, 24.092861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461918, 34.816044, 24.126108> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547907, 0.549701, 0.630576,
		-0.518447, 0.368440, -0.771664,
		-0.656514, -0.749720, 0.083120,
		37.264965, 34.591129, 24.151045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105289, 35.440495, 24.043224>,  <37.724522, 35.115932, 24.092861>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105289, 35.440495, 24.043224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.040741, 35.084167, 24.213116>,  <37.002010, 34.870369, 24.315050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.040741, 35.084167, 24.213116>,  <37.105289, 35.440495, 24.043224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040741, 35.084167, 24.213116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641562, 0.421716, 0.640744,
		-0.749904, -0.169092, -0.639571,
		-0.161372, -0.890822, 0.424730,
		36.992329, 34.816921, 24.340534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339462, 35.388779, 24.110189>,  <37.105289, 35.440495, 24.043224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339462, 35.388779, 24.110189> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.501564, 35.150303, 24.387409>,  <36.598827, 35.007217, 24.553741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.501564, 35.150303, 24.387409>,  <36.339462, 35.388779, 24.110189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501564, 35.150303, 24.387409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666174, 0.326586, 0.670487,
		-0.626081, -0.733412, -0.264818,
		0.405258, -0.596194, 0.693050,
		36.623142, 34.971443, 24.595324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848591, 35.381271, 24.613884>,  <36.339462, 35.388779, 24.110189>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.848591, 35.381271, 24.613884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.150139, 35.197105, 24.801371>,  <36.331070, 35.086605, 24.913862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.150139, 35.197105, 24.801371>,  <35.848591, 35.381271, 24.613884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150139, 35.197105, 24.801371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402518, 0.240188, 0.883339,
		-0.519285, -0.854591, -0.004256,
		0.753871, -0.460418, 0.468715,
		36.376301, 35.058979, 24.941984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.569813, 34.874886, 25.090273>,  <35.848591, 35.381271, 24.613884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.569813, 34.874886, 25.090273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.932068, 34.967209, 25.232573>,  <36.149422, 35.022602, 25.317951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.932068, 34.967209, 25.232573>,  <35.569813, 34.874886, 25.090273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.932068, 34.967209, 25.232573> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397579, 0.170324, 0.901621,
		0.147494, -0.957979, 0.246010,
		0.905636, 0.230792, 0.355751,
		36.203758, 35.036449, 25.339296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212536, 34.241104, 25.198347>,  <35.569813, 34.874886, 25.090273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212536, 34.241104, 25.198347> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.845901, 34.081699, 25.185371>,  <34.625919, 33.986057, 25.177586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.845901, 34.081699, 25.185371>,  <35.212536, 34.241104, 25.198347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845901, 34.081699, 25.185371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260458, -0.533554, -0.804662,
		0.303359, -0.745994, 0.592846,
		-0.916589, -0.398513, -0.032441,
		34.570927, 33.962147, 25.175638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339466, 33.508389, 25.023087>,  <35.212536, 34.241104, 25.198347>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339466, 33.508389, 25.023087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.950378, 33.556629, 24.943823>,  <34.716927, 33.585575, 24.896265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.950378, 33.556629, 24.943823>,  <35.339466, 33.508389, 25.023087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950378, 33.556629, 24.943823> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070700, -0.659459, -0.748409,
		-0.220941, -0.742003, 0.632943,
		-0.972721, 0.120606, -0.198161,
		34.658562, 33.592812, 24.884375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966263, 32.923862, 24.920616>,  <35.339466, 33.508389, 25.023087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966263, 32.923862, 24.920616> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.774632, 33.187817, 24.689089>,  <34.659653, 33.346191, 24.550173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.774632, 33.187817, 24.689089>,  <34.966263, 32.923862, 24.920616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774632, 33.187817, 24.689089> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056829, -0.634718, -0.770652,
		-0.875930, -0.402097, 0.266580,
		-0.479080, 0.659887, -0.578819,
		34.630909, 33.385784, 24.515444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483501, 32.506371, 24.479860>,  <34.966263, 32.923862, 24.920616>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483501, 32.506371, 24.479860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.472977, 32.869213, 24.311825>,  <34.466663, 33.086918, 24.211004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.472977, 32.869213, 24.311825>,  <34.483501, 32.506371, 24.479860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.472977, 32.869213, 24.311825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077532, -0.420818, -0.903826,
		-0.996643, 0.008792, 0.081401,
		-0.026308, 0.907102, -0.420087,
		34.465084, 33.141342, 24.185799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.954037, 32.402729, 24.063259>,  <34.483501, 32.506371, 24.479860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.954037, 32.402729, 24.063259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.160370, 32.715153, 23.922480>,  <34.284168, 32.902607, 23.838013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.160370, 32.715153, 23.922480>,  <33.954037, 32.402729, 24.063259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.160370, 32.715153, 23.922480> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292750, -0.225383, -0.929247,
		-0.805118, 0.582369, 0.112394,
		0.515832, 0.781056, -0.351949,
		34.315121, 32.949471, 23.816895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.551167, 32.534782, 23.485218>,  <33.954037, 32.402729, 24.063259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.551167, 32.534782, 23.485218> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.904018, 32.713005, 23.424128>,  <34.115730, 32.819939, 23.387474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.904018, 32.713005, 23.424128>,  <33.551167, 32.534782, 23.485218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.904018, 32.713005, 23.424128> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040415, -0.394657, -0.917939,
		-0.469271, 0.803568, -0.366145,
		0.882129, 0.445560, -0.152725,
		34.168655, 32.846672, 23.378309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492313, 32.896870, 22.784323>,  <33.551167, 32.534782, 23.485218>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492313, 32.896870, 22.784323> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.886478, 32.873222, 22.848158>,  <34.122978, 32.859035, 22.886459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.886478, 32.873222, 22.848158>,  <33.492313, 32.896870, 22.784323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886478, 32.873222, 22.848158> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133708, -0.311199, -0.940892,
		0.105284, 0.948505, -0.298755,
		0.985412, -0.059115, 0.159587,
		34.182102, 32.855488, 22.896034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.817448, 33.232784, 22.233568>,  <33.492313, 32.896870, 22.784323>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.817448, 33.232784, 22.233568> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.089703, 32.980316, 22.382357>,  <34.253056, 32.828835, 22.471630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.089703, 32.980316, 22.382357>,  <33.817448, 33.232784, 22.233568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.089703, 32.980316, 22.382357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091914, -0.430149, -0.898067,
		0.726836, 0.645444, -0.234760,
		0.680633, -0.631169, 0.371973,
		34.293892, 32.790966, 22.493948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.374359, 33.136520, 21.766487>,  <33.817448, 33.232784, 22.233568>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.374359, 33.136520, 21.766487> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.448566, 32.810558, 21.986130>,  <34.493092, 32.614983, 22.117916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.448566, 32.810558, 21.986130>,  <34.374359, 33.136520, 21.766487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.448566, 32.810558, 21.986130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216076, -0.511300, -0.831795,
		0.958589, 0.272963, 0.081225,
		0.185519, -0.814901, 0.549108,
		34.504223, 32.566090, 22.150862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840397, 32.833794, 21.345554>,  <34.374359, 33.136520, 21.766487>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.840397, 32.833794, 21.345554> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.692623, 32.554916, 21.591297>,  <34.603958, 32.387589, 21.738743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.692623, 32.554916, 21.591297>,  <34.840397, 32.833794, 21.345554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.692623, 32.554916, 21.591297> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136854, -0.694740, -0.706121,
		0.919123, -0.176790, 0.352076,
		-0.369436, -0.697196, 0.614358,
		34.581791, 32.345757, 21.775604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.303802, 32.239769, 21.233364>,  <34.840397, 32.833794, 21.345554>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.303802, 32.239769, 21.233364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.981045, 32.072544, 21.400290>,  <34.787392, 31.972210, 21.500444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.981045, 32.072544, 21.400290>,  <35.303802, 32.239769, 21.233364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.981045, 32.072544, 21.400290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168897, -0.840264, -0.515199,
		0.566038, -0.345227, 0.748611,
		-0.806892, -0.418061, 0.417314,
		34.738976, 31.947126, 21.525484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.448399, 31.477102, 21.302069>,  <35.303802, 32.239769, 21.233364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.448399, 31.477102, 21.302069> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.050266, 31.501091, 21.332304>,  <34.811386, 31.515484, 21.350445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.050266, 31.501091, 21.332304>,  <35.448399, 31.477102, 21.302069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.050266, 31.501091, 21.332304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093914, -0.781863, -0.616336,
		0.022138, -0.620559, 0.783847,
		-0.995334, 0.059970, 0.075588,
		34.751667, 31.519081, 21.354980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136635, 30.764635, 21.414898>,  <35.448399, 31.477102, 21.302069>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136635, 30.764635, 21.414898> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.832554, 30.969229, 21.254658>,  <34.650105, 31.091984, 21.158514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.832554, 30.969229, 21.254658>,  <35.136635, 30.764635, 21.414898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.832554, 30.969229, 21.254658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231404, -0.789332, -0.568689,
		-0.607080, -0.339618, 0.718410,
		-0.760201, 0.511483, -0.400599,
		34.604492, 31.122673, 21.134478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765759, 30.964760, 21.687761>,  <35.136635, 30.764635, 21.414898>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765759, 30.964760, 21.687761> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.738403, 30.565821, 21.697706>,  <35.721989, 30.326456, 21.703672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.738403, 30.565821, 21.697706>,  <35.765759, 30.964760, 21.687761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.738403, 30.565821, 21.697706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303046, 0.002976, 0.952971,
		-0.950519, 0.072710, 0.302039,
		-0.068392, -0.997349, 0.024863,
		35.717884, 30.266617, 21.705166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329258, 30.774321, 22.260660>,  <35.765759, 30.964760, 21.687761>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329258, 30.774321, 22.260660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.517353, 30.429945, 22.183035>,  <35.630211, 30.223320, 22.136459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.517353, 30.429945, 22.183035>,  <35.329258, 30.774321, 22.260660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517353, 30.429945, 22.183035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322988, -0.036754, 0.945689,
		-0.821313, -0.507379, 0.260790,
		0.470238, -0.860939, -0.194064,
		35.658424, 30.171663, 22.124815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132896, 30.372217, 22.841682>,  <35.329258, 30.774321, 22.260660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132896, 30.372217, 22.841682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.468815, 30.205414, 22.702635>,  <35.670368, 30.105331, 22.619205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.468815, 30.205414, 22.702635>,  <35.132896, 30.372217, 22.841682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.468815, 30.205414, 22.702635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337265, -0.101021, 0.935974,
		-0.425426, -0.903271, 0.055805,
		0.839800, -0.417009, -0.347619,
		35.720757, 30.080311, 22.598349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169662, 29.832018, 23.342905>,  <35.132896, 30.372217, 22.841682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169662, 29.832018, 23.342905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.528229, 29.900808, 23.179508>,  <35.743370, 29.942081, 23.081470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.528229, 29.900808, 23.179508>,  <35.169662, 29.832018, 23.342905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.528229, 29.900808, 23.179508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398182, 0.092297, 0.912651,
		0.194657, -0.980768, 0.014258,
		0.896415, 0.171976, -0.408491,
		35.797153, 29.952400, 23.056961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657806, 29.482426, 23.816050>,  <35.169662, 29.832018, 23.342905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657806, 29.482426, 23.816050> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.862522, 29.755602, 23.607563>,  <35.985352, 29.919508, 23.482471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.862522, 29.755602, 23.607563>,  <35.657806, 29.482426, 23.816050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.862522, 29.755602, 23.607563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374151, 0.368954, 0.850814,
		0.773358, -0.630451, -0.066695,
		0.511789, 0.682938, -0.521217,
		36.016060, 29.960484, 23.451199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342491, 29.406637, 24.125818>,  <35.657806, 29.482426, 23.816050>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.342491, 29.406637, 24.125818> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.388016, 29.749395, 23.924711>,  <36.415329, 29.955050, 23.804047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.388016, 29.749395, 23.924711>,  <36.342491, 29.406637, 24.125818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388016, 29.749395, 23.924711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415736, 0.418544, 0.807456,
		0.902336, -0.300917, -0.308608,
		0.113811, 0.856896, -0.502769,
		36.422157, 30.006464, 23.773880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012249, 29.791559, 24.302694>,  <36.342491, 29.406637, 24.125818>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012249, 29.791559, 24.302694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.796024, 30.110096, 24.194155>,  <36.666290, 30.301218, 24.129030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.796024, 30.110096, 24.194155>,  <37.012249, 29.791559, 24.302694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796024, 30.110096, 24.194155> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116264, 0.390152, 0.913380,
		0.833232, 0.462191, -0.303487,
		-0.540562, 0.796342, -0.271351,
		36.633854, 30.348999, 24.112749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286732, 30.460171, 24.542948>,  <37.012249, 29.791559, 24.302694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286732, 30.460171, 24.542948> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.903728, 30.549398, 24.469828>,  <36.673927, 30.602934, 24.425955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.903728, 30.549398, 24.469828>,  <37.286732, 30.460171, 24.542948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903728, 30.549398, 24.469828> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045985, 0.507645, 0.860338,
		0.284712, 0.832188, -0.475818,
		-0.957510, 0.223068, -0.182801,
		36.616474, 30.616320, 24.414988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845013, 30.780336, 24.914394>,  <37.286732, 30.460171, 24.542948>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845013, 30.780336, 24.914394> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.011074, 30.432140, 25.020145>,  <38.110710, 30.223223, 25.083595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.011074, 30.432140, 25.020145>,  <37.845013, 30.780336, 24.914394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.011074, 30.432140, 25.020145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401726, -0.085325, -0.911776,
		0.816249, 0.484736, 0.314275,
		0.415156, -0.870488, 0.264378,
		38.135620, 30.170994, 25.099459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591511, 30.861217, 24.788280>,  <37.845013, 30.780336, 24.914394>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591511, 30.861217, 24.788280> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.531300, 30.465950, 24.776487>,  <38.495174, 30.228790, 24.769411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.531300, 30.465950, 24.776487>,  <38.591511, 30.861217, 24.788280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.531300, 30.465950, 24.776487> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545094, -0.058079, -0.836361,
		0.824752, -0.141964, 0.547386,
		-0.150525, -0.988167, -0.029483,
		38.486141, 30.169500, 24.767643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257572, 30.520452, 24.611134>,  <38.591511, 30.861217, 24.788280>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257572, 30.520452, 24.611134> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.956501, 30.275358, 24.514776>,  <38.775860, 30.128302, 24.456961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.956501, 30.275358, 24.514776>,  <39.257572, 30.520452, 24.611134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956501, 30.275358, 24.514776> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332915, -0.038537, -0.942169,
		0.568018, -0.789347, 0.232995,
		-0.752677, -0.612737, -0.240895,
		38.730698, 30.091537, 24.442507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.618900, 30.189098, 24.122835>,  <39.257572, 30.520452, 24.611134>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.618900, 30.189098, 24.122835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.239014, 30.079695, 24.061863>,  <39.011082, 30.014051, 24.025280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.239014, 30.079695, 24.061863>,  <39.618900, 30.189098, 24.122835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.239014, 30.079695, 24.061863> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195619, -0.138164, -0.970898,
		0.244491, -0.951894, 0.184721,
		-0.949714, -0.273511, -0.152429,
		38.954098, 29.997643, 24.016134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.638023, 29.463675, 23.733589>,  <39.618900, 30.189098, 24.122835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.638023, 29.463675, 23.733589> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.280556, 29.632456, 23.672512>,  <39.066074, 29.733725, 23.635866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.280556, 29.632456, 23.672512>,  <39.638023, 29.463675, 23.733589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280556, 29.632456, 23.672512> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101018, -0.142362, -0.984646,
		-0.437213, -0.895370, 0.084599,
		-0.893667, 0.421954, -0.152691,
		39.012455, 29.759041, 23.626705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.418640, 28.947945, 23.316708>,  <39.638023, 29.463675, 23.733589>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.418640, 28.947945, 23.316708> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.187164, 29.267845, 23.252810>,  <39.048279, 29.459785, 23.214472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.187164, 29.267845, 23.252810>,  <39.418640, 28.947945, 23.316708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.187164, 29.267845, 23.252810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139801, -0.095696, -0.985544,
		-0.803475, -0.592658, -0.056427,
		-0.578691, 0.799749, -0.159743,
		39.013557, 29.507771, 23.204887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133884, 28.830288, 22.584080>,  <39.418640, 28.947945, 23.316708>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.133884, 28.830288, 22.584080> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.049847, 29.216755, 22.643923>,  <38.999424, 29.448635, 22.679829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.049847, 29.216755, 22.643923>,  <39.133884, 28.830288, 22.584080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.049847, 29.216755, 22.643923> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099310, 0.173318, -0.979846,
		-0.972625, -0.190999, -0.132362,
		-0.210090, 0.966168, 0.149606,
		38.986820, 29.506605, 22.688805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466484, 29.017023, 22.197321>,  <39.133884, 28.830288, 22.584080>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.466484, 29.017023, 22.197321> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.698879, 29.339489, 22.242134>,  <38.838318, 29.532969, 22.269022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.698879, 29.339489, 22.242134>,  <38.466484, 29.017023, 22.197321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.698879, 29.339489, 22.242134> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110353, 0.214402, -0.970492,
		-0.806396, 0.551481, 0.213527,
		0.580988, 0.806164, 0.112035,
		38.873177, 29.581339, 22.275745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172668, 29.450165, 21.727398>,  <38.466484, 29.017023, 22.197321>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.172668, 29.450165, 21.727398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.525795, 29.622713, 21.801748>,  <38.737671, 29.726242, 21.846359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.525795, 29.622713, 21.801748>,  <38.172668, 29.450165, 21.727398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525795, 29.622713, 21.801748> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112837, 0.189373, -0.975400,
		-0.455960, 0.882075, 0.118507,
		0.882818, 0.431372, 0.185877,
		38.790642, 29.752125, 21.857512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.406109, 34.842461, 36.831295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.747086, 35.051579, 36.828903>,  <36.951672, 35.177048, 36.827469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.747086, 35.051579, 36.828903>,  <36.406109, 34.842461, 36.831295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.747086, 35.051579, 36.828903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272637, -0.454244, -0.848135,
		-0.446115, 0.721353, -0.529747,
		0.852438, 0.522794, -0.005978,
		37.002815, 35.208416, 36.827110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540333, 35.199486, 36.211655>,  <36.406109, 34.842461, 36.831295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.540333, 35.199486, 36.211655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.905273, 35.138783, 36.363747>,  <37.124237, 35.102360, 36.455002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.905273, 35.138783, 36.363747>,  <36.540333, 35.199486, 36.211655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.905273, 35.138783, 36.363747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276665, -0.456048, -0.845859,
		0.301767, 0.876921, -0.374093,
		0.912356, -0.151754, 0.380233,
		37.178982, 35.093258, 36.477818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887619, 35.266350, 35.683044>,  <36.540333, 35.199486, 36.211655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887619, 35.266350, 35.683044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.169765, 35.111870, 35.920807>,  <37.339054, 35.019184, 36.063465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.169765, 35.111870, 35.920807>,  <36.887619, 35.266350, 35.683044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169765, 35.111870, 35.920807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412139, -0.458805, -0.787172,
		0.576718, 0.800219, -0.164458,
		0.705364, -0.386197, 0.594403,
		37.381374, 34.996010, 36.099129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557983, 35.383957, 35.288078>,  <36.887619, 35.266350, 35.683044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557983, 35.383957, 35.288078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.654175, 35.098286, 35.551022>,  <37.711887, 34.926884, 35.708786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.654175, 35.098286, 35.551022>,  <37.557983, 35.383957, 35.288078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654175, 35.098286, 35.551022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359405, -0.563584, -0.743775,
		0.901665, 0.415119, 0.121151,
		0.240476, -0.714178, 0.657359,
		37.726318, 34.884033, 35.748230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121052, 35.066864, 34.989410>,  <37.557983, 35.383957, 35.288078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121052, 35.066864, 34.989410> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.994011, 34.797165, 35.256100>,  <37.917786, 34.635345, 35.416111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.994011, 34.797165, 35.256100>,  <38.121052, 35.066864, 34.989410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.994011, 34.797165, 35.256100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139383, -0.728683, -0.670518,
		0.937924, -0.120030, 0.325411,
		-0.317603, -0.674251, 0.666718,
		37.898731, 34.594891, 35.456116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569702, 34.482250, 34.961098>,  <38.121052, 35.066864, 34.989410>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.569702, 34.482250, 34.961098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.225105, 34.338398, 35.104485>,  <38.018349, 34.252087, 35.190517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.225105, 34.338398, 35.104485>,  <38.569702, 34.482250, 34.961098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225105, 34.338398, 35.104485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014079, -0.722613, -0.691109,
		0.507578, -0.590337, 0.627588,
		-0.861491, -0.359628, 0.358471,
		37.966660, 34.230511, 35.212025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629005, 33.725449, 34.990997>,  <38.569702, 34.482250, 34.961098>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.629005, 33.725449, 34.990997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.235100, 33.794868, 34.986748>,  <37.998756, 33.836521, 34.984200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.235100, 33.794868, 34.986748>,  <38.629005, 33.725449, 34.990997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235100, 33.794868, 34.986748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104751, -0.640938, -0.760411,
		-0.138779, -0.747716, 0.649355,
		-0.984768, 0.173550, -0.010625,
		37.939671, 33.846935, 34.983559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267921, 33.118977, 34.855827>,  <38.629005, 33.725449, 34.990997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267921, 33.118977, 34.855827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.969936, 33.371643, 34.770012>,  <37.791145, 33.523243, 34.718521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.969936, 33.371643, 34.770012>,  <38.267921, 33.118977, 34.855827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969936, 33.371643, 34.770012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304846, -0.608400, -0.732747,
		-0.593382, -0.480464, 0.645796,
		-0.744960, 0.631667, -0.214546,
		37.746449, 33.561142, 34.705650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.687954, 32.727016, 34.916420>,  <38.267921, 33.118977, 34.855827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.687954, 32.727016, 34.916420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.613834, 33.057610, 34.703781>,  <37.569363, 33.255966, 34.576199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.613834, 33.057610, 34.703781>,  <37.687954, 32.727016, 34.916420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.613834, 33.057610, 34.703781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315377, -0.562361, -0.764387,
		-0.930700, 0.026015, 0.364856,
		-0.185295, 0.826483, -0.531594,
		37.558247, 33.305553, 34.544304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976551, 32.642109, 34.755024>,  <37.687954, 32.727016, 34.916420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976551, 32.642109, 34.755024> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.151382, 32.890926, 34.495171>,  <37.256283, 33.040215, 34.339260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.151382, 32.890926, 34.495171>,  <36.976551, 32.642109, 34.755024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.151382, 32.890926, 34.495171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206280, -0.633699, -0.745570,
		-0.875448, 0.459881, -0.148662,
		0.437081, 0.622042, -0.649634,
		37.282505, 33.077538, 34.300282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539047, 32.711391, 34.174564>,  <36.976551, 32.642109, 34.755024>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539047, 32.711391, 34.174564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.876991, 32.853767, 34.014801>,  <37.079758, 32.939194, 33.918941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.876991, 32.853767, 34.014801>,  <36.539047, 32.711391, 34.174564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.876991, 32.853767, 34.014801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193270, -0.493085, -0.848242,
		-0.498865, 0.793835, -0.347793,
		0.844855, 0.355940, -0.399407,
		37.130447, 32.960548, 33.894978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409084, 32.981659, 33.583755>,  <36.539047, 32.711391, 34.174564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.409084, 32.981659, 33.583755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.801441, 32.922798, 33.532864>,  <37.036858, 32.887482, 33.502327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.801441, 32.922798, 33.532864>,  <36.409084, 32.981659, 33.583755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801441, 32.922798, 33.532864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181242, -0.453763, -0.872497,
		0.070659, 0.878888, -0.471765,
		0.980897, -0.147154, -0.127229,
		37.095711, 32.878651, 33.494694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922222, 33.254501, 33.036049>,  <36.409084, 32.981659, 33.583755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922222, 33.254501, 33.036049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.569706, 33.069721, 32.996197>,  <35.358196, 32.958855, 32.972286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.569706, 33.069721, 32.996197>,  <35.922222, 33.254501, 33.036049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569706, 33.069721, 32.996197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289484, 0.361076, 0.886467,
		-0.373529, 0.810078, -0.451941,
		-0.881292, -0.461951, -0.099633,
		35.305317, 32.931137, 32.966309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385880, 33.819572, 33.219490>,  <35.922222, 33.254501, 33.036049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.385880, 33.819572, 33.219490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.235577, 33.450203, 33.250721>,  <35.145393, 33.228580, 33.269459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.235577, 33.450203, 33.250721>,  <35.385880, 33.819572, 33.219490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.235577, 33.450203, 33.250721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467874, 0.261760, 0.844142,
		-0.799936, 0.280667, -0.530404,
		-0.375761, -0.923422, 0.078075,
		35.122849, 33.173176, 33.274143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678696, 33.933128, 33.338001>,  <35.385880, 33.819572, 33.219490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.678696, 33.933128, 33.338001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.760715, 33.560081, 33.456776>,  <34.809929, 33.336250, 33.528042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.760715, 33.560081, 33.456776>,  <34.678696, 33.933128, 33.338001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760715, 33.560081, 33.456776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507817, 0.157977, 0.846856,
		-0.836706, -0.324437, -0.441208,
		0.205051, -0.932622, 0.296935,
		34.822231, 33.280296, 33.545856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076721, 33.687950, 33.502365>,  <34.678696, 33.933128, 33.338001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076721, 33.687950, 33.502365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.323807, 33.446827, 33.704376>,  <34.472057, 33.302155, 33.825581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.323807, 33.446827, 33.704376>,  <34.076721, 33.687950, 33.502365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323807, 33.446827, 33.704376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610713, 0.036870, 0.790993,
		-0.495438, -0.797033, -0.345368,
		0.617714, -0.602809, 0.505025,
		34.509121, 33.265984, 33.855885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671799, 33.139832, 33.847290>,  <34.076721, 33.687950, 33.502365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.671799, 33.139832, 33.847290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.027462, 33.106857, 34.027340>,  <34.240860, 33.087070, 34.135368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.027462, 33.106857, 34.027340>,  <33.671799, 33.139832, 33.847290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.027462, 33.106857, 34.027340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450574, 0.014082, 0.892628,
		-0.079929, -0.996496, -0.024626,
		0.889154, -0.082443, 0.450121,
		34.294209, 33.082127, 34.162376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646206, 32.553066, 34.205040>,  <33.671799, 33.139832, 33.847290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646206, 32.553066, 34.205040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.902550, 32.813503, 34.367706>,  <34.056355, 32.969765, 34.465305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.902550, 32.813503, 34.367706>,  <33.646206, 32.553066, 34.205040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902550, 32.813503, 34.367706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551402, 0.021848, 0.833954,
		0.534098, -0.758682, 0.373016,
		0.640855, 0.651095, 0.406670,
		34.094807, 33.008831, 34.489708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849777, 32.230694, 34.823971>,  <33.646206, 32.553066, 34.205040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849777, 32.230694, 34.823971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.931442, 32.620110, 34.865017>,  <33.980442, 32.853760, 34.889645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.931442, 32.620110, 34.865017>,  <33.849777, 32.230694, 34.823971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931442, 32.620110, 34.865017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600785, 0.041848, 0.798315,
		0.772900, -0.224635, 0.593434,
		0.204164, 0.973544, 0.102613,
		33.992691, 32.912174, 34.895802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.764271, 32.328125, 35.466789>,  <33.849777, 32.230694, 34.823971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.764271, 32.328125, 35.466789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.762234, 32.716976, 35.373028>,  <33.761013, 32.950287, 35.316772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.762234, 32.716976, 35.373028>,  <33.764271, 32.328125, 35.466789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762234, 32.716976, 35.373028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756652, 0.149509, 0.636495,
		0.653798, 0.180601, 0.734800,
		-0.005093, 0.972127, -0.234401,
		33.760708, 33.008614, 35.302708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.892632, 32.650497, 36.102890>,  <33.764271, 32.328125, 35.466789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.892632, 32.650497, 36.102890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.711658, 32.903149, 35.851067>,  <33.603073, 33.054737, 35.699970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.711658, 32.903149, 35.851067>,  <33.892632, 32.650497, 36.102890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711658, 32.903149, 35.851067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728662, 0.145178, 0.669309,
		0.514152, 0.761559, 0.394558,
		-0.452437, 0.631626, -0.629563,
		33.575928, 33.092636, 35.662197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.656925, 33.187881, 36.584480>,  <33.892632, 32.650497, 36.102890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.656925, 33.187881, 36.584480> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.446888, 33.219864, 36.245567>,  <33.320866, 33.239052, 36.042221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.446888, 33.219864, 36.245567>,  <33.656925, 33.187881, 36.584480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.446888, 33.219864, 36.245567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847224, 0.045117, 0.529316,
		0.080546, 0.995777, 0.044047,
		-0.525094, 0.079952, -0.847280,
		33.289360, 33.243851, 35.991383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.189613, 33.744934, 36.747471>,  <33.656925, 33.187881, 36.584480>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.189613, 33.744934, 36.747471> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.033470, 33.537441, 36.443222>,  <32.939785, 33.412945, 36.260674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.033470, 33.537441, 36.443222>,  <33.189613, 33.744934, 36.747471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.033470, 33.537441, 36.443222> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915302, 0.129636, 0.381336,
		-0.099207, 0.845052, -0.525399,
		-0.390359, -0.518730, -0.760617,
		32.916363, 33.381821, 36.215038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706944, 34.159355, 36.395763>,  <33.189613, 33.744934, 36.747471>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706944, 34.159355, 36.395763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.615585, 33.775803, 36.328369>,  <32.560772, 33.545670, 36.287933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.615585, 33.775803, 36.328369>,  <32.706944, 34.159355, 36.395763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.615585, 33.775803, 36.328369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904881, 0.145224, 0.400125,
		-0.359204, 0.243842, -0.900841,
		-0.228391, -0.958880, -0.168483,
		32.547070, 33.488140, 36.277824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.037838, 34.166107, 36.143555>,  <32.706944, 34.159355, 36.395763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.037838, 34.166107, 36.143555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.050941, 33.768944, 36.189281>,  <32.058804, 33.530647, 36.216717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.050941, 33.768944, 36.189281>,  <32.037838, 34.166107, 36.143555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.050941, 33.768944, 36.189281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940906, 0.007940, 0.338574,
		-0.337079, -0.118654, -0.933969,
		0.032758, -0.992904, 0.114319,
		32.060768, 33.471073, 36.223576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.492210, 33.902069, 35.864368>,  <32.037838, 34.166107, 36.143555>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.492210, 33.902069, 35.864368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.584179, 33.607166, 36.118484>,  <31.639360, 33.430225, 36.270954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.584179, 33.607166, 36.118484>,  <31.492210, 33.902069, 35.864368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.584179, 33.607166, 36.118484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943536, -0.008901, 0.331150,
		-0.238488, -0.675553, -0.697676,
		0.229920, -0.737258, 0.635286,
		31.653154, 33.385990, 36.309071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.959105, 34.430992, 35.723431>,  <31.492210, 33.902069, 35.864368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.959105, 34.430992, 35.723431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.129068, 34.791634, 35.691025>,  <31.231047, 35.008018, 35.671581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.129068, 34.791634, 35.691025>,  <30.959105, 34.430992, 35.723431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.129068, 34.791634, 35.691025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411498, 0.112659, -0.904421,
		-0.806302, 0.417636, 0.418877,
		0.424909, 0.901603, -0.081019,
		31.256540, 35.062115, 35.666718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.934307, 34.576275, 35.038174>,  <30.959105, 34.430992, 35.723431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.934307, 34.576275, 35.038174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.122116, 34.914959, 35.138275>,  <31.234800, 35.118172, 35.198338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.122116, 34.914959, 35.138275>,  <30.934307, 34.576275, 35.038174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.122116, 34.914959, 35.138275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043925, 0.305493, -0.951181,
		-0.881828, 0.435607, 0.180627,
		0.469521, 0.846712, 0.250258,
		31.262972, 35.168972, 35.213352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.541142, 35.152008, 34.987938>,  <30.934307, 34.576275, 35.038174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.541142, 35.152008, 34.987938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.931273, 35.210461, 34.921741>,  <31.165350, 35.245533, 34.882023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.931273, 35.210461, 34.921741>,  <30.541142, 35.152008, 34.987938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.931273, 35.210461, 34.921741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204193, 0.312091, -0.927849,
		-0.083939, 0.938746, 0.334230,
		0.975325, 0.146130, -0.165489,
		31.223869, 35.254299, 34.872093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.467577, 35.636681, 34.475201>,  <30.541142, 35.152008, 34.987938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.467577, 35.636681, 34.475201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.856918, 35.545429, 34.465878>,  <31.090523, 35.490681, 34.460285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.856918, 35.545429, 34.465878>,  <30.467577, 35.636681, 34.475201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.856918, 35.545429, 34.465878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039992, 0.268955, -0.962322,
		0.225797, 0.935747, 0.270911,
		0.973353, -0.228124, -0.023307,
		31.148924, 35.476994, 34.458885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.821173, 36.245407, 34.135502>,  <30.467577, 35.636681, 34.475201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.821173, 36.245407, 34.135502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.043329, 35.915028, 34.096817>,  <31.176622, 35.716801, 34.073605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.043329, 35.915028, 34.096817>,  <30.821173, 36.245407, 34.135502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.043329, 35.915028, 34.096817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262449, 0.284449, -0.922068,
		0.789089, 0.486725, 0.374749,
		0.555391, -0.825946, -0.096715,
		31.209946, 35.667244, 34.067802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.379129, 36.475006, 33.746220>,  <30.821173, 36.245407, 34.135502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.379129, 36.475006, 33.746220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.401423, 36.077118, 33.711773>,  <31.414799, 35.838383, 33.691105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.401423, 36.077118, 33.711773>,  <31.379129, 36.475006, 33.746220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.401423, 36.077118, 33.711773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251024, 0.097443, -0.963064,
		0.966375, 0.032054, 0.255131,
		0.055731, -0.994725, -0.086120,
		31.418142, 35.778702, 33.685936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.005615, 36.341587, 33.473339>,  <31.379129, 36.475006, 33.746220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.005615, 36.341587, 33.473339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.813879, 36.001976, 33.384449>,  <31.698835, 35.798210, 33.331116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.813879, 36.001976, 33.384449>,  <32.005615, 36.341587, 33.473339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813879, 36.001976, 33.384449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353577, 0.044932, -0.934326,
		0.803250, -0.526440, 0.278658,
		-0.479345, -0.849025, -0.222229,
		31.670076, 35.747269, 33.317780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418125, 36.049835, 33.033146>,  <32.005615, 36.341587, 33.473339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.418125, 36.049835, 33.033146> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.076897, 35.854706, 32.959068>,  <31.872160, 35.737629, 32.914619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.076897, 35.854706, 32.959068>,  <32.418125, 36.049835, 33.033146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.076897, 35.854706, 32.959068> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277909, -0.124372, -0.952522,
		0.441626, -0.864038, 0.241668,
		-0.853073, -0.487821, -0.185198,
		31.820974, 35.708359, 32.903507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.573517, 35.468166, 32.604805>,  <32.418125, 36.049835, 33.033146>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.573517, 35.468166, 32.604805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.188629, 35.545650, 32.528271>,  <31.957697, 35.592140, 32.482349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.188629, 35.545650, 32.528271>,  <32.573517, 35.468166, 32.604805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.188629, 35.545650, 32.528271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173146, -0.107014, -0.979065,
		-0.210135, -0.975204, 0.069430,
		-0.962218, 0.193715, -0.191340,
		31.899963, 35.603764, 32.470867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.562725, 35.261734, 32.001282>,  <32.573517, 35.468166, 32.604805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.562725, 35.261734, 32.001282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.197155, 35.422699, 32.022457>,  <31.977814, 35.519279, 32.035164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.197155, 35.422699, 32.022457>,  <32.562725, 35.261734, 32.001282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197155, 35.422699, 32.022457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046213, 0.026419, -0.998582,
		-0.403246, -0.915075, -0.005549,
		-0.913924, 0.402418, 0.052941,
		31.922977, 35.543423, 32.038338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126900, 34.845135, 31.634150>,  <32.562725, 35.261734, 32.001282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126900, 34.845135, 31.634150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.976355, 35.215652, 31.641500>,  <31.886028, 35.437962, 31.645910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.976355, 35.215652, 31.641500>,  <32.126900, 34.845135, 31.634150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.976355, 35.215652, 31.641500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088933, -0.016376, -0.995903,
		-0.922196, -0.376451, 0.088541,
		-0.376359, 0.926292, 0.018377,
		31.863447, 35.493542, 31.647013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.500782, 34.808838, 31.221035>,  <32.126900, 34.845135, 31.634150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.500782, 34.808838, 31.221035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.571852, 35.202473, 31.219997>,  <31.614492, 35.438652, 31.219374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.571852, 35.202473, 31.219997>,  <31.500782, 34.808838, 31.221035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.571852, 35.202473, 31.219997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003390, -0.002025, -0.999992,
		-0.984084, 0.177680, 0.002976,
		0.177672, 0.984086, -0.002595,
		31.625153, 35.497700, 31.219219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.022362, 35.112862, 30.805676>,  <31.500782, 34.808838, 31.221035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.022362, 35.112862, 30.805676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.326113, 35.372345, 30.825785>,  <31.508364, 35.528034, 30.837851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.326113, 35.372345, 30.825785>,  <31.022362, 35.112862, 30.805676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.326113, 35.372345, 30.825785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002666, 0.074166, -0.997242,
		-0.650643, 0.757419, 0.054590,
		0.759379, 0.648704, 0.050275,
		31.553926, 35.566956, 30.840866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.942905, 35.577015, 30.238621>,  <31.022362, 35.112862, 30.805676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.942905, 35.577015, 30.238621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.326220, 35.641129, 30.333279>,  <31.556208, 35.679596, 30.390074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.326220, 35.641129, 30.333279>,  <30.942905, 35.577015, 30.238621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.326220, 35.641129, 30.333279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233602, 0.037854, -0.971595,
		-0.164691, 0.986344, -0.001168,
		0.958283, 0.160286, 0.236646,
		31.613705, 35.689213, 30.404272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.111858, 36.097073, 29.909729>,  <30.942905, 35.577015, 30.238621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.111858, 36.097073, 29.909729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.460651, 35.911991, 29.973667>,  <31.669928, 35.800941, 30.012030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.460651, 35.911991, 29.973667>,  <31.111858, 36.097073, 29.909729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.460651, 35.911991, 29.973667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204479, 0.047593, -0.977713,
		0.444782, 0.885236, 0.136113,
		0.871985, -0.462701, 0.159844,
		31.722246, 35.773182, 30.021620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.627092, 36.392128, 29.394760>,  <31.111858, 36.097073, 29.909729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.627092, 36.392128, 29.394760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.800426, 36.055611, 29.524027>,  <31.904427, 35.853699, 29.601587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.800426, 36.055611, 29.524027>,  <31.627092, 36.392128, 29.394760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.800426, 36.055611, 29.524027> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537086, -0.046881, -0.842224,
		0.723711, 0.538536, 0.431533,
		0.433337, -0.841297, 0.323169,
		31.930428, 35.803223, 29.620977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.343323, 36.478821, 29.323524>,  <31.627092, 36.392128, 29.394760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.343323, 36.478821, 29.323524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.278038, 36.084194, 29.320845>,  <32.238869, 35.847416, 29.319237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.278038, 36.084194, 29.320845>,  <32.343323, 36.478821, 29.323524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.278038, 36.084194, 29.320845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521167, -0.080450, -0.849655,
		0.837704, -0.142165, 0.527297,
		-0.163212, -0.986568, -0.006699,
		32.229076, 35.788223, 29.318834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.914101, 36.232510, 29.187578>,  <32.343323, 36.478821, 29.323524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.914101, 36.232510, 29.187578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.691971, 35.913788, 29.092321>,  <32.558693, 35.722553, 29.035168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.691971, 35.913788, 29.092321>,  <32.914101, 36.232510, 29.187578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.691971, 35.913788, 29.092321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586715, -0.172432, -0.791222,
		0.589388, -0.579108, 0.563254,
		-0.555326, -0.796807, -0.238142,
		32.525372, 35.674747, 29.020878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.474468, 35.760109, 29.019579>,  <32.914101, 36.232510, 29.187578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.474468, 35.760109, 29.019579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.129280, 35.610718, 28.883467>,  <32.922165, 35.521084, 28.801800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.129280, 35.610718, 28.883467>,  <33.474468, 35.760109, 29.019579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129280, 35.610718, 28.883467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474246, -0.366486, -0.800486,
		0.174256, -0.852175, 0.493388,
		-0.862975, -0.373477, -0.340278,
		32.870388, 35.498676, 28.781384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598240, 35.026340, 28.743290>,  <33.474468, 35.760109, 29.019579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598240, 35.026340, 28.743290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.263645, 35.149933, 28.562263>,  <33.062889, 35.224091, 28.453648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.263645, 35.149933, 28.562263>,  <33.598240, 35.026340, 28.743290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.263645, 35.149933, 28.562263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328040, -0.379193, -0.865218,
		-0.438948, -0.872205, 0.215832,
		-0.836489, 0.308984, -0.452564,
		33.012699, 35.242626, 28.426495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.371731, 34.378716, 28.316750>,  <33.598240, 35.026340, 28.743290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.371731, 34.378716, 28.316750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.201504, 34.713665, 28.179520>,  <33.099369, 34.914635, 28.097181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.201504, 34.713665, 28.179520>,  <33.371731, 34.378716, 28.316750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.201504, 34.713665, 28.179520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146932, -0.310149, -0.939265,
		-0.892918, -0.450131, 0.008954,
		-0.425569, 0.837371, -0.343076,
		33.073833, 34.964878, 28.076597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.930256, 34.207783, 27.841866>,  <33.371731, 34.378716, 28.316750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.930256, 34.207783, 27.841866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.029964, 34.586853, 27.762093>,  <33.089790, 34.814297, 27.714228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.029964, 34.586853, 27.762093>,  <32.930256, 34.207783, 27.841866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.029964, 34.586853, 27.762093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194673, -0.250764, -0.948272,
		-0.948666, 0.197551, -0.246995,
		0.249269, 0.947677, -0.199434,
		33.104744, 34.871155, 27.702263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.643208, 34.183407, 27.133785>,  <32.930256, 34.207783, 27.841866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.643208, 34.183407, 27.133785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.877018, 34.506264, 27.166901>,  <33.017303, 34.699978, 27.186769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.877018, 34.506264, 27.166901>,  <32.643208, 34.183407, 27.133785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.877018, 34.506264, 27.166901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322985, -0.137865, -0.936309,
		-0.744319, 0.574036, -0.341280,
		0.584526, 0.807141, 0.082789,
		33.052376, 34.748405, 27.191738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514698, 34.585552, 26.522657>,  <32.643208, 34.183407, 27.133785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514698, 34.585552, 26.522657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.880043, 34.691582, 26.646276>,  <33.099251, 34.755199, 26.720448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.880043, 34.691582, 26.646276>,  <32.514698, 34.585552, 26.522657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.880043, 34.691582, 26.646276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394316, -0.386806, -0.833604,
		-0.101424, 0.883243, -0.457815,
		0.913361, 0.265072, 0.309046,
		33.154053, 34.771103, 26.738991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777870, 34.795475, 25.961241>,  <32.514698, 34.585552, 26.522657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.777870, 34.795475, 25.961241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.092499, 34.711727, 26.193611>,  <33.281277, 34.661480, 26.333033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.092499, 34.711727, 26.193611>,  <32.777870, 34.795475, 25.961241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.092499, 34.711727, 26.193611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493308, -0.352813, -0.795091,
		0.371423, 0.911970, -0.174230,
		0.786570, -0.209366, 0.580925,
		33.328468, 34.648918, 26.367889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.425858, 35.169384, 25.635283>,  <32.777870, 34.795475, 25.961241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.425858, 35.169384, 25.635283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.560333, 34.880775, 25.877399>,  <33.641018, 34.707611, 26.022669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.560333, 34.880775, 25.877399>,  <33.425858, 35.169384, 25.635283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.560333, 34.880775, 25.877399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601728, -0.329854, -0.727406,
		0.724500, 0.608767, 0.323269,
		0.336189, -0.721526, 0.605291,
		33.661190, 34.664318, 26.058987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146271, 35.077106, 25.440973>,  <33.425858, 35.169384, 25.635283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.146271, 35.077106, 25.440973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.098190, 34.718502, 25.611530>,  <34.069340, 34.503338, 25.713865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.098190, 34.718502, 25.611530>,  <34.146271, 35.077106, 25.440973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.098190, 34.718502, 25.611530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575490, -0.412905, -0.705918,
		0.808927, 0.160531, 0.565568,
		-0.120204, -0.896515, 0.426394,
		34.062130, 34.449547, 25.739449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807369, 34.824932, 25.577957>,  <34.146271, 35.077106, 25.440973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807369, 34.824932, 25.577957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.537846, 34.532436, 25.535488>,  <34.376129, 34.356941, 25.510008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.537846, 34.532436, 25.535488>,  <34.807369, 34.824932, 25.577957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.537846, 34.532436, 25.535488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593002, -0.449429, -0.668103,
		0.440824, -0.513136, 0.736455,
		-0.673812, -0.731235, -0.106171,
		34.335701, 34.313065, 25.503637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.479851, 34.750160, 25.832012>,  <34.807369, 34.824932, 25.577957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.479851, 34.750160, 25.832012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.812962, 34.971237, 25.819283>,  <36.012829, 35.103886, 25.811646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.812962, 34.971237, 25.819283>,  <35.479851, 34.750160, 25.832012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.812962, 34.971237, 25.819283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248008, 0.423846, 0.871118,
		0.494955, -0.717550, 0.490042,
		0.832773, 0.552699, -0.031827,
		36.062794, 35.137047, 25.809734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811935, 34.668701, 26.422966>,  <35.479851, 34.750160, 25.832012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.811935, 34.668701, 26.422966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.952057, 35.017738, 26.286804>,  <36.036129, 35.227161, 26.205107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.952057, 35.017738, 26.286804>,  <35.811935, 34.668701, 26.422966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952057, 35.017738, 26.286804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145470, 0.409706, 0.900544,
		0.925272, -0.265944, 0.270456,
		0.350302, 0.872591, -0.340403,
		36.057148, 35.279514, 26.184683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283493, 34.963028, 26.910728>,  <35.811935, 34.668701, 26.422966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.283493, 34.963028, 26.910728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.193550, 35.300777, 26.716215>,  <36.139584, 35.503426, 26.599506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.193550, 35.300777, 26.716215>,  <36.283493, 34.963028, 26.910728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193550, 35.300777, 26.716215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158794, 0.460636, 0.873269,
		0.961364, 0.273583, 0.030503,
		-0.224861, 0.844373, -0.486283,
		36.126091, 35.554089, 26.570330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651733, 35.435211, 27.360735>,  <36.283493, 34.963028, 26.910728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651733, 35.435211, 27.360735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.384575, 35.624565, 27.131014>,  <36.224281, 35.738178, 26.993181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.384575, 35.624565, 27.131014>,  <36.651733, 35.435211, 27.360735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.384575, 35.624565, 27.131014> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164798, 0.658424, 0.734383,
		0.725782, 0.585134, -0.361744,
		-0.667893, 0.473388, -0.574302,
		36.184208, 35.766582, 26.958723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807583, 36.198982, 27.163240>,  <36.651733, 35.435211, 27.360735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807583, 36.198982, 27.163240> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.413200, 36.187218, 27.097486>,  <36.176571, 36.180161, 27.058033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.413200, 36.187218, 27.097486>,  <36.807583, 36.198982, 27.163240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.413200, 36.187218, 27.097486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129544, 0.755900, 0.641742,
		0.105386, 0.654026, -0.749095,
		-0.985957, -0.029410, -0.164387,
		36.117413, 36.178394, 27.048170>
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
