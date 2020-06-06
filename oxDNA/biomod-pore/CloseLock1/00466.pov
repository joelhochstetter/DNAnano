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
	<23.921770, 35.401443, 34.976070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.290575, 35.279575, 35.071625>,  <24.511858, 35.206455, 35.128956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.290575, 35.279575, 35.071625>,  <23.921770, 35.401443, 34.976070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.290575, 35.279575, 35.071625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025060, 0.662688, 0.748476,
		-0.386346, -0.684119, 0.618642,
		0.922014, -0.304674, 0.238883,
		24.567179, 35.188171, 35.143291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.125992, 35.663719, 35.640560>,  <23.921770, 35.401443, 34.976070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.125992, 35.663719, 35.640560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.474283, 35.471920, 35.596901>,  <24.683258, 35.356838, 35.570705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.474283, 35.471920, 35.596901>,  <24.125992, 35.663719, 35.640560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.474283, 35.471920, 35.596901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336454, 0.419004, 0.843347,
		-0.358655, -0.771047, 0.526169,
		0.870726, -0.479502, -0.109144,
		24.735500, 35.328068, 35.564159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.451962, 35.347569, 36.288940>,  <24.125992, 35.663719, 35.640560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.451962, 35.347569, 36.288940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.755932, 35.426262, 36.041130>,  <24.938314, 35.473480, 35.892445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.755932, 35.426262, 36.041130>,  <24.451962, 35.347569, 36.288940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.755932, 35.426262, 36.041130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566727, 0.266224, 0.779709,
		0.318328, -0.943621, 0.090815,
		0.759926, 0.196736, -0.619522,
		24.983910, 35.485283, 35.855274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.165056, 35.167480, 36.667328>,  <24.451962, 35.347569, 36.288940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.165056, 35.167480, 36.667328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.291510, 35.413193, 36.378128>,  <25.367382, 35.560619, 36.204609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.291510, 35.413193, 36.378128>,  <25.165056, 35.167480, 36.667328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.291510, 35.413193, 36.378128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642753, 0.421850, 0.639462,
		0.697803, -0.666864, -0.261466,
		0.316134, 0.614276, -0.722996,
		25.386351, 35.597477, 36.161228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.884569, 35.118214, 36.409100>,  <25.165056, 35.167480, 36.667328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.884569, 35.118214, 36.409100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.737198, 35.488647, 36.376514>,  <25.648775, 35.710907, 36.356964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.737198, 35.488647, 36.376514>,  <25.884569, 35.118214, 36.409100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.737198, 35.488647, 36.376514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793719, 0.358963, 0.491076,
		0.484017, 0.116270, -0.867300,
		-0.368426, 0.926081, -0.081459,
		25.626671, 35.766472, 36.352077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.994667, 34.693619, 37.107094>,  <25.884569, 35.118214, 36.409100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.994667, 34.693619, 37.107094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.223368, 34.873943, 37.381279>,  <26.360588, 34.982140, 37.545792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.223368, 34.873943, 37.381279>,  <25.994667, 34.693619, 37.107094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.223368, 34.873943, 37.381279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016190, 0.829138, -0.558809,
		-0.820266, 0.330599, 0.466764,
		0.571753, 0.450815, 0.685467,
		26.394894, 35.009190, 37.586918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.801018, 35.375874, 37.292767>,  <25.994667, 34.693619, 37.107094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.801018, 35.375874, 37.292767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.192394, 35.384716, 37.374901>,  <26.427219, 35.390022, 37.424183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.192394, 35.384716, 37.374901>,  <25.801018, 35.375874, 37.292767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.192394, 35.384716, 37.374901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083400, 0.867290, -0.490767,
		-0.188935, 0.497312, 0.846749,
		0.978441, 0.022104, 0.205338,
		26.485928, 35.391346, 37.436501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.946898, 35.987827, 37.730770>,  <25.801018, 35.375874, 37.292767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.946898, 35.987827, 37.730770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.284740, 35.886387, 37.542164>,  <26.487446, 35.825523, 37.429001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.284740, 35.886387, 37.542164>,  <25.946898, 35.987827, 37.730770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.284740, 35.886387, 37.542164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163171, 0.960730, -0.224439,
		0.509914, 0.112626, 0.852820,
		0.844608, -0.253600, -0.471513,
		26.538122, 35.810307, 37.400711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.494034, 36.474640, 37.954914>,  <25.946898, 35.987827, 37.730770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.494034, 36.474640, 37.954914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.653397, 36.292393, 37.636497>,  <26.749014, 36.183044, 37.445446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.653397, 36.292393, 37.636497>,  <26.494034, 36.474640, 37.954914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.653397, 36.292393, 37.636497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355775, 0.876712, -0.323728,
		0.845398, -0.154238, 0.511384,
		0.398405, -0.455616, -0.796044,
		26.772919, 36.155708, 37.397686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.150728, 36.694500, 38.050518>,  <26.494034, 36.474640, 37.954914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.150728, 36.694500, 38.050518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.107674, 36.564808, 37.674583>,  <27.081841, 36.486992, 37.449024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.107674, 36.564808, 37.674583>,  <27.150728, 36.694500, 38.050518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.107674, 36.564808, 37.674583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408870, 0.847246, -0.339114,
		0.906222, -0.420772, 0.041372,
		-0.107637, -0.324229, -0.939835,
		27.075382, 36.467541, 37.392632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.758078, 36.721367, 37.726936>,  <27.150728, 36.694500, 38.050518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.758078, 36.721367, 37.726936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.529198, 36.725674, 37.398918>,  <27.391869, 36.728256, 37.202106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.529198, 36.725674, 37.398918>,  <27.758078, 36.721367, 37.726936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.529198, 36.725674, 37.398918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449886, 0.840156, -0.302886,
		0.685703, -0.542237, -0.485583,
		-0.572201, 0.010767, -0.820043,
		27.357538, 36.728905, 37.152905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.240818, 36.981777, 37.219200>,  <27.758078, 36.721367, 37.726936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.240818, 36.981777, 37.219200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.868967, 37.027004, 37.078907>,  <27.645857, 37.054142, 36.994732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.868967, 37.027004, 37.078907>,  <28.240818, 36.981777, 37.219200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.868967, 37.027004, 37.078907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253247, 0.887426, -0.385150,
		0.267697, -0.446867, -0.853609,
		-0.929626, 0.113071, -0.350729,
		27.590078, 37.060925, 36.973690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.325266, 37.182529, 36.479908>,  <28.240818, 36.981777, 37.219200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.325266, 37.182529, 36.479908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.967796, 37.307114, 36.609116>,  <27.753315, 37.381863, 36.686642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.967796, 37.307114, 36.609116>,  <28.325266, 37.182529, 36.479908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.967796, 37.307114, 36.609116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122830, 0.862173, -0.491498,
		-0.431579, -0.399563, -0.808758,
		-0.893673, 0.311460, 0.323018,
		27.699694, 37.400551, 36.706020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.016113, 37.527702, 35.875767>,  <28.325266, 37.182529, 36.479908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.016113, 37.527702, 35.875767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.787245, 37.653149, 36.178886>,  <27.649923, 37.728416, 36.360760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.787245, 37.653149, 36.178886>,  <28.016113, 37.527702, 35.875767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.787245, 37.653149, 36.178886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172772, 0.949354, -0.262443,
		-0.801730, -0.019235, -0.597376,
		-0.572170, 0.313618, 0.757803,
		27.615593, 37.747234, 36.406227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.572987, 37.946720, 35.616795>,  <28.016113, 37.527702, 35.875767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.572987, 37.946720, 35.616795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.606525, 38.052677, 36.001045>,  <27.626650, 38.116253, 36.231594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.606525, 38.052677, 36.001045>,  <27.572987, 37.946720, 35.616795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.606525, 38.052677, 36.001045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074473, 0.959659, -0.271125,
		-0.993692, 0.094274, 0.060739,
		0.083848, 0.264891, 0.960626,
		27.631680, 38.132145, 36.289234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.191725, 38.486633, 35.650005>,  <27.572987, 37.946720, 35.616795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.191725, 38.486633, 35.650005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.373590, 38.516705, 36.004997>,  <27.482710, 38.534748, 36.217995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.373590, 38.516705, 36.004997>,  <27.191725, 38.486633, 35.650005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.373590, 38.516705, 36.004997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001635, 0.996500, -0.083575,
		-0.890661, 0.036548, 0.453196,
		0.454665, 0.075178, 0.887484,
		27.509991, 38.539257, 36.271244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.869806, 39.058144, 35.963570>,  <27.191725, 38.486633, 35.650005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.869806, 39.058144, 35.963570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.198542, 39.020107, 36.188259>,  <27.395782, 38.997284, 36.323074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.198542, 39.020107, 36.188259>,  <26.869806, 39.058144, 35.963570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.198542, 39.020107, 36.188259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089206, 0.995289, 0.037975,
		-0.562692, 0.018900, 0.826450,
		0.821839, -0.095092, 0.561728,
		27.445093, 38.991581, 36.356777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.775646, 39.426762, 36.549042>,  <26.869806, 39.058144, 35.963570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.775646, 39.426762, 36.549042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.165531, 39.395645, 36.465252>,  <27.399462, 39.376976, 36.414978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.165531, 39.395645, 36.465252>,  <26.775646, 39.426762, 36.549042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.165531, 39.395645, 36.465252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062516, 0.994944, -0.078597,
		0.214534, 0.063514, 0.974649,
		0.974714, -0.077793, -0.209479,
		27.457945, 39.372307, 36.402409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.176334, 39.973160, 37.030739>,  <26.775646, 39.426762, 36.549042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.176334, 39.973160, 37.030739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.425510, 39.863747, 36.737583>,  <27.575016, 39.798100, 36.561691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.425510, 39.863747, 36.737583>,  <27.176334, 39.973160, 37.030739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.425510, 39.863747, 36.737583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288476, 0.951170, -0.109806,
		0.727137, -0.143018, 0.671430,
		0.622940, -0.273535, -0.732888,
		27.612392, 39.781685, 36.517715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.720547, 40.431290, 37.078609>,  <27.176334, 39.973160, 37.030739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.720547, 40.431290, 37.078609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.801531, 40.275814, 36.719070>,  <27.850121, 40.182529, 36.503345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.801531, 40.275814, 36.719070>,  <27.720547, 40.431290, 37.078609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.801531, 40.275814, 36.719070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204370, 0.914418, -0.349388,
		0.957728, -0.112961, 0.264570,
		0.202461, -0.388689, -0.898850,
		27.862268, 40.159206, 36.449417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.489508, 40.461636, 36.938213>,  <27.720547, 40.431290, 37.078609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.489508, 40.461636, 36.938213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.295496, 40.460075, 36.588417>,  <28.179089, 40.459137, 36.378540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.295496, 40.460075, 36.588417>,  <28.489508, 40.461636, 36.938213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.295496, 40.460075, 36.588417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434363, 0.866839, -0.244785,
		0.758996, -0.498574, -0.418748,
		-0.485030, -0.003902, -0.874489,
		28.149986, 40.458904, 36.326069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.992867, 40.603516, 36.359436>,  <28.489508, 40.461636, 36.938213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.992867, 40.603516, 36.359436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.629379, 40.674339, 36.208237>,  <28.411287, 40.716835, 36.117516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.629379, 40.674339, 36.208237>,  <28.992867, 40.603516, 36.359436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.629379, 40.674339, 36.208237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301180, 0.905124, -0.300070,
		0.289005, -0.386524, -0.875828,
		-0.908717, 0.177060, -0.377998,
		28.356764, 40.727459, 36.094837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.046432, 40.897472, 35.663166>,  <28.992867, 40.603516, 36.359436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.046432, 40.897472, 35.663166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.690765, 41.020206, 35.798946>,  <28.477365, 41.093849, 35.880417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.690765, 41.020206, 35.798946>,  <29.046432, 40.897472, 35.663166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.690765, 41.020206, 35.798946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236148, 0.943134, -0.233949,
		-0.391936, -0.127859, -0.911064,
		-0.889168, 0.306839, 0.339455,
		28.424015, 41.112259, 35.900784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.751860, 41.203285, 35.040436>,  <29.046432, 40.897472, 35.663166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.751860, 41.203285, 35.040436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.507483, 41.349522, 35.321320>,  <28.360857, 41.437263, 35.489849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.507483, 41.349522, 35.321320>,  <28.751860, 41.203285, 35.040436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.507483, 41.349522, 35.321320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268059, 0.930123, -0.251027,
		-0.744913, 0.034871, -0.666250,
		-0.610941, 0.365588, 0.702208,
		28.324200, 41.459198, 35.531982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.398750, 41.714973, 34.611465>,  <28.751860, 41.203285, 35.040436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.398750, 41.714973, 34.611465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.357241, 41.801834, 34.999706>,  <28.332335, 41.853951, 35.232651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.357241, 41.801834, 34.999706>,  <28.398750, 41.714973, 34.611465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.357241, 41.801834, 34.999706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328874, 0.928473, -0.172565,
		-0.938655, 0.301299, -0.167768,
		-0.103774, 0.217154, 0.970606,
		28.326109, 41.866982, 35.290890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.840927, 42.160309, 34.694912>,  <28.398750, 41.714973, 34.611465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.840927, 42.160309, 34.694912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.124092, 42.217602, 34.971561>,  <28.293991, 42.251980, 35.137550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.124092, 42.217602, 34.971561>,  <27.840927, 42.160309, 34.694912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.124092, 42.217602, 34.971561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158804, 0.921869, -0.353466,
		-0.688216, 0.360056, 0.629856,
		0.707913, 0.143237, 0.691623,
		28.336466, 42.260574, 35.179047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.611353, 42.691532, 35.130066>,  <27.840927, 42.160309, 34.694912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.611353, 42.691532, 35.130066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.007427, 42.717365, 35.080490>,  <28.245071, 42.732864, 35.050747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.007427, 42.717365, 35.080490>,  <27.611353, 42.691532, 35.130066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.007427, 42.717365, 35.080490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102652, 0.937894, -0.331388,
		0.094835, 0.340858, 0.935319,
		0.990186, 0.064585, -0.123935,
		28.304483, 42.736740, 35.043308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.678328, 43.379402, 35.473808>,  <27.611353, 42.691532, 35.130066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.678328, 43.379402, 35.473808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.009157, 43.298786, 35.263920>,  <28.207655, 43.250416, 35.137985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.009157, 43.298786, 35.263920>,  <27.678328, 43.379402, 35.473808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.009157, 43.298786, 35.263920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081521, 0.966647, -0.242791,
		0.556153, 0.158030, 0.815917,
		0.827072, -0.201544, -0.524721,
		28.257278, 43.238323, 35.106503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.855154, 43.237053, 35.603794>,  <27.678328, 43.379402, 35.473808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.855154, 43.237053, 35.603794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.981325, 43.216125, 35.982796>,  <27.057028, 43.203571, 36.210197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.981325, 43.216125, 35.982796>,  <26.855154, 43.237053, 35.603794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.981325, 43.216125, 35.982796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443107, 0.874822, 0.195815,
		-0.839143, -0.481612, 0.252763,
		0.315430, -0.052316, 0.947506,
		27.075954, 43.200432, 36.267048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.266321, 43.459042, 36.156506>,  <26.855154, 43.237053, 35.603794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.266321, 43.459042, 36.156506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.627647, 43.509487, 36.320515>,  <26.844442, 43.539757, 36.418919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.627647, 43.509487, 36.320515>,  <26.266321, 43.459042, 36.156506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.627647, 43.509487, 36.320515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293739, 0.878424, 0.376946,
		-0.312631, -0.460940, 0.830540,
		0.903316, 0.126117, 0.410019,
		26.898642, 43.547321, 36.443520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.051989, 43.714855, 36.873905>,  <26.266321, 43.459042, 36.156506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.051989, 43.714855, 36.873905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.440176, 43.798019, 36.824970>,  <26.673088, 43.847916, 36.795609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.440176, 43.798019, 36.824970>,  <26.051989, 43.714855, 36.873905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.440176, 43.798019, 36.824970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139725, 0.897874, 0.417492,
		0.196642, -0.388069, 0.900408,
		0.970468, 0.207906, -0.122337,
		26.731316, 43.860390, 36.788269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.372746, 44.090706, 37.341026>,  <26.051989, 43.714855, 36.873905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.372746, 44.090706, 37.341026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.602329, 44.166389, 37.022335>,  <26.740080, 44.211800, 36.831120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.602329, 44.166389, 37.022335>,  <26.372746, 44.090706, 37.341026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.602329, 44.166389, 37.022335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171810, 0.923459, 0.343081,
		0.800657, -0.333800, 0.497520,
		0.573960, 0.189211, -0.796724,
		26.774517, 44.223152, 36.783318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.050159, 44.149998, 37.604160>,  <26.372746, 44.090706, 37.341026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.050159, 44.149998, 37.604160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.979805, 44.371044, 37.278294>,  <26.937593, 44.503674, 37.082775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.979805, 44.371044, 37.278294>,  <27.050159, 44.149998, 37.604160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.979805, 44.371044, 37.278294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006318, 0.828182, 0.560424,
		0.984390, 0.093423, -0.149156,
		-0.175885, 0.552618, -0.814664,
		26.927040, 44.536831, 37.033894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.938799, 44.078770, 38.340721>,  <27.050159, 44.149998, 37.604160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.938799, 44.078770, 38.340721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.126745, 44.256104, 38.646057>,  <27.239513, 44.362503, 38.829258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.126745, 44.256104, 38.646057>,  <26.938799, 44.078770, 38.340721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.126745, 44.256104, 38.646057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502208, -0.845406, 0.181869,
		0.725957, 0.297899, -0.619873,
		0.469866, 0.443334, 0.763335,
		27.267706, 44.389103, 38.875057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.607948, 44.021847, 38.252789>,  <26.938799, 44.078770, 38.340721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.607948, 44.021847, 38.252789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.583239, 44.060108, 38.650188>,  <27.568413, 44.083065, 38.888626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.583239, 44.060108, 38.650188>,  <27.607948, 44.021847, 38.252789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.583239, 44.060108, 38.650188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465778, -0.877598, 0.113457,
		0.882743, 0.469757, 0.009659,
		-0.061774, 0.095655, 0.993496,
		27.564707, 44.088806, 38.948238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.298996, 43.898651, 38.580818>,  <27.607948, 44.021847, 38.252789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.298996, 43.898651, 38.580818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.005304, 43.826099, 38.842510>,  <27.829090, 43.782570, 38.999523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.005304, 43.826099, 38.842510>,  <28.298996, 43.898651, 38.580818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.005304, 43.826099, 38.842510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355028, -0.923964, 0.142285,
		0.578675, 0.336739, 0.742793,
		-0.734227, -0.181375, 0.654227,
		27.785036, 43.771687, 39.038780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.638941, 43.552883, 39.158726>,  <28.298996, 43.898651, 38.580818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.638941, 43.552883, 39.158726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.258722, 43.466007, 39.247536>,  <28.030592, 43.413883, 39.300819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.258722, 43.466007, 39.247536>,  <28.638941, 43.552883, 39.158726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.258722, 43.466007, 39.247536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256799, -0.951662, 0.168502,
		0.174694, 0.217184, 0.960371,
		-0.950545, -0.217186, 0.222023,
		27.973558, 43.400852, 39.314144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.593475, 43.214603, 39.753170>,  <28.638941, 43.552883, 39.158726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.593475, 43.214603, 39.753170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.254486, 43.092915, 39.579163>,  <28.051092, 43.019901, 39.474758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.254486, 43.092915, 39.579163>,  <28.593475, 43.214603, 39.753170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.254486, 43.092915, 39.579163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244562, -0.951098, 0.188687,
		-0.471145, 0.053519, 0.880431,
		-0.847474, -0.304219, -0.435016,
		28.000244, 43.001648, 39.448658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.248346, 42.706306, 40.264481>,  <28.593475, 43.214603, 39.753170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.248346, 42.706306, 40.264481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.101707, 42.638004, 39.898651>,  <28.013725, 42.597023, 39.679153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.101707, 42.638004, 39.898651>,  <28.248346, 42.706306, 40.264481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.101707, 42.638004, 39.898651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163881, -0.979495, 0.117184,
		-0.915834, -0.106923, 0.387061,
		-0.366595, -0.170753, -0.914577,
		27.991730, 42.586777, 39.624279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.811148, 42.097778, 40.360046>,  <28.248346, 42.706306, 40.264481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.811148, 42.097778, 40.360046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.902977, 42.132236, 39.972260>,  <27.958075, 42.152908, 39.739586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.902977, 42.132236, 39.972260>,  <27.811148, 42.097778, 40.360046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.902977, 42.132236, 39.972260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227072, -0.973328, -0.032712,
		-0.946432, -0.212630, -0.243011,
		0.229574, 0.086141, -0.969472,
		27.971849, 42.158077, 39.681419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.416302, 41.552719, 39.905579>,  <27.811148, 42.097778, 40.360046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.416302, 41.552719, 39.905579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.746719, 41.658699, 39.706600>,  <27.944971, 41.722286, 39.587212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.746719, 41.658699, 39.706600>,  <27.416302, 41.552719, 39.905579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.746719, 41.658699, 39.706600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252841, -0.963022, -0.093056,
		-0.503706, -0.048907, -0.862490,
		0.826046, 0.264946, -0.497446,
		27.994534, 41.738182, 39.557365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.409012, 41.145565, 39.357121>,  <27.416302, 41.552719, 39.905579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.409012, 41.145565, 39.357121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.796534, 41.244282, 39.366154>,  <28.029047, 41.303513, 39.371574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.796534, 41.244282, 39.366154>,  <27.409012, 41.145565, 39.357121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.796534, 41.244282, 39.366154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246613, -0.951059, -0.186194,
		-0.024476, 0.185954, -0.982254,
		0.968805, 0.246794, 0.022580,
		28.087175, 41.318321, 39.372929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.729456, 40.963215, 38.682472>,  <27.409012, 41.145565, 39.357121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.729456, 40.963215, 38.682472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.027891, 40.960709, 38.948799>,  <28.206953, 40.959206, 39.108597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.027891, 40.960709, 38.948799>,  <27.729456, 40.963215, 38.682472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.027891, 40.960709, 38.948799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261798, -0.916659, -0.301990,
		0.612220, 0.399621, -0.682268,
		0.746089, -0.006268, 0.665817,
		28.251719, 40.958828, 39.148544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.224264, 40.400864, 38.383335>,  <27.729456, 40.963215, 38.682472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.224264, 40.400864, 38.383335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.392258, 40.478271, 38.737999>,  <28.493053, 40.524715, 38.950798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.392258, 40.478271, 38.737999>,  <28.224264, 40.400864, 38.383335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.392258, 40.478271, 38.737999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489160, -0.871204, -0.041555,
		0.764418, 0.451170, -0.460556,
		0.419986, 0.193520, 0.886658,
		28.518253, 40.536327, 39.003998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.062880, 40.266407, 38.448700>,  <28.224264, 40.400864, 38.383335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.062880, 40.266407, 38.448700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.895384, 40.238831, 38.810894>,  <28.794888, 40.222282, 39.028210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.895384, 40.238831, 38.810894>,  <29.062880, 40.266407, 38.448700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.895384, 40.238831, 38.810894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409339, -0.904399, 0.120437,
		0.810617, 0.421082, 0.406927,
		-0.418738, -0.068943, 0.905487,
		28.769762, 40.218147, 39.082539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.513144, 39.748486, 38.773975>,  <29.062880, 40.266407, 38.448700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.513144, 39.748486, 38.773975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.176374, 39.751648, 38.989792>,  <28.974314, 39.753548, 39.119282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.176374, 39.751648, 38.989792>,  <29.513144, 39.748486, 38.773975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.176374, 39.751648, 38.989792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256684, -0.873646, 0.413348,
		0.474635, 0.486498, 0.733513,
		-0.841923, 0.007909, 0.539539,
		28.923798, 39.754021, 39.151653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.765697, 39.328121, 39.326939>,  <29.513144, 39.748486, 38.773975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.765697, 39.328121, 39.326939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.371002, 39.334499, 39.391548>,  <29.134184, 39.338326, 39.430313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.371002, 39.334499, 39.391548>,  <29.765697, 39.328121, 39.326939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.371002, 39.334499, 39.391548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018835, -0.977191, 0.211524,
		0.161214, 0.211761, 0.963933,
		-0.986740, 0.015945, 0.161526,
		29.074980, 39.339283, 39.440006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.585932, 39.029137, 40.041882>,  <29.765697, 39.328121, 39.326939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.585932, 39.029137, 40.041882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.277403, 39.003918, 39.788555>,  <29.092285, 38.988789, 39.636559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.277403, 39.003918, 39.788555>,  <29.585932, 39.029137, 40.041882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.277403, 39.003918, 39.788555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053640, -0.985102, 0.163392,
		-0.634178, 0.159999, 0.756451,
		-0.771324, -0.063043, -0.633313,
		29.046005, 38.985004, 39.598560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.186316, 38.622128, 40.450024>,  <29.585932, 39.029137, 40.041882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.186316, 38.622128, 40.450024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.053713, 38.610271, 40.072830>,  <28.974152, 38.603157, 39.846512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.053713, 38.610271, 40.072830>,  <29.186316, 38.622128, 40.450024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.053713, 38.610271, 40.072830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177529, -0.979692, 0.093202,
		-0.926599, 0.198305, 0.319513,
		-0.331507, -0.029638, -0.942987,
		28.954260, 38.601379, 39.789932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.644329, 38.222374, 40.412422>,  <29.186316, 38.622128, 40.450024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.644329, 38.222374, 40.412422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.741720, 38.206852, 40.024769>,  <28.800156, 38.197536, 39.792179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.741720, 38.206852, 40.024769>,  <28.644329, 38.222374, 40.412422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.741720, 38.206852, 40.024769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179505, -0.983741, -0.005705,
		-0.953150, 0.175353, -0.246488,
		0.243480, -0.038808, -0.969129,
		28.814764, 38.195210, 39.734032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.127451, 37.738018, 40.118515>,  <28.644329, 38.222374, 40.412422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.127451, 37.738018, 40.118515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.432566, 37.745956, 39.859978>,  <28.615635, 37.750721, 39.704853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.432566, 37.745956, 39.859978>,  <28.127451, 37.738018, 40.118515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.432566, 37.745956, 39.859978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012429, -0.998894, -0.045337,
		-0.646531, 0.042616, -0.761696,
		0.762786, 0.019845, -0.646346,
		28.661402, 37.751911, 39.666073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.934771, 37.297092, 39.689899>,  <28.127451, 37.738018, 40.118515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.934771, 37.297092, 39.689899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.317230, 37.337269, 39.579849>,  <28.546705, 37.361374, 39.513821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.317230, 37.337269, 39.579849>,  <27.934771, 37.297092, 39.689899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.317230, 37.337269, 39.579849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080423, -0.993289, -0.083127,
		-0.281624, 0.057355, -0.957809,
		0.956148, 0.100440, -0.275122,
		28.604074, 37.367401, 39.497314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.099405, 37.109375, 38.890324>,  <27.934771, 37.297092, 39.689899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.099405, 37.109375, 38.890324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.419657, 37.053581, 39.123402>,  <28.611807, 37.020103, 39.263248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.419657, 37.053581, 39.123402>,  <28.099405, 37.109375, 38.890324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.419657, 37.053581, 39.123402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233949, -0.822544, -0.518352,
		0.551598, 0.551329, -0.625920,
		0.800629, -0.139489, 0.582697,
		28.659845, 37.011734, 39.298210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.590933, 36.920227, 38.423737>,  <28.099405, 37.109375, 38.890324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.590933, 36.920227, 38.423737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.743433, 36.787704, 38.768963>,  <28.834934, 36.708191, 38.976097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.743433, 36.787704, 38.768963>,  <28.590933, 36.920227, 38.423737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.743433, 36.787704, 38.768963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206224, -0.879575, -0.428742,
		0.901176, 0.341444, -0.267017,
		0.381252, -0.331306, 0.863066,
		28.857809, 36.688313, 39.027882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.124014, 36.518738, 38.218105>,  <28.590933, 36.920227, 38.423737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.124014, 36.518738, 38.218105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.064251, 36.390388, 38.592213>,  <29.028393, 36.313377, 38.816677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.064251, 36.390388, 38.592213>,  <29.124014, 36.518738, 38.218105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.064251, 36.390388, 38.592213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170177, -0.940111, -0.295349,
		0.974021, 0.115033, 0.195063,
		-0.149406, -0.320872, 0.935264,
		29.019428, 36.294128, 38.872791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.796339, 36.211464, 38.444420>,  <29.124014, 36.518738, 38.218105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.796339, 36.211464, 38.444420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.514553, 36.054260, 38.680817>,  <29.345482, 35.959938, 38.822655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.514553, 36.054260, 38.680817>,  <29.796339, 36.211464, 38.444420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.514553, 36.054260, 38.680817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272129, -0.918619, -0.286504,
		0.655495, -0.041007, 0.754085,
		-0.704466, -0.393011, 0.590991,
		29.303213, 35.936356, 38.858112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.060152, 35.679920, 38.709587>,  <29.796339, 36.211464, 38.444420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.060152, 35.679920, 38.709587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.693748, 35.564945, 38.821518>,  <29.473906, 35.495960, 38.888676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.693748, 35.564945, 38.821518>,  <30.060152, 35.679920, 38.709587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.693748, 35.564945, 38.821518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213019, -0.939613, -0.267863,
		0.339923, -0.185757, 0.921926,
		-0.916011, -0.287441, 0.279826,
		29.418945, 35.478714, 38.905464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.038038, 34.969902, 39.103550>,  <30.060152, 35.679920, 38.709587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.038038, 34.969902, 39.103550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.695883, 35.024933, 38.903797>,  <29.490589, 35.057953, 38.783947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.695883, 35.024933, 38.903797>,  <30.038038, 34.969902, 39.103550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.695883, 35.024933, 38.903797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160374, -0.846372, -0.507873,
		-0.492532, -0.514517, 0.701915,
		-0.855390, 0.137575, -0.499380,
		29.439266, 35.066204, 38.753983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.727287, 34.991154, 39.212185>,  <30.038038, 34.969902, 39.103550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.727287, 34.991154, 39.212185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.798834, 35.380917, 39.157734>,  <30.841763, 35.614777, 39.125065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.798834, 35.380917, 39.157734>,  <30.727287, 34.991154, 39.212185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.798834, 35.380917, 39.157734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811529, -0.067893, 0.580354,
		0.556262, -0.214275, -0.802906,
		0.178867, 0.974411, -0.136124,
		30.852493, 35.673241, 39.116898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.434214, 35.086048, 39.048389>,  <30.727287, 34.991154, 39.212185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.434214, 35.086048, 39.048389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.249958, 35.371601, 39.259361>,  <31.139404, 35.542934, 39.385944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.249958, 35.371601, 39.259361>,  <31.434214, 35.086048, 39.048389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.249958, 35.371601, 39.259361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709881, -0.060392, 0.701728,
		0.532805, 0.697655, -0.478954,
		-0.460639, 0.713884, 0.527429,
		31.111767, 35.585766, 39.417591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.876825, 35.525723, 39.088181>,  <31.434214, 35.086048, 39.048389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.876825, 35.525723, 39.088181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.627857, 35.579823, 39.396542>,  <31.478476, 35.612282, 39.581558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.627857, 35.579823, 39.396542>,  <31.876825, 35.525723, 39.088181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.627857, 35.579823, 39.396542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779722, 0.021582, 0.625753,
		0.067994, 0.990577, -0.118889,
		-0.622423, 0.135248, 0.770907,
		31.441130, 35.620396, 39.627815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.215881, 35.946541, 39.565865>,  <31.876825, 35.525723, 39.088181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.215881, 35.946541, 39.565865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.962360, 35.752922, 39.807190>,  <31.810247, 35.636749, 39.951984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.962360, 35.752922, 39.807190>,  <32.215881, 35.946541, 39.565865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.962360, 35.752922, 39.807190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742964, -0.164000, 0.648929,
		-0.215168, 0.859537, 0.463572,
		-0.633804, -0.484046, 0.603317,
		31.772219, 35.607708, 39.988186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.128872, 36.246113, 40.281433>,  <32.215881, 35.946541, 39.565865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.128872, 36.246113, 40.281433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060043, 35.852291, 40.294415>,  <32.018745, 35.615997, 40.302204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060043, 35.852291, 40.294415>,  <32.128872, 36.246113, 40.281433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060043, 35.852291, 40.294415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716811, -0.102543, 0.689686,
		-0.675703, 0.141933, 0.723381,
		-0.172067, -0.984550, 0.032450,
		32.008423, 35.556927, 40.304150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.908918, 35.992340, 40.987183>,  <32.128872, 36.246113, 40.281433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.908918, 35.992340, 40.987183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.117542, 35.753677, 40.743225>,  <32.242718, 35.610477, 40.596851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.117542, 35.753677, 40.743225>,  <31.908918, 35.992340, 40.987183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.117542, 35.753677, 40.743225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766401, 0.013468, 0.642221,
		-0.374975, -0.802380, 0.464306,
		0.521559, -0.596662, -0.609895,
		32.274010, 35.574680, 40.560257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.123055, 35.371372, 41.383362>,  <31.908918, 35.992340, 40.987183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.123055, 35.371372, 41.383362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366333, 35.457314, 41.077702>,  <32.512302, 35.508877, 40.894306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366333, 35.457314, 41.077702>,  <32.123055, 35.371372, 41.383362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366333, 35.457314, 41.077702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793753, -0.173193, 0.583062,
		-0.007073, -0.961167, -0.275877,
		0.608200, 0.214854, -0.764154,
		32.548794, 35.521770, 40.848454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.546150, 34.929771, 41.328915>,  <32.123055, 35.371372, 41.383362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.546150, 34.929771, 41.328915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764778, 35.198711, 41.129230>,  <32.895954, 35.360073, 41.009418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764778, 35.198711, 41.129230>,  <32.546150, 34.929771, 41.328915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.764778, 35.198711, 41.129230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801491, -0.247280, 0.544486,
		0.242639, -0.697712, -0.674036,
		0.546570, 0.672347, -0.499210,
		32.928749, 35.400417, 40.979469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129147, 34.524025, 41.148716>,  <32.546150, 34.929771, 41.328915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129147, 34.524025, 41.148716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256622, 34.902348, 41.123768>,  <33.333107, 35.129341, 41.108799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256622, 34.902348, 41.123768>,  <33.129147, 34.524025, 41.148716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.256622, 34.902348, 41.123768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693155, -0.187666, 0.695929,
		0.646508, -0.265017, -0.715397,
		0.318689, 0.945805, -0.062371,
		33.352230, 35.186089, 41.105057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.765263, 34.485371, 41.302345>,  <33.129147, 34.524025, 41.148716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.765263, 34.485371, 41.302345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.715752, 34.878754, 41.355251>,  <33.686043, 35.114784, 41.386993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.715752, 34.878754, 41.355251>,  <33.765263, 34.485371, 41.302345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715752, 34.878754, 41.355251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697671, -0.008535, 0.716367,
		0.705644, 0.180951, -0.685072,
		-0.123781, 0.983455, 0.132266,
		33.678619, 35.173790, 41.394932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479527, 34.687256, 41.230663>,  <33.765263, 34.485371, 41.302345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479527, 34.687256, 41.230663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257767, 34.948616, 41.436852>,  <34.124710, 35.105431, 41.560566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257767, 34.948616, 41.436852>,  <34.479527, 34.687256, 41.230663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257767, 34.948616, 41.436852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720269, 0.066383, 0.690512,
		0.416960, 0.754099, -0.507424,
		-0.554398, 0.653397, 0.515475,
		34.091446, 35.144634, 41.591496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972256, 35.162483, 41.565334>,  <34.479527, 34.687256, 41.230663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972256, 35.162483, 41.565334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641266, 35.247494, 41.773228>,  <34.442673, 35.298500, 41.897964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641266, 35.247494, 41.773228>,  <34.972256, 35.162483, 41.565334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641266, 35.247494, 41.773228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547570, 0.100468, 0.830706,
		0.124328, 0.971977, -0.199506,
		-0.827472, 0.212524, 0.519735,
		34.393024, 35.311253, 41.929150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.228001, 35.731571, 41.854065>,  <34.972256, 35.162483, 41.565334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.228001, 35.731571, 41.854065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.912544, 35.549393, 42.019291>,  <34.723270, 35.440086, 42.118427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.912544, 35.549393, 42.019291>,  <35.228001, 35.731571, 41.854065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912544, 35.549393, 42.019291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521655, -0.140008, 0.841590,
		-0.325467, 0.879185, 0.348002,
		-0.788637, -0.455446, 0.413063,
		34.675953, 35.412758, 42.143211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195957, 35.984409, 42.571831>,  <35.228001, 35.731571, 41.854065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195957, 35.984409, 42.571831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.998928, 35.636936, 42.592823>,  <34.880711, 35.428452, 42.605419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.998928, 35.636936, 42.592823>,  <35.195957, 35.984409, 42.571831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.998928, 35.636936, 42.592823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395524, -0.169744, 0.902634,
		-0.775196, 0.465375, 0.427198,
		-0.492577, -0.868685, 0.052483,
		34.851154, 35.376331, 42.608566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836910, 35.974682, 43.175152>,  <35.195957, 35.984409, 42.571831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.836910, 35.974682, 43.175152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900394, 35.591499, 43.079544>,  <34.938484, 35.361591, 43.022179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900394, 35.591499, 43.079544>,  <34.836910, 35.974682, 43.175152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900394, 35.591499, 43.079544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475686, -0.137945, 0.868732,
		-0.865179, -0.251571, 0.433794,
		0.158708, -0.957958, -0.239016,
		34.948006, 35.304111, 43.007839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846046, 35.650326, 43.813583>,  <34.836910, 35.974682, 43.175152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846046, 35.650326, 43.813583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.965614, 35.332085, 43.602806>,  <35.037357, 35.141140, 43.476341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.965614, 35.332085, 43.602806>,  <34.846046, 35.650326, 43.813583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965614, 35.332085, 43.602806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494428, -0.343169, 0.798609,
		-0.816202, -0.499258, 0.290785,
		0.298923, -0.795598, -0.526943,
		35.055290, 35.093407, 43.444725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683624, 35.087101, 44.273846>,  <34.846046, 35.650326, 43.813583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683624, 35.087101, 44.273846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973583, 34.944836, 44.037872>,  <35.147560, 34.859478, 43.896286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973583, 34.944836, 44.037872>,  <34.683624, 35.087101, 44.273846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973583, 34.944836, 44.037872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476385, -0.359763, 0.802264,
		-0.497571, -0.862599, -0.091361,
		0.724901, -0.355660, -0.589936,
		35.191055, 34.838139, 43.860893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.915813, 34.518063, 44.618023>,  <34.683624, 35.087101, 44.273846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.915813, 34.518063, 44.618023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.200329, 34.602570, 44.349861>,  <35.371037, 34.653275, 44.188965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.200329, 34.602570, 44.349861>,  <34.915813, 34.518063, 44.618023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200329, 34.602570, 44.349861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699579, -0.305435, 0.645987,
		-0.068285, -0.928479, -0.365053,
		0.711285, 0.211272, -0.670401,
		35.413715, 34.665951, 44.148743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334423, 33.928749, 44.570225>,  <34.915813, 34.518063, 44.618023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.334423, 33.928749, 44.570225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549221, 34.255489, 44.485939>,  <35.678101, 34.451534, 44.435368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549221, 34.255489, 44.485939>,  <35.334423, 33.928749, 44.570225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549221, 34.255489, 44.485939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634348, -0.226339, 0.739170,
		0.556096, -0.530595, -0.639708,
		0.536991, 0.816847, -0.210715,
		35.710320, 34.500542, 44.422726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931110, 33.684891, 44.365204>,  <35.334423, 33.928749, 44.570225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931110, 33.684891, 44.365204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.950665, 34.044159, 44.539970>,  <35.962395, 34.259720, 44.644829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.950665, 34.044159, 44.539970>,  <35.931110, 33.684891, 44.365204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950665, 34.044159, 44.539970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431507, -0.413498, 0.801761,
		0.900784, 0.149339, -0.407782,
		0.048883, 0.898174, 0.436914,
		35.965328, 34.313610, 44.671043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.463955, 33.557564, 44.794868>,  <35.931110, 33.684891, 44.365204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.463955, 33.557564, 44.794868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.278061, 33.874950, 44.952057>,  <36.166523, 34.065384, 45.046371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.278061, 33.874950, 44.952057>,  <36.463955, 33.557564, 44.794868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.278061, 33.874950, 44.952057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216875, -0.328289, 0.919343,
		0.858480, 0.512476, -0.019516,
		-0.464734, 0.793470, 0.392973,
		36.138641, 34.112991, 45.069950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.874840, 33.670109, 45.407993>,  <36.463955, 33.557564, 44.794868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.874840, 33.670109, 45.407993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.557167, 33.906590, 45.464214>,  <36.366562, 34.048477, 45.497948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.557167, 33.906590, 45.464214>,  <36.874840, 33.670109, 45.407993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.557167, 33.906590, 45.464214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162454, -0.016316, 0.986581,
		0.585564, 0.806357, -0.083085,
		-0.794181, 0.591204, 0.140550,
		36.318913, 34.083950, 45.506378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065582, 34.272232, 45.811878>,  <36.874840, 33.670109, 45.407993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.065582, 34.272232, 45.811878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.671238, 34.229183, 45.863239>,  <36.434631, 34.203354, 45.894054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.671238, 34.229183, 45.863239>,  <37.065582, 34.272232, 45.811878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.671238, 34.229183, 45.863239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117728, 0.100279, 0.987970,
		-0.119207, 0.989121, -0.086191,
		-0.985865, -0.107625, 0.128401,
		36.375477, 34.196896, 45.901760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881908, 34.789791, 46.184471>,  <37.065582, 34.272232, 45.811878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881908, 34.789791, 46.184471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.589943, 34.520653, 46.232662>,  <36.414764, 34.359169, 46.261578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.589943, 34.520653, 46.232662>,  <36.881908, 34.789791, 46.184471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.589943, 34.520653, 46.232662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058774, 0.113817, 0.991762,
		-0.681012, 0.730977, -0.043530,
		-0.729910, -0.672843, 0.120473,
		36.370972, 34.318798, 46.268803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.550190, 35.022560, 46.743355>,  <36.881908, 34.789791, 46.184471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.550190, 35.022560, 46.743355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.411755, 34.647282, 46.741524>,  <36.328693, 34.422115, 46.740425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.411755, 34.647282, 46.741524>,  <36.550190, 35.022560, 46.743355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411755, 34.647282, 46.741524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209269, -0.081949, 0.974418,
		-0.914567, 0.336273, 0.224696,
		-0.346084, -0.938192, -0.004577,
		36.307930, 34.365826, 46.740150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173836, 35.024311, 47.342209>,  <36.550190, 35.022560, 46.743355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.173836, 35.024311, 47.342209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224625, 34.638783, 47.248459>,  <36.255100, 34.407467, 47.192207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224625, 34.638783, 47.248459>,  <36.173836, 35.024311, 47.342209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224625, 34.638783, 47.248459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066283, -0.244005, 0.967506,
		-0.989688, -0.107316, -0.094867,
		0.126977, -0.963818, -0.234376,
		36.262718, 34.349636, 47.178146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696579, 34.673504, 47.706211>,  <36.173836, 35.024311, 47.342209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696579, 34.673504, 47.706211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.985588, 34.411930, 47.616470>,  <36.158993, 34.254986, 47.562626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.985588, 34.411930, 47.616470>,  <35.696579, 34.673504, 47.706211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985588, 34.411930, 47.616470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092626, -0.230021, 0.968768,
		-0.685111, -0.720739, -0.105626,
		0.722525, -0.653930, -0.224349,
		36.202347, 34.215752, 47.549164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453922, 34.103981, 48.067287>,  <35.696579, 34.673504, 47.706211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.453922, 34.103981, 48.067287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827736, 33.989670, 47.982464>,  <36.052025, 33.921082, 47.931568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827736, 33.989670, 47.982464>,  <35.453922, 34.103981, 48.067287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827736, 33.989670, 47.982464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208572, -0.042963, 0.977063,
		-0.288337, -0.957331, 0.019455,
		0.934537, -0.285782, -0.212060,
		36.108097, 33.903934, 47.918846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598980, 33.440758, 48.289238>,  <35.453922, 34.103981, 48.067287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598980, 33.440758, 48.289238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.961067, 33.608349, 48.260822>,  <36.178318, 33.708904, 48.243774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.961067, 33.608349, 48.260822>,  <35.598980, 33.440758, 48.289238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961067, 33.608349, 48.260822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197322, -0.266355, 0.943461,
		0.376368, -0.868051, -0.323781,
		0.905214, 0.418978, -0.071038,
		36.232632, 33.734043, 48.239510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101089, 33.077774, 48.698322>,  <35.598980, 33.440758, 48.289238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.101089, 33.077774, 48.698322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.285343, 33.431255, 48.665138>,  <36.395893, 33.643345, 48.645229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.285343, 33.431255, 48.665138>,  <36.101089, 33.077774, 48.698322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285343, 33.431255, 48.665138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191290, -0.007571, 0.981504,
		0.866733, -0.467981, -0.172532,
		0.460631, 0.883706, -0.082958,
		36.423534, 33.696365, 48.640251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584362, 33.087936, 49.089897>,  <36.101089, 33.077774, 48.698322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584362, 33.087936, 49.089897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.592106, 33.487022, 49.064011>,  <36.596752, 33.726475, 49.048477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.592106, 33.487022, 49.064011>,  <36.584362, 33.087936, 49.089897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592106, 33.487022, 49.064011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191869, 0.059821, 0.979596,
		0.981230, -0.031379, -0.190273,
		0.019356, 0.997716, -0.064719,
		36.597912, 33.786339, 49.044594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198227, 33.282295, 49.427334>,  <36.584362, 33.087936, 49.089897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.198227, 33.282295, 49.427334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969017, 33.610031, 49.420086>,  <36.831490, 33.806671, 49.415737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969017, 33.610031, 49.420086>,  <37.198227, 33.282295, 49.427334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969017, 33.610031, 49.420086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191983, 0.155700, 0.968969,
		0.796733, 0.551766, -0.246519,
		-0.573027, 0.819336, -0.018122,
		36.797108, 33.855831, 49.414650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547398, 33.775417, 49.871319>,  <37.198227, 33.282295, 49.427334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.547398, 33.775417, 49.871319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.174175, 33.918743, 49.858589>,  <36.950241, 34.004738, 49.850952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.174175, 33.918743, 49.858589>,  <37.547398, 33.775417, 49.871319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174175, 33.918743, 49.858589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005071, 0.101551, 0.994817,
		0.359693, 0.928060, -0.096570,
		-0.933057, 0.358318, -0.031821,
		36.894257, 34.026237, 49.849045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561977, 34.231510, 50.417576>,  <37.547398, 33.775417, 49.871319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.561977, 34.231510, 50.417576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.173702, 34.166073, 50.347141>,  <36.940739, 34.126812, 50.304878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.173702, 34.166073, 50.347141>,  <37.561977, 34.231510, 50.417576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173702, 34.166073, 50.347141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170668, -0.046732, 0.984220,
		-0.169237, 0.985421, 0.017442,
		-0.970686, -0.163590, -0.176088,
		36.882496, 34.116997, 50.294315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.233334, 34.607323, 50.949867>,  <37.561977, 34.231510, 50.417576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.233334, 34.607323, 50.949867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.921089, 34.385593, 50.834373>,  <36.733742, 34.252556, 50.765076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.921089, 34.385593, 50.834373>,  <37.233334, 34.607323, 50.949867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.921089, 34.385593, 50.834373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452256, 0.182102, 0.873100,
		-0.431402, 0.812135, -0.392848,
		-0.780613, -0.554324, -0.288734,
		36.686905, 34.219296, 50.747753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.659782, 34.966251, 51.122803>,  <37.233334, 34.607323, 50.949867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.659782, 34.966251, 51.122803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497097, 34.605728, 51.063160>,  <36.399487, 34.389416, 51.027374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497097, 34.605728, 51.063160>,  <36.659782, 34.966251, 51.122803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497097, 34.605728, 51.063160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583744, 0.130847, 0.801325,
		-0.702730, 0.412947, -0.579349,
		-0.406711, -0.901307, -0.149105,
		36.375084, 34.335335, 51.018429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929237, 35.018169, 51.247616>,  <36.659782, 34.966251, 51.122803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929237, 35.018169, 51.247616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013206, 34.634399, 51.322918>,  <36.063587, 34.404137, 51.368099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013206, 34.634399, 51.322918>,  <35.929237, 35.018169, 51.247616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013206, 34.634399, 51.322918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468206, 0.070384, 0.880812,
		-0.858320, -0.273048, -0.434432,
		0.209927, -0.959422, 0.188255,
		36.076183, 34.346573, 51.379395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329254, 34.779762, 51.581467>,  <35.929237, 35.018169, 51.247616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329254, 34.779762, 51.581467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615429, 34.517925, 51.679165>,  <35.787132, 34.360825, 51.737785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615429, 34.517925, 51.679165>,  <35.329254, 34.779762, 51.581467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615429, 34.517925, 51.679165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278403, 0.053542, 0.958971,
		-0.640813, -0.754084, -0.143935,
		0.715438, -0.654593, 0.244249,
		35.830059, 34.321548, 51.752441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.976032, 34.277214, 51.887722>,  <35.329254, 34.779762, 51.581467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.976032, 34.277214, 51.887722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356316, 34.243271, 52.007023>,  <35.584484, 34.222904, 52.078606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356316, 34.243271, 52.007023>,  <34.976032, 34.277214, 51.887722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.356316, 34.243271, 52.007023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306665, -0.114697, 0.944882,
		-0.045969, -0.989770, -0.135065,
		0.950707, -0.084855, 0.298255,
		35.641529, 34.217812, 52.096500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.947067, 33.575871, 52.247257>,  <34.976032, 34.277214, 51.887722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.947067, 33.575871, 52.247257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.265278, 33.787323, 52.365704>,  <35.456203, 33.914196, 52.436771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.265278, 33.787323, 52.365704>,  <34.947067, 33.575871, 52.247257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265278, 33.787323, 52.365704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149462, -0.302408, 0.941388,
		0.587196, -0.793157, -0.161563,
		0.795526, 0.528631, 0.296120,
		35.503937, 33.945911, 52.454540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283787, 33.174633, 52.739227>,  <34.947067, 33.575871, 52.247257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.283787, 33.174633, 52.739227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.399975, 33.548145, 52.822826>,  <35.469688, 33.772251, 52.872986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.399975, 33.548145, 52.822826>,  <35.283787, 33.174633, 52.739227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.399975, 33.548145, 52.822826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223493, -0.146168, 0.963683,
		0.930418, -0.326632, 0.166236,
		0.290472, 0.933781, 0.208997,
		35.487118, 33.828278, 52.885525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571636, 33.101574, 53.431274>,  <35.283787, 33.174633, 52.739227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571636, 33.101574, 53.431274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.510262, 33.492992, 53.376266>,  <35.473438, 33.727844, 53.343262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.510262, 33.492992, 53.376266>,  <35.571636, 33.101574, 53.431274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.510262, 33.492992, 53.376266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326523, 0.081144, 0.941700,
		0.932652, 0.189396, 0.307066,
		-0.153438, 0.978542, -0.137521,
		35.464230, 33.786556, 53.335011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976898, 33.390110, 53.950508>,  <35.571636, 33.101574, 53.431274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976898, 33.390110, 53.950508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.691341, 33.652225, 53.851753>,  <35.520008, 33.809494, 53.792500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.691341, 33.652225, 53.851753>,  <35.976898, 33.390110, 53.950508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691341, 33.652225, 53.851753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279123, 0.057057, 0.958559,
		0.642222, 0.753219, 0.142174,
		-0.713892, 0.655291, -0.246884,
		35.477173, 33.848812, 53.777687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071934, 33.919804, 54.419693>,  <35.976898, 33.390110, 53.950508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071934, 33.919804, 54.419693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.692009, 33.931942, 54.295151>,  <35.464054, 33.939224, 54.220425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.692009, 33.931942, 54.295151>,  <36.071934, 33.919804, 54.419693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.692009, 33.931942, 54.295151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312604, -0.130120, 0.940929,
		-0.011959, 0.991034, 0.133076,
		-0.949808, 0.030348, -0.311357,
		35.407066, 33.941048, 54.201744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706810, 34.211773, 54.945602>,  <36.071934, 33.919804, 54.419693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706810, 34.211773, 54.945602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.418072, 34.052601, 54.719116>,  <35.244831, 33.957100, 54.583225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.418072, 34.052601, 54.719116>,  <35.706810, 34.211773, 54.945602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418072, 34.052601, 54.719116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525986, -0.216257, 0.822540,
		-0.449759, 0.891564, -0.053201,
		-0.721842, -0.397928, -0.566214,
		35.201519, 33.933224, 54.549252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107479, 34.548901, 55.200809>,  <35.706810, 34.211773, 54.945602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107479, 34.548901, 55.200809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.027195, 34.208488, 55.006714>,  <34.979023, 34.004242, 54.890255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.027195, 34.208488, 55.006714>,  <35.107479, 34.548901, 55.200809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.027195, 34.208488, 55.006714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289175, -0.421782, 0.859348,
		-0.935998, 0.312801, -0.161440,
		-0.200712, -0.851032, -0.485241,
		34.966980, 33.953178, 54.861141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.590256, 34.750999, 54.513981>,  <35.107479, 34.548901, 55.200809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.590256, 34.750999, 54.513981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.472500, 34.374805, 54.581898>,  <34.401848, 34.149090, 54.622646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.472500, 34.374805, 54.581898>,  <34.590256, 34.750999, 54.513981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.472500, 34.374805, 54.581898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368435, 0.052244, 0.928185,
		-0.881812, 0.335803, 0.331126,
		-0.294388, -0.940482, 0.169791,
		34.384182, 34.092659, 54.632835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399975, 34.794540, 55.205727>,  <34.590256, 34.750999, 54.513981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399975, 34.794540, 55.205727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.443001, 34.401199, 55.147144>,  <34.468815, 34.165195, 55.111996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.443001, 34.401199, 55.147144>,  <34.399975, 34.794540, 55.205727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.443001, 34.401199, 55.147144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214211, -0.120925, 0.969273,
		-0.970847, -0.135632, 0.197638,
		0.107566, -0.983352, -0.146453,
		34.475269, 34.106194, 55.103207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.861916, 34.407379, 55.564953>,  <34.399975, 34.794540, 55.205727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.861916, 34.407379, 55.564953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.231625, 34.261246, 55.520699>,  <34.453453, 34.173565, 55.494148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.231625, 34.261246, 55.520699>,  <33.861916, 34.407379, 55.564953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.231625, 34.261246, 55.520699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153638, 0.090730, 0.983953,
		-0.349438, -0.926443, 0.139990,
		0.924277, -0.365339, -0.110633,
		34.508907, 34.151646, 55.487507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849930, 33.724586, 55.745102>,  <33.861916, 34.407379, 55.564953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849930, 33.724586, 55.745102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183563, 33.931087, 55.822861>,  <34.383743, 34.054989, 55.869514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183563, 33.931087, 55.822861>,  <33.849930, 33.724586, 55.745102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.183563, 33.931087, 55.822861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016888, -0.328338, 0.944409,
		0.551381, -0.790998, -0.265142,
		0.834083, 0.516252, 0.194398,
		34.433788, 34.085964, 55.881180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383278, 33.296104, 56.011715>,  <33.849930, 33.724586, 55.745102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383278, 33.296104, 56.011715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.305939, 33.666443, 56.141594>,  <34.259537, 33.888645, 56.219521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.305939, 33.666443, 56.141594>,  <34.383278, 33.296104, 56.011715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305939, 33.666443, 56.141594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455158, -0.377813, 0.806280,
		0.869165, 0.008104, 0.494455,
		-0.193346, 0.925846, 0.324693,
		34.247936, 33.944199, 56.239002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.379807, 33.234783, 56.669125>,  <34.383278, 33.296104, 56.011715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.379807, 33.234783, 56.669125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.165672, 33.570904, 56.634918>,  <34.037193, 33.772575, 56.614395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.165672, 33.570904, 56.634918>,  <34.379807, 33.234783, 56.669125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.165672, 33.570904, 56.634918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425939, -0.181140, 0.886434,
		0.729381, 0.510961, 0.454887,
		-0.535331, 0.840302, -0.085518,
		34.005074, 33.822994, 56.609264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.114380, 33.395565, 56.768284>,  <34.379807, 33.234783, 56.669125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.114380, 33.395565, 56.768284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.488914, 33.255573, 56.779465>,  <35.713634, 33.171577, 56.786175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.488914, 33.255573, 56.779465>,  <35.114380, 33.395565, 56.768284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.488914, 33.255573, 56.779465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227796, -0.666165, -0.710165,
		0.267166, 0.658588, -0.703480,
		0.936339, -0.349982, 0.027953,
		35.769817, 33.150578, 56.787849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325726, 32.708801, 56.937607>,  <35.114380, 33.395565, 56.768284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325726, 32.708801, 56.937607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581402, 32.401382, 56.926456>,  <35.734806, 32.216930, 56.919765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581402, 32.401382, 56.926456>,  <35.325726, 32.708801, 56.937607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581402, 32.401382, 56.926456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439778, -0.335539, -0.833072,
		0.630896, 0.544753, -0.552462,
		0.639191, -0.768543, -0.027880,
		35.773159, 32.170818, 56.918091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.795055, 32.677181, 56.280739>,  <35.325726, 32.708801, 56.937607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.795055, 32.677181, 56.280739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.693638, 32.319973, 56.429455>,  <35.632786, 32.105648, 56.518684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.693638, 32.319973, 56.429455>,  <35.795055, 32.677181, 56.280739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.693638, 32.319973, 56.429455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438893, -0.236307, -0.866909,
		0.862026, -0.382973, -0.332027,
		-0.253543, -0.893023, 0.371788,
		35.617577, 32.052067, 56.540993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.969849, 32.119572, 55.803459>,  <35.795055, 32.677181, 56.280739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.969849, 32.119572, 55.803459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.656738, 32.001209, 56.022442>,  <35.468872, 31.930193, 56.153831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.656738, 32.001209, 56.022442>,  <35.969849, 32.119572, 55.803459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.656738, 32.001209, 56.022442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479817, -0.273226, -0.833740,
		0.396286, -0.915308, 0.071895,
		-0.782773, -0.295903, 0.547457,
		35.421906, 31.912439, 56.186680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736996, 31.479986, 55.656391>,  <35.969849, 32.119572, 55.803459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.736996, 31.479986, 55.656391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.455009, 31.741016, 55.767509>,  <35.285816, 31.897635, 55.834179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.455009, 31.741016, 55.767509>,  <35.736996, 31.479986, 55.656391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.455009, 31.741016, 55.767509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356940, 0.012021, -0.934050,
		-0.612876, -0.757630, 0.224456,
		-0.704966, 0.652574, 0.277796,
		35.243519, 31.936789, 55.850849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032501, 31.232077, 55.578991>,  <35.736996, 31.479986, 55.656391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032501, 31.232077, 55.578991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.042953, 31.631420, 55.558617>,  <35.049225, 31.871027, 55.546391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.042953, 31.631420, 55.558617>,  <35.032501, 31.232077, 55.578991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.042953, 31.631420, 55.558617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285060, -0.041395, -0.957615,
		-0.958153, 0.039544, 0.283511,
		0.026132, 0.998360, -0.050935,
		35.050793, 31.930927, 55.543335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.352997, 31.529161, 55.544754>,  <35.032501, 31.232077, 55.578991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.352997, 31.529161, 55.544754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666084, 31.703190, 55.366737>,  <34.853935, 31.807608, 55.259926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666084, 31.703190, 55.366737>,  <34.352997, 31.529161, 55.544754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666084, 31.703190, 55.366737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299573, -0.363418, -0.882147,
		-0.545535, 0.823796, -0.154118,
		0.782718, 0.435072, -0.445044,
		34.900898, 31.833712, 55.233223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100811, 31.935020, 54.948723>,  <34.352997, 31.529161, 55.544754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.100811, 31.935020, 54.948723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.482014, 31.838604, 54.875317>,  <34.710735, 31.780754, 54.831272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.482014, 31.838604, 54.875317>,  <34.100811, 31.935020, 54.948723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482014, 31.838604, 54.875317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264853, -0.368797, -0.890978,
		0.147082, 0.897712, -0.415306,
		0.953006, -0.241042, -0.183518,
		34.767914, 31.766291, 54.820263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251659, 32.173367, 54.316872>,  <34.100811, 31.935020, 54.948723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.251659, 32.173367, 54.316872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553673, 31.915098, 54.362534>,  <34.734882, 31.760138, 54.389931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553673, 31.915098, 54.362534>,  <34.251659, 32.173367, 54.316872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553673, 31.915098, 54.362534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092095, -0.276807, -0.956502,
		0.649185, 0.711679, -0.268462,
		0.755035, -0.645671, 0.114157,
		34.780182, 31.721397, 54.396782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783279, 32.265442, 53.754543>,  <34.251659, 32.173367, 54.316872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783279, 32.265442, 53.754543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789330, 31.889381, 53.890709>,  <34.792961, 31.663744, 53.972408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789330, 31.889381, 53.890709>,  <34.783279, 32.265442, 53.754543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789330, 31.889381, 53.890709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110033, -0.336821, -0.935117,
		0.993813, 0.051602, 0.098352,
		0.015127, -0.940154, 0.340415,
		34.793869, 31.607336, 53.992832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464729, 31.971205, 53.618176>,  <34.783279, 32.265442, 53.754543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464729, 31.971205, 53.618176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.194271, 31.676649, 53.627613>,  <35.031994, 31.499916, 53.633274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.194271, 31.676649, 53.627613>,  <35.464729, 31.971205, 53.618176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194271, 31.676649, 53.627613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182253, -0.198197, -0.963069,
		0.713869, -0.646877, 0.268219,
		-0.676147, -0.736389, 0.023591,
		34.991428, 31.455732, 53.634689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753929, 31.561548, 53.253258>,  <35.464729, 31.971205, 53.618176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753929, 31.561548, 53.253258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.391460, 31.392887, 53.266258>,  <35.173977, 31.291691, 53.274059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.391460, 31.392887, 53.266258>,  <35.753929, 31.561548, 53.253258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391460, 31.392887, 53.266258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095481, -0.278863, -0.955572,
		0.411982, -0.862813, 0.292959,
		-0.906176, -0.421651, 0.032504,
		35.119606, 31.266392, 53.276009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861870, 30.922537, 52.872219>,  <35.753929, 31.561548, 53.253258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861870, 30.922537, 52.872219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.464180, 30.962358, 52.888275>,  <35.225567, 30.986252, 52.897911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.464180, 30.962358, 52.888275>,  <35.861870, 30.922537, 52.872219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464180, 30.962358, 52.888275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062645, -0.234450, -0.970108,
		-0.087168, -0.967017, 0.239332,
		-0.994222, 0.099555, 0.040142,
		35.165913, 30.992226, 52.900318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698231, 30.352524, 52.530628>,  <35.861870, 30.922537, 52.872219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698231, 30.352524, 52.530628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388359, 30.605459, 52.532345>,  <35.202435, 30.757221, 52.533375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388359, 30.605459, 52.532345>,  <35.698231, 30.352524, 52.530628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388359, 30.605459, 52.532345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000458, 0.007350, -0.999973,
		-0.632355, -0.774655, -0.005983,
		-0.774678, 0.632341, 0.004293,
		35.155956, 30.795162, 52.533634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.320370, 30.103081, 52.007217>,  <35.698231, 30.352524, 52.530628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.320370, 30.103081, 52.007217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185173, 30.477180, 52.049301>,  <35.104053, 30.701641, 52.074551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185173, 30.477180, 52.049301>,  <35.320370, 30.103081, 52.007217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185173, 30.477180, 52.049301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301279, -0.001615, -0.953535,
		-0.891624, -0.353982, 0.282317,
		-0.337990, 0.935251, 0.105207,
		35.083775, 30.757755, 52.080864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.615982, 30.068668, 51.725964>,  <35.320370, 30.103081, 52.007217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.615982, 30.068668, 51.725964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.737888, 30.449318, 51.741631>,  <34.811031, 30.677708, 51.751030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.737888, 30.449318, 51.741631>,  <34.615982, 30.068668, 51.725964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.737888, 30.449318, 51.741631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183222, 0.098934, -0.978081,
		-0.934639, 0.290906, 0.204509,
		0.304763, 0.951623, 0.039167,
		34.829319, 30.734804, 51.753380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.112312, 30.460773, 51.334232>,  <34.615982, 30.068668, 51.725964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.112312, 30.460773, 51.334232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430454, 30.702408, 51.314270>,  <34.621338, 30.847389, 51.302292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430454, 30.702408, 51.314270>,  <34.112312, 30.460773, 51.334232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.430454, 30.702408, 51.314270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171486, 0.145286, -0.974415,
		-0.581382, 0.783563, 0.219146,
		0.795354, 0.604087, -0.049903,
		34.669060, 30.883635, 51.299297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916996, 30.996914, 50.952534>,  <34.112312, 30.460773, 51.334232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916996, 30.996914, 50.952534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.312386, 31.055943, 50.939014>,  <34.549618, 31.091360, 50.930901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.312386, 31.055943, 50.939014>,  <33.916996, 30.996914, 50.952534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.312386, 31.055943, 50.939014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057580, 0.159980, -0.985439,
		-0.140016, 0.976027, 0.166633,
		0.988474, 0.147572, -0.033800,
		34.608929, 31.100214, 50.928875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955853, 31.556934, 50.555550>,  <33.916996, 30.996914, 50.952534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955853, 31.556934, 50.555550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323711, 31.400328, 50.567974>,  <34.544426, 31.306364, 50.575428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323711, 31.400328, 50.567974>,  <33.955853, 31.556934, 50.555550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323711, 31.400328, 50.567974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133948, 0.238325, -0.961904,
		0.369198, 0.888772, 0.271617,
		0.919647, -0.391516, 0.031060,
		34.599606, 31.282873, 50.577293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514946, 32.004738, 50.465183>,  <33.955853, 31.556934, 50.555550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514946, 32.004738, 50.465183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.655781, 31.656990, 50.326485>,  <34.740280, 31.448341, 50.243267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.655781, 31.656990, 50.326485>,  <34.514946, 32.004738, 50.465183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655781, 31.656990, 50.326485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184887, 0.427765, -0.884779,
		0.917525, 0.247410, 0.311346,
		0.352086, -0.869371, -0.346742,
		34.761406, 31.396179, 50.222462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045002, 32.225079, 50.076389>,  <34.514946, 32.004738, 50.465183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.045002, 32.225079, 50.076389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.972973, 31.850266, 49.956699>,  <34.929756, 31.625376, 49.884884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.972973, 31.850266, 49.956699>,  <35.045002, 32.225079, 50.076389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.972973, 31.850266, 49.956699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131510, 0.278532, -0.951380,
		0.974822, -0.210671, 0.073073,
		-0.180075, -0.937037, -0.299224,
		34.918949, 31.569155, 49.866932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399765, 32.130852, 49.451122>,  <35.045002, 32.225079, 50.076389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399765, 32.130852, 49.451122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.170544, 31.803522, 49.433464>,  <35.033009, 31.607124, 49.422871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.170544, 31.803522, 49.433464>,  <35.399765, 32.130852, 49.451122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170544, 31.803522, 49.433464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005727, 0.049865, -0.998739,
		0.819495, -0.572588, -0.023889,
		-0.573057, -0.818325, -0.044143,
		34.998627, 31.558025, 49.420219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737755, 31.659885, 49.057236>,  <35.399765, 32.130852, 49.451122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.737755, 31.659885, 49.057236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.342773, 31.597273, 49.048870>,  <35.105785, 31.559706, 49.043850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.342773, 31.597273, 49.048870>,  <35.737755, 31.659885, 49.057236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.342773, 31.597273, 49.048870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012991, 0.212486, -0.977078,
		0.157384, -0.964546, -0.211853,
		-0.987452, -0.156529, -0.020911,
		35.046539, 31.550314, 49.042595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618477, 31.381357, 48.476650>,  <35.737755, 31.659885, 49.057236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.618477, 31.381357, 48.476650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.242359, 31.494440, 48.552460>,  <35.016689, 31.562290, 48.597946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.242359, 31.494440, 48.552460>,  <35.618477, 31.381357, 48.476650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.242359, 31.494440, 48.552460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194841, 0.009473, -0.980789,
		-0.279070, -0.959160, 0.046175,
		-0.940296, 0.282706, 0.189528,
		34.960270, 31.579252, 48.609318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199463, 30.953684, 48.084545>,  <35.618477, 31.381357, 48.476650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199463, 30.953684, 48.084545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.989254, 31.285389, 48.160595>,  <34.863129, 31.484411, 48.206226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.989254, 31.285389, 48.160595>,  <35.199463, 30.953684, 48.084545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989254, 31.285389, 48.160595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380177, -0.028978, -0.924459,
		-0.761111, -0.558106, 0.330496,
		-0.525524, 0.829263, 0.190124,
		34.831596, 31.534168, 48.217632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561153, 30.849352, 47.770725>,  <35.199463, 30.953684, 48.084545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.561153, 30.849352, 47.770725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543621, 31.243830, 47.834591>,  <34.533100, 31.480516, 47.872910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543621, 31.243830, 47.834591>,  <34.561153, 30.849352, 47.770725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543621, 31.243830, 47.834591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527052, 0.112944, -0.842294,
		-0.848702, -0.121075, 0.514826,
		-0.043834, 0.986197, 0.159669,
		34.530472, 31.539688, 47.882492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921429, 31.014391, 47.552162>,  <34.561153, 30.849352, 47.770725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921429, 31.014391, 47.552162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.105453, 31.369318, 47.539467>,  <34.215870, 31.582275, 47.531849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.105453, 31.369318, 47.539467>,  <33.921429, 31.014391, 47.552162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105453, 31.369318, 47.539467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324869, 0.134959, -0.936080,
		-0.826319, 0.440965, 0.350352,
		0.460062, 0.887320, -0.031737,
		34.243473, 31.635513, 47.529945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.427540, 31.442612, 47.289406>,  <33.921429, 31.014391, 47.552162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.427540, 31.442612, 47.289406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786335, 31.610867, 47.235035>,  <34.001614, 31.711819, 47.202412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786335, 31.610867, 47.235035>,  <33.427540, 31.442612, 47.289406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786335, 31.610867, 47.235035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274156, 0.288134, -0.917506,
		-0.346772, 0.860258, 0.373773,
		0.896988, 0.420637, -0.135928,
		34.055431, 31.737059, 47.194256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227417, 32.048111, 46.892048>,  <33.427540, 31.442612, 47.289406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.227417, 32.048111, 46.892048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.614941, 32.003063, 46.803757>,  <33.847454, 31.976034, 46.750782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.614941, 32.003063, 46.803757>,  <33.227417, 32.048111, 46.892048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.614941, 32.003063, 46.803757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161897, 0.386662, -0.907900,
		0.187596, 0.915319, 0.356370,
		0.968812, -0.112623, -0.220724,
		33.905582, 31.969276, 46.737541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.511078, 32.653614, 46.644516>,  <33.227417, 32.048111, 46.892048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.511078, 32.653614, 46.644516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762932, 32.382519, 46.492599>,  <33.914043, 32.219864, 46.401451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762932, 32.382519, 46.492599>,  <33.511078, 32.653614, 46.644516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762932, 32.382519, 46.492599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211262, 0.321069, -0.923192,
		0.747616, 0.661507, 0.058976,
		0.629634, -0.677733, -0.379788,
		33.951820, 32.179199, 46.378662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893646, 32.992180, 46.162067>,  <33.511078, 32.653614, 46.644516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893646, 32.992180, 46.162067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.941906, 32.608944, 46.058132>,  <33.970863, 32.379002, 45.995773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.941906, 32.608944, 46.058132>,  <33.893646, 32.992180, 46.162067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.941906, 32.608944, 46.058132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278178, 0.218630, -0.935317,
		0.952922, 0.185129, -0.240140,
		0.120653, -0.958086, -0.259836,
		33.978104, 32.321518, 45.980183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253292, 32.983665, 45.581451>,  <33.893646, 32.992180, 46.162067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253292, 32.983665, 45.581451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.153843, 32.599293, 45.532784>,  <34.094173, 32.368671, 45.503582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.153843, 32.599293, 45.532784>,  <34.253292, 32.983665, 45.581451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153843, 32.599293, 45.532784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265218, 0.188350, -0.945613,
		0.931583, -0.202830, -0.301684,
		-0.248621, -0.960929, -0.121670,
		34.079258, 32.311012, 45.496281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.564873, 32.706898, 44.919399>,  <34.253292, 32.983665, 45.581451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.564873, 32.706898, 44.919399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259583, 32.464363, 45.008705>,  <34.076408, 32.318844, 45.062290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259583, 32.464363, 45.008705>,  <34.564873, 32.706898, 44.919399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259583, 32.464363, 45.008705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320430, 0.055128, -0.945667,
		0.561080, -0.793298, -0.236362,
		-0.763226, -0.606332, 0.223265,
		34.030613, 32.282463, 45.075684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.637558, 32.134312, 44.563984>,  <34.564873, 32.706898, 44.919399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.637558, 32.134312, 44.563984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.247227, 32.118462, 44.649956>,  <34.013027, 32.108952, 44.701538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.247227, 32.118462, 44.649956>,  <34.637558, 32.134312, 44.563984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.247227, 32.118462, 44.649956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206542, -0.154303, -0.966194,
		0.071450, -0.987229, 0.142388,
		-0.975826, -0.039625, 0.214929,
		33.954479, 32.106575, 44.714436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356709, 31.582106, 44.135517>,  <34.637558, 32.134312, 44.563984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356709, 31.582106, 44.135517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034050, 31.789793, 44.248463>,  <33.840454, 31.914406, 44.316231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034050, 31.789793, 44.248463>,  <34.356709, 31.582106, 44.135517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034050, 31.789793, 44.248463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382319, -0.094054, -0.919231,
		-0.450724, -0.849451, 0.274376,
		-0.806648, 0.519218, 0.282368,
		33.792057, 31.945559, 44.333172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.853245, 31.272942, 43.847061>,  <34.356709, 31.582106, 44.135517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.853245, 31.272942, 43.847061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.712955, 31.639585, 43.923813>,  <33.628780, 31.859571, 43.969864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.712955, 31.639585, 43.923813>,  <33.853245, 31.272942, 43.847061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.712955, 31.639585, 43.923813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261467, 0.100903, -0.959924,
		-0.899236, -0.386842, 0.204273,
		-0.350727, 0.916609, 0.191882,
		33.607738, 31.914568, 43.981377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139954, 31.311356, 43.522861>,  <33.853245, 31.272942, 43.847061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139954, 31.311356, 43.522861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.290016, 31.681490, 43.544792>,  <33.380054, 31.903570, 43.557949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.290016, 31.681490, 43.544792>,  <33.139954, 31.311356, 43.522861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.290016, 31.681490, 43.544792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326723, 0.187350, -0.926365,
		-0.867471, 0.329623, 0.372615,
		0.375161, 0.925337, 0.054825,
		33.402565, 31.959091, 43.561241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.792820, 31.743387, 43.052498>,  <33.139954, 31.311356, 43.522861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.792820, 31.743387, 43.052498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.101204, 31.988243, 43.122814>,  <33.286236, 32.135159, 43.165005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.101204, 31.988243, 43.122814>,  <32.792820, 31.743387, 43.052498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.101204, 31.988243, 43.122814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101020, 0.390062, -0.915230,
		-0.628820, 0.687849, 0.362561,
		0.770961, 0.612141, 0.175792,
		33.332493, 32.171886, 43.175552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.641701, 32.348602, 42.810390>,  <32.792820, 31.743387, 43.052498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.641701, 32.348602, 42.810390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.041256, 32.362968, 42.822582>,  <33.280991, 32.371590, 42.829895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.041256, 32.362968, 42.822582>,  <32.641701, 32.348602, 42.810390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.041256, 32.362968, 42.822582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016171, 0.346156, -0.938038,
		-0.044241, 0.937489, 0.345191,
		0.998890, 0.035918, 0.030475,
		33.340923, 32.373745, 42.831726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.778896, 32.991852, 42.455685>,  <32.641701, 32.348602, 42.810390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.778896, 32.991852, 42.455685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.144951, 32.830906, 42.465782>,  <33.364582, 32.734341, 42.471840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.144951, 32.830906, 42.465782>,  <32.778896, 32.991852, 42.455685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144951, 32.830906, 42.465782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264129, 0.551083, -0.791545,
		0.304577, 0.731036, 0.610589,
		0.915133, -0.402360, 0.025241,
		33.419491, 32.710197, 42.473354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250492, 33.536606, 42.227215>,  <32.778896, 32.991852, 42.455685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.250492, 33.536606, 42.227215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.438877, 33.188122, 42.171806>,  <33.551907, 32.979031, 42.138561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.438877, 33.188122, 42.171806>,  <33.250492, 33.536606, 42.227215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.438877, 33.188122, 42.171806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353562, 0.330282, -0.875162,
		0.808201, 0.363190, 0.463577,
		0.470961, -0.871210, -0.138524,
		33.580166, 32.926758, 42.130249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771351, 33.720833, 41.949635>,  <33.250492, 33.536606, 42.227215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771351, 33.720833, 41.949635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.754063, 33.339809, 41.829121>,  <33.743690, 33.111195, 41.756813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.754063, 33.339809, 41.829121>,  <33.771351, 33.720833, 41.949635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.754063, 33.339809, 41.829121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375467, 0.263969, -0.888451,
		0.925828, -0.151523, 0.346243,
		-0.043223, -0.952555, -0.301282,
		33.741096, 33.054043, 41.738735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.420101, 33.567261, 41.637978>,  <33.771351, 33.720833, 41.949635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.420101, 33.567261, 41.637978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160629, 33.297604, 41.496704>,  <34.004944, 33.135811, 41.411938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160629, 33.297604, 41.496704>,  <34.420101, 33.567261, 41.637978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.160629, 33.297604, 41.496704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126034, 0.362511, -0.923418,
		0.750550, -0.643520, -0.150190,
		-0.648684, -0.674142, -0.353188,
		33.966022, 33.095360, 41.390747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811657, 33.244755, 41.066032>,  <34.420101, 33.567261, 41.637978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811657, 33.244755, 41.066032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.411816, 33.255726, 41.063450>,  <34.171909, 33.262306, 41.061901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.411816, 33.255726, 41.063450>,  <34.811657, 33.244755, 41.066032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411816, 33.255726, 41.063450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011060, 0.171109, -0.985190,
		-0.025914, -0.984871, -0.171344,
		-0.999603, 0.027426, -0.006459,
		34.111935, 33.263954, 41.061512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296371, 32.902504, 40.503975>,  <34.811657, 33.244755, 41.066032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.296371, 32.902504, 40.503975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.672577, 32.817833, 40.397678>,  <35.898300, 32.767029, 40.333900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.672577, 32.817833, 40.397678>,  <35.296371, 32.902504, 40.503975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.672577, 32.817833, 40.397678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261539, -0.048147, 0.963991,
		-0.216855, -0.976152, 0.010080,
		0.940517, -0.211683, -0.265742,
		35.954731, 32.754330, 40.317955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.554611, 32.381088, 40.946743>,  <35.296371, 32.902504, 40.503975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.554611, 32.381088, 40.946743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848442, 32.606434, 40.795471>,  <36.024742, 32.741642, 40.704708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848442, 32.606434, 40.795471>,  <35.554611, 32.381088, 40.946743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848442, 32.606434, 40.795471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539516, -0.146940, 0.829055,
		0.411487, -0.813039, -0.411881,
		0.734576, 0.563361, -0.378183,
		36.068813, 32.775444, 40.682014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128757, 32.023735, 41.072105>,  <35.554611, 32.381088, 40.946743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128757, 32.023735, 41.072105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.265030, 32.394321, 41.008106>,  <36.346794, 32.616673, 40.969707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.265030, 32.394321, 41.008106>,  <36.128757, 32.023735, 41.072105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.265030, 32.394321, 41.008106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576573, -0.071462, 0.813914,
		0.742629, -0.369537, -0.558520,
		0.340684, 0.926464, -0.159996,
		36.367237, 32.672260, 40.960106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.798988, 32.067131, 40.857677>,  <36.128757, 32.023735, 41.072105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.798988, 32.067131, 40.857677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.734615, 32.415745, 41.042946>,  <36.695992, 32.624912, 41.154106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.734615, 32.415745, 41.042946>,  <36.798988, 32.067131, 40.857677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.734615, 32.415745, 41.042946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564808, -0.303521, 0.767377,
		0.809377, 0.385100, -0.443402,
		-0.160935, 0.871535, 0.463171,
		36.686337, 32.677204, 41.181896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435925, 32.196457, 41.140579>,  <36.798988, 32.067131, 40.857677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435925, 32.196457, 41.140579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.176212, 32.413673, 41.353569>,  <37.020386, 32.544006, 41.481361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.176212, 32.413673, 41.353569>,  <37.435925, 32.196457, 41.140579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176212, 32.413673, 41.353569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435528, -0.308476, 0.845670,
		0.623493, 0.780989, -0.036223,
		-0.649285, 0.543046, 0.532475,
		36.981426, 32.576588, 41.513313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817192, 32.592422, 41.545471>,  <37.435925, 32.196457, 41.140579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817192, 32.592422, 41.545471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.464382, 32.599937, 41.733803>,  <37.252697, 32.604446, 41.846802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.464382, 32.599937, 41.733803>,  <37.817192, 32.592422, 41.545471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464382, 32.599937, 41.733803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457373, -0.206200, 0.865039,
		0.113338, 0.978329, 0.173279,
		-0.882023, 0.018789, 0.470832,
		37.199776, 32.605576, 41.875053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965427, 32.649281, 42.246368>,  <37.817192, 32.592422, 41.545471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965427, 32.649281, 42.246368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.577114, 32.561733, 42.285736>,  <37.344128, 32.509205, 42.309357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.577114, 32.561733, 42.285736>,  <37.965427, 32.649281, 42.246368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.577114, 32.561733, 42.285736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156311, -0.265516, 0.951351,
		-0.182086, 0.938935, 0.291969,
		-0.970779, -0.218866, 0.098419,
		37.285881, 32.496075, 42.315262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072002, 32.734909, 42.887657>,  <37.965427, 32.649281, 42.246368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072002, 32.734909, 42.887657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.707649, 32.575493, 42.844841>,  <37.489037, 32.479843, 42.819153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.707649, 32.575493, 42.844841>,  <38.072002, 32.734909, 42.887657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.707649, 32.575493, 42.844841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076579, -0.418129, 0.905154,
		-0.405492, 0.816295, 0.411387,
		-0.910885, -0.398536, -0.107037,
		37.434383, 32.455933, 42.812729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670181, 32.960304, 43.504070>,  <38.072002, 32.734909, 42.887657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.670181, 32.960304, 43.504070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.520840, 32.628456, 43.338013>,  <37.431236, 32.429348, 43.238377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.520840, 32.628456, 43.338013>,  <37.670181, 32.960304, 43.504070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.520840, 32.628456, 43.338013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028839, -0.436907, 0.899044,
		-0.927242, 0.347632, 0.139194,
		-0.373351, -0.829617, -0.415144,
		37.408833, 32.379570, 43.213470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271454, 32.787445, 43.996578>,  <37.670181, 32.960304, 43.504070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.271454, 32.787445, 43.996578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.291180, 32.453625, 43.777088>,  <37.303017, 32.253334, 43.645393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.291180, 32.453625, 43.777088>,  <37.271454, 32.787445, 43.996578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.291180, 32.453625, 43.777088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047105, -0.546837, 0.835913,
		-0.997672, -0.067072, 0.012343,
		0.049317, -0.834548, -0.548723,
		37.305973, 32.203259, 43.612473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842972, 32.286125, 44.290531>,  <37.271454, 32.787445, 43.996578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842972, 32.286125, 44.290531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.097813, 32.058681, 44.082382>,  <37.250717, 31.922215, 43.957493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.097813, 32.058681, 44.082382>,  <36.842972, 32.286125, 44.290531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.097813, 32.058681, 44.082382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164704, -0.559094, 0.812580,
		-0.752978, -0.603402, -0.262546,
		0.637100, -0.568613, -0.520369,
		37.288944, 31.888098, 43.926273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595795, 31.615540, 44.379505>,  <36.842972, 32.286125, 44.290531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.595795, 31.615540, 44.379505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.987045, 31.614721, 44.296310>,  <37.221798, 31.614231, 44.246395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.987045, 31.614721, 44.296310>,  <36.595795, 31.615540, 44.379505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987045, 31.614721, 44.296310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172898, -0.547858, 0.818509,
		-0.115618, -0.836569, -0.535524,
		0.978130, -0.002043, -0.207984,
		37.280483, 31.614109, 44.233913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804321, 30.934641, 44.505943>,  <36.595795, 31.615540, 44.379505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804321, 30.934641, 44.505943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.154869, 31.126034, 44.483910>,  <37.365196, 31.240870, 44.470692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.154869, 31.126034, 44.483910>,  <36.804321, 30.934641, 44.505943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.154869, 31.126034, 44.483910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257949, -0.369696, 0.892629,
		0.406744, -0.796480, -0.447414,
		0.876369, 0.478481, -0.055080,
		37.417778, 31.269579, 44.467384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237255, 30.427298, 44.744129>,  <36.804321, 30.934641, 44.505943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237255, 30.427298, 44.744129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.404339, 30.784443, 44.811432>,  <37.504589, 30.998730, 44.851814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.404339, 30.784443, 44.811432>,  <37.237255, 30.427298, 44.744129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.404339, 30.784443, 44.811432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357865, -0.331900, 0.872797,
		0.835134, -0.304364, -0.458163,
		0.417712, 0.892864, 0.168260,
		37.529652, 31.052301, 44.861908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885151, 30.285784, 45.081284>,  <37.237255, 30.427298, 44.744129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885151, 30.285784, 45.081284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.721638, 30.638418, 45.175686>,  <37.623528, 30.849998, 45.232327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.721638, 30.638418, 45.175686>,  <37.885151, 30.285784, 45.081284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721638, 30.638418, 45.175686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135438, -0.197132, 0.970977,
		0.902524, 0.428886, -0.038815,
		-0.408787, 0.881587, 0.236004,
		37.599003, 30.902895, 45.246487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257996, 30.407305, 45.568176>,  <37.885151, 30.285784, 45.081284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.257996, 30.407305, 45.568176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966396, 30.677645, 45.611610>,  <37.791439, 30.839849, 45.637669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966396, 30.677645, 45.611610>,  <38.257996, 30.407305, 45.568176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966396, 30.677645, 45.611610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174778, 0.030410, 0.984138,
		0.661829, 0.736410, -0.140293,
		-0.728995, 0.675852, 0.108581,
		37.747696, 30.880400, 45.644184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547504, 30.839531, 45.994568>,  <38.257996, 30.407305, 45.568176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.547504, 30.839531, 45.994568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.159653, 30.925735, 46.040813>,  <37.926941, 30.977459, 46.068562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.159653, 30.925735, 46.040813>,  <38.547504, 30.839531, 45.994568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159653, 30.925735, 46.040813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110257, -0.036742, 0.993224,
		0.218299, 0.975810, 0.011864,
		-0.969633, 0.215511, 0.115610,
		37.868763, 30.990389, 46.075497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462547, 31.397141, 46.532333>,  <38.547504, 30.839531, 45.994568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.462547, 31.397141, 46.532333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.104542, 31.220568, 46.506779>,  <37.889736, 31.114624, 46.491444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.104542, 31.220568, 46.506779>,  <38.462547, 31.397141, 46.532333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.104542, 31.220568, 46.506779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044594, -0.053961, 0.997547,
		-0.443794, 0.895672, 0.028611,
		-0.895019, -0.441430, -0.063889,
		37.836037, 31.088139, 46.487614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.038342, 31.618423, 47.082840>,  <38.462547, 31.397141, 46.532333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.038342, 31.618423, 47.082840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.826962, 31.295235, 46.978592>,  <37.700134, 31.101322, 46.916042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.826962, 31.295235, 46.978592>,  <38.038342, 31.618423, 47.082840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.826962, 31.295235, 46.978592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250843, -0.144680, 0.957155,
		-0.811060, 0.571183, -0.126218,
		-0.528450, -0.807971, -0.260621,
		37.668427, 31.052843, 46.900406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359337, 31.688852, 47.426109>,  <38.038342, 31.618423, 47.082840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.359337, 31.688852, 47.426109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.387108, 31.299341, 47.339447>,  <37.403770, 31.065636, 47.287449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.387108, 31.299341, 47.339447>,  <37.359337, 31.688852, 47.426109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387108, 31.299341, 47.339447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258114, -0.227320, 0.938990,
		-0.963616, -0.009273, -0.267128,
		0.069431, -0.973776, -0.216656,
		37.407936, 31.007208, 47.274452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897797, 31.368586, 47.811699>,  <37.359337, 31.688852, 47.426109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897797, 31.368586, 47.811699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.095135, 31.035582, 47.710876>,  <37.213539, 30.835779, 47.650383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.095135, 31.035582, 47.710876>,  <36.897797, 31.368586, 47.811699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095135, 31.035582, 47.710876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321818, -0.443909, 0.836288,
		-0.808110, -0.331464, -0.486919,
		0.493347, -0.832512, -0.252056,
		37.243137, 30.785828, 47.635262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441605, 30.849451, 47.908588>,  <36.897797, 31.368586, 47.811699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441605, 30.849451, 47.908588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.813400, 30.702789, 47.924633>,  <37.036480, 30.614792, 47.934261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.813400, 30.702789, 47.924633>,  <36.441605, 30.849451, 47.908588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813400, 30.702789, 47.924633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246907, -0.537723, 0.806158,
		-0.274010, -0.759222, -0.590338,
		0.929492, -0.366655, 0.040116,
		37.092247, 30.592793, 47.936668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403217, 30.137417, 48.225960>,  <36.441605, 30.849451, 47.908588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403217, 30.137417, 48.225960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.784744, 30.227932, 48.304977>,  <37.013660, 30.282240, 48.352386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.784744, 30.227932, 48.304977>,  <36.403217, 30.137417, 48.225960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784744, 30.227932, 48.304977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105526, -0.363291, 0.925680,
		0.281234, -0.903778, -0.322635,
		0.953819, 0.226287, 0.197542,
		37.070889, 30.295818, 48.364239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720306, 29.485483, 48.472137>,  <36.403217, 30.137417, 48.225960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720306, 29.485483, 48.472137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898209, 29.823244, 48.591587>,  <37.004948, 30.025902, 48.663258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898209, 29.823244, 48.591587>,  <36.720306, 29.485483, 48.472137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898209, 29.823244, 48.591587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170215, -0.247653, 0.953779,
		0.879331, -0.475026, 0.033586,
		0.444752, 0.844404, 0.298626,
		37.031635, 30.076565, 48.681175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052818, 29.248604, 48.973537>,  <36.720306, 29.485483, 48.472137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.052818, 29.248604, 48.973537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.083504, 29.640457, 49.047764>,  <37.101913, 29.875568, 49.092300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.083504, 29.640457, 49.047764>,  <37.052818, 29.248604, 48.973537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.083504, 29.640457, 49.047764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009932, -0.186860, 0.982336,
		0.997004, -0.073512, -0.024064,
		0.076710, 0.979632, 0.185569,
		37.106518, 29.934347, 49.103436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632580, 29.376596, 49.406586>,  <37.052818, 29.248604, 48.973537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.632580, 29.376596, 49.406586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.396885, 29.689823, 49.486187>,  <37.255466, 29.877758, 49.533947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.396885, 29.689823, 49.486187>,  <37.632580, 29.376596, 49.406586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396885, 29.689823, 49.486187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105741, -0.169446, 0.979850,
		0.801007, 0.598412, 0.017043,
		-0.589242, 0.783065, 0.199004,
		37.220112, 29.924744, 49.545887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918037, 29.644121, 50.037224>,  <37.632580, 29.376596, 49.406586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918037, 29.644121, 50.037224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.582508, 29.859806, 50.007210>,  <37.381191, 29.989218, 49.989201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.582508, 29.859806, 50.007210>,  <37.918037, 29.644121, 50.037224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582508, 29.859806, 50.007210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003410, 0.143031, 0.989712,
		0.544399, 0.829934, -0.121816,
		-0.838819, 0.539214, -0.075036,
		37.330864, 30.021570, 49.984699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064869, 30.367733, 50.339512>,  <37.918037, 29.644121, 50.037224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.064869, 30.367733, 50.339512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.667259, 30.327885, 50.357330>,  <37.428692, 30.303976, 50.368023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.667259, 30.327885, 50.357330>,  <38.064869, 30.367733, 50.339512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667259, 30.327885, 50.357330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024014, 0.198524, 0.979802,
		-0.106454, 0.975020, -0.194946,
		-0.994028, -0.099622, 0.044548,
		37.369049, 30.297998, 50.370693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.930988, 30.879501, 50.707031>,  <38.064869, 30.367733, 50.339512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.930988, 30.879501, 50.707031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.617096, 30.632847, 50.732189>,  <37.428761, 30.484854, 50.747284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.617096, 30.632847, 50.732189>,  <37.930988, 30.879501, 50.707031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.617096, 30.632847, 50.732189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034742, 0.145076, 0.988810,
		-0.618859, 0.773767, -0.135269,
		-0.784733, -0.616634, 0.062899,
		37.381676, 30.447857, 50.751060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.443253, 31.247837, 51.095978>,  <37.930988, 30.879501, 50.707031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.443253, 31.247837, 51.095978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.339264, 30.864376, 51.142292>,  <37.276871, 30.634300, 51.170078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.339264, 30.864376, 51.142292>,  <37.443253, 31.247837, 51.095978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339264, 30.864376, 51.142292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099623, 0.145893, 0.984272,
		-0.960464, 0.244345, -0.133431,
		-0.259968, -0.958651, 0.115782,
		37.261272, 30.576780, 51.177025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.824715, 31.189301, 51.621887>,  <37.443253, 31.247837, 51.095978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.824715, 31.189301, 51.621887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.996181, 30.827923, 51.624226>,  <37.099060, 30.611095, 51.625629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.996181, 30.827923, 51.624226>,  <36.824715, 31.189301, 51.621887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996181, 30.827923, 51.624226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109050, -0.045315, 0.993003,
		-0.896858, -0.426304, -0.117945,
		0.428666, -0.903445, 0.005848,
		37.124783, 30.556889, 51.625980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.383919, 30.785181, 52.018421>,  <36.824715, 31.189301, 51.621887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.383919, 30.785181, 52.018421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.752090, 30.628876, 52.014008>,  <36.972992, 30.535093, 52.011360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.752090, 30.628876, 52.014008>,  <36.383919, 30.785181, 52.018421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.752090, 30.628876, 52.014008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026164, 0.033428, 0.999099,
		-0.390042, -0.919884, 0.040992,
		0.920425, -0.390763, -0.011029,
		37.028217, 30.511646, 52.010700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399044, 30.442547, 52.660942>,  <36.383919, 30.785181, 52.018421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399044, 30.442547, 52.660942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.784187, 30.480179, 52.559711>,  <37.015274, 30.502758, 52.498974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.784187, 30.480179, 52.559711>,  <36.399044, 30.442547, 52.660942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784187, 30.480179, 52.559711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239379, 0.136125, 0.961336,
		0.124863, -0.986217, 0.108557,
		0.962864, 0.094049, -0.253077,
		37.073044, 30.508404, 52.483788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753143, 30.079998, 53.248421>,  <36.399044, 30.442547, 52.660942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753143, 30.079998, 53.248421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.026161, 30.300495, 53.056480>,  <37.189972, 30.432795, 52.941315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.026161, 30.300495, 53.056480>,  <36.753143, 30.079998, 53.248421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026161, 30.300495, 53.056480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492379, 0.138363, 0.859313,
		0.540086, -0.822791, -0.176982,
		0.682547, 0.551244, -0.479853,
		37.230927, 30.465868, 52.912525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326958, 29.897768, 53.534279>,  <36.753143, 30.079998, 53.248421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326958, 29.897768, 53.534279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.440624, 30.247942, 53.377888>,  <37.508823, 30.458046, 53.284054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.440624, 30.247942, 53.377888>,  <37.326958, 29.897768, 53.534279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.440624, 30.247942, 53.377888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439353, 0.243557, 0.864667,
		0.852186, -0.417483, -0.315416,
		0.284162, 0.875436, -0.390978,
		37.525871, 30.510572, 53.260593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056126, 29.942390, 53.462212>,  <37.326958, 29.897768, 53.534279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.056126, 29.942390, 53.462212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871059, 30.291986, 53.521652>,  <37.760021, 30.501745, 53.557316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871059, 30.291986, 53.521652>,  <38.056126, 29.942390, 53.462212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871059, 30.291986, 53.521652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438678, 0.080034, 0.895073,
		0.770393, 0.479304, -0.420430,
		-0.462661, 0.873992, 0.148602,
		37.732262, 30.554184, 53.566235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458916, 30.464891, 53.667385>,  <38.056126, 29.942390, 53.462212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.458916, 30.464891, 53.667385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.095901, 30.500534, 53.831551>,  <37.878094, 30.521919, 53.930050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.095901, 30.500534, 53.831551>,  <38.458916, 30.464891, 53.667385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.095901, 30.500534, 53.831551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416924, 0.073642, 0.905953,
		0.050503, 0.993296, -0.103983,
		-0.907537, 0.089106, 0.410410,
		37.823639, 30.527266, 53.954674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440250, 31.108797, 54.136200>,  <38.458916, 30.464891, 53.667385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.440250, 31.108797, 54.136200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.174595, 30.836836, 54.260555>,  <38.015202, 30.673658, 54.335171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.174595, 30.836836, 54.260555>,  <38.440250, 31.108797, 54.136200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174595, 30.836836, 54.260555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278616, 0.160798, 0.946846,
		-0.693754, 0.715455, 0.082639,
		-0.664137, -0.679903, 0.310892,
		37.975353, 30.632866, 54.353825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.322498, 31.346386, 54.840931>,  <38.440250, 31.108797, 54.136200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.322498, 31.346386, 54.840931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.109657, 31.008568, 54.816883>,  <37.981953, 30.805878, 54.802452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.109657, 31.008568, 54.816883>,  <38.322498, 31.346386, 54.840931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.109657, 31.008568, 54.816883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093862, -0.011733, 0.995516,
		-0.841463, 0.535358, -0.073027,
		-0.532100, -0.844544, -0.060123,
		37.950027, 30.755205, 54.798847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694126, 31.918251, 55.073360>,  <38.322498, 31.346386, 54.840931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694126, 31.918251, 55.073360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.980286, 32.183266, 55.162128>,  <39.151981, 32.342274, 55.215389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.980286, 32.183266, 55.162128>,  <38.694126, 31.918251, 55.073360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.980286, 32.183266, 55.162128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217957, 0.090163, -0.971784,
		-0.663852, 0.743583, -0.079902,
		0.715399, 0.662536, 0.221925,
		39.194904, 32.382027, 55.228706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638317, 32.480057, 54.581482>,  <38.694126, 31.918251, 55.073360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.638317, 32.480057, 54.581482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.005142, 32.521896, 54.735390>,  <39.225239, 32.547001, 54.827736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.005142, 32.521896, 54.735390>,  <38.638317, 32.480057, 54.581482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005142, 32.521896, 54.735390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323587, 0.368623, -0.871441,
		-0.232984, 0.923676, 0.304206,
		0.917066, 0.104595, 0.384773,
		39.280262, 32.553276, 54.850822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867584, 33.128372, 54.374104>,  <38.638317, 32.480057, 54.581482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867584, 33.128372, 54.374104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.198750, 32.921082, 54.459900>,  <39.397449, 32.796707, 54.511379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.198750, 32.921082, 54.459900>,  <38.867584, 33.128372, 54.374104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.198750, 32.921082, 54.459900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412269, 0.303021, -0.859193,
		0.380260, 0.799763, 0.464522,
		0.827911, -0.518225, 0.214491,
		39.447124, 32.765614, 54.524246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.267227, 33.540520, 54.091293>,  <38.867584, 33.128372, 54.374104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.267227, 33.540520, 54.091293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.464771, 33.195477, 54.135139>,  <39.583298, 32.988453, 54.161446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.464771, 33.195477, 54.135139>,  <39.267227, 33.540520, 54.091293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.464771, 33.195477, 54.135139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253462, 0.022222, -0.967090,
		0.831781, 0.505391, 0.229612,
		0.493860, -0.862605, 0.109614,
		39.612930, 32.936695, 54.168022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.782406, 33.665230, 53.732567>,  <39.267227, 33.540520, 54.091293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.782406, 33.665230, 53.732567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.748688, 33.267223, 53.753880>,  <39.728458, 33.028419, 53.766666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.748688, 33.267223, 53.753880>,  <39.782406, 33.665230, 53.732567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.748688, 33.267223, 53.753880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119848, -0.063212, -0.990778,
		0.989207, -0.077129, 0.124579,
		-0.084292, -0.995015, 0.053286,
		39.723400, 32.968719, 53.769867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.386799, 33.331844, 53.402599>,  <39.782406, 33.665230, 53.732567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.386799, 33.331844, 53.402599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.114285, 33.039070, 53.398243>,  <39.950775, 32.863403, 53.395630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.114285, 33.039070, 53.398243>,  <40.386799, 33.331844, 53.402599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.114285, 33.039070, 53.398243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172621, -0.146183, -0.974081,
		0.711374, -0.665506, 0.225940,
		-0.681285, -0.731937, -0.010890,
		39.909901, 32.819489, 53.394978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.702118, 32.939800, 52.941029>,  <40.386799, 33.331844, 53.402599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.702118, 32.939800, 52.941029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.326469, 32.804607, 52.965752>,  <40.101082, 32.723492, 52.980587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.326469, 32.804607, 52.965752>,  <40.702118, 32.939800, 52.941029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.326469, 32.804607, 52.965752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044052, -0.059972, -0.997227,
		0.340754, -0.939239, 0.041432,
		-0.939119, -0.337985, 0.061811,
		40.044735, 32.703213, 52.984295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.716053, 32.185226, 52.619617>,  <40.702118, 32.939800, 52.941029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.716053, 32.185226, 52.619617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.367283, 32.378922, 52.590603>,  <40.158020, 32.495140, 52.573193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.367283, 32.378922, 52.590603>,  <40.716053, 32.185226, 52.619617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.367283, 32.378922, 52.590603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044074, -0.225160, -0.973324,
		-0.487656, -0.845466, 0.217665,
		-0.871922, 0.484241, -0.072537,
		40.105705, 32.524193, 52.568840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.373837, 31.823338, 52.056633>,  <40.716053, 32.185226, 52.619617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.373837, 31.823338, 52.056633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.130180, 32.139179, 52.086212>,  <39.983986, 32.328686, 52.103958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.130180, 32.139179, 52.086212>,  <40.373837, 31.823338, 52.056633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.130180, 32.139179, 52.086212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256923, -0.108266, -0.960348,
		-0.750289, -0.603990, 0.268817,
		-0.609145, 0.789604, 0.073948,
		39.947437, 32.376060, 52.108395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655254, 31.591131, 51.853531>,  <40.373837, 31.823338, 52.056633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655254, 31.591131, 51.853531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.681396, 31.989059, 51.822384>,  <39.697083, 32.227818, 51.803696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.681396, 31.989059, 51.822384>,  <39.655254, 31.591131, 51.853531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.681396, 31.989059, 51.822384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390882, -0.046276, -0.919277,
		-0.918118, 0.090514, 0.385832,
		0.065353, 0.994820, -0.077867,
		39.701004, 32.287506, 51.799023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.028339, 31.808741, 51.524807>,  <39.655254, 31.591131, 51.853531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.028339, 31.808741, 51.524807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.240673, 32.145107, 51.482708>,  <39.368073, 32.346928, 51.457451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.240673, 32.145107, 51.482708>,  <39.028339, 31.808741, 51.524807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240673, 32.145107, 51.482708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340201, 0.097701, -0.935263,
		-0.776195, 0.532274, 0.337943,
		0.530834, 0.840916, -0.105245,
		39.399921, 32.397381, 51.451134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601681, 32.333996, 51.244690>,  <39.028339, 31.808741, 51.524807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.601681, 32.333996, 51.244690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.981548, 32.415276, 51.149334>,  <39.209469, 32.464043, 51.092121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.981548, 32.415276, 51.149334>,  <38.601681, 32.333996, 51.244690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981548, 32.415276, 51.149334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273990, 0.169995, -0.946589,
		-0.151826, 0.964266, 0.217115,
		0.949673, 0.203204, -0.238389,
		39.266449, 32.476238, 51.077816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528881, 32.885166, 50.858101>,  <38.601681, 32.333996, 51.244690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.528881, 32.885166, 50.858101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.896301, 32.752392, 50.772236>,  <39.116753, 32.672726, 50.720718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.896301, 32.752392, 50.772236>,  <38.528881, 32.885166, 50.858101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896301, 32.752392, 50.772236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084146, 0.366402, -0.926644,
		0.386237, 0.869235, 0.308629,
		0.918553, -0.331934, -0.214661,
		39.171867, 32.652813, 50.707836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691757, 33.372780, 50.420681>,  <38.528881, 32.885166, 50.858101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691757, 33.372780, 50.420681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.983006, 33.099049, 50.404991>,  <39.157757, 32.934811, 50.395576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.983006, 33.099049, 50.404991>,  <38.691757, 33.372780, 50.420681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.983006, 33.099049, 50.404991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228718, 0.296500, -0.927241,
		0.646162, 0.666175, 0.372406,
		0.728123, -0.684324, -0.039221,
		39.201443, 32.893753, 50.393227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222195, 33.747433, 50.160431>,  <38.691757, 33.372780, 50.420681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.222195, 33.747433, 50.160431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.226971, 33.361130, 50.056759>,  <39.229836, 33.129349, 49.994556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.226971, 33.361130, 50.056759>,  <39.222195, 33.747433, 50.160431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.226971, 33.361130, 50.056759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032269, 0.259431, -0.965222,
		0.999408, 0.003161, 0.034261,
		0.011940, -0.965756, -0.259176,
		39.230553, 33.071404, 49.979008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.731297, 33.679016, 49.682297>,  <39.222195, 33.747433, 50.160431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.731297, 33.679016, 49.682297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.510761, 33.352455, 49.613583>,  <39.378441, 33.156517, 49.572353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.510761, 33.352455, 49.613583>,  <39.731297, 33.679016, 49.682297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.510761, 33.352455, 49.613583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020093, 0.192850, -0.981023,
		0.834042, -0.544324, -0.089921,
		-0.551336, -0.816407, -0.171782,
		39.345360, 33.107533, 49.562050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.992851, 33.450386, 48.982067>,  <39.731297, 33.679016, 49.682297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.992851, 33.450386, 48.982067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.658684, 33.242214, 49.052769>,  <39.458183, 33.117313, 49.095188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.658684, 33.242214, 49.052769>,  <39.992851, 33.450386, 48.982067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.658684, 33.242214, 49.052769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165600, -0.068304, -0.983825,
		0.524080, -0.851171, -0.029120,
		-0.835414, -0.520425, 0.176751,
		39.408058, 33.086086, 49.105793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.027267, 32.708984, 48.685230>,  <39.992851, 33.450386, 48.982067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.027267, 32.708984, 48.685230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.649559, 32.837002, 48.716011>,  <39.422935, 32.913815, 48.734482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.649559, 32.837002, 48.716011>,  <40.027267, 32.708984, 48.685230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.649559, 32.837002, 48.716011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117031, -0.107905, -0.987249,
		-0.307664, -0.941236, 0.139347,
		-0.944271, 0.320049, 0.076956,
		39.366280, 32.933018, 48.739098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.704041, 32.265732, 48.221405>,  <40.027267, 32.708984, 48.685230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.704041, 32.265732, 48.221405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.473061, 32.588375, 48.271908>,  <39.334473, 32.781960, 48.302208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.473061, 32.588375, 48.271908>,  <39.704041, 32.265732, 48.221405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.473061, 32.588375, 48.271908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110485, 0.076012, -0.990967,
		-0.808916, -0.586182, 0.045225,
		-0.577449, 0.806606, 0.126252,
		39.299828, 32.830357, 48.309784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276741, 32.245216, 47.753689>,  <39.704041, 32.265732, 48.221405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.276741, 32.245216, 47.753689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.196739, 32.627926, 47.838150>,  <39.148739, 32.857552, 47.888824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.196739, 32.627926, 47.838150>,  <39.276741, 32.245216, 47.753689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.196739, 32.627926, 47.838150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125456, 0.188724, -0.973984,
		-0.971730, -0.221291, 0.082287,
		-0.200004, 0.956773, 0.211151,
		39.136738, 32.914959, 47.901497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649921, 32.319138, 47.429031>,  <39.276741, 32.245216, 47.753689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.649921, 32.319138, 47.429031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.808643, 32.682613, 47.480915>,  <38.903877, 32.900700, 47.512047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.808643, 32.682613, 47.480915>,  <38.649921, 32.319138, 47.429031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.808643, 32.682613, 47.480915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106071, 0.185760, -0.976853,
		-0.911755, 0.373858, 0.170096,
		0.396802, 0.908693, 0.129712,
		38.927685, 32.955223, 47.519829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199024, 32.817154, 47.032845>,  <38.649921, 32.319138, 47.429031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199024, 32.817154, 47.032845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.561008, 32.978382, 47.087360>,  <38.778198, 33.075119, 47.120071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.561008, 32.978382, 47.087360>,  <38.199024, 32.817154, 47.032845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.561008, 32.978382, 47.087360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115715, 0.075108, -0.990439,
		-0.409456, 0.912080, 0.021328,
		0.904962, 0.403074, 0.136294,
		38.832497, 33.099304, 47.128250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.161057, 33.532303, 46.780300>,  <38.199024, 32.817154, 47.032845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.161057, 33.532303, 46.780300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.532372, 33.383808, 46.788860>,  <38.755161, 33.294712, 46.793995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.532372, 33.383808, 46.788860>,  <38.161057, 33.532303, 46.780300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.532372, 33.383808, 46.788860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070616, 0.119489, -0.990321,
		0.365091, 0.920816, 0.137136,
		0.928290, -0.371241, 0.021400,
		38.810860, 33.272434, 46.795280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355476, 33.927120, 46.251244>,  <38.161057, 33.532303, 46.780300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.355476, 33.927120, 46.251244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.668392, 33.682480, 46.298519>,  <38.856140, 33.535694, 46.326885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.668392, 33.682480, 46.298519>,  <38.355476, 33.927120, 46.251244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.668392, 33.682480, 46.298519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235109, 0.114196, -0.965237,
		0.576846, 0.782880, 0.233128,
		0.782287, -0.611603, 0.118189,
		38.903080, 33.499001, 46.333977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861801, 34.088520, 45.807903>,  <38.355476, 33.927120, 46.251244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861801, 34.088520, 45.807903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.969929, 33.712730, 45.892117>,  <39.034805, 33.487259, 45.942642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.969929, 33.712730, 45.892117>,  <38.861801, 34.088520, 45.807903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.969929, 33.712730, 45.892117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342853, -0.110404, -0.932879,
		0.899656, 0.324352, 0.292257,
		0.270315, -0.939471, 0.210531,
		39.051022, 33.430889, 45.955276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496536, 34.043736, 45.596874>,  <38.861801, 34.088520, 45.807903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496536, 34.043736, 45.596874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.385956, 33.660267, 45.623787>,  <39.319607, 33.430187, 45.639935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.385956, 33.660267, 45.623787>,  <39.496536, 34.043736, 45.596874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385956, 33.660267, 45.623787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407662, -0.180376, -0.895140,
		0.870280, -0.220036, 0.440678,
		-0.276451, -0.958670, 0.067277,
		39.303020, 33.372665, 45.643970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.082157, 33.711346, 45.654083>,  <39.496536, 34.043736, 45.596874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.082157, 33.711346, 45.654083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.809578, 33.451611, 45.519035>,  <39.646030, 33.295769, 45.438007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.809578, 33.451611, 45.519035>,  <40.082157, 33.711346, 45.654083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.809578, 33.451611, 45.519035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542440, -0.138440, -0.828609,
		0.491305, -0.747795, 0.446566,
		-0.681453, -0.649336, -0.337618,
		39.605141, 33.256809, 45.417751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.450188, 33.136978, 45.459633>,  <40.082157, 33.711346, 45.654083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.450188, 33.136978, 45.459633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.117111, 33.146439, 45.238342>,  <39.917263, 33.152115, 45.105568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.117111, 33.146439, 45.238342>,  <40.450188, 33.136978, 45.459633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.117111, 33.146439, 45.238342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543970, -0.151832, -0.825254,
		-0.103515, -0.988124, 0.113565,
		-0.832695, 0.023650, -0.553226,
		39.867302, 33.153534, 45.072376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.613556, 32.477829, 45.047436>,  <40.450188, 33.136978, 45.459633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.613556, 32.477829, 45.047436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.322758, 32.678677, 44.860092>,  <40.148277, 32.799183, 44.747684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.322758, 32.678677, 44.860092>,  <40.613556, 32.477829, 45.047436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.322758, 32.678677, 44.860092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429253, -0.200040, -0.880753,
		-0.535931, -0.841346, -0.070107,
		-0.726994, 0.502116, -0.468358,
		40.104660, 32.829311, 44.719585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.403564, 32.084747, 44.394386>,  <40.613556, 32.477829, 45.047436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.403564, 32.084747, 44.394386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.282097, 32.460106, 44.328419>,  <40.209217, 32.685322, 44.288837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.282097, 32.460106, 44.328419>,  <40.403564, 32.084747, 44.394386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.282097, 32.460106, 44.328419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483942, 0.002815, -0.875095,
		-0.820723, -0.345547, -0.454985,
		-0.303667, 0.938397, -0.164914,
		40.190998, 32.741627, 44.278946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.126133, 32.120342, 43.746967>,  <40.403564, 32.084747, 44.394386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.126133, 32.120342, 43.746967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.201904, 32.509716, 43.798412>,  <40.247368, 32.743340, 43.829281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.201904, 32.509716, 43.798412>,  <40.126133, 32.120342, 43.746967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.201904, 32.509716, 43.798412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524578, 0.010395, -0.851299,
		-0.830022, 0.228726, -0.508673,
		0.189426, 0.973435, 0.128613,
		40.258732, 32.801746, 43.836998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.925362, 32.417942, 43.108898>,  <40.126133, 32.120342, 43.746967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.925362, 32.417942, 43.108898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.169292, 32.681763, 43.284672>,  <40.315651, 32.840057, 43.390137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.169292, 32.681763, 43.284672>,  <39.925362, 32.417942, 43.108898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.169292, 32.681763, 43.284672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494699, 0.116401, -0.861234,
		-0.619180, 0.742590, -0.255296,
		0.609827, 0.659554, 0.439432,
		40.352242, 32.879627, 43.416500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.984135, 32.915680, 42.672703>,  <39.925362, 32.417942, 43.108898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.984135, 32.915680, 42.672703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.309689, 32.987698, 42.893673>,  <40.505020, 33.030907, 43.026253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.309689, 32.987698, 42.893673>,  <39.984135, 32.915680, 42.672703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.309689, 32.987698, 42.893673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507354, 0.243134, -0.826727,
		-0.283158, 0.953137, 0.106540,
		0.813888, 0.180041, 0.552424,
		40.553856, 33.041710, 43.059399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198250, 33.497166, 42.372517>,  <39.984135, 32.915680, 42.672703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.198250, 33.497166, 42.372517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.524921, 33.350182, 42.550510>,  <40.720924, 33.261990, 42.657307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.524921, 33.350182, 42.550510>,  <40.198250, 33.497166, 42.372517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.524921, 33.350182, 42.550510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571375, 0.406530, -0.712926,
		0.081073, 0.836483, 0.541962,
		0.816675, -0.367462, 0.444987,
		40.769924, 33.239944, 42.684006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.633102, 33.933773, 42.259972>,  <40.198250, 33.497166, 42.372517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.633102, 33.933773, 42.259972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.871841, 33.639404, 42.387844>,  <41.015083, 33.462784, 42.464569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.871841, 33.639404, 42.387844>,  <40.633102, 33.933773, 42.259972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.871841, 33.639404, 42.387844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685272, 0.260297, -0.680182,
		0.417348, 0.625031, 0.659664,
		0.596843, -0.735922, 0.319682,
		41.050896, 33.418629, 42.483749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.301834, 34.269905, 42.462593>,  <40.633102, 33.933773, 42.259972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.301834, 34.269905, 42.462593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.343525, 33.884899, 42.362431>,  <41.368538, 33.653896, 42.302334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.343525, 33.884899, 42.362431>,  <41.301834, 34.269905, 42.462593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.343525, 33.884899, 42.362431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579617, 0.263381, -0.771151,
		0.808197, -0.064767, 0.585340,
		0.104223, -0.962515, -0.250404,
		41.374790, 33.596146, 42.287308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.969002, 34.278336, 42.226540>,  <41.301834, 34.269905, 42.462593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.969002, 34.278336, 42.226540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.821102, 33.933781, 42.087231>,  <41.732361, 33.727047, 42.003647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.821102, 33.933781, 42.087231>,  <41.969002, 34.278336, 42.226540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.821102, 33.933781, 42.087231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533413, 0.110113, -0.838657,
		0.760759, -0.495867, 0.418762,
		-0.369751, -0.861389, -0.348271,
		41.710178, 33.675365, 41.982750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.629009, 33.841518, 41.878479>,  <41.969002, 34.278336, 42.226540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.629009, 33.841518, 41.878479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.295860, 33.695267, 41.712276>,  <42.095970, 33.607517, 41.612556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.295860, 33.695267, 41.712276>,  <42.629009, 33.841518, 41.878479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.295860, 33.695267, 41.712276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440666, 0.016166, -0.897525,
		0.334879, -0.930620, 0.147657,
		-0.832868, -0.365630, -0.415506,
		42.046001, 33.585579, 41.587624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.874256, 33.341808, 41.418480>,  <42.629009, 33.841518, 41.878479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.874256, 33.341808, 41.418480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.501713, 33.423626, 41.297993>,  <42.278187, 33.472717, 41.225700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.501713, 33.423626, 41.297993>,  <42.874256, 33.341808, 41.418480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.501713, 33.423626, 41.297993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337451, 0.174261, -0.925073,
		-0.136728, -0.963221, -0.231323,
		-0.931361, 0.204543, -0.301214,
		42.222305, 33.484989, 41.207630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.811497, 32.984249, 40.815155>,  <42.874256, 33.341808, 41.418480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.811497, 32.984249, 40.815155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.528637, 33.266785, 40.802353>,  <42.358921, 33.436306, 40.794670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.528637, 33.266785, 40.802353>,  <42.811497, 32.984249, 40.815155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.528637, 33.266785, 40.802353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251385, 0.208851, -0.945086,
		-0.660862, -0.676367, -0.325252,
		-0.707154, 0.706335, -0.032007,
		42.316490, 33.478683, 40.792751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.202919, 32.824352, 40.272285>,  <42.811497, 32.984249, 40.815155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.202919, 32.824352, 40.272285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.328129, 33.196129, 40.350407>,  <42.403255, 33.419197, 40.397282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.328129, 33.196129, 40.350407>,  <42.202919, 32.824352, 40.272285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.328129, 33.196129, 40.350407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124195, 0.163816, -0.978642,
		-0.941589, 0.330598, -0.064153,
		0.313027, 0.929446, 0.195306,
		42.422035, 33.474964, 40.408997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.775757, 33.358135, 39.910419>,  <42.202919, 32.824352, 40.272285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.775757, 33.358135, 39.910419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.162792, 33.431393, 39.979977>,  <42.395012, 33.475346, 40.021713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.162792, 33.431393, 39.979977>,  <41.775757, 33.358135, 39.910419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.162792, 33.431393, 39.979977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131991, 0.220316, -0.966457,
		-0.215313, 0.958081, 0.189000,
		0.967584, 0.183144, 0.173895,
		42.453068, 33.486336, 40.032146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.898144, 33.907673, 39.435658>,  <41.775757, 33.358135, 39.910419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.898144, 33.907673, 39.435658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.241661, 33.730782, 39.539124>,  <42.447773, 33.624645, 39.601204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.241661, 33.730782, 39.539124>,  <41.898144, 33.907673, 39.435658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.241661, 33.730782, 39.539124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295512, 0.015153, -0.955219,
		0.418507, 0.896774, 0.143697,
		0.858793, -0.442230, 0.258666,
		42.499298, 33.598114, 39.616722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.355759, 34.225723, 38.981209>,  <41.898144, 33.907673, 39.435658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.355759, 34.225723, 38.981209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.557995, 33.901909, 39.100555>,  <42.679337, 33.707619, 39.172165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.557995, 33.901909, 39.100555>,  <42.355759, 34.225723, 38.981209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.557995, 33.901909, 39.100555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409083, -0.079550, -0.909023,
		0.759626, 0.581649, 0.290950,
		0.505588, -0.809541, 0.298371,
		42.709671, 33.659046, 39.190067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.016338, 34.366070, 38.861320>,  <42.355759, 34.225723, 38.981209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.016338, 34.366070, 38.861320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.901630, 33.984341, 38.827770>,  <42.832806, 33.755302, 38.807640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.901630, 33.984341, 38.827770>,  <43.016338, 34.366070, 38.861320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.901630, 33.984341, 38.827770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242093, 0.012519, -0.970172,
		0.926907, -0.298517, 0.227444,
		-0.286766, -0.954322, -0.083873,
		42.815601, 33.698044, 38.802608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.068695, 33.957027, 38.217606>,  <43.016338, 34.366070, 38.861320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.068695, 33.957027, 38.217606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.897854, 34.239338, 37.991524>,  <42.795349, 34.408726, 37.855873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.897854, 34.239338, 37.991524>,  <43.068695, 33.957027, 38.217606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.897854, 34.239338, 37.991524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112209, -0.661627, -0.741390,
		-0.897213, -0.253230, 0.361779,
		-0.427104, 0.705779, -0.565206,
		42.769722, 34.451073, 37.821960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.404243, 33.626400, 38.061699>,  <43.068695, 33.957027, 38.217606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.404243, 33.626400, 38.061699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.579422, 33.867737, 37.795113>,  <42.684528, 34.012539, 37.635159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.579422, 33.867737, 37.795113>,  <42.404243, 33.626400, 38.061699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.579422, 33.867737, 37.795113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108967, -0.700252, -0.705531,
		-0.892374, 0.381606, -0.240926,
		0.437943, 0.603345, -0.666469,
		42.710804, 34.048740, 37.595173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.902802, 33.822643, 37.527630>,  <42.404243, 33.626400, 38.061699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.902802, 33.822643, 37.527630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.273857, 33.805729, 37.379204>,  <42.496490, 33.795582, 37.290146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.273857, 33.805729, 37.379204>,  <41.902802, 33.822643, 37.527630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.273857, 33.805729, 37.379204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325457, -0.578867, -0.747657,
		-0.183187, 0.814325, -0.550742,
		0.927642, -0.042282, -0.371069,
		42.552151, 33.793045, 37.267883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.797821, 34.114799, 36.789009>,  <41.902802, 33.822643, 37.527630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.797821, 34.114799, 36.789009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.086681, 33.843449, 36.843136>,  <42.259998, 33.680637, 36.875610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.086681, 33.843449, 36.843136>,  <41.797821, 34.114799, 36.789009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.086681, 33.843449, 36.843136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371290, -0.545175, -0.751617,
		0.583649, 0.492536, -0.645571,
		0.722147, -0.678375, 0.135317,
		42.303326, 33.639935, 36.883732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.004986, 33.928795, 36.047871>,  <41.797821, 34.114799, 36.789009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.004986, 33.928795, 36.047871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.089661, 33.626369, 36.295601>,  <42.140465, 33.444916, 36.444237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.089661, 33.626369, 36.295601>,  <42.004986, 33.928795, 36.047871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.089661, 33.626369, 36.295601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489204, -0.630557, -0.602560,
		0.846089, -0.175420, -0.503349,
		0.211690, -0.756060, 0.619323,
		42.153168, 33.399551, 36.481400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.277962, 33.369991, 35.638695>,  <42.004986, 33.928795, 36.047871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.277962, 33.369991, 35.638695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.175373, 33.195770, 35.983837>,  <42.113819, 33.091236, 36.190922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.175373, 33.195770, 35.983837>,  <42.277962, 33.369991, 35.638695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.175373, 33.195770, 35.983837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454931, -0.733250, -0.505353,
		0.852797, -0.522146, -0.010093,
		-0.256467, -0.435555, 0.862854,
		42.098434, 33.065105, 36.242695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.303043, 32.664467, 35.503899>,  <42.277962, 33.369991, 35.638695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.303043, 32.664467, 35.503899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.055046, 32.682148, 35.817245>,  <41.906250, 32.692757, 36.005253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.055046, 32.682148, 35.817245>,  <42.303043, 32.664467, 35.503899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.055046, 32.682148, 35.817245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668579, -0.552287, -0.497977,
		0.410628, -0.832481, 0.371968,
		-0.619989, 0.044207, 0.783364,
		41.869049, 32.695412, 36.052254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.898655, 32.029850, 35.477310>,  <42.303043, 32.664467, 35.503899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.898655, 32.029850, 35.477310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.664349, 32.243980, 35.720718>,  <41.523766, 32.372459, 35.866764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.664349, 32.243980, 35.720718>,  <41.898655, 32.029850, 35.477310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.664349, 32.243980, 35.720718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796694, -0.518211, -0.311023,
		0.148843, -0.666994, 0.730045,
		-0.585768, 0.535329, 0.608522,
		41.488617, 32.404579, 35.903275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.613892, 31.535826, 35.891144>,  <41.898655, 32.029850, 35.477310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.613892, 31.535826, 35.891144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.383823, 31.862965, 35.898144>,  <41.245785, 32.059250, 35.902344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.383823, 31.862965, 35.898144>,  <41.613892, 31.535826, 35.891144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.383823, 31.862965, 35.898144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787630, -0.547880, -0.281897,
		-0.220959, -0.175924, 0.959285,
		-0.575166, 0.817850, 0.017504,
		41.211273, 32.108318, 35.903397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.028149, 31.227442, 36.060066>,  <41.613892, 31.535826, 35.891144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.028149, 31.227442, 36.060066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.892075, 31.582352, 35.935474>,  <40.810432, 31.795298, 35.860722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.892075, 31.582352, 35.935474>,  <41.028149, 31.227442, 36.060066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.892075, 31.582352, 35.935474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774477, -0.452222, -0.442357,
		-0.533350, 0.090750, 0.841013,
		-0.340181, 0.887277, -0.311477,
		40.790020, 31.848536, 35.842033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371094, 31.282244, 36.339794>,  <41.028149, 31.227442, 36.060066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.371094, 31.282244, 36.339794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.401161, 31.521639, 36.020756>,  <40.419201, 31.665276, 35.829334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.401161, 31.521639, 36.020756>,  <40.371094, 31.282244, 36.339794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.401161, 31.521639, 36.020756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740432, -0.502252, -0.446658,
		-0.667914, 0.624142, 0.405385,
		0.075172, 0.598489, -0.797597,
		40.423714, 31.701185, 35.781475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729099, 31.344948, 36.167683>,  <40.371094, 31.282244, 36.339794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.729099, 31.344948, 36.167683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.893875, 31.482275, 35.830059>,  <39.992741, 31.564672, 35.627483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.893875, 31.482275, 35.830059>,  <39.729099, 31.344948, 36.167683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.893875, 31.482275, 35.830059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607300, -0.587144, -0.535209,
		-0.679333, 0.733071, -0.033370,
		0.411940, 0.343320, -0.844060,
		40.017456, 31.585272, 35.576839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164562, 31.536858, 35.725288>,  <39.729099, 31.344948, 36.167683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.164562, 31.536858, 35.725288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.480881, 31.467506, 35.490482>,  <39.670673, 31.425896, 35.349598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.480881, 31.467506, 35.490482>,  <39.164562, 31.536858, 35.725288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.480881, 31.467506, 35.490482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548617, -0.626026, -0.554175,
		-0.271404, 0.760284, -0.590177,
		0.790796, -0.173376, -0.587011,
		39.718121, 31.415493, 35.314381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889618, 31.613897, 35.105263>,  <39.164562, 31.536858, 35.725288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.889618, 31.613897, 35.105263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.232834, 31.417234, 35.045868>,  <39.438763, 31.299236, 35.010231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.232834, 31.417234, 35.045868>,  <38.889618, 31.613897, 35.105263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232834, 31.417234, 35.045868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451783, -0.585040, -0.673514,
		0.244266, 0.644983, -0.724107,
		0.858037, -0.491655, -0.148487,
		39.490246, 31.269737, 35.001324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924416, 31.435293, 34.386719>,  <38.889618, 31.613897, 35.105263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924416, 31.435293, 34.386719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.171589, 31.170879, 34.556984>,  <39.319893, 31.012232, 34.659142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.171589, 31.170879, 34.556984>,  <38.924416, 31.435293, 34.386719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.171589, 31.170879, 34.556984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284871, -0.692853, -0.662423,
		0.732807, 0.288075, -0.616448,
		0.617935, -0.661035, 0.425663,
		39.356968, 30.972569, 34.684685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246891, 31.250723, 33.903332>,  <38.924416, 31.435293, 34.386719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.246891, 31.250723, 33.903332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.256157, 30.959293, 34.177162>,  <39.261715, 30.784435, 34.341461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.256157, 30.959293, 34.177162>,  <39.246891, 31.250723, 33.903332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.256157, 30.959293, 34.177162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408231, -0.631959, -0.658768,
		0.912585, -0.264206, -0.312064,
		0.023161, -0.728576, 0.684573,
		39.263103, 30.740721, 34.382534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580414, 30.689224, 33.593788>,  <39.246891, 31.250723, 33.903332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580414, 30.689224, 33.593788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.370659, 30.531122, 33.895462>,  <39.244808, 30.436262, 34.076466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.370659, 30.531122, 33.895462>,  <39.580414, 30.689224, 33.593788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.370659, 30.531122, 33.895462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342744, -0.712827, -0.611886,
		0.779455, -0.579355, 0.238323,
		-0.524383, -0.395254, 0.754186,
		39.213345, 30.412546, 34.121719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690590, 29.940771, 33.530666>,  <39.580414, 30.689224, 33.593788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.690590, 29.940771, 33.530666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.371456, 29.942793, 33.771809>,  <39.179977, 29.944006, 33.916496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.371456, 29.942793, 33.771809>,  <39.690590, 29.940771, 33.530666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.371456, 29.942793, 33.771809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388478, -0.768994, -0.507674,
		0.461029, -0.639236, 0.615491,
		-0.797832, 0.005052, 0.602858,
		39.132107, 29.944309, 33.952667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515377, 29.208529, 33.573059>,  <39.690590, 29.940771, 33.530666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.515377, 29.208529, 33.573059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.195541, 29.415958, 33.694206>,  <39.003639, 29.540417, 33.766895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.195541, 29.415958, 33.694206>,  <39.515377, 29.208529, 33.573059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195541, 29.415958, 33.694206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595296, -0.750947, -0.285834,
		0.079214, -0.408849, 0.909158,
		-0.799592, 0.518576, 0.302872,
		38.955662, 29.571531, 33.785069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006832, 28.665924, 33.877216>,  <39.515377, 29.208529, 33.573059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.006832, 28.665924, 33.877216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.817436, 28.994862, 33.751007>,  <38.703800, 29.192225, 33.675282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.817436, 28.994862, 33.751007>,  <39.006832, 28.665924, 33.877216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.817436, 28.994862, 33.751007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705972, -0.568532, -0.422345,
		-0.526699, 0.022776, 0.849746,
		-0.473489, 0.822346, -0.315525,
		38.675388, 29.241566, 33.656349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279232, 28.687479, 34.131954>,  <39.006832, 28.665924, 33.877216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.279232, 28.687479, 34.131954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.274529, 28.912771, 33.801468>,  <38.271706, 29.047947, 33.603176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.274529, 28.912771, 33.801468>,  <38.279232, 28.687479, 34.131954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274529, 28.912771, 33.801468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816290, -0.482631, -0.317394,
		-0.577523, 0.670700, 0.465433,
		-0.011756, 0.563231, -0.826216,
		38.271000, 29.081741, 33.553604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547237, 28.731354, 33.969898>,  <38.279232, 28.687479, 34.131954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.547237, 28.731354, 33.969898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.721230, 28.898718, 33.650970>,  <37.825626, 28.999136, 33.459614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.721230, 28.898718, 33.650970>,  <37.547237, 28.731354, 33.969898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721230, 28.898718, 33.650970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735072, -0.346417, -0.582808,
		-0.520059, 0.839600, 0.156876,
		0.434981, 0.418410, -0.797324,
		37.851723, 29.024240, 33.411774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021999, 29.204660, 33.547424>,  <37.547237, 28.731354, 33.969898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.021999, 29.204660, 33.547424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.327492, 29.085699, 33.318249>,  <37.510788, 29.014322, 33.180744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.327492, 29.085699, 33.318249>,  <37.021999, 29.204660, 33.547424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327492, 29.085699, 33.318249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636599, -0.494145, -0.592083,
		-0.107028, 0.816927, -0.566723,
		0.763732, -0.297406, -0.572943,
		37.556610, 28.996477, 33.146366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850266, 29.387182, 32.886925>,  <37.021999, 29.204660, 33.547424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850266, 29.387182, 32.886925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087959, 29.065838, 32.871449>,  <37.230576, 28.873032, 32.862164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087959, 29.065838, 32.871449>,  <36.850266, 29.387182, 32.886925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087959, 29.065838, 32.871449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612150, -0.420544, -0.669638,
		0.521689, 0.421608, -0.741679,
		0.594233, -0.803361, -0.038695,
		37.266228, 28.824829, 32.859840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066353, 29.577255, 32.232841>,  <36.850266, 29.387182, 32.886925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066353, 29.577255, 32.232841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.462540, 29.534460, 32.267540>,  <37.700253, 29.508783, 32.288361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.462540, 29.534460, 32.267540>,  <37.066353, 29.577255, 32.232841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.462540, 29.534460, 32.267540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109232, -0.226447, 0.967879,
		-0.083909, -0.968130, -0.235975,
		0.990468, -0.106990, 0.086750,
		37.759682, 29.502363, 32.293564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329914, 28.948767, 32.374439>,  <37.066353, 29.577255, 32.232841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329914, 28.948767, 32.374439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.597553, 29.181599, 32.559258>,  <37.758137, 29.321299, 32.670147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.597553, 29.181599, 32.559258>,  <37.329914, 28.948767, 32.374439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597553, 29.181599, 32.559258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051266, -0.584087, 0.810070,
		0.741400, -0.565707, -0.360973,
		0.669102, 0.582081, 0.462044,
		37.798283, 29.356222, 32.697872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606689, 28.170618, 32.305012>,  <37.329914, 28.948767, 32.374439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.606689, 28.170618, 32.305012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.879162, 28.172720, 32.597851>,  <38.042645, 28.173981, 32.773552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.879162, 28.172720, 32.597851>,  <37.606689, 28.170618, 32.305012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.879162, 28.172720, 32.597851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047513, -0.998184, -0.037043,
		0.730571, 0.060017, -0.680194,
		0.681182, 0.005255, 0.732096,
		38.083515, 28.174297, 32.817478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230125, 27.822929, 32.073193>,  <37.606689, 28.170618, 32.305012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.230125, 27.822929, 32.073193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.150146, 27.798264, 32.464336>,  <38.102158, 27.783464, 32.699024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.150146, 27.798264, 32.464336>,  <38.230125, 27.822929, 32.073193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.150146, 27.798264, 32.464336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074759, -0.996069, -0.047524,
		0.976950, 0.063602, 0.203771,
		-0.199948, -0.061662, 0.977864,
		38.090160, 27.779764, 32.757694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791012, 27.461102, 32.542183>,  <38.230125, 27.822929, 32.073193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.791012, 27.461102, 32.542183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.421398, 27.411766, 32.686932>,  <38.199631, 27.382164, 32.773781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.421398, 27.411766, 32.686932>,  <38.791012, 27.461102, 32.542183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.421398, 27.411766, 32.686932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095755, -0.991025, -0.093275,
		0.370126, -0.051538, 0.927551,
		-0.924033, -0.123341, 0.361869,
		38.144188, 27.374763, 32.795494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380848, 27.785248, 32.278313>,  <38.791012, 27.461102, 32.542183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.380848, 27.785248, 32.278313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.232780, 27.871275, 31.916824>,  <39.143940, 27.922892, 31.699930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.232780, 27.871275, 31.916824>,  <39.380848, 27.785248, 32.278313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232780, 27.871275, 31.916824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654636, 0.750626, -0.089508,
		0.659110, -0.624744, -0.418651,
		-0.370170, 0.215069, -0.903725,
		39.121731, 27.935795, 31.645706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.924511, 28.027969, 31.941610>,  <39.380848, 27.785248, 32.278313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.924511, 28.027969, 31.941610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.583572, 28.185413, 31.803867>,  <39.379009, 28.279881, 31.721222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.583572, 28.185413, 31.803867>,  <39.924511, 28.027969, 31.941610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.583572, 28.185413, 31.803867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462459, 0.874734, -0.144816,
		0.244221, -0.282684, -0.927602,
		-0.852343, 0.393610, -0.344358,
		39.327869, 28.303497, 31.700560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.172760, 28.456284, 31.483801>,  <39.924511, 28.027969, 31.941610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.172760, 28.456284, 31.483801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.807545, 28.566866, 31.603754>,  <39.588413, 28.633215, 31.675726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.807545, 28.566866, 31.603754>,  <40.172760, 28.456284, 31.483801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.807545, 28.566866, 31.603754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301955, 0.952426, 0.041333,
		-0.274188, 0.128290, -0.953080,
		-0.913041, 0.276454, 0.299882,
		39.533634, 28.649803, 31.693718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.048306, 28.989130, 31.100210>,  <40.172760, 28.456284, 31.483801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.048306, 28.989130, 31.100210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.845043, 29.014296, 31.443796>,  <39.723087, 29.029396, 31.649948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.845043, 29.014296, 31.443796>,  <40.048306, 28.989130, 31.100210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.845043, 29.014296, 31.443796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324361, 0.937877, 0.123192,
		-0.797855, 0.341215, -0.496991,
		-0.508151, 0.062915, 0.858967,
		39.692596, 29.033171, 31.701487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.859150, 29.772867, 31.208803>,  <40.048306, 28.989130, 31.100210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.859150, 29.772867, 31.208803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.932854, 29.561375, 31.540222>,  <39.977077, 29.434479, 31.739073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.932854, 29.561375, 31.540222>,  <39.859150, 29.772867, 31.208803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.932854, 29.561375, 31.540222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663496, 0.688837, 0.292023,
		-0.725136, 0.495930, 0.477735,
		0.184259, -0.528732, 0.828548,
		39.988132, 29.402756, 31.788786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.902710, 30.208122, 31.710104>,  <39.859150, 29.772867, 31.208803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.902710, 30.208122, 31.710104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.101780, 29.923746, 31.908852>,  <40.221222, 29.753120, 32.028099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.101780, 29.923746, 31.908852>,  <39.902710, 30.208122, 31.710104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.101780, 29.923746, 31.908852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477429, 0.702798, 0.527387,
		-0.724139, -0.025250, 0.689192,
		0.497679, -0.710941, 0.496868,
		40.251083, 29.710464, 32.057911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.924255, 30.349422, 32.373058>,  <39.902710, 30.208122, 31.710104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.924255, 30.349422, 32.373058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.248169, 30.116404, 32.345074>,  <40.442516, 29.976593, 32.328281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.248169, 30.116404, 32.345074>,  <39.924255, 30.349422, 32.373058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.248169, 30.116404, 32.345074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539738, 0.692845, 0.478172,
		-0.230081, -0.424978, 0.875475,
		0.809781, -0.582545, -0.069966,
		40.491104, 29.941641, 32.324085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.312626, 30.490681, 32.953949>,  <39.924255, 30.349422, 32.373058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.312626, 30.490681, 32.953949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.587765, 30.301277, 32.733891>,  <40.752846, 30.187635, 32.601856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.587765, 30.301277, 32.733891>,  <40.312626, 30.490681, 32.953949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.587765, 30.301277, 32.733891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713255, 0.581549, 0.391240,
		0.134680, -0.661505, 0.737748,
		0.687844, -0.473510, -0.550145,
		40.794117, 30.159224, 32.568848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.791878, 30.300400, 33.415054>,  <40.312626, 30.490681, 32.953949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.791878, 30.300400, 33.415054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.981846, 30.308271, 33.063129>,  <41.095829, 30.312994, 32.851974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.981846, 30.308271, 33.063129>,  <40.791878, 30.300400, 33.415054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.981846, 30.308271, 33.063129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717231, 0.570647, 0.399926,
		0.509930, -0.820959, 0.256898,
		0.474922, 0.019679, -0.879808,
		41.124321, 30.314175, 32.799187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.563160, 30.235262, 33.583855>,  <40.791878, 30.300400, 33.415054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.563160, 30.235262, 33.583855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.532730, 30.360258, 33.205105>,  <41.514473, 30.435255, 32.977856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.532730, 30.360258, 33.205105>,  <41.563160, 30.235262, 33.583855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.532730, 30.360258, 33.205105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907898, 0.414310, 0.063784,
		0.412229, -0.854809, -0.315229,
		-0.076079, 0.312489, -0.946870,
		41.509907, 30.454004, 32.921043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.268299, 30.168903, 33.262894>,  <41.563160, 30.235262, 33.583855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.268299, 30.168903, 33.262894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.063034, 30.447592, 33.062397>,  <41.939877, 30.614805, 32.942097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.063034, 30.447592, 33.062397>,  <42.268299, 30.168903, 33.262894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.063034, 30.447592, 33.062397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805769, 0.592227, -0.001746,
		0.295633, -0.404783, -0.865305,
		-0.513163, 0.696720, -0.501244,
		41.909084, 30.656607, 32.912025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.828506, 30.378033, 32.955349>,  <42.268299, 30.168903, 33.262894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.828506, 30.378033, 32.955349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.549877, 30.659065, 32.897163>,  <42.382698, 30.827684, 32.862251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.549877, 30.659065, 32.897163>,  <42.828506, 30.378033, 32.955349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.549877, 30.659065, 32.897163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709291, 0.704871, 0.007936,
		0.108106, -0.097645, -0.989332,
		-0.696577, 0.702582, -0.145459,
		42.340904, 30.869841, 32.853527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.007061, 30.793901, 32.357063>,  <42.828506, 30.378033, 32.955349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.007061, 30.793901, 32.357063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.781082, 31.048727, 32.566818>,  <42.645496, 31.201622, 32.692673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.781082, 31.048727, 32.566818>,  <43.007061, 30.793901, 32.357063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.781082, 31.048727, 32.566818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780305, 0.619101, 0.088529,
		-0.268252, 0.459199, -0.846863,
		-0.564946, 0.637064, 0.524391,
		42.611599, 31.239845, 32.724136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.198780, 31.464334, 32.126579>,  <43.007061, 30.793901, 32.357063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.198780, 31.464334, 32.126579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.021748, 31.507315, 32.482685>,  <42.915527, 31.533104, 32.696350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.021748, 31.507315, 32.482685>,  <43.198780, 31.464334, 32.126579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.021748, 31.507315, 32.482685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757036, 0.576909, 0.306713,
		-0.480647, 0.809710, -0.336672,
		-0.442578, 0.107452, 0.890269,
		42.888973, 31.539551, 32.749767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.550419, 32.104969, 32.275627>,  <43.198780, 31.464334, 32.126579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.550419, 32.104969, 32.275627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.384705, 31.983929, 32.618977>,  <43.285275, 31.911304, 32.824986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.384705, 31.983929, 32.618977>,  <43.550419, 32.104969, 32.275627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.384705, 31.983929, 32.618977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572911, 0.646117, 0.504287,
		-0.707206, 0.700689, -0.094313,
		-0.414286, -0.302602, 0.858370,
		43.260418, 31.893148, 32.876488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.156467, 32.649036, 32.583405>,  <43.550419, 32.104969, 32.275627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.156467, 32.649036, 32.583405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.261715, 32.410950, 32.887112>,  <43.324863, 32.268097, 33.069336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.261715, 32.410950, 32.887112>,  <43.156467, 32.649036, 32.583405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.261715, 32.410950, 32.887112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247251, 0.802318, 0.543280,
		-0.932542, 0.044782, 0.358274,
		0.263120, -0.595214, 0.759268,
		43.340652, 32.232384, 33.114891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.004353, 33.039650, 33.167942>,  <43.156467, 32.649036, 32.583405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.004353, 33.039650, 33.167942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.220318, 32.734047, 33.309242>,  <43.349895, 32.550686, 33.394024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.220318, 32.734047, 33.309242>,  <43.004353, 33.039650, 33.167942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.220318, 32.734047, 33.309242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447996, 0.616126, 0.647833,
		-0.712599, -0.191515, 0.674925,
		0.539909, -0.764010, 0.353253,
		43.382290, 32.504845, 33.415218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.790653, 32.892017, 33.793846>,  <43.004353, 33.039650, 33.167942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.790653, 32.892017, 33.793846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.164055, 32.749374, 33.808784>,  <43.388096, 32.663788, 33.817749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.164055, 32.749374, 33.808784>,  <42.790653, 32.892017, 33.793846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.164055, 32.749374, 33.808784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171703, 0.536032, 0.826552,
		-0.314774, -0.765180, 0.561620,
		0.933507, -0.356609, 0.037346,
		43.444107, 32.642391, 33.819988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.858971, 32.637634, 34.596233>,  <42.790653, 32.892017, 33.793846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.858971, 32.637634, 34.596233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.218506, 32.717281, 34.440060>,  <43.434227, 32.765068, 34.346355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.218506, 32.717281, 34.440060>,  <42.858971, 32.637634, 34.596233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.218506, 32.717281, 34.440060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281541, 0.420414, 0.862546,
		0.335890, -0.885215, 0.321826,
		0.898839, 0.199114, -0.390438,
		43.488159, 32.777016, 34.322929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.204895, 32.694923, 35.130142>,  <42.858971, 32.637634, 34.596233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.204895, 32.694923, 35.130142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.460285, 32.851433, 34.865040>,  <43.613522, 32.945339, 34.705978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.460285, 32.851433, 34.865040>,  <43.204895, 32.694923, 35.130142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.460285, 32.851433, 34.865040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478100, 0.473185, 0.739944,
		0.603129, -0.789303, 0.115049,
		0.638479, 0.391277, -0.662757,
		43.651829, 32.968815, 34.666214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.824165, 32.611378, 35.398651>,  <43.204895, 32.694923, 35.130142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.824165, 32.611378, 35.398651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.895195, 32.904434, 35.135834>,  <43.937813, 33.080269, 34.978146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.895195, 32.904434, 35.135834>,  <43.824165, 32.611378, 35.398651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.895195, 32.904434, 35.135834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356547, 0.574395, 0.736848,
		0.917247, -0.365110, -0.159224,
		0.177573, 0.732643, -0.657041,
		43.948467, 33.124226, 34.938721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.664604, 32.834232, 35.300888>,  <43.824165, 32.611378, 35.398651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.664604, 32.834232, 35.300888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.475304, 33.163502, 35.175404>,  <44.361725, 33.361065, 35.100113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.475304, 33.163502, 35.175404>,  <44.664604, 32.834232, 35.300888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.475304, 33.163502, 35.175404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477325, 0.538924, 0.694062,
		0.740401, 0.178725, -0.647969,
		-0.473252, 0.823176, -0.313710,
		44.333328, 33.410454, 35.081291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.089073, 33.325977, 35.443481>,  <44.664604, 32.834232, 35.300888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.089073, 33.325977, 35.443481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.768764, 33.554176, 35.370487>,  <44.576580, 33.691093, 35.326691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.768764, 33.554176, 35.370487>,  <45.089073, 33.325977, 35.443481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.768764, 33.554176, 35.370487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312618, 0.657952, 0.685106,
		0.510915, 0.491566, -0.705216,
		-0.800772, 0.570493, -0.182485,
		44.528534, 33.725323, 35.315742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.377731, 33.950825, 35.349785>,  <45.089073, 33.325977, 35.443481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.377731, 33.950825, 35.349785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.001736, 33.964298, 35.485603>,  <44.776138, 33.972382, 35.567097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.001736, 33.964298, 35.485603>,  <45.377731, 33.950825, 35.349785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.001736, 33.964298, 35.485603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301332, 0.548806, 0.779750,
		-0.160085, 0.835271, -0.526019,
		-0.939985, 0.033680, 0.339550,
		44.719742, 33.974403, 35.587467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.361580, 34.648624, 35.575321>,  <45.377731, 33.950825, 35.349785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.361580, 34.648624, 35.575321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.029457, 34.488480, 35.730392>,  <44.830185, 34.392391, 35.823437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.029457, 34.488480, 35.730392>,  <45.361580, 34.648624, 35.575321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.029457, 34.488480, 35.730392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024928, 0.668256, 0.743513,
		-0.556747, 0.627009, -0.544878,
		-0.830308, -0.400366, 0.387680,
		44.780365, 34.368370, 35.846695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.735462, 34.180828, 36.025860>,  <45.361580, 34.648624, 35.575321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.735462, 34.180828, 36.025860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.881348, 34.275433, 35.665627>,  <45.968880, 34.332195, 35.449486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.881348, 34.275433, 35.665627>,  <45.735462, 34.180828, 36.025860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.881348, 34.275433, 35.665627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491116, 0.772862, 0.401857,
		0.791068, -0.588853, 0.165722,
		0.364715, 0.236508, -0.900581,
		45.990761, 34.346386, 35.395451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.489021, 34.161942, 35.959209>,  <45.735462, 34.180828, 36.025860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.489021, 34.161942, 35.959209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.352257, 34.430912, 35.696629>,  <46.270199, 34.592297, 35.539078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.352257, 34.430912, 35.696629>,  <46.489021, 34.161942, 35.959209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.352257, 34.430912, 35.696629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592512, 0.696465, 0.404804,
		0.729400, -0.250550, -0.636554,
		-0.341914, 0.672430, -0.656455,
		46.249683, 34.632641, 35.499691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.991768, 34.472225, 35.408649>,  <46.489021, 34.161942, 35.959209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.991768, 34.472225, 35.408649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.713093, 34.734188, 35.525768>,  <46.545887, 34.891365, 35.596039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.713093, 34.734188, 35.525768>,  <46.991768, 34.472225, 35.408649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.713093, 34.734188, 35.525768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716441, 0.614376, 0.330535,
		0.036583, 0.440049, -0.897228,
		-0.696687, 0.654903, 0.292794,
		46.504086, 34.930660, 35.613605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.616364, 34.718403, 35.514866>,  <46.991768, 34.472225, 35.408649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.616364, 34.718403, 35.514866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.760635, 34.673237, 35.144535>,  <47.847198, 34.646137, 34.922337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.760635, 34.673237, 35.144535>,  <47.616364, 34.718403, 35.514866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.760635, 34.673237, 35.144535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446806, -0.892248, -0.065246,
		-0.818703, 0.437199, -0.372266,
		0.360679, -0.112913, -0.925830,
		47.868839, 34.639362, 34.866787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.735710, 37.143826, 48.631866> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.389267, 36.954498, 48.696152>,  <38.181400, 36.840900, 48.734722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.389267, 36.954498, 48.696152>,  <38.735710, 37.143826, 48.631866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389267, 36.954498, 48.696152> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099627, -0.151616, -0.983406,
		0.489835, -0.867744, 0.084159,
		-0.866104, -0.473322, 0.160717,
		38.129436, 36.812500, 48.744366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758774, 36.571823, 48.305443>,  <38.735710, 37.143826, 48.631866>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.758774, 36.571823, 48.305443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.368294, 36.654160, 48.332775>,  <38.134007, 36.703560, 48.349174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.368294, 36.654160, 48.332775>,  <38.758774, 36.571823, 48.305443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.368294, 36.654160, 48.332775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107988, -0.188087, -0.976198,
		-0.188087, -0.960341, 0.205838,
		0.976198, -0.205838, -0.068329,
		38.075436, 36.715912, 48.353275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487160, 36.107479, 47.830589>,  <38.758774, 36.571823, 48.305443>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.487160, 36.107479, 47.830589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.177460, 36.355392, 47.881832>,  <37.991638, 36.504139, 47.912579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.177460, 36.355392, 47.881832>,  <38.487160, 36.107479, 47.830589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.177460, 36.355392, 47.881832> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331231, -0.224342, -0.916491,
		-0.539282, -0.752027, 0.378987,
		-0.774249, 0.619779, 0.128111,
		37.945187, 36.541325, 47.920265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845985, 35.782326, 47.506786>,  <38.487160, 36.107479, 47.830589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845985, 35.782326, 47.506786> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.797398, 36.178257, 47.536388>,  <37.768246, 36.415817, 47.554150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.797398, 36.178257, 47.536388>,  <37.845985, 35.782326, 47.506786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797398, 36.178257, 47.536388> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428271, 0.014995, -0.903526,
		-0.895449, -0.141443, 0.422095,
		-0.121468, 0.989833, 0.074004,
		37.760956, 36.475208, 47.558590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084534, 35.838657, 47.410034>,  <37.845985, 35.782326, 47.506786>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.084534, 35.838657, 47.410034> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.246704, 36.192661, 47.318485>,  <37.344006, 36.405064, 47.263557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.246704, 36.192661, 47.318485>,  <37.084534, 35.838657, 47.410034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246704, 36.192661, 47.318485> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303570, -0.105814, -0.946915,
		-0.862248, 0.453386, 0.225762,
		0.405430, 0.885011, -0.228873,
		37.368332, 36.458164, 47.249825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543320, 36.109646, 46.966282>,  <37.084534, 35.838657, 47.410034>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543320, 36.109646, 46.966282> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.877594, 36.320835, 46.905781>,  <37.078159, 36.447548, 46.869480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.877594, 36.320835, 46.905781>,  <36.543320, 36.109646, 46.966282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.877594, 36.320835, 46.905781> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168745, -0.015245, -0.985542,
		-0.522644, 0.849125, 0.076352,
		0.835684, 0.527972, -0.151253,
		37.128300, 36.479225, 46.860405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381226, 36.487576, 46.411495>,  <36.543320, 36.109646, 46.966282>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381226, 36.487576, 46.411495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.780716, 36.506638, 46.418243>,  <37.020409, 36.518074, 46.422295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.780716, 36.506638, 46.418243>,  <36.381226, 36.487576, 46.411495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.780716, 36.506638, 46.418243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019106, -0.046808, -0.998721,
		-0.046808, 0.997767, -0.047658,
		0.998721, 0.047658, 0.016873,
		37.080334, 36.520935, 46.423306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518196, 36.969296, 45.904541>,  <36.381226, 36.487576, 46.411495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518196, 36.969296, 45.904541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.859531, 36.763397, 45.937656>,  <37.064331, 36.639858, 45.957527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.859531, 36.763397, 45.937656>,  <36.518196, 36.969296, 45.904541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859531, 36.763397, 45.937656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069387, -0.045257, -0.996563,
		0.516727, 0.856145, -0.002903,
		0.853334, -0.514749, 0.082791,
		37.115532, 36.608971, 45.962494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872860, 37.225842, 45.411636>,  <36.518196, 36.969296, 45.904541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872860, 37.225842, 45.411636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.054405, 36.880226, 45.498760>,  <37.163330, 36.672855, 45.551033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.054405, 36.880226, 45.498760>,  <36.872860, 37.225842, 45.411636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.054405, 36.880226, 45.498760> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128762, -0.178274, -0.975520,
		0.881720, 0.470796, 0.030344,
		0.453861, -0.864043, 0.217808,
		37.190563, 36.621014, 45.564102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559132, 37.158913, 45.050377>,  <36.872860, 37.225842, 45.411636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559132, 37.158913, 45.050377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.458893, 36.785496, 45.152908>,  <37.398750, 36.561447, 45.214428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.458893, 36.785496, 45.152908>,  <37.559132, 37.158913, 45.050377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458893, 36.785496, 45.152908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162545, -0.301590, -0.939480,
		0.954349, -0.193762, 0.227318,
		-0.250592, -0.933542, 0.256327,
		37.383717, 36.505432, 45.229805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138500, 36.696762, 44.888897>,  <37.559132, 37.158913, 45.050377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138500, 36.696762, 44.888897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.790947, 36.498775, 44.891811>,  <37.582417, 36.379986, 44.893559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.790947, 36.498775, 44.891811>,  <38.138500, 36.696762, 44.888897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.790947, 36.498775, 44.891811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112984, -0.212626, -0.970580,
		0.481951, -0.842497, 0.240671,
		-0.868883, -0.494963, 0.007287,
		37.530281, 36.350285, 44.893997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372501, 36.059105, 44.522285>,  <38.138500, 36.696762, 44.888897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.372501, 36.059105, 44.522285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.979794, 36.132923, 44.504089>,  <37.744167, 36.177212, 44.493172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.979794, 36.132923, 44.504089>,  <38.372501, 36.059105, 44.522285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979794, 36.132923, 44.504089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026299, -0.105152, -0.994108,
		-0.188240, -0.977183, 0.098382,
		-0.981771, 0.184543, -0.045492,
		37.685261, 36.188286, 44.490440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135464, 35.639900, 43.991089>,  <38.372501, 36.059105, 44.522285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135464, 35.639900, 43.991089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.809841, 35.872173, 43.986626>,  <37.614468, 36.011536, 43.983948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.809841, 35.872173, 43.986626>,  <38.135464, 35.639900, 43.991089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.809841, 35.872173, 43.986626> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098196, 0.118681, -0.988065,
		-0.572424, -0.805436, -0.153633,
		-0.814057, 0.580678, -0.011155,
		37.565624, 36.046375, 43.983280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803326, 35.365276, 43.496479>,  <38.135464, 35.639900, 43.991089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803326, 35.365276, 43.496479> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.649406, 35.730614, 43.549751>,  <37.557056, 35.949814, 43.581715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.649406, 35.730614, 43.549751>,  <37.803326, 35.365276, 43.496479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649406, 35.730614, 43.549751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246654, 0.240801, -0.938710,
		-0.889434, -0.328364, -0.317939,
		-0.384798, 0.913341, 0.133185,
		37.533966, 36.004616, 43.589706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345116, 35.427254, 42.925713>,  <37.803326, 35.365276, 43.496479>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.345116, 35.427254, 42.925713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.497707, 35.776054, 43.048412>,  <37.589264, 35.985332, 43.122032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.497707, 35.776054, 43.048412>,  <37.345116, 35.427254, 42.925713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.497707, 35.776054, 43.048412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097191, 0.292165, -0.951416,
		-0.919254, 0.392758, 0.026704,
		0.381478, 0.871998, 0.306747,
		37.612152, 36.037655, 43.140438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074417, 35.850990, 42.521587>,  <37.345116, 35.427254, 42.925713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.074417, 35.850990, 42.521587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.350506, 36.095196, 42.676952>,  <37.516159, 36.241718, 42.770172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.350506, 36.095196, 42.676952>,  <37.074417, 35.850990, 42.521587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.350506, 36.095196, 42.676952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110309, 0.441734, -0.890338,
		-0.715141, 0.657376, 0.237549,
		0.690221, 0.610514, 0.388417,
		37.557571, 36.278351, 42.793476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066689, 36.467445, 42.122948>,  <37.074417, 35.850990, 42.521587>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066689, 36.467445, 42.122948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.417583, 36.551231, 42.295727>,  <37.628120, 36.601501, 42.399395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.417583, 36.551231, 42.295727>,  <37.066689, 36.467445, 42.122948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417583, 36.551231, 42.295727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273764, 0.520842, -0.808565,
		-0.394340, 0.827555, 0.399560,
		0.877239, 0.209465, 0.431944,
		37.680756, 36.614071, 42.425308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.175716, 37.220654, 42.122089>,  <37.066689, 36.467445, 42.122948>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.175716, 37.220654, 42.122089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.514462, 37.008884, 42.142204>,  <37.717709, 36.881824, 42.154274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.514462, 37.008884, 42.142204>,  <37.175716, 37.220654, 42.122089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.514462, 37.008884, 42.142204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376723, 0.530473, -0.759393,
		0.375362, 0.662050, 0.648685,
		0.846866, -0.529422, 0.050290,
		37.768520, 36.850060, 42.157291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679390, 37.727150, 42.147308>,  <37.175716, 37.220654, 42.122089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.679390, 37.727150, 42.147308> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.861614, 37.396469, 42.015232>,  <37.970947, 37.198059, 41.935986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.861614, 37.396469, 42.015232>,  <37.679390, 37.727150, 42.147308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.861614, 37.396469, 42.015232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314570, 0.496485, -0.809042,
		0.832772, 0.264700, 0.486236,
		0.455562, -0.826702, -0.330191,
		37.998283, 37.148457, 41.916176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359005, 37.896347, 41.973354>,  <37.679390, 37.727150, 42.147308>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.359005, 37.896347, 41.973354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.298962, 37.560017, 41.765324>,  <38.262936, 37.358219, 41.640503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.298962, 37.560017, 41.765324>,  <38.359005, 37.896347, 41.973354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.298962, 37.560017, 41.765324> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455129, 0.408216, -0.791339,
		0.877681, -0.355492, 0.321406,
		-0.150111, -0.840824, -0.520078,
		38.253929, 37.307770, 41.609299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040443, 37.740013, 41.709423>,  <38.359005, 37.896347, 41.973354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.040443, 37.740013, 41.709423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.758732, 37.551739, 41.496841>,  <38.589703, 37.438774, 41.369293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.758732, 37.551739, 41.496841>,  <39.040443, 37.740013, 41.709423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.758732, 37.551739, 41.496841> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409748, 0.341821, -0.845733,
		0.579735, -0.813397, -0.047877,
		-0.704282, -0.470684, -0.531454,
		38.547447, 37.410534, 41.337406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504459, 37.469620, 41.231209>,  <39.040443, 37.740013, 41.709423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.504459, 37.469620, 41.231209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.143780, 37.468525, 41.058270>,  <38.927372, 37.467869, 40.954506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.143780, 37.468525, 41.058270>,  <39.504459, 37.469620, 41.231209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.143780, 37.468525, 41.058270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428386, 0.129619, -0.894251,
		0.058485, -0.991560, -0.115707,
		-0.901701, -0.002733, -0.432352,
		38.873268, 37.467705, 40.928562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948956, 36.834076, 41.202461>,  <39.504459, 37.469620, 41.231209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.948956, 36.834076, 41.202461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.314713, 36.672634, 41.215046>,  <40.534168, 36.575771, 41.222595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.314713, 36.672634, 41.215046>,  <39.948956, 36.834076, 41.202461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.314713, 36.672634, 41.215046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266678, -0.542057, 0.796905,
		-0.304577, -0.737075, -0.603285,
		0.914394, -0.403601, 0.031463,
		40.589031, 36.551552, 41.224483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829586, 36.089771, 41.147392>,  <39.948956, 36.834076, 41.202461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829586, 36.089771, 41.147392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.178680, 36.163326, 41.328289>,  <40.388138, 36.207458, 41.436829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.178680, 36.163326, 41.328289>,  <39.829586, 36.089771, 41.147392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.178680, 36.163326, 41.328289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273229, -0.583705, 0.764614,
		0.404577, -0.790869, -0.459177,
		0.872733, 0.183885, 0.452242,
		40.440502, 36.218491, 41.463963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.927029, 35.572704, 41.749420>,  <39.829586, 36.089771, 41.147392>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.927029, 35.572704, 41.749420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.220287, 35.830135, 41.837334>,  <40.396240, 35.984592, 41.890083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.220287, 35.830135, 41.837334>,  <39.927029, 35.572704, 41.749420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.220287, 35.830135, 41.837334> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082779, -0.405230, 0.910459,
		0.675017, -0.649304, -0.350367,
		0.733144, 0.643578, 0.219788,
		40.440231, 36.023209, 41.903271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.428612, 35.155411, 42.085777>,  <39.927029, 35.572704, 41.749420>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.428612, 35.155411, 42.085777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.512405, 35.523277, 42.218647>,  <40.562679, 35.743996, 42.298367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.512405, 35.523277, 42.218647>,  <40.428612, 35.155411, 42.085777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.512405, 35.523277, 42.218647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040243, -0.347531, 0.936805,
		0.976985, -0.182874, -0.109811,
		0.209480, 0.919663, 0.332173,
		40.575249, 35.799175, 42.318298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.062660, 35.162796, 42.557068>,  <40.428612, 35.155411, 42.085777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.062660, 35.162796, 42.557068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.845467, 35.481895, 42.661964>,  <40.715153, 35.673355, 42.724903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.845467, 35.481895, 42.661964>,  <41.062660, 35.162796, 42.557068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.845467, 35.481895, 42.661964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199997, -0.180454, 0.963035,
		0.815582, 0.575357, -0.061564,
		-0.542980, 0.797747, 0.262245,
		40.682571, 35.721218, 42.740639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.417145, 35.442402, 43.099224>,  <41.062660, 35.162796, 42.557068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.417145, 35.442402, 43.099224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.052971, 35.602509, 43.140968>,  <40.834465, 35.698570, 43.166016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.052971, 35.602509, 43.140968>,  <41.417145, 35.442402, 43.099224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.052971, 35.602509, 43.140968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122699, 0.020381, 0.992235,
		0.395027, 0.916174, -0.067668,
		-0.910439, 0.400262, 0.104363,
		40.779839, 35.722588, 43.172276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.431026, 35.869347, 43.673122>,  <41.417145, 35.442402, 43.099224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.431026, 35.869347, 43.673122> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.036442, 35.843216, 43.612953>,  <40.799690, 35.827538, 43.576851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.036442, 35.843216, 43.612953>,  <41.431026, 35.869347, 43.673122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.036442, 35.843216, 43.612953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149493, -0.018878, 0.988583,
		-0.067421, 0.997685, 0.008857,
		-0.986461, -0.065328, -0.150419,
		40.740505, 35.823616, 43.567829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.217266, 36.430546, 44.079010>,  <41.431026, 35.869347, 43.673122>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.217266, 36.430546, 44.079010> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.922016, 36.169483, 44.010651>,  <40.744865, 36.012844, 43.969635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.922016, 36.169483, 44.010651>,  <41.217266, 36.430546, 44.079010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.922016, 36.169483, 44.010651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153840, -0.083819, 0.984534,
		-0.656887, 0.753003, -0.038535,
		-0.738128, -0.652656, -0.170901,
		40.700577, 35.973686, 43.959381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571545, 36.669731, 44.389172>,  <41.217266, 36.430546, 44.079010>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.571545, 36.669731, 44.389172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.526222, 36.273304, 44.361027>,  <40.499027, 36.035450, 44.344139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.526222, 36.273304, 44.361027>,  <40.571545, 36.669731, 44.389172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.526222, 36.273304, 44.361027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141013, -0.054059, 0.988531,
		-0.983502, 0.121930, -0.133628,
		-0.113308, -0.991065, -0.070361,
		40.492229, 35.975983, 44.339920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036579, 36.620613, 44.841839>,  <40.571545, 36.669731, 44.389172>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.036579, 36.620613, 44.841839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.192402, 36.258411, 44.774540>,  <40.285896, 36.041088, 44.734161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.192402, 36.258411, 44.774540>,  <40.036579, 36.620613, 44.841839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.192402, 36.258411, 44.774540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137213, -0.237701, 0.961598,
		-0.910726, -0.351507, -0.216844,
		0.389553, -0.905506, -0.168249,
		40.309269, 35.986759, 44.724064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605110, 36.213676, 45.155449>,  <40.036579, 36.620613, 44.841839>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.605110, 36.213676, 45.155449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.932983, 35.987015, 45.121944>,  <40.129707, 35.851017, 45.101841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.932983, 35.987015, 45.121944>,  <39.605110, 36.213676, 45.155449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.932983, 35.987015, 45.121944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024292, -0.180490, 0.983277,
		-0.572298, -0.803944, -0.161711,
		0.819686, -0.566656, -0.083764,
		40.178890, 35.817017, 45.096817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410877, 35.544296, 45.321693>,  <39.605110, 36.213676, 45.155449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.410877, 35.544296, 45.321693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.804482, 35.582104, 45.382088>,  <40.040642, 35.604786, 45.418324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.804482, 35.582104, 45.382088>,  <39.410877, 35.544296, 45.321693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.804482, 35.582104, 45.382088> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120700, -0.269604, 0.955377,
		0.131005, -0.958322, -0.253885,
		0.984007, 0.094515, 0.150989,
		40.099682, 35.610458, 45.427383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545235, 35.103577, 45.773006>,  <39.410877, 35.544296, 45.321693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.545235, 35.103577, 45.773006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.853382, 35.356304, 45.807278>,  <40.038269, 35.507938, 45.827839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.853382, 35.356304, 45.807278>,  <39.545235, 35.103577, 45.773006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.853382, 35.356304, 45.807278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043680, -0.186355, 0.981511,
		0.636100, -0.752383, -0.171160,
		0.770369, 0.631815, 0.085677,
		40.084492, 35.545849, 45.832981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002266, 34.705719, 46.155560>,  <39.545235, 35.103577, 45.773006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.002266, 34.705719, 46.155560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.110428, 35.086735, 46.211491>,  <40.175323, 35.315346, 46.245049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.110428, 35.086735, 46.211491>,  <40.002266, 34.705719, 46.155560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.110428, 35.086735, 46.211491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024637, -0.152034, 0.988068,
		0.962433, -0.263730, -0.064577,
		0.270401, 0.952540, 0.139825,
		40.191547, 35.372498, 46.253437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.392815, 34.616478, 46.674641>,  <40.002266, 34.705719, 46.155560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.392815, 34.616478, 46.674641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.294979, 35.004238, 46.666218>,  <40.236279, 35.236893, 46.661163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.294979, 35.004238, 46.666218>,  <40.392815, 34.616478, 46.674641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.294979, 35.004238, 46.666218> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095619, 0.045721, 0.994367,
		0.964900, 0.241199, -0.103875,
		-0.244590, 0.969398, -0.021053,
		40.221603, 35.295059, 46.659901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.966610, 35.002155, 46.965042>,  <40.392815, 34.616478, 46.674641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.966610, 35.002155, 46.965042> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.644375, 35.237099, 46.996113>,  <40.451035, 35.378067, 47.014755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.644375, 35.237099, 46.996113>,  <40.966610, 35.002155, 46.965042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.644375, 35.237099, 46.996113> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149084, 0.074067, 0.986047,
		0.573411, 0.805929, -0.147234,
		-0.805589, 0.587361, 0.077680,
		40.402699, 35.413307, 47.019417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.146168, 35.488400, 47.351551>,  <40.966610, 35.002155, 46.965042>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.146168, 35.488400, 47.351551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.747902, 35.507896, 47.383240>,  <40.508942, 35.519596, 47.402252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.747902, 35.507896, 47.383240>,  <41.146168, 35.488400, 47.351551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.747902, 35.507896, 47.383240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088719, 0.241774, 0.966268,
		0.027943, 0.969108, -0.245050,
		-0.995665, 0.048741, 0.079222,
		40.449203, 35.522518, 47.407005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.993839, 36.084801, 47.690018>,  <41.146168, 35.488400, 47.351551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.993839, 36.084801, 47.690018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.650314, 35.883774, 47.729752>,  <40.444199, 35.763157, 47.753593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.650314, 35.883774, 47.729752>,  <40.993839, 36.084801, 47.690018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.650314, 35.883774, 47.729752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008498, 0.207862, 0.978121,
		-0.512217, 0.839180, -0.182786,
		-0.858814, -0.502563, 0.099339,
		40.392670, 35.733006, 47.759552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.526394, 36.590923, 48.225193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.350777, 36.232990, 48.192890>,  <40.245407, 36.018230, 48.173508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.350777, 36.232990, 48.192890>,  <40.526394, 36.590923, 48.225193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.350777, 36.232990, 48.192890> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102495, -0.039419, 0.993952,
		-0.892600, 0.444666, -0.074409,
		-0.439044, -0.894829, -0.080761,
		40.219063, 35.964542, 48.168663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843193, 36.643536, 48.526382>,  <40.526394, 36.590923, 48.225193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843193, 36.643536, 48.526382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.940205, 36.255642, 48.515064>,  <39.998409, 36.022907, 48.508274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.940205, 36.255642, 48.515064>,  <39.843193, 36.643536, 48.526382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.940205, 36.255642, 48.515064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071877, -0.047049, 0.996303,
		-0.967479, -0.239596, -0.081112,
		0.242527, -0.969732, -0.028298,
		40.012962, 35.964722, 48.506577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309067, 36.285267, 48.834709>,  <39.843193, 36.643536, 48.526382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.309067, 36.285267, 48.834709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.631912, 36.050617, 48.861374>,  <39.825619, 35.909828, 48.877373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.631912, 36.050617, 48.861374>,  <39.309067, 36.285267, 48.834709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.631912, 36.050617, 48.861374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192371, -0.154556, 0.969075,
		-0.558178, -0.794976, -0.237593,
		0.807112, -0.586622, 0.066661,
		39.874046, 35.874630, 48.881371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119305, 35.675594, 49.052868>,  <39.309067, 36.285267, 48.834709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119305, 35.675594, 49.052868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.498413, 35.728649, 49.168892>,  <39.725880, 35.760483, 49.238506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.498413, 35.728649, 49.168892>,  <39.119305, 35.675594, 49.052868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.498413, 35.728649, 49.168892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287582, -0.037884, 0.957007,
		0.137921, -0.990441, 0.002238,
		0.947773, 0.132635, 0.290057,
		39.782745, 35.768440, 49.255909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211372, 35.186890, 49.679768>,  <39.119305, 35.675594, 49.052868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.211372, 35.186890, 49.679768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.561970, 35.379452, 49.680737>,  <39.772327, 35.494987, 49.681316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.561970, 35.379452, 49.680737>,  <39.211372, 35.186890, 49.679768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.561970, 35.379452, 49.680737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013730, -0.030020, 0.999455,
		0.481214, -0.875985, -0.032922,
		0.876496, 0.481404, 0.002419,
		39.824917, 35.523872, 49.681461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648037, 34.921970, 50.201981>,  <39.211372, 35.186890, 49.679768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648037, 34.921970, 50.201981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.826370, 35.270485, 50.119911>,  <39.933369, 35.479595, 50.070671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.826370, 35.270485, 50.119911>,  <39.648037, 34.921970, 50.201981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.826370, 35.270485, 50.119911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197115, 0.128025, 0.971985,
		0.873144, -0.473784, -0.114666,
		0.445831, 0.871285, -0.205174,
		39.960121, 35.531872, 50.058357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.265411, 34.969280, 50.533447>,  <39.648037, 34.921970, 50.201981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.265411, 34.969280, 50.533447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.166954, 35.354671, 50.491264>,  <40.107880, 35.585907, 50.465954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.166954, 35.354671, 50.491264>,  <40.265411, 34.969280, 50.533447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.166954, 35.354671, 50.491264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207713, 0.158713, 0.965228,
		0.946715, 0.215679, -0.239194,
		-0.246143, 0.963479, -0.105457,
		40.093113, 35.643715, 50.459629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667072, 35.235603, 51.039436>,  <40.265411, 34.969280, 50.533447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.667072, 35.235603, 51.039436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.391174, 35.520161, 50.985504>,  <40.225636, 35.690895, 50.953144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.391174, 35.520161, 50.985504>,  <40.667072, 35.235603, 51.039436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.391174, 35.520161, 50.985504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087481, 0.102975, 0.990829,
		0.718750, 0.695212, -0.008794,
		-0.689742, 0.711390, -0.134831,
		40.184250, 35.733578, 50.945053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.895630, 35.851883, 51.396347>,  <40.667072, 35.235603, 51.039436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.895630, 35.851883, 51.396347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.504539, 35.926231, 51.357330>,  <40.269886, 35.970840, 51.333920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.504539, 35.926231, 51.357330>,  <40.895630, 35.851883, 51.396347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.504539, 35.926231, 51.357330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090333, 0.046880, 0.994808,
		0.189476, 0.981455, -0.029045,
		-0.977721, 0.185869, -0.097540,
		40.211224, 35.981991, 51.328068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.708977, 36.173355, 52.038422>,  <40.895630, 35.851883, 51.396347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.708977, 36.173355, 52.038422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.348949, 36.097740, 51.881374>,  <40.132935, 36.052372, 51.787148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.348949, 36.097740, 51.881374>,  <40.708977, 36.173355, 52.038422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.348949, 36.097740, 51.881374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372701, -0.132874, 0.918389,
		-0.225782, 0.972938, 0.049140,
		-0.900065, -0.189041, -0.392616,
		40.078930, 36.041027, 51.763588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.164391, 36.675240, 52.247833>,  <40.708977, 36.173355, 52.038422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.164391, 36.675240, 52.247833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.007023, 36.316143, 52.168556>,  <39.912601, 36.100685, 52.120991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.007023, 36.316143, 52.168556>,  <40.164391, 36.675240, 52.247833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.007023, 36.316143, 52.168556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372321, -0.041529, 0.927175,
		-0.840595, 0.438558, -0.317910,
		-0.393417, -0.897743, -0.198193,
		39.888996, 36.046822, 52.109097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624302, 36.749084, 52.679893>,  <40.164391, 36.675240, 52.247833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.624302, 36.749084, 52.679893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.593189, 36.360363, 52.590862>,  <39.574524, 36.127129, 52.537441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.593189, 36.360363, 52.590862>,  <39.624302, 36.749084, 52.679893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.593189, 36.360363, 52.590862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114252, -0.213098, 0.970327,
		-0.990403, 0.100900, -0.094457,
		-0.077778, -0.971807, -0.222581,
		39.569855, 36.068821, 52.524090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004498, 36.491943, 52.958286>,  <39.624302, 36.749084, 52.679893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.004498, 36.491943, 52.958286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.245632, 36.177814, 52.901924>,  <39.390312, 35.989338, 52.868107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.245632, 36.177814, 52.901924>,  <39.004498, 36.491943, 52.958286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.245632, 36.177814, 52.901924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252166, -0.355089, 0.900180,
		-0.756965, -0.507133, -0.412093,
		0.602841, -0.785321, -0.140908,
		39.426483, 35.942219, 52.859653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622341, 35.841003, 53.155617>,  <39.004498, 36.491943, 52.958286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622341, 35.841003, 53.155617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.011555, 35.755447, 53.190144>,  <39.245083, 35.704113, 53.210861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.011555, 35.755447, 53.190144>,  <38.622341, 35.841003, 53.155617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.011555, 35.755447, 53.190144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152766, -0.317235, 0.935962,
		-0.172808, -0.923912, -0.341357,
		0.973037, -0.213889, 0.086321,
		39.303467, 35.691280, 53.216042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565964, 35.450695, 53.673058>,  <38.622341, 35.841003, 53.155617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.565964, 35.450695, 53.673058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.962147, 35.500298, 53.648987>,  <39.199856, 35.530060, 53.634544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.962147, 35.500298, 53.648987>,  <38.565964, 35.450695, 53.673058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962147, 35.500298, 53.648987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076765, -0.133630, 0.988054,
		0.114480, -0.983243, -0.141874,
		0.990455, 0.124003, -0.060181,
		39.259285, 35.537498, 53.630932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841263, 34.792213, 53.854721>,  <38.565964, 35.450695, 53.673058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841263, 34.792213, 53.854721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.086029, 35.101124, 53.923012>,  <39.232891, 35.286469, 53.963985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.086029, 35.101124, 53.923012>,  <38.841263, 34.792213, 53.854721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.086029, 35.101124, 53.923012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153538, -0.095761, 0.983492,
		0.775876, -0.628029, 0.059976,
		0.611918, 0.772276, 0.170725,
		39.269604, 35.332806, 53.974228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.236717, 34.620243, 54.368999>,  <38.841263, 34.792213, 53.854721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.236717, 34.620243, 54.368999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.255295, 35.019772, 54.363251>,  <39.266441, 35.259487, 54.359802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.255295, 35.019772, 54.363251>,  <39.236717, 34.620243, 54.368999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.255295, 35.019772, 54.363251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150773, 0.007209, 0.988542,
		0.987477, -0.048078, -0.150260,
		0.046444, 0.998818, -0.014367,
		39.269226, 35.319416, 54.358940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.880573, 34.773548, 54.723091>,  <39.236717, 34.620243, 54.368999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.880573, 34.773548, 54.723091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.622971, 35.079483, 54.729748>,  <39.468410, 35.263046, 54.733742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.622971, 35.079483, 54.729748>,  <39.880573, 34.773548, 54.723091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.622971, 35.079483, 54.729748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103312, 0.065393, 0.992497,
		0.758015, 0.640891, -0.121131,
		-0.644004, 0.764841, 0.016643,
		39.429768, 35.308937, 54.734741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.119358, 35.124680, 55.265663>,  <39.880573, 34.773548, 54.723091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.119358, 35.124680, 55.265663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.748764, 35.261944, 55.203861>,  <39.526409, 35.344303, 55.166782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.748764, 35.261944, 55.203861>,  <40.119358, 35.124680, 55.265663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.748764, 35.261944, 55.203861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191333, -0.075989, 0.978579,
		0.324066, 0.936199, 0.136060,
		-0.926484, 0.343157, -0.154500,
		39.470818, 35.364891, 55.157513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002098, 35.625671, 55.841209>,  <40.119358, 35.124680, 55.265663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.002098, 35.625671, 55.841209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.645561, 35.528381, 55.688190>,  <39.431637, 35.470005, 55.596378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.645561, 35.528381, 55.688190>,  <40.002098, 35.625671, 55.841209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.645561, 35.528381, 55.688190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391361, -0.012995, 0.920146,
		-0.228777, 0.969882, -0.083607,
		-0.891346, -0.243228, -0.382547,
		39.378159, 35.455414, 55.573425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.572510, 36.009048, 56.213108>,  <40.002098, 35.625671, 55.841209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.572510, 36.009048, 56.213108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.368515, 35.697475, 56.067127>,  <39.246120, 35.510532, 55.979538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.368515, 35.697475, 56.067127>,  <39.572510, 36.009048, 56.213108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368515, 35.697475, 56.067127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311273, -0.228402, 0.922465,
		-0.801890, 0.584040, -0.125978,
		-0.509982, -0.778929, -0.364949,
		39.215519, 35.463799, 55.957642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.000610, 36.024605, 56.521561>,  <39.572510, 36.009048, 56.213108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.000610, 36.024605, 56.521561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.989677, 35.651028, 56.379013>,  <38.983120, 35.426880, 56.293484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.989677, 35.651028, 56.379013>,  <39.000610, 36.024605, 56.521561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.989677, 35.651028, 56.379013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182192, -0.345874, 0.920422,
		-0.982883, 0.090082, -0.160705,
		-0.027330, -0.933947, -0.356366,
		38.981480, 35.370842, 56.272102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259586, 35.808125, 56.693237>,  <39.000610, 36.024605, 56.521561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.259586, 35.808125, 56.693237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.571396, 35.558228, 56.675179>,  <38.758480, 35.408287, 56.664345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.571396, 35.558228, 56.675179>,  <38.259586, 35.808125, 56.693237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571396, 35.558228, 56.675179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249782, -0.376137, 0.892261,
		-0.574419, -0.684260, -0.449257,
		0.779521, -0.624748, -0.045144,
		38.805252, 35.370804, 56.661636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638123, 35.413113, 57.009403>,  <38.259586, 35.808125, 56.693237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.638123, 35.413113, 57.009403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.036140, 35.374077, 57.017025>,  <38.274952, 35.350655, 57.021599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.036140, 35.374077, 57.017025>,  <37.638123, 35.413113, 57.009403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.036140, 35.374077, 57.017025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098464, -0.993785, 0.051919,
		0.013869, -0.053538, -0.998469,
		0.995044, -0.097593, 0.019054,
		38.334652, 35.344799, 57.022739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274586, 35.991844, 56.570801>,  <37.638123, 35.413113, 57.009403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.274586, 35.991844, 56.570801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.884735, 35.915367, 56.524235>,  <36.650826, 35.869480, 56.496296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.884735, 35.915367, 56.524235>,  <37.274586, 35.991844, 56.570801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884735, 35.915367, 56.524235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083616, 0.171483, -0.981632,
		0.207658, -0.966454, -0.151143,
		-0.974621, -0.191206, -0.116421,
		36.592350, 35.858009, 56.489307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.215446, 35.541416, 56.027580>,  <37.274586, 35.991844, 56.570801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.215446, 35.541416, 56.027580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.852219, 35.702557, 56.073395>,  <36.634281, 35.799240, 56.100883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.852219, 35.702557, 56.073395>,  <37.215446, 35.541416, 56.027580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852219, 35.702557, 56.073395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056051, 0.154110, -0.986463,
		-0.415048, -0.902198, -0.117363,
		-0.908072, 0.402851, 0.114533,
		36.579796, 35.823410, 56.107754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745861, 35.142956, 55.561462>,  <37.215446, 35.541416, 56.027580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745861, 35.142956, 55.561462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.581619, 35.503635, 55.615635>,  <36.483074, 35.720043, 55.648136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.581619, 35.503635, 55.615635>,  <36.745861, 35.142956, 55.561462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.581619, 35.503635, 55.615635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002837, 0.147263, -0.989094,
		-0.911810, -0.406509, -0.057908,
		-0.410603, 0.901701, 0.135429,
		36.458439, 35.774147, 55.656265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.236462, 35.193958, 55.007561>,  <36.745861, 35.142956, 55.561462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.236462, 35.193958, 55.007561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.303493, 35.578144, 55.096481>,  <36.343712, 35.808655, 55.149834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.303493, 35.578144, 55.096481>,  <36.236462, 35.193958, 55.007561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303493, 35.578144, 55.096481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078941, 0.211696, -0.974142,
		-0.982693, 0.180793, -0.040345,
		0.167577, 0.960468, 0.222304,
		36.353767, 35.866283, 55.163174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832161, 35.484913, 54.418453>,  <36.236462, 35.193958, 55.007561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832161, 35.484913, 54.418453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.052837, 35.784180, 54.565903>,  <36.185242, 35.963741, 54.654373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.052837, 35.784180, 54.565903>,  <35.832161, 35.484913, 54.418453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.052837, 35.784180, 54.565903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023699, 0.427731, -0.903595,
		-0.833712, 0.507241, 0.218245,
		0.551691, 0.748166, 0.368626,
		36.218346, 36.008629, 54.676491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564674, 36.048195, 54.145512>,  <35.832161, 35.484913, 54.418453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564674, 36.048195, 54.145512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.940594, 36.137676, 54.248844>,  <36.166145, 36.191364, 54.310844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.940594, 36.137676, 54.248844>,  <35.564674, 36.048195, 54.145512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.940594, 36.137676, 54.248844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174868, 0.334678, -0.925965,
		-0.293598, 0.915395, 0.275412,
		0.939799, 0.223701, 0.258335,
		36.222534, 36.204788, 54.326344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716339, 36.707172, 53.820663>,  <35.564674, 36.048195, 54.145512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716339, 36.707172, 53.820663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.076553, 36.554348, 53.903671>,  <36.292683, 36.462654, 53.953476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.076553, 36.554348, 53.903671>,  <35.716339, 36.707172, 53.820663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076553, 36.554348, 53.903671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328405, 0.284930, -0.900536,
		0.284930, 0.879116, 0.382060,
		0.900536, -0.382060, 0.207521,
		36.346714, 36.439732, 53.965927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240509, 37.154308, 53.542114>,  <35.716339, 36.707172, 53.820663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240509, 37.154308, 53.542114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.424946, 36.804230, 53.600666>,  <36.535606, 36.594181, 53.635796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.424946, 36.804230, 53.600666>,  <36.240509, 37.154308, 53.542114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424946, 36.804230, 53.600666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414319, 0.066464, -0.907702,
		0.784689, 0.479178, 0.393257,
		0.461088, -0.875198, 0.146379,
		36.563271, 36.541672, 53.644581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835205, 37.260689, 53.323246>,  <36.240509, 37.154308, 53.542114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835205, 37.260689, 53.323246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.837040, 36.861355, 53.300262>,  <36.838142, 36.621754, 53.286472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.837040, 36.861355, 53.300262>,  <36.835205, 37.260689, 53.323246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.837040, 36.861355, 53.300262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402219, 0.054449, -0.913923,
		0.915532, -0.018916, 0.401800,
		0.004589, -0.998337, -0.057458,
		36.838417, 36.561855, 53.283024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500053, 36.930702, 53.282555>,  <36.835205, 37.260689, 53.323246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500053, 36.930702, 53.282555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.255116, 36.660385, 53.118439>,  <37.108154, 36.498196, 53.019970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.255116, 36.660385, 53.118439>,  <37.500053, 36.930702, 53.282555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.255116, 36.660385, 53.118439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621741, -0.091079, -0.777909,
		0.488337, -0.731442, 0.475940,
		-0.612344, -0.675794, -0.410290,
		37.071411, 36.457645, 52.995350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920860, 36.542046, 52.878056>,  <37.500053, 36.930702, 53.282555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920860, 36.542046, 52.878056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.553326, 36.457130, 52.744984>,  <37.332806, 36.406181, 52.665142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.553326, 36.457130, 52.744984>,  <37.920860, 36.542046, 52.878056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553326, 36.457130, 52.744984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340275, 0.000788, -0.940326,
		0.199885, -0.977206, 0.071513,
		-0.918836, -0.212291, -0.332676,
		37.277676, 36.393444, 52.645180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114285, 35.990997, 52.513138>,  <37.920860, 36.542046, 52.878056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114285, 35.990997, 52.513138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.762905, 36.138210, 52.391235>,  <37.552078, 36.226540, 52.318092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.762905, 36.138210, 52.391235>,  <38.114285, 35.990997, 52.513138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762905, 36.138210, 52.391235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334111, 0.017129, -0.942378,
		-0.341609, -0.929654, -0.138011,
		-0.878449, 0.368036, -0.304756,
		37.499371, 36.248623, 52.299809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938484, 35.552261, 51.871799>,  <38.114285, 35.990997, 52.513138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.938484, 35.552261, 51.871799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.688038, 35.862404, 51.838791>,  <37.537769, 36.048489, 51.818985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.688038, 35.862404, 51.838791>,  <37.938484, 35.552261, 51.871799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.688038, 35.862404, 51.838791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138304, 0.006279, -0.990370,
		-0.767368, -0.631498, -0.111165,
		-0.626114, 0.775352, -0.082520,
		37.500202, 36.095009, 51.814034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.445885, 35.458225, 51.418930>,  <37.938484, 35.552261, 51.871799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.445885, 35.458225, 51.418930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.490486, 35.855358, 51.436172>,  <37.517246, 36.093636, 51.446518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.490486, 35.855358, 51.436172>,  <37.445885, 35.458225, 51.418930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490486, 35.855358, 51.436172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138403, 0.027441, -0.989996,
		-0.984080, 0.116350, -0.134350,
		0.111499, 0.992829, 0.043107,
		37.523937, 36.153206, 51.449104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193321, 35.635925, 50.808018>,  <37.445885, 35.458225, 51.418930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193321, 35.635925, 50.808018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.355957, 35.982533, 50.923840>,  <37.453537, 36.190495, 50.993332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.355957, 35.982533, 50.923840>,  <37.193321, 35.635925, 50.808018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355957, 35.982533, 50.923840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221746, 0.213857, -0.951364,
		-0.886294, 0.451018, -0.105195,
		0.406586, 0.866515, 0.289551,
		37.477932, 36.242489, 51.010704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909729, 36.158989, 50.467163>,  <37.193321, 35.635925, 50.808018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.909729, 36.158989, 50.467163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.217163, 36.375893, 50.602947>,  <37.401623, 36.506035, 50.684418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.217163, 36.375893, 50.602947>,  <36.909729, 36.158989, 50.467163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217163, 36.375893, 50.602947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140264, 0.374868, -0.916406,
		-0.624182, 0.751949, 0.212058,
		0.768585, 0.542260, 0.339457,
		37.447739, 36.538570, 50.704784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817295, 36.849152, 50.397675>,  <36.909729, 36.158989, 50.467163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817295, 36.849152, 50.397675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.211872, 36.783695, 50.392624>,  <37.448616, 36.744419, 50.389595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.211872, 36.783695, 50.392624>,  <36.817295, 36.849152, 50.397675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211872, 36.783695, 50.392624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024683, 0.223970, -0.974283,
		0.162263, 0.960759, 0.224972,
		0.986439, -0.163643, -0.012628,
		37.507805, 36.734604, 50.388836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157360, 37.445488, 50.052933>,  <36.817295, 36.849152, 50.397675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157360, 37.445488, 50.052933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.399555, 37.130089, 50.009743>,  <37.544872, 36.940849, 49.983829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.399555, 37.130089, 50.009743>,  <37.157360, 37.445488, 50.052933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.399555, 37.130089, 50.009743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070478, 0.188266, -0.979586,
		0.792727, 0.585518, 0.169564,
		0.605489, -0.788495, -0.107977,
		37.581203, 36.893539, 49.977348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780022, 37.640663, 49.602921>,  <37.157360, 37.445488, 50.052933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.780022, 37.640663, 49.602921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.828968, 37.243679, 49.599995>,  <37.858337, 37.005489, 49.598240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.828968, 37.243679, 49.599995>,  <37.780022, 37.640663, 49.602921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.828968, 37.243679, 49.599995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327816, 0.047377, -0.943553,
		0.936783, 0.113062, 0.331141,
		0.122369, -0.992458, -0.007318,
		37.865677, 36.945942, 49.597797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238621, 37.663734, 49.195606>,  <37.780022, 37.640663, 49.602921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.238621, 37.663734, 49.195606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.096436, 37.289902, 49.190037>,  <38.011124, 37.065601, 49.186695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.096436, 37.289902, 49.190037>,  <38.238621, 37.663734, 49.195606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096436, 37.289902, 49.190037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068714, -0.011276, -0.997573,
		0.932161, -0.355558, 0.068227,
		-0.355464, -0.934586, -0.013920,
		37.989796, 37.009525, 49.185860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.473282, 28.651352, 32.283646> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.190933, 28.756344, 32.546810>,  <38.021523, 28.819340, 32.704708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.190933, 28.756344, 32.546810>,  <38.473282, 28.651352, 32.283646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190933, 28.756344, 32.546810> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586588, 0.737256, 0.335213,
		-0.397062, 0.622541, -0.674377,
		-0.705872, 0.262481, 0.657912,
		37.979172, 28.835089, 32.744183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424747, 29.383123, 32.326527>,  <38.473282, 28.651352, 32.283646>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.424747, 29.383123, 32.326527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.258865, 29.261440, 32.669567>,  <38.159336, 29.188431, 32.875393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.258865, 29.261440, 32.669567>,  <38.424747, 29.383123, 32.326527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258865, 29.261440, 32.669567> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542412, 0.674083, 0.501400,
		-0.730622, 0.673106, -0.114540,
		-0.414705, -0.304206, 0.857601,
		38.134453, 29.170179, 32.926846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181725, 29.952747, 32.629414>,  <38.424747, 29.383123, 32.326527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181725, 29.952747, 32.629414> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.223263, 29.686472, 32.924999>,  <38.248188, 29.526707, 33.102352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.223263, 29.686472, 32.924999>,  <38.181725, 29.952747, 32.629414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.223263, 29.686472, 32.924999> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496722, 0.678404, 0.541327,
		-0.861674, 0.310844, 0.401116,
		0.103850, -0.665691, 0.738966,
		38.254417, 29.486765, 33.146690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898731, 30.239033, 33.325485>,  <38.181725, 29.952747, 32.629414>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.898731, 30.239033, 33.325485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.135998, 29.934561, 33.430374>,  <38.278358, 29.751877, 33.493305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.135998, 29.934561, 33.430374>,  <37.898731, 30.239033, 33.325485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135998, 29.934561, 33.430374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532537, 0.615237, 0.581281,
		-0.603786, -0.205156, 0.770295,
		0.593167, -0.761179, 0.262218,
		38.313950, 29.706207, 33.509041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916351, 30.256289, 34.078129>,  <37.898731, 30.239033, 33.325485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.916351, 30.256289, 34.078129> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.231525, 30.018986, 34.012154>,  <38.420631, 29.876604, 33.972569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.231525, 30.018986, 34.012154>,  <37.916351, 30.256289, 34.078129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.231525, 30.018986, 34.012154> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475667, 0.416328, 0.774862,
		-0.391022, -0.688998, 0.610232,
		0.787935, -0.593256, -0.164940,
		38.467907, 29.841009, 33.962673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134457, 29.870968, 34.732792>,  <37.916351, 30.256289, 34.078129>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134457, 29.870968, 34.732792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.458622, 29.883247, 34.498768>,  <38.653122, 29.890615, 34.358353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.458622, 29.883247, 34.498768>,  <38.134457, 29.870968, 34.732792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.458622, 29.883247, 34.498768> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506600, 0.464866, 0.726124,
		0.294265, -0.884849, 0.361180,
		0.810410, 0.030699, -0.585058,
		38.701744, 29.892456, 34.323250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774632, 29.719929, 35.173698>,  <38.134457, 29.870968, 34.732792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.774632, 29.719929, 35.173698> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.882847, 29.938398, 34.856586>,  <38.947777, 30.069481, 34.666317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.882847, 29.938398, 34.856586>,  <38.774632, 29.719929, 35.173698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882847, 29.938398, 34.856586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578504, 0.565998, 0.587350,
		0.769508, -0.617527, -0.162841,
		0.270537, 0.546174, -0.792782,
		38.964008, 30.102251, 34.618752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493195, 29.755737, 35.199535>,  <38.774632, 29.719929, 35.173698>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.493195, 29.755737, 35.199535> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.387379, 30.077509, 34.986778>,  <39.323887, 30.270573, 34.859123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.387379, 30.077509, 34.986778>,  <39.493195, 29.755737, 35.199535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387379, 30.077509, 34.986778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750266, 0.518203, 0.410568,
		0.605902, -0.290450, -0.740623,
		-0.264543, 0.804428, -0.531895,
		39.308014, 30.318838, 34.827209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.144535, 30.089575, 35.101185>,  <39.493195, 29.755737, 35.199535>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.144535, 30.089575, 35.101185> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.876648, 30.372454, 35.010544>,  <39.715916, 30.542181, 34.956158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.876648, 30.372454, 35.010544>,  <40.144535, 30.089575, 35.101185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.876648, 30.372454, 35.010544> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574439, 0.686726, 0.445451,
		0.470637, 0.168156, -0.866155,
		-0.669717, 0.707199, -0.226603,
		39.675732, 30.584614, 34.942562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.577034, 30.497198, 34.771473>,  <40.144535, 30.089575, 35.101185>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.577034, 30.497198, 34.771473> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.270515, 30.736797, 34.864422>,  <40.086605, 30.880556, 34.920193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.270515, 30.736797, 34.864422>,  <40.577034, 30.497198, 34.771473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.270515, 30.736797, 34.864422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638574, 0.670184, 0.378254,
		0.070840, 0.438241, -0.896062,
		-0.766293, 0.598997, 0.232374,
		40.040627, 30.916496, 34.934135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.708923, 31.188795, 34.501080>,  <40.577034, 30.497198, 34.771473>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.708923, 31.188795, 34.501080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.411556, 31.258699, 34.759315>,  <40.233135, 31.300642, 34.914257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.411556, 31.258699, 34.759315>,  <40.708923, 31.188795, 34.501080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.411556, 31.258699, 34.759315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537307, 0.730862, 0.420883,
		-0.398287, 0.659773, -0.637234,
		-0.743417, 0.174759, 0.645593,
		40.188530, 31.311127, 34.952995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.647743, 31.939091, 34.474197>,  <40.708923, 31.188795, 34.501080>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.647743, 31.939091, 34.474197> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.455132, 31.818182, 34.803261>,  <40.339565, 31.745636, 35.000698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.455132, 31.818182, 34.803261>,  <40.647743, 31.939091, 34.474197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.455132, 31.818182, 34.803261> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361621, 0.786497, 0.500652,
		-0.798350, 0.538567, -0.269411,
		-0.481526, -0.302271, 0.822657,
		40.310673, 31.727501, 35.050056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.245754, 32.457565, 34.750645>,  <40.647743, 31.939091, 34.474197>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.245754, 32.457565, 34.750645> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.349579, 32.229038, 35.062084>,  <40.411873, 32.091923, 35.248947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.349579, 32.229038, 35.062084>,  <40.245754, 32.457565, 34.750645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.349579, 32.229038, 35.062084> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331484, 0.809959, 0.483823,
		-0.907054, 0.132513, 0.399617,
		0.259561, -0.571320, 0.778602,
		40.427448, 32.057644, 35.295666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.410427, 32.946529, 35.288067>,  <40.245754, 32.457565, 34.750645>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.410427, 32.946529, 35.288067> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.509346, 32.608521, 35.477715>,  <40.568695, 32.405716, 35.591503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.509346, 32.608521, 35.477715>,  <40.410427, 32.946529, 35.288067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.509346, 32.608521, 35.477715> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627101, 0.512596, 0.586506,
		-0.738640, 0.152280, 0.656675,
		0.247295, -0.845019, 0.474119,
		40.583534, 32.355015, 35.619949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.486897, 33.183182, 36.035698>,  <40.410427, 32.946529, 35.288067>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.486897, 33.183182, 36.035698> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.712971, 32.857677, 35.981491>,  <40.848614, 32.662376, 35.948967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.712971, 32.857677, 35.981491>,  <40.486897, 33.183182, 36.035698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.712971, 32.857677, 35.981491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695881, 0.382043, 0.608105,
		-0.443080, -0.437992, 0.782204,
		0.565181, -0.813760, -0.135515,
		40.882526, 32.613548, 35.940838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.837975, 33.207531, 36.640064>,  <40.486897, 33.183182, 36.035698>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.837975, 33.207531, 36.640064> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.034683, 32.943501, 36.412922>,  <41.152706, 32.785080, 36.276638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.034683, 32.943501, 36.412922>,  <40.837975, 33.207531, 36.640064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.034683, 32.943501, 36.412922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854022, 0.238521, 0.462336,
		-0.169735, -0.712322, 0.681020,
		0.491770, -0.660080, -0.567853,
		41.182213, 32.745476, 36.242565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.177341, 32.838497, 37.076721>,  <40.837975, 33.207531, 36.640064>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.177341, 32.838497, 37.076721> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.402996, 32.766758, 36.754333>,  <41.538391, 32.723713, 36.560902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.402996, 32.766758, 36.754333>,  <41.177341, 32.838497, 37.076721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.402996, 32.766758, 36.754333> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815250, 0.275652, 0.509297,
		0.130824, -0.944378, 0.301721,
		0.564139, -0.179350, -0.805965,
		41.572239, 32.712952, 36.512543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.712452, 32.364445, 37.264271>,  <41.177341, 32.838497, 37.076721>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.712452, 32.364445, 37.264271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.855595, 32.585018, 36.962845>,  <41.941479, 32.717361, 36.781990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.855595, 32.585018, 36.962845>,  <41.712452, 32.364445, 37.264271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.855595, 32.585018, 36.962845> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745115, 0.317766, 0.586369,
		0.562801, -0.771327, -0.297168,
		0.357852, 0.551434, -0.753567,
		41.962952, 32.750446, 36.736774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.512856, 32.406712, 37.247822>,  <41.712452, 32.364445, 37.264271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.512856, 32.406712, 37.247822> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.414902, 32.703125, 36.997734>,  <42.356129, 32.880974, 36.847683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.414902, 32.703125, 36.997734>,  <42.512856, 32.406712, 37.247822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.414902, 32.703125, 36.997734> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617313, 0.616423, 0.488822,
		0.747633, -0.266248, -0.608405,
		-0.244887, 0.741036, -0.625216,
		42.341434, 32.925434, 36.810169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.109032, 32.583775, 36.918339>,  <42.512856, 32.406712, 37.247822>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.109032, 32.583775, 36.918339> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.862659, 32.898857, 36.923382>,  <42.714836, 33.087906, 36.926407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.862659, 32.898857, 36.923382>,  <43.109032, 32.583775, 36.918339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.862659, 32.898857, 36.923382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714798, 0.552051, 0.429305,
		0.331206, 0.273431, -0.903072,
		-0.615927, 0.787703, 0.012605,
		42.677883, 33.135166, 36.927162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.433796, 33.320271, 36.718288>,  <43.109032, 32.583775, 36.918339>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.433796, 33.320271, 36.718288> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.131622, 33.357533, 36.977718>,  <42.950317, 33.379890, 37.133377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.131622, 33.357533, 36.977718>,  <43.433796, 33.320271, 36.718288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.131622, 33.357533, 36.977718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576510, 0.564902, 0.590358,
		-0.311385, 0.819883, -0.480449,
		-0.755431, 0.093155, 0.648572,
		42.904991, 33.385479, 37.172291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.974331, 33.542381, 36.394291>,  <43.433796, 33.320271, 36.718288>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.974331, 33.542381, 36.394291> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.161217, 33.861465, 36.241779>,  <44.273346, 34.052914, 36.150272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.161217, 33.861465, 36.241779>,  <43.974331, 33.542381, 36.394291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.161217, 33.861465, 36.241779> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450188, -0.156517, -0.879109,
		-0.760950, 0.582378, 0.285992,
		0.467211, 0.797708, -0.381281,
		44.301380, 34.100777, 36.127396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.467602, 33.982346, 35.963924>,  <43.974331, 33.542381, 36.394291>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.467602, 33.982346, 35.963924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.842468, 34.045891, 35.839676>,  <44.067387, 34.084019, 35.765125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.842468, 34.045891, 35.839676>,  <43.467602, 33.982346, 35.963924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.842468, 34.045891, 35.839676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285455, -0.162759, -0.944471,
		-0.200596, 0.973793, -0.107185,
		0.937164, 0.158861, -0.310623,
		44.123619, 34.093548, 35.746490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.465130, 34.408920, 35.435600>,  <43.467602, 33.982346, 35.963924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.465130, 34.408920, 35.435600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.787395, 34.178238, 35.381462>,  <43.980755, 34.039829, 35.348980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.787395, 34.178238, 35.381462>,  <43.465130, 34.408920, 35.435600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.787395, 34.178238, 35.381462> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265186, -0.146814, -0.952954,
		0.529702, 0.803652, -0.271217,
		0.805663, -0.576705, -0.135350,
		44.029095, 34.005226, 35.340858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.628635, 34.421021, 34.665146>,  <43.465130, 34.408920, 35.435600>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.628635, 34.421021, 34.665146> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.837311, 34.107719, 34.800411>,  <43.962517, 33.919739, 34.881569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.837311, 34.107719, 34.800411>,  <43.628635, 34.421021, 34.665146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.837311, 34.107719, 34.800411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131121, -0.465279, -0.875399,
		0.842998, 0.412348, -0.345432,
		0.521691, -0.783253, 0.338162,
		43.993816, 33.872742, 34.901859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.127274, 34.150623, 34.106953>,  <43.628635, 34.421021, 34.665146>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.127274, 34.150623, 34.106953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.058243, 33.851959, 34.363926>,  <44.016823, 33.672760, 34.518108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.058243, 33.851959, 34.363926>,  <44.127274, 34.150623, 34.106953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.058243, 33.851959, 34.363926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033290, -0.647424, -0.761402,
		0.984433, -0.152787, 0.086874,
		-0.172576, -0.746658, 0.642432,
		44.006470, 33.627960, 34.556656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.514565, 33.557724, 33.850777>,  <44.127274, 34.150623, 34.106953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.514565, 33.557724, 33.850777> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.279224, 33.363365, 34.109310>,  <44.138020, 33.246750, 34.264431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.279224, 33.363365, 34.109310>,  <44.514565, 33.557724, 33.850777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.279224, 33.363365, 34.109310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157818, -0.714942, -0.681139,
		0.793053, -0.502754, 0.343956,
		-0.588354, -0.485897, 0.646331,
		44.102718, 33.217598, 34.303211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.678226, 32.930099, 33.825108>,  <44.514565, 33.557724, 33.850777>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.678226, 32.930099, 33.825108> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.310669, 32.882809, 33.975655>,  <44.090134, 32.854435, 34.065983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.310669, 32.882809, 33.975655>,  <44.678226, 32.930099, 33.825108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.310669, 32.882809, 33.975655> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241905, -0.584774, -0.774287,
		0.311632, -0.802535, 0.508747,
		-0.918895, -0.118224, 0.376372,
		44.035000, 32.847340, 34.088566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.626045, 32.189034, 33.788017>,  <44.678226, 32.930099, 33.825108>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.626045, 32.189034, 33.788017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.244370, 32.308102, 33.775921>,  <44.015366, 32.379543, 33.768661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.244370, 32.308102, 33.775921>,  <44.626045, 32.189034, 33.788017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.244370, 32.308102, 33.775921> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202971, -0.718245, -0.665527,
		-0.219832, -0.628900, 0.745761,
		-0.954189, 0.297672, -0.030245,
		43.958115, 32.397404, 33.766846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.187428, 31.601711, 33.892021>,  <44.626045, 32.189034, 33.788017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.187428, 31.601711, 33.892021> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.939484, 31.879084, 33.745090>,  <43.790718, 32.045506, 33.656933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.939484, 31.879084, 33.745090>,  <44.187428, 31.601711, 33.892021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.939484, 31.879084, 33.745090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477701, -0.704819, -0.524434,
		-0.622554, -0.149607, 0.768144,
		-0.619862, 0.693432, -0.367321,
		43.753525, 32.087112, 33.634895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.595009, 31.334728, 33.985901>,  <44.187428, 31.601711, 33.892021>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.595009, 31.334728, 33.985901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.513325, 31.626158, 33.724373>,  <43.464314, 31.801016, 33.567455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.513325, 31.626158, 33.724373>,  <43.595009, 31.334728, 33.985901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.513325, 31.626158, 33.724373> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723567, -0.562196, -0.400481,
		-0.659355, 0.391302, 0.641976,
		-0.204208, 0.728572, -0.653820,
		43.452061, 31.844730, 33.528225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.936073, 31.460861, 34.053699>,  <43.595009, 31.334728, 33.985901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.936073, 31.460861, 34.053699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.976395, 31.631823, 33.694328>,  <43.000587, 31.734400, 33.478706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.976395, 31.631823, 33.694328>,  <42.936073, 31.460861, 34.053699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.976395, 31.631823, 33.694328> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851654, -0.429752, -0.299996,
		-0.514319, 0.795387, 0.320680,
		0.100800, 0.427402, -0.898425,
		43.006634, 31.760044, 33.424801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.326439, 31.733059, 33.885368>,  <42.936073, 31.460861, 34.053699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.326439, 31.733059, 33.885368> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.508663, 31.686565, 33.532333>,  <42.618000, 31.658670, 33.320515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.508663, 31.686565, 33.532333>,  <42.326439, 31.733059, 33.885368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.508663, 31.686565, 33.532333> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846509, -0.363362, -0.389090,
		-0.275472, 0.924369, -0.263925,
		0.455563, -0.116232, -0.882583,
		42.645332, 31.651695, 33.267559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.760006, 31.878553, 33.460674>,  <42.326439, 31.733059, 33.885368>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.760006, 31.878553, 33.460674> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.031696, 31.697865, 33.229294>,  <42.194710, 31.589451, 33.090466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.031696, 31.697865, 33.229294>,  <41.760006, 31.878553, 33.460674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.031696, 31.697865, 33.229294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730818, -0.488802, -0.476421,
		-0.067538, 0.746337, -0.662132,
		0.679222, -0.451722, -0.578450,
		42.235462, 31.562347, 33.055759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.542179, 31.913929, 32.854012>,  <41.760006, 31.878553, 33.460674>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.542179, 31.913929, 32.854012> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.779240, 31.592154, 32.837776>,  <41.921474, 31.399088, 32.828037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.779240, 31.592154, 32.837776>,  <41.542179, 31.913929, 32.854012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.779240, 31.592154, 32.837776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760871, -0.542600, -0.355896,
		0.264274, 0.241801, -0.933644,
		0.592651, -0.804437, -0.040584,
		41.957035, 31.350822, 32.825600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.405895, 31.549809, 32.171738>,  <41.542179, 31.913929, 32.854012>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.405895, 31.549809, 32.171738> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.567532, 31.261908, 32.397541>,  <41.664513, 31.089167, 32.533024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.567532, 31.261908, 32.397541>,  <41.405895, 31.549809, 32.171738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.567532, 31.261908, 32.397541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661885, -0.656040, -0.362657,
		0.631361, -0.227091, -0.741493,
		0.404093, -0.719750, 0.564507,
		41.688759, 31.045982, 32.566895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.337528, 30.899437, 31.705996>,  <41.405895, 31.549809, 32.171738>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.337528, 30.899437, 31.705996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.384983, 30.769709, 32.081387>,  <41.413456, 30.691872, 32.306622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.384983, 30.769709, 32.081387>,  <41.337528, 30.899437, 31.705996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.384983, 30.769709, 32.081387> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528492, -0.820779, -0.216835,
		0.840607, -0.470252, -0.268779,
		0.118641, -0.324321, 0.938477,
		41.420574, 30.672413, 32.362930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.594063, 30.221392, 31.632519>,  <41.337528, 30.899437, 31.705996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.594063, 30.221392, 31.632519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.426559, 30.268879, 31.992640>,  <41.326057, 30.297371, 32.208714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.426559, 30.268879, 31.992640>,  <41.594063, 30.221392, 31.632519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.426559, 30.268879, 31.992640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497887, -0.859136, -0.118295,
		0.759439, -0.497786, 0.418882,
		-0.418762, 0.118718, 0.900303,
		41.300930, 30.304495, 32.262730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.834015, 29.593937, 32.010693>,  <41.594063, 30.221392, 31.632519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.834015, 29.593937, 32.010693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.503830, 29.761709, 32.161789>,  <41.305717, 29.862371, 32.252449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.503830, 29.761709, 32.161789>,  <41.834015, 29.593937, 32.010693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.503830, 29.761709, 32.161789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522517, -0.820938, -0.230296,
		0.213511, -0.387479, 0.896813,
		-0.825463, 0.419430, 0.377744,
		41.256191, 29.887539, 32.275112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.416420, 29.053671, 32.264980>,  <41.834015, 29.593937, 32.010693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.416420, 29.053671, 32.264980> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.125374, 29.327509, 32.282429>,  <40.950745, 29.491812, 32.292900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.125374, 29.327509, 32.282429>,  <41.416420, 29.053671, 32.264980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.125374, 29.327509, 32.282429> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678060, -0.708120, -0.196978,
		-0.103960, -0.172904, 0.979437,
		-0.727617, 0.684595, 0.043623,
		40.907089, 29.532887, 32.295517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.824371, 28.764196, 32.632610>,  <41.416420, 29.053671, 32.264980>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.824371, 28.764196, 32.632610> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.655704, 29.060057, 32.422806>,  <40.554504, 29.237574, 32.296925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.655704, 29.060057, 32.422806>,  <40.824371, 28.764196, 32.632610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.655704, 29.060057, 32.422806> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799699, -0.576012, -0.169383,
		-0.427410, 0.348029, 0.834384,
		-0.421665, 0.739652, -0.524512,
		40.529205, 29.281952, 32.265453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.314396, 28.963902, 32.955112>,  <40.824371, 28.764196, 32.632610>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.314396, 28.963902, 32.955112> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.217140, 29.081627, 32.585407>,  <40.158787, 29.152262, 32.363583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.217140, 29.081627, 32.585407>,  <40.314396, 28.963902, 32.955112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.217140, 29.081627, 32.585407> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801412, -0.597762, 0.020479,
		-0.546462, 0.745694, 0.381209,
		-0.243144, 0.294314, -0.924262,
		40.144196, 29.169922, 32.308128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.388988, 35.652390, 45.546429> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.990646, 35.641953, 45.511600>,  <40.751640, 35.635689, 45.490704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.990646, 35.641953, 45.511600>,  <41.388988, 35.652390, 45.546429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.990646, 35.641953, 45.511600> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090591, -0.205828, -0.974386,
		0.007507, -0.978240, 0.207340,
		-0.995860, -0.026098, -0.087075,
		40.691887, 35.634125, 45.485477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.320446, 35.224083, 45.059799>,  <41.388988, 35.652390, 45.546429>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.320446, 35.224083, 45.059799> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.948715, 35.371777, 45.061779>,  <40.725677, 35.460392, 45.062969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.948715, 35.371777, 45.061779>,  <41.320446, 35.224083, 45.059799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.948715, 35.371777, 45.061779> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152773, -0.372237, -0.915478,
		-0.336174, -0.851535, 0.402337,
		-0.929326, 0.369226, 0.004955,
		40.669918, 35.482544, 45.063267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.030758, 34.837025, 44.607830>,  <41.320446, 35.224083, 45.059799>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.030758, 34.837025, 44.607830> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.788197, 35.153442, 44.640148>,  <40.642658, 35.343292, 44.659538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.788197, 35.153442, 44.640148>,  <41.030758, 34.837025, 44.607830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.788197, 35.153442, 44.640148> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237022, -0.082837, -0.967966,
		-0.759008, -0.606129, 0.237726,
		-0.606405, 0.791041, 0.080792,
		40.606274, 35.390755, 44.664387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.321827, 34.723221, 44.250900>,  <41.030758, 34.837025, 44.607830>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.321827, 34.723221, 44.250900> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.382351, 35.118061, 44.271824>,  <40.418663, 35.354965, 44.284378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.382351, 35.118061, 44.271824>,  <40.321827, 34.723221, 44.250900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.382351, 35.118061, 44.271824> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199130, 0.082269, -0.976514,
		-0.968222, 0.137336, 0.209009,
		0.151306, 0.987102, 0.052307,
		40.427742, 35.414192, 44.287518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691154, 35.070465, 43.880627>,  <40.321827, 34.723221, 44.250900>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.691154, 35.070465, 43.880627> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002926, 35.319180, 43.911301>,  <40.189987, 35.468407, 43.929707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002926, 35.319180, 43.911301>,  <39.691154, 35.070465, 43.880627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.002926, 35.319180, 43.911301> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162125, 0.318417, -0.933984,
		-0.605156, 0.715537, 0.348989,
		0.779424, 0.621786, 0.076685,
		40.236752, 35.505714, 43.934307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.450115, 35.748348, 43.673809>,  <39.691154, 35.070465, 43.880627>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.450115, 35.748348, 43.673809> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.846779, 35.742233, 43.622616>,  <40.084778, 35.738564, 43.591900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.846779, 35.742233, 43.622616>,  <39.450115, 35.748348, 43.673809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.846779, 35.742233, 43.622616> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112900, 0.376055, -0.919694,
		0.062191, 0.926471, 0.371191,
		0.991658, -0.015290, -0.127986,
		40.144276, 35.737648, 43.584221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.509724, 36.224392, 43.248451>,  <39.450115, 35.748348, 43.673809>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.509724, 36.224392, 43.248451> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.868263, 36.048862, 43.223194>,  <40.083385, 35.943542, 43.208038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.868263, 36.048862, 43.223194>,  <39.509724, 36.224392, 43.248451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.868263, 36.048862, 43.223194> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118170, 0.373756, -0.919969,
		0.427308, 0.817152, 0.386872,
		0.896350, -0.438827, -0.063146,
		40.137169, 35.917213, 43.204250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.018463, 36.789345, 43.024765>,  <39.509724, 36.224392, 43.248451>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.018463, 36.789345, 43.024765> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.202969, 36.445648, 42.936279>,  <40.313671, 36.239429, 42.883186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.202969, 36.445648, 42.936279>,  <40.018463, 36.789345, 43.024765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.202969, 36.445648, 42.936279> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101708, 0.298888, -0.948853,
		0.881415, 0.415171, 0.225258,
		0.461263, -0.859243, -0.221218,
		40.341347, 36.187874, 42.869915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.737427, 37.005981, 42.730679>,  <40.018463, 36.789345, 43.024765>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.737427, 37.005981, 42.730679> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.690098, 36.630558, 42.600994>,  <40.661701, 36.405304, 42.523182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.690098, 36.630558, 42.600994>,  <40.737427, 37.005981, 42.730679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.690098, 36.630558, 42.600994> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260629, 0.285700, -0.922197,
		0.958160, -0.193619, 0.210809,
		-0.118327, -0.938556, -0.324209,
		40.654598, 36.348991, 42.503731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.253784, 36.914326, 42.265820>,  <40.737427, 37.005981, 42.730679>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.253784, 36.914326, 42.265820> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.013134, 36.614468, 42.155487>,  <40.868744, 36.434555, 42.089287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.013134, 36.614468, 42.155487>,  <41.253784, 36.914326, 42.265820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.013134, 36.614468, 42.155487> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207383, 0.186890, -0.960242,
		0.771389, -0.634907, 0.043026,
		-0.601623, -0.749643, -0.275834,
		40.832645, 36.389576, 42.072735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.656647, 36.583225, 41.866364>,  <41.253784, 36.914326, 42.265820>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.656647, 36.583225, 41.866364> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.291965, 36.457321, 41.760746>,  <41.073154, 36.381779, 41.697376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.291965, 36.457321, 41.760746>,  <41.656647, 36.583225, 41.866364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.291965, 36.457321, 41.760746> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194028, 0.236641, -0.952026,
		0.362144, -0.919200, -0.154674,
		-0.911704, -0.314759, -0.264048,
		41.018456, 36.362892, 41.681530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.791214, 36.135719, 41.327919>,  <41.656647, 36.583225, 41.866364>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.791214, 36.135719, 41.327919> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.410076, 36.252190, 41.293720>,  <41.181393, 36.322071, 41.273201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.410076, 36.252190, 41.293720>,  <41.791214, 36.135719, 41.327919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.410076, 36.252190, 41.293720> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157958, 0.235323, -0.958996,
		-0.259122, -0.927274, -0.270219,
		-0.952840, 0.291180, -0.085493,
		41.124226, 36.339542, 41.268074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.510483, 35.837521, 40.716301>,  <41.791214, 36.135719, 41.327919>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.510483, 35.837521, 40.716301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.326992, 36.186031, 40.786095>,  <41.216896, 36.395138, 40.827972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.326992, 36.186031, 40.786095>,  <41.510483, 35.837521, 40.716301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.326992, 36.186031, 40.786095> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154381, 0.271527, -0.949968,
		-0.875063, -0.408839, -0.259065,
		-0.458727, 0.871277, 0.174486,
		41.189373, 36.447414, 40.838440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.523396, 35.167641, 40.868694>,  <41.510483, 35.837521, 40.716301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.523396, 35.167641, 40.868694> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.577213, 35.363369, 41.213360>,  <41.609505, 35.480808, 41.420158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.577213, 35.363369, 41.213360>,  <41.523396, 35.167641, 40.868694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.577213, 35.363369, 41.213360> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565997, 0.751706, -0.338505,
		-0.813354, -0.442154, 0.378094,
		0.134544, 0.489324, 0.861661,
		41.617577, 35.510166, 41.471859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.516300, 34.433067, 40.797741>,  <41.523396, 35.167641, 40.868694>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.516300, 34.433067, 40.797741> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.729202, 34.094910, 40.779774>,  <41.856945, 33.892017, 40.768993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.729202, 34.094910, 40.779774>,  <41.516300, 34.433067, 40.797741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.729202, 34.094910, 40.779774> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371791, -0.281089, 0.884738,
		-0.760574, -0.454209, -0.463920,
		0.532258, -0.845389, -0.044918,
		41.888882, 33.841293, 40.766300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.010056, 33.774994, 40.784878>,  <41.516300, 34.433067, 40.797741>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.010056, 33.774994, 40.784878> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.377003, 33.697132, 40.923759>,  <41.597172, 33.650417, 41.007088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.377003, 33.697132, 40.923759>,  <41.010056, 33.774994, 40.784878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.377003, 33.697132, 40.923759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394010, -0.320201, 0.861526,
		-0.056521, -0.927137, -0.370435,
		0.917367, -0.194649, 0.347204,
		41.652214, 33.638737, 41.027920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.022758, 33.096386, 41.007214>,  <41.010056, 33.774994, 40.784878>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.022758, 33.096386, 41.007214> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.339333, 33.254967, 41.193310>,  <41.529278, 33.350117, 41.304970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.339333, 33.254967, 41.193310>,  <41.022758, 33.096386, 41.007214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.339333, 33.254967, 41.193310> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356680, -0.318577, 0.878230,
		0.496393, -0.861007, -0.110726,
		0.791438, 0.396454, 0.465243,
		41.576763, 33.373901, 41.332882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.232742, 32.608963, 41.444317>,  <41.022758, 33.096386, 41.007214>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.232742, 32.608963, 41.444317> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.378403, 32.944462, 41.606255>,  <41.465801, 33.145760, 41.703419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.378403, 32.944462, 41.606255>,  <41.232742, 32.608963, 41.444317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.378403, 32.944462, 41.606255> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465498, -0.212588, 0.859138,
		0.806663, -0.501313, 0.313019,
		0.364153, 0.838745, 0.404846,
		41.487648, 33.196087, 41.727707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.441685, 32.315460, 42.095963>,  <41.232742, 32.608963, 41.444317>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.441685, 32.315460, 42.095963> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.437019, 32.711941, 42.148701>,  <41.434219, 32.949829, 42.180344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.437019, 32.711941, 42.148701>,  <41.441685, 32.315460, 42.095963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.437019, 32.711941, 42.148701> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414168, -0.124805, 0.901603,
		0.910126, -0.044093, 0.411979,
		-0.011663, 0.991201, 0.131850,
		41.433521, 33.009300, 42.188255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.802471, 32.404949, 42.746292>,  <41.441685, 32.315460, 42.095963>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.802471, 32.404949, 42.746292> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.566769, 32.715302, 42.656151>,  <41.425346, 32.901512, 42.602066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.566769, 32.715302, 42.656151>,  <41.802471, 32.404949, 42.746292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.566769, 32.715302, 42.656151> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360427, -0.002804, 0.932783,
		0.723099, 0.630871, 0.281301,
		-0.589254, 0.775883, -0.225355,
		41.389992, 32.948067, 42.588543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.889748, 32.908390, 43.296757>,  <41.802471, 32.404949, 42.746292>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.889748, 32.908390, 43.296757> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.545475, 32.998276, 43.114006>,  <41.338913, 33.052208, 43.004356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.545475, 32.998276, 43.114006>,  <41.889748, 32.908390, 43.296757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.545475, 32.998276, 43.114006> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489013, -0.114963, 0.864667,
		0.141778, 0.967619, 0.208834,
		-0.860677, 0.224714, -0.456879,
		41.287273, 33.065689, 42.976944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.599731, 33.136288, 43.798306>,  <41.889748, 32.908390, 43.296757>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.599731, 33.136288, 43.798306> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.279037, 33.121895, 43.559666>,  <41.086620, 33.113258, 43.416481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.279037, 33.121895, 43.559666>,  <41.599731, 33.136288, 43.798306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.279037, 33.121895, 43.559666> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597366, 0.015660, 0.801816,
		-0.019508, 0.999230, -0.034049,
		-0.801732, -0.035981, -0.596600,
		41.038517, 33.111099, 43.380684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.199963, 33.667297, 44.010250>,  <41.599731, 33.136288, 43.798306>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.199963, 33.667297, 44.010250> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.950851, 33.404087, 43.840950>,  <40.801384, 33.246159, 43.739372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.950851, 33.404087, 43.840950>,  <41.199963, 33.667297, 44.010250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.950851, 33.404087, 43.840950> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652834, 0.138895, 0.744658,
		-0.431220, 0.740070, -0.516086,
		-0.622781, -0.658030, -0.423249,
		40.764015, 33.206676, 43.713974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.510902, 34.026493, 44.131008>,  <41.199963, 33.667297, 44.010250>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.510902, 34.026493, 44.131008> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.439896, 33.645599, 44.031620>,  <40.397293, 33.417065, 43.971989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.439896, 33.645599, 44.031620>,  <40.510902, 34.026493, 44.131008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.439896, 33.645599, 44.031620> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699806, -0.055376, 0.712183,
		-0.691925, 0.300302, -0.656550,
		-0.177513, -0.952235, -0.248469,
		40.386642, 33.359928, 43.957081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.833492, 33.978340, 44.126308>,  <40.510902, 34.026493, 44.131008>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.833492, 33.978340, 44.126308> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.937004, 33.593334, 44.158810>,  <39.999111, 33.362331, 44.178310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.937004, 33.593334, 44.158810>,  <39.833492, 33.978340, 44.126308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.937004, 33.593334, 44.158810> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744677, -0.145219, 0.651435,
		-0.615214, -0.229089, -0.754341,
		0.258781, -0.962512, 0.081257,
		40.014637, 33.304581, 44.183186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252506, 33.488056, 43.966488>,  <39.833492, 33.978340, 44.126308>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252506, 33.488056, 43.966488> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.499870, 33.328823, 44.237518>,  <39.648289, 33.233284, 44.400135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.499870, 33.328823, 44.237518>,  <39.252506, 33.488056, 43.966488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.499870, 33.328823, 44.237518> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741963, -0.011631, 0.670340,
		-0.258970, -0.917276, -0.302555,
		0.618406, -0.398082, 0.677573,
		39.685390, 33.209400, 44.440792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846569, 33.040333, 44.353214>,  <39.252506, 33.488056, 43.966488>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.846569, 33.040333, 44.353214> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170628, 33.044952, 44.587662>,  <39.365063, 33.047726, 44.728329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170628, 33.044952, 44.587662>,  <38.846569, 33.040333, 44.353214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.170628, 33.044952, 44.587662> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584596, -0.058676, 0.809200,
		0.043739, -0.998210, -0.040783,
		0.810145, 0.011552, 0.586116,
		39.413670, 33.048416, 44.763496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760784, 32.427170, 44.862701>,  <38.846569, 33.040333, 44.353214>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.760784, 32.427170, 44.862701> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009682, 32.688995, 45.034447>,  <39.159019, 32.846092, 45.137493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009682, 32.688995, 45.034447>,  <38.760784, 32.427170, 44.862701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009682, 32.688995, 45.034447> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539564, -0.038767, 0.841052,
		0.567168, -0.755012, 0.329056,
		0.622247, 0.654564, 0.429365,
		39.196358, 32.885365, 45.163258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.544846, 31.946854, 44.290291>,  <38.760784, 32.427170, 44.862701>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.544846, 31.946854, 44.290291> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214676, 31.728781, 44.348885>,  <38.016575, 31.597937, 44.384041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214676, 31.728781, 44.348885>,  <38.544846, 31.946854, 44.290291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214676, 31.728781, 44.348885> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335773, 0.265551, -0.903736,
		0.453804, -0.795146, -0.402249,
		-0.825420, -0.545184, 0.146481,
		37.967049, 31.565226, 44.392830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.575584, 31.535545, 43.783360>,  <38.544846, 31.946854, 44.290291>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.575584, 31.535545, 43.783360> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193863, 31.541838, 43.902733>,  <37.964832, 31.545612, 43.974358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193863, 31.541838, 43.902733>,  <38.575584, 31.535545, 43.783360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193863, 31.541838, 43.902733> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277858, 0.320923, -0.905430,
		-0.110016, -0.946975, -0.301886,
		-0.954302, 0.015731, 0.298431,
		37.907574, 31.546556, 43.992264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197544, 31.361799, 43.207630>,  <38.575584, 31.535545, 43.783360>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197544, 31.361799, 43.207630> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918766, 31.512207, 43.451885>,  <37.751499, 31.602451, 43.598438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918766, 31.512207, 43.451885>,  <38.197544, 31.361799, 43.207630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.918766, 31.512207, 43.451885> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568866, 0.228583, -0.790027,
		-0.436648, -0.897974, 0.054596,
		-0.696944, 0.376021, 0.610637,
		37.709682, 31.625013, 43.635075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571674, 31.133530, 42.899490>,  <38.197544, 31.361799, 43.207630>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.571674, 31.133530, 42.899490> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482147, 31.456516, 43.117813>,  <37.428432, 31.650309, 43.248806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482147, 31.456516, 43.117813>,  <37.571674, 31.133530, 42.899490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482147, 31.456516, 43.117813> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529751, 0.369276, -0.763544,
		-0.818089, -0.460034, 0.345106,
		-0.223817, 0.807467, 0.545804,
		37.415001, 31.698757, 43.281555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779625, 31.245911, 42.832424>,  <37.571674, 31.133530, 42.899490>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779625, 31.245911, 42.832424> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975159, 31.579950, 42.933338>,  <37.092480, 31.780375, 42.993889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975159, 31.579950, 42.933338>,  <36.779625, 31.245911, 42.832424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975159, 31.579950, 42.933338> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290146, 0.428370, -0.855754,
		-0.822712, 0.345123, 0.451703,
		0.488836, 0.835099, 0.252289,
		37.121811, 31.830481, 43.009026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409832, 31.721798, 42.610214>,  <36.779625, 31.245911, 42.832424>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.409832, 31.721798, 42.610214> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711464, 31.976467, 42.674721>,  <36.892445, 32.129269, 42.713425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711464, 31.976467, 42.674721>,  <36.409832, 31.721798, 42.610214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711464, 31.976467, 42.674721> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297408, 0.549937, -0.780460,
		-0.585583, 0.540570, 0.604050,
		0.754082, 0.636674, 0.161264,
		36.937687, 32.167469, 42.723099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.028530, 32.243294, 42.470989>,  <36.409832, 31.721798, 42.610214>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.028530, 32.243294, 42.470989> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414070, 32.342205, 42.431278>,  <36.645393, 32.401550, 42.407452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414070, 32.342205, 42.431278>,  <36.028530, 32.243294, 42.470989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.414070, 32.342205, 42.431278> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218224, 0.518729, -0.826618,
		-0.152904, 0.818397, 0.553937,
		0.963846, 0.247276, -0.099278,
		36.703224, 32.416389, 42.401493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013153, 32.873001, 42.366474>,  <36.028530, 32.243294, 42.470989>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013153, 32.873001, 42.366474> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.378220, 32.776882, 42.234234>,  <36.597260, 32.719212, 42.154892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.378220, 32.776882, 42.234234>,  <36.013153, 32.873001, 42.366474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378220, 32.776882, 42.234234> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140082, 0.575980, -0.805372,
		0.383943, 0.781349, 0.492018,
		0.912669, -0.240294, -0.330596,
		36.652020, 32.704792, 42.135056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403744, 33.479076, 42.196625>,  <36.013153, 32.873001, 42.366474>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403744, 33.479076, 42.196625> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567440, 33.189037, 41.975079>,  <36.665657, 33.015015, 41.842152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567440, 33.189037, 41.975079>,  <36.403744, 33.479076, 42.196625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.567440, 33.189037, 41.975079> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308336, 0.461410, -0.831883,
		0.858750, 0.511215, -0.034745,
		0.409239, -0.725093, -0.553862,
		36.690212, 32.971508, 41.808922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633961, 33.886841, 41.667198>,  <36.403744, 33.479076, 42.196625>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633961, 33.886841, 41.667198> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635242, 33.508194, 41.538265>,  <36.636009, 33.281006, 41.460903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635242, 33.508194, 41.538265>,  <36.633961, 33.886841, 41.667198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.635242, 33.508194, 41.538265> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107374, 0.320149, -0.941263,
		0.994214, 0.037623, -0.100618,
		0.003201, -0.946620, -0.322336,
		36.636204, 33.224209, 41.441563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882557, 33.829224, 40.987244>,  <36.633961, 33.886841, 41.667198>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882557, 33.829224, 40.987244> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721703, 33.464855, 40.950333>,  <36.625191, 33.246235, 40.928185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721703, 33.464855, 40.950333>,  <36.882557, 33.829224, 40.987244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.721703, 33.464855, 40.950333> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061912, 0.127608, -0.989891,
		0.913486, -0.392353, -0.107712,
		-0.402131, -0.910920, -0.092276,
		36.601063, 33.191578, 40.922649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123440, 33.550156, 40.319267>,  <36.882557, 33.829224, 40.987244>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123440, 33.550156, 40.319267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808064, 33.318958, 40.403446>,  <36.618839, 33.180241, 40.453953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808064, 33.318958, 40.403446>,  <37.123440, 33.550156, 40.319267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.808064, 33.318958, 40.403446> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344962, 0.132222, -0.929257,
		0.509281, -0.805257, -0.303635,
		-0.788438, -0.577995, 0.210445,
		36.571533, 33.145561, 40.466579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.131462, 29.912613, 48.139549> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.824768, 30.156820, 48.060165>,  <37.640751, 30.303345, 48.012535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.824768, 30.156820, 48.060165>,  <38.131462, 29.912613, 48.139549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.824768, 30.156820, 48.060165> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327909, 0.106679, -0.938667,
		-0.551901, -0.784785, -0.281989,
		-0.766733, 0.610518, -0.198462,
		37.594749, 30.339975, 48.000626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979660, 29.751728, 47.432652>,  <38.131462, 29.912613, 48.139549>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979660, 29.751728, 47.432652> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.768780, 30.085033, 47.499264>,  <37.642254, 30.285017, 47.539230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.768780, 30.085033, 47.499264>,  <37.979660, 29.751728, 47.432652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768780, 30.085033, 47.499264> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019400, 0.207727, -0.977994,
		-0.849522, -0.512365, -0.125678,
		-0.527197, 0.833265, 0.166529,
		37.610622, 30.335012, 47.549221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653351, 29.751818, 46.834354>,  <37.979660, 29.751728, 47.432652>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653351, 29.751818, 46.834354> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.585400, 30.115692, 46.985939>,  <37.544628, 30.334017, 47.076889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.585400, 30.115692, 46.985939>,  <37.653351, 29.751818, 46.834354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585400, 30.115692, 46.985939> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059406, 0.374398, -0.925363,
		-0.983673, -0.179709, -0.009560,
		-0.169875, 0.909687, 0.378961,
		37.534435, 30.388597, 47.099628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964108, 29.994850, 46.604778>,  <37.653351, 29.751818, 46.834354>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964108, 29.994850, 46.604778> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.175465, 30.325836, 46.680782>,  <37.302280, 30.524427, 46.726383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.175465, 30.325836, 46.680782>,  <36.964108, 29.994850, 46.604778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175465, 30.325836, 46.680782> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044853, 0.196283, -0.979521,
		-0.847814, 0.526095, 0.066601,
		0.528394, 0.827464, 0.190008,
		37.333984, 30.574076, 46.737785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.643970, 30.630262, 46.343712>,  <36.964108, 29.994850, 46.604778>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.643970, 30.630262, 46.343712> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.022892, 30.747961, 46.394371>,  <37.250244, 30.818581, 46.424767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.022892, 30.747961, 46.394371>,  <36.643970, 30.630262, 46.343712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.022892, 30.747961, 46.394371> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001132, 0.398424, -0.917201,
		-0.320342, 0.868722, 0.377760,
		0.947301, 0.294246, 0.126648,
		37.307083, 30.836235, 46.432365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584702, 31.252686, 46.113369>,  <36.643970, 30.630262, 46.343712>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584702, 31.252686, 46.113369> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.976681, 31.173374, 46.105511>,  <37.211868, 31.125788, 46.100796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.976681, 31.173374, 46.105511>,  <36.584702, 31.252686, 46.113369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.976681, 31.173374, 46.105511> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067723, 0.424186, -0.903039,
		0.187389, 0.883601, 0.429109,
		0.979948, -0.198280, -0.019647,
		37.270664, 31.113890, 46.099617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882877, 31.870087, 45.740608>,  <36.584702, 31.252686, 46.113369>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882877, 31.870087, 45.740608> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.146759, 31.570189, 45.719959>,  <37.305088, 31.390249, 45.707569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.146759, 31.570189, 45.719959>,  <36.882877, 31.870087, 45.740608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.146759, 31.570189, 45.719959> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197370, 0.239131, -0.950716,
		0.725141, 0.617006, 0.305734,
		0.659709, -0.749746, -0.051625,
		37.344673, 31.345264, 45.704472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387814, 32.162563, 45.411983>,  <36.882877, 31.870087, 45.740608>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387814, 32.162563, 45.411983> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.447498, 31.771557, 45.352386>,  <37.483311, 31.536953, 45.316628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.447498, 31.771557, 45.352386>,  <37.387814, 32.162563, 45.411983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447498, 31.771557, 45.352386> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396461, 0.197184, -0.896625,
		0.905845, 0.074715, 0.416969,
		0.149211, -0.977515, -0.148996,
		37.492260, 31.478302, 45.307686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101860, 32.194092, 45.231724>,  <37.387814, 32.162563, 45.411983>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.101860, 32.194092, 45.231724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.914520, 31.863863, 45.105816>,  <37.802116, 31.665726, 45.030270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.914520, 31.863863, 45.105816>,  <38.101860, 32.194092, 45.231724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914520, 31.863863, 45.105816> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293607, 0.190587, -0.936735,
		0.833332, -0.531138, 0.153132,
		-0.468351, -0.825572, -0.314768,
		37.774014, 31.616192, 45.011387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774616, 32.167645, 45.617023>,  <38.101860, 32.194092, 45.231724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.774616, 32.167645, 45.617023> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.952030, 32.525623, 45.636391>,  <39.058479, 32.740410, 45.648010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.952030, 32.525623, 45.636391>,  <38.774616, 32.167645, 45.617023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952030, 32.525623, 45.636391> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194194, 0.043218, 0.980011,
		0.874965, -0.444074, 0.192962,
		0.443537, 0.894947, 0.048422,
		39.085091, 32.794106, 45.650917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.299141, 32.170944, 46.154526>,  <38.774616, 32.167645, 45.617023>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.299141, 32.170944, 46.154526> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.203426, 32.554474, 46.093334>,  <39.146000, 32.784592, 46.056622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.203426, 32.554474, 46.093334>,  <39.299141, 32.170944, 46.154526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.203426, 32.554474, 46.093334> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050925, 0.144941, 0.988129,
		0.969613, 0.244232, 0.014146,
		-0.239283, 0.958824, -0.152974,
		39.131641, 32.842121, 46.047443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.932243, 32.611771, 46.412140>,  <39.299141, 32.170944, 46.154526>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.932243, 32.611771, 46.412140> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.612133, 32.851444, 46.421360>,  <39.420067, 32.995251, 46.426891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.612133, 32.851444, 46.421360>,  <39.932243, 32.611771, 46.412140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.612133, 32.851444, 46.421360> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016826, -0.015992, 0.999730,
		0.599396, 0.800448, 0.002716,
		-0.800276, 0.599189, 0.023053,
		39.372051, 33.031200, 46.428276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.063103, 33.085182, 46.883728>,  <39.932243, 32.611771, 46.412140>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.063103, 33.085182, 46.883728> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.667290, 33.135208, 46.854900>,  <39.429802, 33.165222, 46.837605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.667290, 33.135208, 46.854900>,  <40.063103, 33.085182, 46.883728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.667290, 33.135208, 46.854900> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076065, -0.027483, 0.996724,
		0.122670, 0.991768, 0.036708,
		-0.989528, 0.125061, -0.072068,
		39.370430, 33.172726, 46.833279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.957294, 33.702309, 47.197189>,  <40.063103, 33.085182, 46.883728>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.957294, 33.702309, 47.197189> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.593922, 33.535095, 47.196354>,  <39.375896, 33.434769, 47.195850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.593922, 33.535095, 47.196354>,  <39.957294, 33.702309, 47.197189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.593922, 33.535095, 47.196354> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044746, 0.092263, 0.994729,
		-0.415633, 0.903736, -0.102519,
		-0.908431, -0.418030, -0.002091,
		39.321392, 33.409687, 47.195728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.510784, 34.098881, 47.576645>,  <39.957294, 33.702309, 47.197189>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.510784, 34.098881, 47.576645> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.283875, 33.769577, 47.585136>,  <39.147728, 33.571995, 47.590233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.283875, 33.769577, 47.585136>,  <39.510784, 34.098881, 47.576645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283875, 33.769577, 47.585136> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041999, 0.054663, 0.997621,
		-0.822459, 0.565031, -0.065585,
		-0.567272, -0.823257, 0.021228,
		39.113693, 33.522598, 47.591503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.970840, 34.186398, 48.160095>,  <39.510784, 34.098881, 47.576645>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.970840, 34.186398, 48.160095> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.008774, 33.801506, 48.058022>,  <39.031532, 33.570572, 47.996777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.008774, 33.801506, 48.058022>,  <38.970840, 34.186398, 48.160095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008774, 33.801506, 48.058022> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060116, -0.261412, 0.963354,
		-0.993677, -0.076015, -0.082636,
		0.094832, -0.962230, -0.255189,
		39.037224, 33.512836, 47.981464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454163, 33.803329, 48.475025>,  <38.970840, 34.186398, 48.160095>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454163, 33.803329, 48.475025> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.706120, 33.497181, 48.422192>,  <38.857292, 33.313492, 48.390491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.706120, 33.497181, 48.422192>,  <38.454163, 33.803329, 48.475025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.706120, 33.497181, 48.422192> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130514, -0.271943, 0.953421,
		-0.765641, -0.583311, -0.271186,
		0.629889, -0.765372, -0.132080,
		38.895084, 33.267570, 48.382568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146152, 33.240349, 48.814426>,  <38.454163, 33.803329, 48.475025>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146152, 33.240349, 48.814426> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.538483, 33.168686, 48.783741>,  <38.773880, 33.125687, 48.765331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.538483, 33.168686, 48.783741>,  <38.146152, 33.240349, 48.814426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.538483, 33.168686, 48.783741> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003910, -0.375433, 0.926841,
		-0.194851, -0.909369, -0.367533,
		0.980825, -0.179159, -0.076709,
		38.832729, 33.114937, 48.760727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192844, 32.655064, 49.235992>,  <38.146152, 33.240349, 48.814426>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.192844, 32.655064, 49.235992> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.572769, 32.775784, 49.203091>,  <38.800724, 32.848217, 49.183350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.572769, 32.775784, 49.203091>,  <38.192844, 32.655064, 49.235992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.572769, 32.775784, 49.203091> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195175, -0.366279, 0.909805,
		0.244449, -0.880203, -0.406802,
		0.949817, 0.301799, -0.082257,
		38.857716, 32.866322, 49.178413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628067, 32.113396, 49.406902>,  <38.192844, 32.655064, 49.235992>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.628067, 32.113396, 49.406902> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.876568, 32.424034, 49.448761>,  <39.025669, 32.610416, 49.473877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.876568, 32.424034, 49.448761>,  <38.628067, 32.113396, 49.406902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.876568, 32.424034, 49.448761> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324043, -0.376193, 0.868029,
		0.713471, -0.505355, -0.485360,
		0.621252, 0.776591, 0.104647,
		39.062943, 32.657013, 49.480156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345497, 31.865093, 49.579655>,  <38.628067, 32.113396, 49.406902>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.345497, 31.865093, 49.579655> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.313080, 32.236633, 49.724247>,  <39.293629, 32.459557, 49.811001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.313080, 32.236633, 49.724247>,  <39.345497, 31.865093, 49.579655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.313080, 32.236633, 49.724247> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334435, -0.316302, 0.887754,
		0.938928, 0.192837, -0.285006,
		-0.081043, 0.928852, 0.361476,
		39.288769, 32.515289, 49.832691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.013031, 32.028534, 49.834122>,  <39.345497, 31.865093, 49.579655>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.013031, 32.028534, 49.834122> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.737480, 32.245384, 50.026600>,  <39.572151, 32.375496, 50.142086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.737480, 32.245384, 50.026600>,  <40.013031, 32.028534, 49.834122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.737480, 32.245384, 50.026600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436467, -0.219786, 0.872462,
		0.578747, 0.811042, -0.085217,
		-0.688874, 0.542130, 0.481194,
		39.530819, 32.408024, 50.170959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.301826, 32.088879, 50.445877>,  <40.013031, 32.028534, 49.834122>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.301826, 32.088879, 50.445877> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.963303, 32.290936, 50.513512>,  <39.760189, 32.412170, 50.554092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.963303, 32.290936, 50.513512>,  <40.301826, 32.088879, 50.445877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.963303, 32.290936, 50.513512> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280518, 0.152792, 0.947610,
		0.452840, 0.849405, -0.271010,
		-0.846313, 0.505139, 0.169084,
		39.709408, 32.442478, 50.564236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.634289, 34.498615, 49.696888> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.006069, 34.356522, 49.736744>,  <36.229137, 34.271267, 49.760658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.006069, 34.356522, 49.736744>,  <35.634289, 34.498615, 49.696888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.006069, 34.356522, 49.736744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143116, 0.098224, -0.984820,
		0.340055, 0.929602, 0.142134,
		0.929452, -0.355235, 0.099639,
		36.284904, 34.249950, 49.766636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098164, 34.952114, 49.428993>,  <35.634289, 34.498615, 49.696888>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.098164, 34.952114, 49.428993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.300896, 34.607491, 49.417439>,  <36.422535, 34.400715, 49.410507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.300896, 34.607491, 49.417439>,  <36.098164, 34.952114, 49.428993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300896, 34.607491, 49.417439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023793, 0.047476, -0.998589,
		0.861717, 0.505429, 0.044562,
		0.506831, -0.861561, -0.028885,
		36.452946, 34.349022, 49.408772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596401, 35.072414, 48.944698>,  <36.098164, 34.952114, 49.428993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596401, 35.072414, 48.944698> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.591339, 34.674290, 48.983055>,  <36.588303, 34.435413, 49.006069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.591339, 34.674290, 48.983055>,  <36.596401, 35.072414, 48.944698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591339, 34.674290, 48.983055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095736, -0.096665, -0.990702,
		0.995326, -0.003360, 0.096511,
		-0.012658, -0.995311, 0.095891,
		36.587540, 34.375698, 49.011822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024734, 34.838768, 48.467533>,  <36.596401, 35.072414, 48.944698>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024734, 34.838768, 48.467533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.814663, 34.505325, 48.535995>,  <36.688622, 34.305260, 48.577072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.814663, 34.505325, 48.535995>,  <37.024734, 34.838768, 48.467533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814663, 34.505325, 48.535995> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002709, -0.202757, -0.979226,
		0.850987, -0.513805, 0.108742,
		-0.525180, -0.833603, 0.171151,
		36.657108, 34.255245, 48.587341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359241, 34.394897, 48.069653>,  <37.024734, 34.838768, 48.467533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.359241, 34.394897, 48.069653> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.004940, 34.219418, 48.130287>,  <36.792358, 34.114128, 48.166668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.004940, 34.219418, 48.130287>,  <37.359241, 34.394897, 48.069653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004940, 34.219418, 48.130287> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054724, -0.225599, -0.972682,
		0.460915, -0.869853, 0.175818,
		-0.885755, -0.438703, 0.151584,
		36.739212, 34.087807, 48.175762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387985, 33.833374, 47.635986>,  <37.359241, 34.394897, 48.069653>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387985, 33.833374, 47.635986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.008446, 33.878639, 47.753891>,  <36.780724, 33.905800, 47.824635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.008446, 33.878639, 47.753891>,  <37.387985, 33.833374, 47.635986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.008446, 33.878639, 47.753891> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313848, -0.236109, -0.919648,
		-0.034474, -0.965115, 0.259547,
		-0.948847, 0.113162, 0.294760,
		36.723793, 33.912590, 47.842319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125946, 33.401199, 47.108730>,  <37.387985, 33.833374, 47.635986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125946, 33.401199, 47.108730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.838497, 33.629089, 47.268227>,  <36.666027, 33.765823, 47.363926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.838497, 33.629089, 47.268227>,  <37.125946, 33.401199, 47.108730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838497, 33.629089, 47.268227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495774, -0.017656, -0.868272,
		-0.487635, -0.821647, 0.295142,
		-0.718624, 0.569724, 0.398741,
		36.622910, 33.800007, 47.387848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506084, 33.081963, 46.949989>,  <37.125946, 33.401199, 47.108730>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506084, 33.081963, 46.949989> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.425587, 33.469360, 47.008675>,  <36.377289, 33.701797, 47.043884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.425587, 33.469360, 47.008675>,  <36.506084, 33.081963, 46.949989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425587, 33.469360, 47.008675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454885, 0.040247, -0.889640,
		-0.867513, -0.245775, 0.432453,
		-0.201246, 0.968491, 0.146714,
		36.365211, 33.759907, 47.052689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891392, 33.156994, 46.825356>,  <36.506084, 33.081963, 46.949989>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891392, 33.156994, 46.825356> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.022243, 33.531677, 46.775448>,  <36.100754, 33.756485, 46.745502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.022243, 33.531677, 46.775448>,  <35.891392, 33.156994, 46.825356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022243, 33.531677, 46.775448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597894, 0.102921, -0.794940,
		-0.731785, 0.334646, 0.593720,
		0.327130, 0.936707, -0.124767,
		36.120384, 33.812691, 46.738018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345390, 33.590843, 46.550232>,  <35.891392, 33.156994, 46.825356>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345390, 33.590843, 46.550232> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.678997, 33.777718, 46.432831>,  <35.879162, 33.889843, 46.362389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.678997, 33.777718, 46.432831>,  <35.345390, 33.590843, 46.550232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.678997, 33.777718, 46.432831> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486567, 0.372005, -0.790484,
		-0.260117, 0.802091, 0.537578,
		0.834022, 0.467186, -0.293506,
		35.929203, 33.917873, 46.344780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138058, 34.074467, 46.050571>,  <35.345390, 33.590843, 46.550232>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.138058, 34.074467, 46.050571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.536018, 34.099159, 46.018665>,  <35.774796, 34.113976, 45.999523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.536018, 34.099159, 46.018665>,  <35.138058, 34.074467, 46.050571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536018, 34.099159, 46.018665> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096073, 0.339190, -0.935799,
		-0.030711, 0.938691, 0.343391,
		0.994900, 0.061730, -0.079766,
		35.834488, 34.117680, 45.994736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.211067, 34.709873, 45.804722>,  <35.138058, 34.074467, 46.050571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.211067, 34.709873, 45.804722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.557877, 34.526852, 45.725803>,  <35.765961, 34.417038, 45.678452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.557877, 34.526852, 45.725803>,  <35.211067, 34.709873, 45.804722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.557877, 34.526852, 45.725803> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023941, 0.433757, -0.900712,
		0.497699, 0.776211, 0.387030,
		0.867019, -0.457549, -0.197297,
		35.817982, 34.389587, 45.666615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653614, 35.183567, 45.604065>,  <35.211067, 34.709873, 45.804722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653614, 35.183567, 45.604065> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.803802, 34.855782, 45.430862>,  <35.893913, 34.659111, 45.326939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.803802, 34.855782, 45.430862>,  <35.653614, 35.183567, 45.604065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803802, 34.855782, 45.430862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037264, 0.480160, -0.876389,
		0.926085, 0.312922, 0.210822,
		0.375469, -0.819467, -0.433008,
		35.916443, 34.609940, 45.300961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.334274, 35.322819, 45.330917>,  <35.653614, 35.183567, 45.604065>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.334274, 35.322819, 45.330917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.172447, 35.022293, 45.122360>,  <36.075352, 34.841976, 44.997227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.172447, 35.022293, 45.122360>,  <36.334274, 35.322819, 45.330917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.172447, 35.022293, 45.122360> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066084, 0.544628, -0.836070,
		0.912117, -0.372703, -0.170689,
		-0.404568, -0.751314, -0.521394,
		36.051075, 34.796898, 44.965942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116779, 35.305092, 45.499664>,  <36.334274, 35.322819, 45.330917>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116779, 35.305092, 45.499664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.189919, 35.691452, 45.426334>,  <37.233803, 35.923267, 45.382336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.189919, 35.691452, 45.426334>,  <37.116779, 35.305092, 45.499664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.189919, 35.691452, 45.426334> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199280, 0.146188, 0.968977,
		0.962732, -0.213711, -0.165753,
		0.182850, 0.965897, -0.183328,
		37.244774, 35.981220, 45.371334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674431, 35.482704, 45.904778>,  <37.116779, 35.305092, 45.499664>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674431, 35.482704, 45.904778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.544266, 35.846485, 45.801239>,  <37.466167, 36.064754, 45.739117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.544266, 35.846485, 45.801239>,  <37.674431, 35.482704, 45.904778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.544266, 35.846485, 45.801239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251424, 0.347111, 0.903493,
		0.911532, 0.228932, -0.341614,
		-0.325416, 0.909453, -0.258844,
		37.446640, 36.119320, 45.723587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224239, 35.888176, 46.104862>,  <37.674431, 35.482704, 45.904778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224239, 35.888176, 46.104862> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.886288, 36.099808, 46.073246>,  <37.683517, 36.226788, 46.054276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.886288, 36.099808, 46.073246>,  <38.224239, 35.888176, 46.104862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.886288, 36.099808, 46.073246> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062167, 0.243862, 0.967815,
		0.531327, 0.812777, -0.238926,
		-0.844883, 0.529080, -0.079043,
		37.632824, 36.258533, 46.049534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.390297, 36.467972, 46.410809>,  <38.224239, 35.888176, 46.104862>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.390297, 36.467972, 46.410809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.990467, 36.472172, 46.421719>,  <37.750568, 36.474693, 46.428265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.990467, 36.472172, 46.421719>,  <38.390297, 36.467972, 46.410809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.990467, 36.472172, 46.421719> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029158, 0.294719, 0.955139,
		0.001994, 0.955526, -0.294899,
		-0.999573, 0.010503, 0.027274,
		37.690594, 36.475323, 46.429901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253284, 37.076874, 46.520012>,  <38.390297, 36.467972, 46.410809>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253284, 37.076874, 46.520012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.922215, 36.881580, 46.630703>,  <37.723572, 36.764404, 46.697117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.922215, 36.881580, 46.630703>,  <38.253284, 37.076874, 46.520012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922215, 36.881580, 46.630703> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090484, 0.370551, 0.924394,
		-0.553859, 0.790141, -0.262521,
		-0.827679, -0.488230, 0.276728,
		37.673912, 36.735111, 46.713722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942493, 37.562962, 46.927235>,  <38.253284, 37.076874, 46.520012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942493, 37.562962, 46.927235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.783154, 37.212753, 47.036625>,  <37.687550, 37.002628, 47.102261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.783154, 37.212753, 47.036625>,  <37.942493, 37.562962, 46.927235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.783154, 37.212753, 47.036625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093840, 0.257689, 0.961660,
		-0.912422, 0.408737, -0.020491,
		-0.398346, -0.875517, 0.273477,
		37.663651, 36.950100, 47.118668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.417664, 37.682102, 47.496334>,  <37.942493, 37.562962, 46.927235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.417664, 37.682102, 47.496334> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.536602, 37.301693, 47.530136>,  <37.607964, 37.073448, 47.550415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.536602, 37.301693, 47.530136>,  <37.417664, 37.682102, 47.496334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536602, 37.301693, 47.530136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085263, 0.114601, 0.989746,
		-0.950955, -0.287092, 0.115163,
		0.297346, -0.951023, 0.084502,
		37.625805, 37.016388, 47.555485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955173, 37.426231, 47.934441>,  <37.417664, 37.682102, 47.496334>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.955173, 37.426231, 47.934441> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.251701, 37.158375, 47.952431>,  <37.429619, 36.997662, 47.963226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.251701, 37.158375, 47.952431>,  <36.955173, 37.426231, 47.934441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251701, 37.158375, 47.952431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080307, -0.021968, 0.996528,
		-0.666333, -0.742356, -0.070062,
		0.741318, -0.669645, 0.044978,
		37.474098, 36.957481, 47.965923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828403, 36.917015, 48.528118>,  <36.955173, 37.426231, 47.934441>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828403, 36.917015, 48.528118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.220871, 36.862778, 48.473087>,  <37.456352, 36.830235, 48.440071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.220871, 36.862778, 48.473087>,  <36.828403, 36.917015, 48.528118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220871, 36.862778, 48.473087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117640, -0.145453, 0.982346,
		-0.153227, -0.980027, -0.126761,
		0.981164, -0.135610, -0.137578,
		37.515221, 36.822102, 48.431816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965786, 36.233803, 48.756218>,  <36.828403, 36.917015, 48.528118>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965786, 36.233803, 48.756218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.299381, 36.452690, 48.784554>,  <37.499538, 36.584023, 48.801556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.299381, 36.452690, 48.784554>,  <36.965786, 36.233803, 48.756218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299381, 36.452690, 48.784554> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147740, -0.345147, 0.926848,
		0.531638, -0.762513, -0.368694,
		0.833987, 0.547218, 0.070840,
		37.549576, 36.616856, 48.805805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494137, 35.813595, 49.210045>,  <36.965786, 36.233803, 48.756218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.494137, 35.813595, 49.210045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.640015, 36.185928, 49.200665>,  <37.727543, 36.409328, 49.195038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.640015, 36.185928, 49.200665>,  <37.494137, 35.813595, 49.210045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640015, 36.185928, 49.200665> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199184, -0.053387, 0.978507,
		0.909573, -0.361527, -0.204877,
		0.364694, 0.930832, -0.023451,
		37.749424, 36.465179, 49.193630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022129, 35.675144, 49.541924>,  <37.494137, 35.813595, 49.210045>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022129, 35.675144, 49.541924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.975121, 36.071415, 49.569496>,  <37.946915, 36.309177, 49.586040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.975121, 36.071415, 49.569496>,  <38.022129, 35.675144, 49.541924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.975121, 36.071415, 49.569496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004534, -0.069951, 0.997540,
		0.993060, 0.116917, 0.012712,
		-0.117518, 0.990675, 0.068936,
		37.939865, 36.368618, 49.590176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469925, 35.956032, 50.009251>,  <38.022129, 35.675144, 49.541924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469925, 35.956032, 50.009251> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.220417, 36.267647, 49.983925>,  <38.070713, 36.454617, 49.968731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.220417, 36.267647, 49.983925>,  <38.469925, 35.956032, 50.009251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220417, 36.267647, 49.983925> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071694, 0.137693, 0.987877,
		0.778314, 0.611667, -0.141741,
		-0.623768, 0.779041, -0.063316,
		38.033287, 36.501358, 49.964931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789639, 36.516689, 50.297966>,  <38.469925, 35.956032, 50.009251>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789639, 36.516689, 50.297966> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.395187, 36.577663, 50.324249>,  <38.158516, 36.614250, 50.340019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.395187, 36.577663, 50.324249>,  <38.789639, 36.516689, 50.297966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.395187, 36.577663, 50.324249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095667, 0.198393, 0.975443,
		0.135657, 0.968196, -0.210224,
		-0.986126, 0.152437, 0.065711,
		38.099350, 36.623394, 50.343964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399788, 36.758408, 50.668255>,  <38.789639, 36.516689, 50.297966>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.399788, 36.758408, 50.668255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.646687, 36.456894, 50.758427>,  <39.794827, 36.275986, 50.812531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.646687, 36.456894, 50.758427>,  <39.399788, 36.758408, 50.668255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646687, 36.456894, 50.758427> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311268, -0.029191, -0.949874,
		0.722579, 0.656475, 0.216611,
		0.617246, -0.753782, 0.225433,
		39.831860, 36.230759, 50.826057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.980980, 36.905781, 50.275436>,  <39.399788, 36.758408, 50.668255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.980980, 36.905781, 50.275436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.014118, 36.512890, 50.342812>,  <40.034000, 36.277157, 50.383236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.014118, 36.512890, 50.342812>,  <39.980980, 36.905781, 50.275436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.014118, 36.512890, 50.342812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123227, -0.157621, -0.979781,
		0.988914, 0.101929, 0.107979,
		0.082848, -0.982225, 0.168434,
		40.038971, 36.218224, 50.393341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.588902, 36.661892, 49.976543>,  <39.980980, 36.905781, 50.275436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.588902, 36.661892, 49.976543> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.359116, 36.335075, 49.996258>,  <40.221245, 36.138985, 50.008087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.359116, 36.335075, 49.996258>,  <40.588902, 36.661892, 49.976543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.359116, 36.335075, 49.996258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269019, -0.245327, -0.931366,
		0.773057, -0.521781, 0.360732,
		-0.574467, -0.817043, 0.049282,
		40.186775, 36.089962, 50.011044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.980194, 36.150070, 49.654385>,  <40.588902, 36.661892, 49.976543>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.980194, 36.150070, 49.654385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.610001, 35.999264, 49.669033>,  <40.387886, 35.908779, 49.677822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.610001, 35.999264, 49.669033>,  <40.980194, 36.150070, 49.654385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.610001, 35.999264, 49.669033> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059550, -0.240281, -0.968875,
		0.374078, -0.894497, 0.244828,
		-0.925484, -0.377014, 0.036617,
		40.332355, 35.886158, 49.680019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.072445, 35.560139, 49.275234>,  <40.980194, 36.150070, 49.654385>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.072445, 35.560139, 49.275234> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.684704, 35.658291, 49.280186>,  <40.452061, 35.717182, 49.283157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.684704, 35.658291, 49.280186>,  <41.072445, 35.560139, 49.275234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.684704, 35.658291, 49.280186> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080184, -0.268323, -0.959986,
		-0.232232, -0.931555, 0.279773,
		-0.969350, 0.245373, 0.012383,
		40.393898, 35.731903, 49.283901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.828678, 35.032341, 48.917603>,  <41.072445, 35.560139, 49.275234>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.828678, 35.032341, 48.917603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.549095, 35.317898, 48.900562>,  <40.381344, 35.489231, 48.890339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.549095, 35.317898, 48.900562>,  <40.828678, 35.032341, 48.917603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.549095, 35.317898, 48.900562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121729, -0.177462, -0.976570,
		-0.704723, -0.677399, 0.210940,
		-0.698961, 0.713889, -0.042603,
		40.339405, 35.532066, 48.887783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.323196, 34.751762, 48.540272>,  <40.828678, 35.032341, 48.917603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.323196, 34.751762, 48.540272> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.211048, 35.135696, 48.536041>,  <40.143761, 35.366058, 48.533501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.211048, 35.135696, 48.536041>,  <40.323196, 34.751762, 48.540272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.211048, 35.135696, 48.536041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138462, -0.051348, -0.989036,
		-0.949854, -0.275829, 0.147297,
		-0.280368, 0.959834, -0.010581,
		40.126938, 35.423645, 48.532867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.671783, 34.756031, 48.150528>,  <40.323196, 34.751762, 48.540272>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.671783, 34.756031, 48.150528> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.837200, 35.120007, 48.163097>,  <39.936451, 35.338394, 48.170639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.837200, 35.120007, 48.163097>,  <39.671783, 34.756031, 48.150528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.837200, 35.120007, 48.163097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159161, 0.106226, -0.981521,
		-0.896466, 0.400900, 0.188756,
		0.413542, 0.909943, 0.031420,
		39.961262, 35.392990, 48.172523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269047, 35.145893, 47.778561>,  <39.671783, 34.756031, 48.150528>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.269047, 35.145893, 47.778561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.610447, 35.354103, 47.788280>,  <39.815289, 35.479031, 47.794113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.610447, 35.354103, 47.788280>,  <39.269047, 35.145893, 47.778561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.610447, 35.354103, 47.788280> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064378, 0.151602, -0.986343,
		-0.517102, 0.840278, 0.162903,
		0.853499, 0.520528, 0.024298,
		39.866497, 35.510262, 47.795570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149258, 35.795277, 47.369209>,  <39.269047, 35.145893, 47.778561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.149258, 35.795277, 47.369209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.545330, 35.740887, 47.382195>,  <39.782974, 35.708252, 47.389984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.545330, 35.740887, 47.382195>,  <39.149258, 35.795277, 47.369209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.545330, 35.740887, 47.382195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072383, 0.300012, -0.951185,
		0.119599, 0.944195, 0.306908,
		0.990180, -0.135975, 0.032463,
		39.842384, 35.700092, 47.391933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.479740, 36.378220, 46.985744>,  <39.149258, 35.795277, 47.369209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.479740, 36.378220, 46.985744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.740993, 36.075394, 46.992325>,  <39.897743, 35.893696, 46.996273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.740993, 36.075394, 46.992325>,  <39.479740, 36.378220, 46.985744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.740993, 36.075394, 46.992325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179195, 0.133415, -0.974725,
		0.735739, 0.639569, 0.222800,
		0.653129, -0.757068, 0.016448,
		39.936932, 35.848274, 46.997261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136833, 36.621967, 46.747925>,  <39.479740, 36.378220, 46.985744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.136833, 36.621967, 46.747925> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.144020, 36.227043, 46.684799>,  <40.148331, 35.990089, 46.646923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.144020, 36.227043, 46.684799>,  <40.136833, 36.621967, 46.747925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.144020, 36.227043, 46.684799> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357039, 0.153766, -0.921346,
		0.933917, -0.039793, 0.355269,
		0.017965, -0.987306, -0.157812,
		40.149410, 35.930851, 46.637455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.704510, 36.540043, 46.436829>,  <40.136833, 36.621967, 46.747925>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.704510, 36.540043, 46.436829> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.556538, 36.174538, 46.369678>,  <40.467754, 35.955235, 46.329388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.556538, 36.174538, 46.369678>,  <40.704510, 36.540043, 46.436829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.556538, 36.174538, 46.369678> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478338, -0.032429, -0.877577,
		0.796456, -0.404943, 0.449086,
		-0.369932, -0.913767, -0.167871,
		40.445557, 35.900406, 46.319317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.157326, 36.228992, 45.935459>,  <40.704510, 36.540043, 46.436829>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.157326, 36.228992, 45.935459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.843178, 35.982975, 45.907394>,  <40.654690, 35.835365, 45.890556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.843178, 35.982975, 45.907394>,  <41.157326, 36.228992, 45.935459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.843178, 35.982975, 45.907394> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161651, -0.094351, -0.982327,
		0.597552, -0.782829, 0.173522,
		-0.785366, -0.615042, -0.070166,
		40.607567, 35.798462, 45.886345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.181852, 42.096245, 36.548470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.188837, 42.059361, 36.150234>,  <28.193027, 42.037228, 35.911293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.188837, 42.059361, 36.150234>,  <28.181852, 42.096245, 36.548470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.188837, 42.059361, 36.150234> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469583, -0.879844, 0.073256,
		-0.882716, 0.466231, -0.058667,
		0.017464, -0.092213, -0.995586,
		28.194077, 42.031696, 35.851559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.567034, 41.874855, 36.473660>,  <28.181852, 42.096245, 36.548470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.567034, 41.874855, 36.473660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.799362, 41.730408, 36.181839>,  <27.938759, 41.643742, 36.006748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.799362, 41.730408, 36.181839>,  <27.567034, 41.874855, 36.473660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.799362, 41.730408, 36.181839> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417194, -0.901621, 0.114143,
		-0.698996, 0.238067, -0.674335,
		0.580821, -0.361114, -0.729550,
		27.973608, 41.622074, 35.962975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.160618, 41.336098, 35.981316>,  <27.567034, 41.874855, 36.473660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.160618, 41.336098, 35.981316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.552015, 41.255619, 35.963120>,  <27.786854, 41.207333, 35.952202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.552015, 41.255619, 35.963120>,  <27.160618, 41.336098, 35.981316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.552015, 41.255619, 35.963120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206272, -0.953949, -0.217791,
		0.000427, 0.222490, -0.974935,
		0.978495, -0.201195, -0.045486,
		27.845564, 41.195259, 35.949474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.317846, 40.911266, 35.413567>,  <27.160618, 41.336098, 35.981316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.317846, 40.911266, 35.413567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.650488, 40.863979, 35.630623>,  <27.850073, 40.835606, 35.760857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.650488, 40.863979, 35.630623>,  <27.317846, 40.911266, 35.413567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.650488, 40.863979, 35.630623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004811, -0.975510, -0.219902,
		0.555345, 0.185483, -0.810671,
		0.831606, -0.118222, 0.542637,
		27.899969, 40.828514, 35.793415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.726839, 40.325520, 35.120899>,  <27.317846, 40.911266, 35.413567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.726839, 40.325520, 35.120899> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.819759, 40.373470, 35.506992>,  <27.875511, 40.402241, 35.738647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.819759, 40.373470, 35.506992>,  <27.726839, 40.325520, 35.120899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.819759, 40.373470, 35.506992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034753, -0.990719, 0.131407,
		0.972023, -0.064070, -0.225977,
		0.232299, 0.119877, 0.965229,
		27.889450, 40.409435, 35.796562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.070213, 39.669956, 35.245689>,  <27.726839, 40.325520, 35.120899>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.070213, 39.669956, 35.245689> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.030653, 39.818932, 35.614799>,  <28.006918, 39.908318, 35.836266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.030653, 39.818932, 35.614799>,  <28.070213, 39.669956, 35.245689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.030653, 39.818932, 35.614799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039830, -0.925092, 0.377647,
		0.994300, 0.074103, 0.076656,
		-0.098899, 0.372442, 0.922771,
		28.000984, 39.930664, 35.891632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.501053, 39.247765, 35.646935>,  <28.070213, 39.669956, 35.245689>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.501053, 39.247765, 35.646935> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.248543, 39.425583, 35.901138>,  <28.097036, 39.532272, 36.053661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.248543, 39.425583, 35.901138>,  <28.501053, 39.247765, 35.646935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.248543, 39.425583, 35.901138> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061159, -0.788338, 0.612195,
		0.773144, 0.425331, 0.470470,
		-0.631274, 0.444541, 0.635512,
		28.059160, 39.558945, 36.091793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.745565, 39.231499, 36.332558>,  <28.501053, 39.247765, 35.646935>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.745565, 39.231499, 36.332558> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.350630, 39.288399, 36.360626>,  <28.113668, 39.322536, 36.377468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.350630, 39.288399, 36.360626>,  <28.745565, 39.231499, 36.332558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.350630, 39.288399, 36.360626> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060248, -0.745595, 0.663670,
		0.146728, 0.651041, 0.744726,
		-0.987340, 0.142248, 0.070176,
		28.054428, 39.331074, 36.381680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.634781, 38.893837, 36.957954>,  <28.745565, 39.231499, 36.332558>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.634781, 38.893837, 36.957954> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.278601, 38.912933, 36.776928>,  <28.064892, 38.924393, 36.668312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.278601, 38.912933, 36.776928>,  <28.634781, 38.893837, 36.957954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.278601, 38.912933, 36.776928> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271093, -0.854423, 0.443250,
		-0.365523, 0.517381, 0.773764,
		-0.890450, 0.047744, -0.452569,
		28.011465, 38.927258, 36.641155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.059210, 38.803089, 37.406807>,  <28.634781, 38.893837, 36.957954>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.059210, 38.803089, 37.406807> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.882681, 38.712154, 37.059578>,  <27.776764, 38.657593, 36.851242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.882681, 38.712154, 37.059578>,  <28.059210, 38.803089, 37.406807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.882681, 38.712154, 37.059578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350359, -0.846940, 0.399925,
		-0.826125, 0.480634, 0.294123,
		-0.441322, -0.227340, -0.868073,
		27.750284, 38.643951, 36.799156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.520628, 38.356346, 37.566326>,  <28.059210, 38.803089, 37.406807>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.520628, 38.356346, 37.566326> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.540701, 38.295013, 37.171566>,  <27.552744, 38.258213, 36.934711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.540701, 38.295013, 37.171566>,  <27.520628, 38.356346, 37.566326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.540701, 38.295013, 37.171566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416365, -0.901392, 0.118873,
		-0.907811, 0.404946, -0.109075,
		0.050182, -0.153330, -0.986900,
		27.555756, 38.249016, 36.875496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.844034, 38.224888, 37.375061>,  <27.520628, 38.356346, 37.566326>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.844034, 38.224888, 37.375061> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.083893, 38.072788, 37.093399>,  <27.227808, 37.981529, 36.924400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.083893, 38.072788, 37.093399>,  <26.844034, 38.224888, 37.375061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.083893, 38.072788, 37.093399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408538, -0.902062, 0.139214,
		-0.688128, 0.204195, -0.696264,
		0.599646, -0.380248, -0.704156,
		27.263786, 37.958714, 36.882153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.526705, 37.746498, 37.106049>,  <26.844034, 38.224888, 37.375061>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.526705, 37.746498, 37.106049> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.878628, 37.641609, 36.947468>,  <27.089781, 37.578674, 36.852318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.878628, 37.641609, 36.947468>,  <26.526705, 37.746498, 37.106049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.878628, 37.641609, 36.947468> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295073, -0.955197, -0.023035,
		-0.372653, 0.137250, -0.917765,
		0.879808, -0.262224, -0.396456,
		27.142570, 37.562943, 36.828529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.384901, 37.282936, 36.505219>,  <26.526705, 37.746498, 37.106049>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.384901, 37.282936, 36.505219> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.748150, 37.223389, 36.661758>,  <26.966099, 37.187660, 36.755684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.748150, 37.223389, 36.661758>,  <26.384901, 37.282936, 36.505219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.748150, 37.223389, 36.661758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247627, -0.944638, 0.215268,
		0.337638, -0.292399, -0.894709,
		0.908120, -0.148871, 0.391351,
		27.020586, 37.178726, 36.779163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.677189, 36.711540, 36.045925>,  <26.384901, 37.282936, 36.505219>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.677189, 36.711540, 36.045925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.851217, 36.730232, 36.405598>,  <26.955635, 36.741447, 36.621403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.851217, 36.730232, 36.405598>,  <26.677189, 36.711540, 36.045925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.851217, 36.730232, 36.405598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000048, -0.998654, 0.051876,
		0.900396, -0.022526, -0.434487,
		0.435071, 0.046730, 0.899183,
		26.981739, 36.744251, 36.675354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.043552, 36.101242, 36.115776>,  <26.677189, 36.711540, 36.045925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.043552, 36.101242, 36.115776> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.004969, 36.205055, 36.500137>,  <26.981817, 36.267345, 36.730755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.004969, 36.205055, 36.500137>,  <27.043552, 36.101242, 36.115776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.004969, 36.205055, 36.500137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010497, -0.965087, 0.261721,
		0.995281, 0.035333, 0.090369,
		-0.096462, 0.259538, 0.960904,
		26.976030, 36.282917, 36.788410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.361397, 35.591061, 36.423328>,  <27.043552, 36.101242, 36.115776>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.361397, 35.591061, 36.423328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.199739, 35.769794, 36.742577>,  <27.102745, 35.877037, 36.934128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.199739, 35.769794, 36.742577>,  <27.361397, 35.591061, 36.423328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.199739, 35.769794, 36.742577> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063413, -0.856772, 0.511781,
		0.912494, 0.257446, 0.317925,
		-0.404146, 0.446837, 0.798125,
		27.078495, 35.903847, 36.982014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.739166, 35.467827, 37.007122>,  <27.361397, 35.591061, 36.423328>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.739166, 35.467827, 37.007122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.383036, 35.565903, 37.160591>,  <27.169357, 35.624748, 37.252670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.383036, 35.565903, 37.160591>,  <27.739166, 35.467827, 37.007122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.383036, 35.565903, 37.160591> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026787, -0.869378, 0.493421,
		0.454532, 0.429029, 0.780599,
		-0.890327, 0.245185, 0.383668,
		27.115938, 35.639458, 37.275692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.747639, 35.310902, 37.734837>,  <27.739166, 35.467827, 37.007122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.747639, 35.310902, 37.734837> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.360235, 35.332169, 37.637543>,  <27.127792, 35.344929, 37.579166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.360235, 35.332169, 37.637543>,  <27.747639, 35.310902, 37.734837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.360235, 35.332169, 37.637543> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165963, -0.866099, 0.471518,
		-0.185599, 0.497037, 0.847648,
		-0.968509, 0.053165, -0.243237,
		27.069683, 35.348118, 37.564571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.316784, 35.162365, 38.241844>,  <27.747639, 35.310902, 37.734837>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.316784, 35.162365, 38.241844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.637167, 35.090618, 38.470333>,  <28.829397, 35.047569, 38.607426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.637167, 35.090618, 38.470333>,  <28.316784, 35.162365, 38.241844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.637167, 35.090618, 38.470333> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215247, 0.804014, 0.554284,
		-0.558691, -0.566911, 0.605373,
		0.800958, -0.179369, 0.571221,
		28.877455, 35.036808, 38.641701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.141428, 35.245708, 38.954460>,  <28.316784, 35.162365, 38.241844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.141428, 35.245708, 38.954460> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.535534, 35.313457, 38.944984>,  <28.771997, 35.354107, 38.939301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.535534, 35.313457, 38.944984>,  <28.141428, 35.245708, 38.954460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.535534, 35.313457, 38.944984> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129964, 0.831531, 0.540062,
		0.111171, -0.529026, 0.841292,
		0.985267, 0.169377, -0.023688,
		28.831114, 35.364269, 38.937878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.312826, 35.543362, 39.616108>,  <28.141428, 35.245708, 38.954460>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.312826, 35.543362, 39.616108> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.630465, 35.659237, 39.402382>,  <28.821047, 35.728764, 39.274147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.630465, 35.659237, 39.402382>,  <28.312826, 35.543362, 39.616108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.630465, 35.659237, 39.402382> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063911, 0.834431, 0.547394,
		0.604423, -0.468831, 0.644104,
		0.794096, 0.289692, -0.534313,
		28.868692, 35.746143, 39.242088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.826969, 35.902943, 40.079594>,  <28.312826, 35.543362, 39.616108>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.826969, 35.902943, 40.079594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.888813, 36.026974, 39.704372>,  <28.925920, 36.101391, 39.479240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.888813, 36.026974, 39.704372>,  <28.826969, 35.902943, 40.079594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.888813, 36.026974, 39.704372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099224, 0.939798, 0.327007,
		0.982980, -0.143637, 0.114536,
		0.154611, 0.310076, -0.938056,
		28.935196, 36.119995, 39.422955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.369680, 36.349174, 40.170246>,  <28.826969, 35.902943, 40.079594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.369680, 36.349174, 40.170246> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.211292, 36.449322, 39.816856>,  <29.116259, 36.509411, 39.604824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.211292, 36.449322, 39.816856>,  <29.369680, 36.349174, 40.170246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.211292, 36.449322, 39.816856> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170460, 0.965431, 0.197195,
		0.902302, -0.072514, -0.424961,
		-0.395971, 0.250368, -0.883472,
		29.092501, 36.524433, 39.551815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.819727, 36.917511, 39.856071>,  <29.369680, 36.349174, 40.170246>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.819727, 36.917511, 39.856071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.456160, 36.947929, 39.692081>,  <29.238020, 36.966183, 39.593685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.456160, 36.947929, 39.692081>,  <29.819727, 36.917511, 39.856071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.456160, 36.947929, 39.692081> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075062, 0.997007, 0.018530,
		0.410161, -0.013931, -0.911907,
		-0.908919, 0.076050, -0.409979,
		29.183483, 36.970745, 39.569088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.900940, 37.368488, 39.317940>,  <29.819727, 36.917511, 39.856071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.900940, 37.368488, 39.317940> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.503763, 37.345554, 39.359467>,  <29.265457, 37.331795, 39.384384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.503763, 37.345554, 39.359467>,  <29.900940, 37.368488, 39.317940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.503763, 37.345554, 39.359467> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079706, 0.970809, -0.226221,
		-0.087821, -0.232900, -0.968527,
		-0.992942, -0.057330, 0.103821,
		29.205881, 37.328354, 39.390614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.593075, 37.781452, 38.762768>,  <29.900940, 37.368488, 39.317940>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.593075, 37.781452, 38.762768> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.297468, 37.762920, 39.031605>,  <29.120104, 37.751801, 39.192905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.297468, 37.762920, 39.031605>,  <29.593075, 37.781452, 38.762768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.297468, 37.762920, 39.031605> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192671, 0.970497, -0.144958,
		-0.645550, -0.236619, -0.726138,
		-0.739015, -0.046329, 0.672094,
		29.075764, 37.749023, 39.233234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.058235, 38.164104, 38.486351>,  <29.593075, 37.781452, 38.762768>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.058235, 38.164104, 38.486351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.992191, 38.158192, 38.880817>,  <28.952566, 38.154644, 39.117496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.992191, 38.158192, 38.880817>,  <29.058235, 38.164104, 38.486351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.992191, 38.158192, 38.880817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120735, 0.992671, -0.005331,
		-0.978858, -0.119945, -0.165682,
		-0.165107, -0.014785, 0.986165,
		28.942659, 38.153755, 39.176666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.380310, 38.538025, 38.551907>,  <29.058235, 38.164104, 38.486351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.380310, 38.538025, 38.551907> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.560297, 38.549721, 38.908932>,  <28.668289, 38.556736, 39.123146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.560297, 38.549721, 38.908932>,  <28.380310, 38.538025, 38.551907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.560297, 38.549721, 38.908932> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146687, 0.988309, 0.041579,
		-0.880915, -0.149637, 0.448997,
		0.449969, 0.029235, 0.892565,
		28.695288, 38.558491, 39.176701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.958612, 38.981739, 38.902172>,  <28.380310, 38.538025, 38.551907>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.958612, 38.981739, 38.902172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.285589, 38.983452, 39.132568>,  <28.481775, 38.984478, 39.270805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.285589, 38.983452, 39.132568>,  <27.958612, 38.981739, 38.902172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.285589, 38.983452, 39.132568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142910, 0.970213, 0.195610,
		-0.557999, -0.242215, 0.793706,
		0.817444, 0.004279, 0.575993,
		28.530823, 38.984734, 39.305367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.765825, 39.295975, 39.496304>,  <27.958612, 38.981739, 38.902172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.765825, 39.295975, 39.496304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.163784, 39.333519, 39.511120>,  <28.402559, 39.356045, 39.520012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.163784, 39.333519, 39.511120>,  <27.765825, 39.295975, 39.496304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.163784, 39.333519, 39.511120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098894, 0.979943, 0.173008,
		-0.020061, -0.175789, 0.984223,
		0.994896, 0.093863, 0.037043,
		28.462254, 39.361679, 39.522232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.988697, 39.745132, 40.070091>,  <27.765825, 39.295975, 39.496304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.988697, 39.745132, 40.070091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.271406, 39.756828, 39.787357>,  <28.441032, 39.763847, 39.617718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.271406, 39.756828, 39.787357>,  <27.988697, 39.745132, 40.070091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.271406, 39.756828, 39.787357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096596, 0.993776, -0.055476,
		0.700813, 0.107487, 0.705200,
		0.706774, 0.029241, -0.706835,
		28.483438, 39.765602, 39.575306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.364889, 40.301769, 40.312012>,  <27.988697, 39.745132, 40.070091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.364889, 40.301769, 40.312012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.486050, 40.262440, 39.932838>,  <28.558746, 40.238842, 39.705334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.486050, 40.262440, 39.932838>,  <28.364889, 40.301769, 40.312012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.486050, 40.262440, 39.932838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053699, 0.994844, -0.086034,
		0.951508, -0.024843, 0.306618,
		0.302900, -0.098327, -0.947937,
		28.576920, 40.232941, 39.648457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.962366, 40.724064, 40.246513>,  <28.364889, 40.301769, 40.312012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.962366, 40.724064, 40.246513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.819757, 40.667580, 39.877090>,  <28.734192, 40.633690, 39.655437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.819757, 40.667580, 39.877090>,  <28.962366, 40.724064, 40.246513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.819757, 40.667580, 39.877090> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100653, 0.988564, -0.112299,
		0.928849, 0.052921, -0.366659,
		-0.356523, -0.141214, -0.923553,
		28.712801, 40.625214, 39.600025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.302780, 41.172466, 39.864925>,  <28.962366, 40.724064, 40.246513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.302780, 41.172466, 39.864925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.964308, 41.113224, 39.660164>,  <28.761225, 41.077679, 39.537308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.964308, 41.113224, 39.660164>,  <29.302780, 41.172466, 39.864925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.964308, 41.113224, 39.660164> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053984, 0.979486, -0.194145,
		0.530154, -0.136648, -0.836818,
		-0.846181, -0.148102, -0.511902,
		28.710453, 41.068794, 39.506592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.346144, 41.697998, 39.353584>,  <29.302780, 41.172466, 39.864925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.346144, 41.697998, 39.353584> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.965864, 41.574497, 39.365215>,  <28.737698, 41.500397, 39.372192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.965864, 41.574497, 39.365215>,  <29.346144, 41.697998, 39.353584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.965864, 41.574497, 39.365215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310119, 0.946782, -0.086198,
		-0.000917, -0.090967, -0.995854,
		-0.950697, -0.308754, 0.029079,
		28.680655, 41.481873, 39.373940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.969994, 42.199577, 38.793873>,  <29.346144, 41.697998, 39.353584>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.969994, 42.199577, 38.793873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.694601, 42.047272, 39.040775>,  <28.529366, 41.955887, 39.188919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.694601, 42.047272, 39.040775>,  <28.969994, 42.199577, 38.793873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.694601, 42.047272, 39.040775> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531207, 0.844200, -0.071739,
		-0.493775, -0.377284, -0.783482,
		-0.688481, -0.380768, 0.617260,
		28.488056, 41.933041, 39.225952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.247818, 42.237869, 38.441536>,  <28.969994, 42.199577, 38.793873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.247818, 42.237869, 38.441536> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.161749, 42.212166, 38.831318>,  <28.110107, 42.196743, 39.065189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.161749, 42.212166, 38.831318>,  <28.247818, 42.237869, 38.441536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.161749, 42.212166, 38.831318> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495852, 0.866829, -0.052333,
		-0.841326, -0.494449, -0.218381,
		-0.215175, -0.064256, 0.974459,
		28.097197, 42.192890, 39.123657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.562159, 42.409523, 38.405006>,  <28.247818, 42.237869, 38.441536>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.562159, 42.409523, 38.405006> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.689842, 42.459873, 38.780720>,  <27.766453, 42.490082, 39.006149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.689842, 42.459873, 38.780720>,  <27.562159, 42.409523, 38.405006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.689842, 42.459873, 38.780720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438755, 0.898147, 0.028746,
		-0.840000, -0.421293, 0.341925,
		0.319210, 0.125875, 0.939287,
		27.785604, 42.497635, 39.062508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.956099, 42.725246, 38.697273>,  <27.562159, 42.409523, 38.405006>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.956099, 42.725246, 38.697273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.283154, 42.784512, 38.919811>,  <27.479387, 42.820072, 39.053333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.283154, 42.784512, 38.919811>,  <26.956099, 42.725246, 38.697273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.283154, 42.784512, 38.919811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304047, 0.931700, 0.198723,
		-0.488899, -0.331637, 0.806842,
		0.817639, 0.148162, 0.556340,
		27.528444, 42.828960, 39.086712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.720013, 43.058777, 39.262718>,  <26.956099, 42.725246, 38.697273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.720013, 43.058777, 39.262718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.106026, 43.163509, 39.267677>,  <27.337633, 43.226349, 39.270653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.106026, 43.163509, 39.267677>,  <26.720013, 43.058777, 39.262718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.106026, 43.163509, 39.267677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256990, 0.935764, 0.241459,
		0.051620, -0.236202, 0.970332,
		0.965034, 0.261830, 0.012398,
		27.395536, 43.242058, 39.271397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.819923, 43.418625, 39.915321>,  <26.720013, 43.058777, 39.262718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.819923, 43.418625, 39.915321> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.104824, 43.540806, 39.662533>,  <27.275764, 43.614117, 39.510860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.104824, 43.540806, 39.662533>,  <26.819923, 43.418625, 39.915321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.104824, 43.540806, 39.662533> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292573, 0.947601, 0.128273,
		0.638042, 0.093536, 0.764300,
		0.712253, 0.305457, -0.631975,
		27.318501, 43.632442, 39.472939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.476830, 32.718010, 50.700790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.093922, 32.655437, 50.798084>,  <39.864178, 32.617893, 50.856461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.093922, 32.655437, 50.798084>,  <40.476830, 32.718010, 50.700790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.093922, 32.655437, 50.798084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195795, 0.268409, 0.943197,
		-0.212828, 0.950519, -0.226312,
		-0.957271, -0.156428, 0.243232,
		39.806740, 32.608509, 50.871056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.247688, 33.301823, 51.133522>,  <40.476830, 32.718010, 50.700790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.247688, 33.301823, 51.133522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.001835, 33.004326, 51.238647>,  <39.854321, 32.825829, 51.301723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.001835, 33.004326, 51.238647>,  <40.247688, 33.301823, 51.133522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.001835, 33.004326, 51.238647> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142660, 0.222871, 0.964353,
		-0.775802, 0.630220, -0.030882,
		-0.614637, -0.743741, 0.262811,
		39.817444, 32.781204, 51.317490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858276, 33.569027, 51.686024>,  <40.247688, 33.301823, 51.133522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.858276, 33.569027, 51.686024> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.807209, 33.172855, 51.706982>,  <39.776569, 32.935150, 51.719559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.807209, 33.172855, 51.706982>,  <39.858276, 33.569027, 51.686024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.807209, 33.172855, 51.706982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073048, 0.062077, 0.995395,
		-0.989124, 0.123248, -0.080274,
		-0.127664, -0.990433, 0.052399,
		39.768909, 32.875725, 51.722702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204185, 33.467857, 52.170616>,  <39.858276, 33.569027, 51.686024>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.204185, 33.467857, 52.170616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.442291, 33.146629, 52.159718>,  <39.585155, 32.953892, 52.153179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.442291, 33.146629, 52.159718>,  <39.204185, 33.467857, 52.170616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.442291, 33.146629, 52.159718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047955, -0.069348, 0.996439,
		-0.802098, -0.591838, -0.079792,
		0.595264, -0.803068, -0.027243,
		39.620872, 32.905708, 52.151546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936119, 33.076626, 52.689384>,  <39.204185, 33.467857, 52.170616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.936119, 33.076626, 52.689384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.298073, 32.918827, 52.625435>,  <39.515244, 32.824146, 52.587063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.298073, 32.918827, 52.625435>,  <38.936119, 33.076626, 52.689384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.298073, 32.918827, 52.625435> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036143, -0.303027, 0.952296,
		-0.424129, -0.867493, -0.259945,
		0.904880, -0.394501, -0.159876,
		39.569538, 32.800476, 52.577473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794453, 32.360519, 52.915035>,  <38.936119, 33.076626, 52.689384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794453, 32.360519, 52.915035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.174862, 32.481064, 52.942543>,  <39.403107, 32.553391, 52.959049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.174862, 32.481064, 52.942543>,  <38.794453, 32.360519, 52.915035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.174862, 32.481064, 52.942543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055610, -0.385649, 0.920968,
		0.304069, -0.872040, -0.383521,
		0.951025, 0.301365, 0.068769,
		39.460171, 32.571472, 52.963173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070980, 31.892563, 53.416695>,  <38.794453, 32.360519, 52.915035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.070980, 31.892563, 53.416695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.343899, 32.184753, 53.404835>,  <39.507648, 32.360069, 53.397720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.343899, 32.184753, 53.404835>,  <39.070980, 31.892563, 53.416695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.343899, 32.184753, 53.404835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260215, -0.204753, 0.943591,
		0.683201, -0.651522, -0.329783,
		0.682294, 0.730477, -0.029649,
		39.548588, 32.403896, 53.395939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.568626, 31.625368, 53.759933>,  <39.070980, 31.892563, 53.416695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.568626, 31.625368, 53.759933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.635757, 32.019520, 53.771690>,  <39.676037, 32.256012, 53.778744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.635757, 32.019520, 53.771690>,  <39.568626, 31.625368, 53.759933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635757, 32.019520, 53.771690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057695, -0.039584, 0.997549,
		0.984127, -0.165717, -0.063494,
		0.167824, 0.985379, 0.029395,
		39.686104, 32.315132, 53.780510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.049999, 31.712769, 54.327393>,  <39.568626, 31.625368, 53.759933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.049999, 31.712769, 54.327393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.942051, 32.093925, 54.272022>,  <39.877281, 32.322620, 54.238800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.942051, 32.093925, 54.272022>,  <40.049999, 31.712769, 54.327393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.942051, 32.093925, 54.272022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003361, 0.142825, 0.989742,
		0.962890, 0.267571, -0.035342,
		-0.269874, 0.952894, -0.138424,
		39.861088, 32.379795, 54.230495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.488106, 32.083607, 54.808243>,  <40.049999, 31.712769, 54.327393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.488106, 32.083607, 54.808243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.155491, 32.286007, 54.716583>,  <39.955921, 32.407448, 54.661587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.155491, 32.286007, 54.716583>,  <40.488106, 32.083607, 54.808243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.155491, 32.286007, 54.716583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209727, 0.096004, 0.973035,
		0.514355, 0.857174, 0.026291,
		-0.831537, 0.506000, -0.229153,
		39.906029, 32.437805, 54.647839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.492546, 32.579716, 55.272720>,  <40.488106, 32.083607, 54.808243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.492546, 32.579716, 55.272720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.115788, 32.585075, 55.138462>,  <39.889732, 32.588291, 55.057907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.115788, 32.585075, 55.138462>,  <40.492546, 32.579716, 55.272720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.115788, 32.585075, 55.138462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335209, 0.027298, 0.941748,
		0.021783, 0.999537, -0.021220,
		-0.941892, 0.013402, -0.335649,
		39.833221, 32.589096, 55.037766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.140610, 33.172539, 55.583420>,  <40.492546, 32.579716, 55.272720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.140610, 33.172539, 55.583420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.855267, 32.918133, 55.465706>,  <39.684063, 32.765488, 55.395077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.855267, 32.918133, 55.465706>,  <40.140610, 33.172539, 55.583420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.855267, 32.918133, 55.465706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475545, 0.130862, 0.869903,
		-0.514762, 0.760498, -0.395805,
		-0.713356, -0.636017, -0.294288,
		39.641258, 32.727329, 55.377419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490936, 33.554409, 55.660698>,  <40.140610, 33.172539, 55.583420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.490936, 33.554409, 55.660698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.458961, 33.158451, 55.707546>,  <39.439777, 32.920876, 55.735657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.458961, 33.158451, 55.707546>,  <39.490936, 33.554409, 55.660698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.458961, 33.158451, 55.707546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444988, 0.140575, 0.884434,
		-0.891962, 0.018579, -0.451729,
		-0.079934, -0.989895, 0.117120,
		39.434982, 32.861481, 55.742683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819660, 33.463455, 55.872944>,  <39.490936, 33.554409, 55.660698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.819660, 33.463455, 55.872944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.061211, 33.176651, 56.012211>,  <39.206142, 33.004566, 56.095772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.061211, 33.176651, 56.012211>,  <38.819660, 33.463455, 55.872944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.061211, 33.176651, 56.012211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299796, 0.200415, 0.932714,
		-0.738548, -0.667625, -0.093932,
		0.603878, -0.717015, 0.348168,
		39.242374, 32.961548, 56.116661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025681, 34.183163, 55.881832>,  <38.819660, 33.463455, 55.872944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.025681, 34.183163, 55.881832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.966431, 34.560703, 55.999954>,  <38.930882, 34.787228, 56.070827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.966431, 34.560703, 55.999954>,  <39.025681, 34.183163, 55.881832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.966431, 34.560703, 55.999954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122700, 0.313833, -0.941516,
		-0.981327, -0.103229, -0.162298,
		-0.148127, 0.943850, 0.295307,
		38.921993, 34.843857, 56.088547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482952, 34.485672, 55.452545>,  <39.025681, 34.183163, 55.881832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.482952, 34.485672, 55.452545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.704597, 34.785065, 55.598274>,  <38.837585, 34.964699, 55.685711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.704597, 34.785065, 55.598274>,  <38.482952, 34.485672, 55.452545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.704597, 34.785065, 55.598274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068807, 0.394975, -0.916112,
		-0.829591, 0.532700, 0.167361,
		0.554116, 0.748482, 0.364321,
		38.870831, 35.009609, 55.707569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246826, 35.059772, 55.100113>,  <38.482952, 34.485672, 55.452545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246826, 35.059772, 55.100113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.598820, 35.172802, 55.252834>,  <38.810017, 35.240620, 55.344467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.598820, 35.172802, 55.252834>,  <38.246826, 35.059772, 55.100113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598820, 35.172802, 55.252834> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181734, 0.542349, -0.820263,
		-0.438858, 0.791207, 0.425905,
		0.879986, 0.282577, 0.381803,
		38.862816, 35.257576, 55.367374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246559, 35.857265, 55.050045>,  <38.246826, 35.059772, 55.100113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246559, 35.857265, 55.050045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.611317, 35.694588, 55.072140>,  <38.830170, 35.596981, 55.085396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.611317, 35.694588, 55.072140>,  <38.246559, 35.857265, 55.050045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611317, 35.694588, 55.072140> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285131, 0.530937, -0.798002,
		0.295217, 0.743441, 0.600119,
		0.911892, -0.406696, 0.055236,
		38.884884, 35.572578, 55.088711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783157, 36.383232, 54.955730>,  <38.246559, 35.857265, 55.050045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.783157, 36.383232, 54.955730> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.973156, 36.041763, 54.870293>,  <39.087154, 35.836884, 54.819031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.973156, 36.041763, 54.870293>,  <38.783157, 36.383232, 54.955730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.973156, 36.041763, 54.870293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280247, 0.376835, -0.882869,
		0.834171, 0.359498, 0.418234,
		0.474994, -0.853673, -0.213597,
		39.115654, 35.785660, 54.806213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355381, 36.598141, 54.586525>,  <38.783157, 36.383232, 54.955730>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.355381, 36.598141, 54.586525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.326385, 36.206127, 54.512459>,  <39.308990, 35.970921, 54.468018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.326385, 36.206127, 54.512459>,  <39.355381, 36.598141, 54.586525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.326385, 36.206127, 54.512459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241697, 0.162862, -0.956587,
		0.967640, -0.114095, 0.225065,
		-0.072487, -0.980030, -0.185168,
		39.304638, 35.912117, 54.456909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009510, 36.353920, 54.226162>,  <39.355381, 36.598141, 54.586525>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.009510, 36.353920, 54.226162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.783272, 36.031181, 54.157921>,  <39.647530, 35.837540, 54.116978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.783272, 36.031181, 54.157921>,  <40.009510, 36.353920, 54.226162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783272, 36.031181, 54.157921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327477, -0.029879, -0.944387,
		0.756877, -0.590006, 0.281122,
		-0.565593, -0.806846, -0.170599,
		39.613594, 35.789127, 54.106743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.418648, 36.044128, 53.812321>,  <40.009510, 36.353920, 54.226162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.418648, 36.044128, 53.812321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.066471, 35.862038, 53.759266>,  <39.855167, 35.752781, 53.727432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.066471, 35.862038, 53.759266>,  <40.418648, 36.044128, 53.812321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.066471, 35.862038, 53.759266> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251820, -0.211899, -0.944291,
		0.401765, -0.864791, 0.301201,
		-0.880438, -0.455231, -0.132638,
		39.802341, 35.725468, 53.719475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.568134, 35.450806, 53.232349>,  <40.418648, 36.044128, 53.812321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.568134, 35.450806, 53.232349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.169529, 35.481716, 53.244907>,  <39.930367, 35.500263, 53.252441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.169529, 35.481716, 53.244907>,  <40.568134, 35.450806, 53.232349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.169529, 35.481716, 53.244907> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039689, -0.108279, -0.993328,
		-0.073356, -0.991113, 0.110969,
		-0.996515, 0.077271, 0.031393,
		39.870575, 35.504898, 53.254326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256466, 34.987961, 52.743103>,  <40.568134, 35.450806, 53.232349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.256466, 34.987961, 52.743103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.961647, 35.258179, 52.751125>,  <39.784756, 35.420311, 52.755939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.961647, 35.258179, 52.751125>,  <40.256466, 34.987961, 52.743103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.961647, 35.258179, 52.751125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065728, 0.101181, -0.992694,
		-0.672642, -0.730341, -0.118977,
		-0.737044, 0.675548, 0.020054,
		39.740536, 35.460842, 52.757141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774311, 34.814800, 52.285336>,  <40.256466, 34.987961, 52.743103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.774311, 34.814800, 52.285336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.687981, 35.202824, 52.329903>,  <39.636181, 35.435638, 52.356644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.687981, 35.202824, 52.329903>,  <39.774311, 34.814800, 52.285336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.687981, 35.202824, 52.329903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136492, 0.083016, -0.987157,
		-0.966845, -0.228263, 0.114487,
		-0.215827, 0.970054, 0.111420,
		39.623234, 35.493839, 52.363327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116161, 35.027424, 51.950130>,  <39.774311, 34.814800, 52.285336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.116161, 35.027424, 51.950130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.368320, 35.336666, 51.978157>,  <39.519615, 35.522213, 51.994972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.368320, 35.336666, 51.978157>,  <39.116161, 35.027424, 51.950130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368320, 35.336666, 51.978157> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098302, 0.169041, -0.980694,
		-0.770025, 0.611337, 0.182561,
		0.630395, 0.773105, 0.070070,
		39.557438, 35.568596, 51.999180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003750, 35.450565, 51.367683>,  <39.116161, 35.027424, 51.950130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.003750, 35.450565, 51.367683> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.317600, 35.664398, 51.493279>,  <39.505909, 35.792698, 51.568634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.317600, 35.664398, 51.493279>,  <39.003750, 35.450565, 51.367683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.317600, 35.664398, 51.493279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238261, 0.207556, -0.948764,
		-0.572363, 0.819232, 0.035483,
		0.784623, 0.534583, 0.313988,
		39.552986, 35.824772, 51.587475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922451, 36.214584, 51.156902>,  <39.003750, 35.450565, 51.367683>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922451, 36.214584, 51.156902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.313877, 36.152275, 51.210793>,  <39.548733, 36.114891, 51.243126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.313877, 36.152275, 51.210793>,  <38.922451, 36.214584, 51.156902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.313877, 36.152275, 51.210793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139640, 0.020995, -0.989980,
		0.151381, 0.987570, 0.042296,
		0.978562, -0.155770, 0.134726,
		39.607445, 36.105545, 51.251209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621681, 36.933525, 50.989788>,  <38.922451, 36.214584, 51.156902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621681, 36.933525, 50.989788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.248657, 36.819855, 50.900719>,  <38.024845, 36.751652, 50.847275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.248657, 36.819855, 50.900719>,  <38.621681, 36.933525, 50.989788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248657, 36.819855, 50.900719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148102, -0.261382, 0.953806,
		-0.329248, 0.922456, 0.201668,
		-0.932556, -0.284172, -0.222677,
		37.968891, 36.734604, 50.833916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159184, 37.311062, 51.298599>,  <38.621681, 36.933525, 50.989788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.159184, 37.311062, 51.298599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.936104, 36.989689, 51.215210>,  <37.802254, 36.796864, 51.165176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.936104, 36.989689, 51.215210>,  <38.159184, 37.311062, 51.298599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.936104, 36.989689, 51.215210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289343, -0.047230, 0.956060,
		-0.777977, 0.593518, -0.206127,
		-0.557703, -0.803434, -0.208474,
		37.768791, 36.748657, 51.152668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560883, 37.432800, 51.547619>,  <38.159184, 37.311062, 51.298599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560883, 37.432800, 51.547619> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.510323, 37.037731, 51.510670>,  <37.479984, 36.800690, 51.488499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.510323, 37.037731, 51.510670>,  <37.560883, 37.432800, 51.547619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.510323, 37.037731, 51.510670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559135, -0.005982, 0.829055,
		-0.819384, 0.156447, -0.551484,
		-0.126404, -0.987668, -0.092376,
		37.472401, 36.741432, 51.482956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927315, 37.354130, 51.827095>,  <37.560883, 37.432800, 51.547619>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927315, 37.354130, 51.827095> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.090630, 36.989208, 51.814419>,  <37.188618, 36.770256, 51.806812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.090630, 36.989208, 51.814419>,  <36.927315, 37.354130, 51.827095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090630, 36.989208, 51.814419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412712, -0.215441, 0.885016,
		-0.814230, -0.348263, -0.464480,
		0.408287, -0.912304, -0.031686,
		37.213116, 36.715519, 51.804913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343578, 36.866440, 52.000484>,  <36.927315, 37.354130, 51.827095>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343578, 36.866440, 52.000484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.685520, 36.671185, 52.070850>,  <36.890686, 36.554031, 52.113068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.685520, 36.671185, 52.070850>,  <36.343578, 36.866440, 52.000484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685520, 36.671185, 52.070850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405220, -0.416336, 0.813917,
		-0.324063, -0.767065, -0.553710,
		0.854857, -0.488134, 0.175911,
		36.941978, 36.524746, 52.123623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150650, 36.074772, 52.125843>,  <36.343578, 36.866440, 52.000484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.150650, 36.074772, 52.125843> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.499706, 36.172279, 52.295113>,  <36.709141, 36.230782, 52.396675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.499706, 36.172279, 52.295113>,  <36.150650, 36.074772, 52.125843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.499706, 36.172279, 52.295113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333859, -0.334627, 0.881228,
		0.356419, -0.910276, -0.210625,
		0.872641, 0.243767, 0.423171,
		36.761497, 36.245411, 52.422066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371342, 35.492733, 52.508839>,  <36.150650, 36.074772, 52.125843>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371342, 35.492733, 52.508839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.554710, 35.818756, 52.650558>,  <36.664730, 36.014370, 52.735588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.554710, 35.818756, 52.650558>,  <36.371342, 35.492733, 52.508839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554710, 35.818756, 52.650558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360533, -0.193825, 0.912386,
		0.812322, -0.545992, 0.205003,
		0.458420, 0.815061, 0.354296,
		36.692238, 36.063274, 52.756847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464493, 34.741913, 52.890991>,  <36.371342, 35.492733, 52.508839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464493, 34.741913, 52.890991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.196339, 34.467358, 52.778244>,  <36.035446, 34.302624, 52.710594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.196339, 34.467358, 52.778244>,  <36.464493, 34.741913, 52.890991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196339, 34.467358, 52.778244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427678, -0.047006, -0.902708,
		0.606361, -0.725713, 0.325066,
		-0.670387, -0.686390, -0.281869,
		35.995224, 34.261440, 52.693684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.904205, 34.216282, 52.558884>,  <36.464493, 34.741913, 52.890991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.904205, 34.216282, 52.558884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.531094, 34.190449, 52.417034>,  <36.307228, 34.174950, 52.331924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.531094, 34.190449, 52.417034>,  <36.904205, 34.216282, 52.558884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531094, 34.190449, 52.417034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358653, -0.264518, -0.895209,
		-0.035985, -0.962215, 0.269901,
		-0.932777, -0.064587, -0.354620,
		36.251259, 34.171074, 52.310650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815887, 33.588596, 52.072491>,  <36.904205, 34.216282, 52.558884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815887, 33.588596, 52.072491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.516712, 33.835163, 51.974010>,  <36.337208, 33.983105, 51.914921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.516712, 33.835163, 51.974010>,  <36.815887, 33.588596, 52.072491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516712, 33.835163, 51.974010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150879, -0.203325, -0.967416,
		-0.646393, -0.760714, 0.059069,
		-0.747938, 0.616419, -0.246204,
		36.292332, 34.020088, 51.900150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481930, 33.144604, 51.609703>,  <36.815887, 33.588596, 52.072491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.481930, 33.144604, 51.609703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.323406, 33.507153, 51.551140>,  <36.228291, 33.724682, 51.516003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.323406, 33.507153, 51.551140>,  <36.481930, 33.144604, 51.609703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323406, 33.507153, 51.551140> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138939, -0.098418, -0.985398,
		-0.907542, -0.410866, -0.086925,
		-0.396312, 0.906368, -0.146403,
		36.204514, 33.779064, 51.507217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180534, 33.075260, 50.902832>,  <36.481930, 33.144604, 51.609703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180534, 33.075260, 50.902832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.210484, 33.470196, 50.958775>,  <36.228455, 33.707157, 50.992340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.210484, 33.470196, 50.958775>,  <36.180534, 33.075260, 50.902832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.210484, 33.470196, 50.958775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109725, 0.131243, -0.985259,
		-0.991138, 0.089114, -0.098509,
		0.074872, 0.987337, 0.139858,
		36.232944, 33.766396, 51.000732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.867382, 33.321327, 50.356171>,  <36.180534, 33.075260, 50.902832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.867382, 33.321327, 50.356171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.121437, 33.599430, 50.490765>,  <36.273869, 33.766293, 50.571522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.121437, 33.599430, 50.490765>,  <35.867382, 33.321327, 50.356171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.121437, 33.599430, 50.490765> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350743, 0.128524, -0.927610,
		-0.688173, 0.707178, -0.162226,
		0.635136, 0.695256, 0.336485,
		36.311977, 33.808006, 50.591709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581749, 33.973904, 50.225891>,  <35.867382, 33.321327, 50.356171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581749, 33.973904, 50.225891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.979347, 34.016426, 50.215454>,  <36.217907, 34.041939, 50.209190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.979347, 34.016426, 50.215454>,  <35.581749, 33.973904, 50.225891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.979347, 34.016426, 50.215454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048114, 0.210201, -0.976474,
		-0.098318, 0.971862, 0.214053,
		0.993991, 0.106304, -0.026093,
		36.277546, 34.048317, 50.207626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.250381, 30.821486, 55.143517> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.108189, 31.045088, 55.443153>,  <37.022873, 31.179249, 55.622936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.108189, 31.045088, 55.443153>,  <37.250381, 30.821486, 55.143517>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108189, 31.045088, 55.443153> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930093, 0.132229, 0.342700,
		0.092520, 0.818551, -0.566934,
		-0.355482, 0.559008, 0.749095,
		37.001545, 31.212790, 55.667881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085995, 30.838512, 54.375298>,  <37.250381, 30.821486, 55.143517>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.085995, 30.838512, 54.375298> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.410877, 31.069471, 54.342014>,  <37.605808, 31.208048, 54.322044>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.410877, 31.069471, 54.342014>,  <37.085995, 30.838512, 54.375298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410877, 31.069471, 54.342014> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050829, -0.212141, -0.975916,
		-0.581145, 0.788420, -0.201652,
		0.812211, 0.577399, -0.083210,
		37.654541, 31.242691, 54.317051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982803, 31.423069, 53.839642>,  <37.085995, 30.838512, 54.375298>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.982803, 31.423069, 53.839642> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.348766, 31.263678, 53.865463>,  <37.568344, 31.168043, 53.880955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.348766, 31.263678, 53.865463>,  <36.982803, 31.423069, 53.839642>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.348766, 31.263678, 53.865463> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014675, -0.192641, -0.981160,
		0.403404, 0.896720, -0.182096,
		0.914904, -0.398476, 0.064553,
		37.623238, 31.144135, 53.884830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512943, 31.810850, 53.360580>,  <36.982803, 31.423069, 53.839642>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.512943, 31.810850, 53.360580> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.592228, 31.423512, 53.421261>,  <37.639797, 31.191109, 53.457668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.592228, 31.423512, 53.421261>,  <37.512943, 31.810850, 53.360580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.592228, 31.423512, 53.421261> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080330, -0.138205, -0.987141,
		0.976862, 0.207850, 0.050394,
		0.198212, -0.968348, 0.151704,
		37.651691, 31.133007, 53.466770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.776775, 31.654987, 52.772461>,  <37.512943, 31.810850, 53.360580>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.776775, 31.654987, 52.772461> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.709415, 31.285774, 52.910824>,  <37.668999, 31.064245, 52.993839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.709415, 31.285774, 52.910824>,  <37.776775, 31.654987, 52.772461>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709415, 31.285774, 52.910824> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117241, -0.329668, -0.936789,
		0.978722, -0.198308, -0.052702,
		-0.168399, -0.923035, 0.345903,
		37.658897, 31.008863, 53.014595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.050800, 31.205875, 52.270000>,  <37.776775, 31.654987, 52.772461>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.050800, 31.205875, 52.270000> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.803940, 30.981672, 52.490891>,  <37.655823, 30.847151, 52.623425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.803940, 30.981672, 52.490891>,  <38.050800, 31.205875, 52.270000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803940, 30.981672, 52.490891> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262064, -0.515329, -0.815940,
		0.741919, -0.648278, 0.171148,
		-0.617153, -0.560510, 0.552222,
		37.618793, 30.813519, 52.656559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328995, 30.552713, 52.142109>,  <38.050800, 31.205875, 52.270000>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328995, 30.552713, 52.142109> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.948460, 30.515617, 52.259659>,  <37.720139, 30.493361, 52.330189>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.948460, 30.515617, 52.259659>,  <38.328995, 30.552713, 52.142109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.948460, 30.515617, 52.259659> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203623, -0.526600, -0.825367,
		0.231298, -0.845040, 0.482088,
		-0.951335, -0.092741, 0.293871,
		37.663059, 30.487795, 52.347820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111874, 29.831331, 52.011215>,  <38.328995, 30.552713, 52.142109>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111874, 29.831331, 52.011215> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.769539, 30.038204, 52.007919>,  <37.564137, 30.162327, 52.005943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.769539, 30.038204, 52.007919>,  <38.111874, 29.831331, 52.011215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.769539, 30.038204, 52.007919> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149814, -0.263089, -0.953069,
		-0.495077, -0.814437, 0.302642,
		-0.855836, 0.517182, -0.008236,
		37.512787, 30.193359, 52.005447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609161, 29.349516, 51.690666>,  <38.111874, 29.831331, 52.011215>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609161, 29.349516, 51.690666> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.456913, 29.718748, 51.668556>,  <37.365566, 29.940287, 51.655289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.456913, 29.718748, 51.668556>,  <37.609161, 29.349516, 51.690666>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456913, 29.718748, 51.668556> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247057, -0.159112, -0.955849,
		-0.891119, -0.350156, 0.288614,
		-0.380618, 0.923079, -0.055280,
		37.342728, 29.995672, 51.651974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075813, 29.302593, 51.224834>,  <37.609161, 29.349516, 51.690666>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.075813, 29.302593, 51.224834> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.128983, 29.698969, 51.217167>,  <37.160885, 29.936794, 51.212566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.128983, 29.698969, 51.217167>,  <37.075813, 29.302593, 51.224834>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.128983, 29.698969, 51.217167> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283159, 0.019438, -0.958876,
		-0.949817, 0.132883, 0.283177,
		0.132923, 0.990941, -0.019165,
		37.168858, 29.996252, 51.211418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.375877, 29.639153, 50.985252>,  <37.075813, 29.302593, 51.224834>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.375877, 29.639153, 50.985252> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.679207, 29.887894, 50.907036>,  <36.861206, 30.037138, 50.860107>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.679207, 29.887894, 50.907036>,  <36.375877, 29.639153, 50.985252>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679207, 29.887894, 50.907036> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285223, 0.046797, -0.957318,
		-0.586162, 0.781733, 0.212855,
		0.758328, 0.621855, -0.195538,
		36.906704, 30.074450, 50.848373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.141727, 30.018538, 50.493820>,  <36.375877, 29.639153, 50.985252>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.141727, 30.018538, 50.493820> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.530945, 30.103643, 50.458229>,  <36.764477, 30.154707, 50.436874>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.530945, 30.103643, 50.458229>,  <36.141727, 30.018538, 50.493820>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.530945, 30.103643, 50.458229> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134677, 0.211058, -0.968151,
		-0.187210, 0.954036, 0.234023,
		0.973044, 0.212765, -0.088974,
		36.822857, 30.167473, 50.431538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625336, 30.432606, 50.592075>,  <36.141727, 30.018538, 50.493820>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625336, 30.432606, 50.592075> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.326393, 30.698158, 50.581310>,  <35.147030, 30.857491, 50.574852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.326393, 30.698158, 50.581310>,  <35.625336, 30.432606, 50.592075>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326393, 30.698158, 50.581310> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018751, 0.061558, 0.997927,
		0.664161, 0.745301, -0.058454,
		-0.747354, 0.663881, -0.026909,
		35.102188, 30.897322, 50.573238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918621, 31.018843, 50.941669>,  <35.625336, 30.432606, 50.592075>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918621, 31.018843, 50.941669> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.520092, 31.052988, 50.938965>,  <35.280975, 31.073475, 50.937344>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.520092, 31.052988, 50.938965>,  <35.918621, 31.018843, 50.941669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520092, 31.052988, 50.938965> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000264, 0.075893, 0.997116,
		0.085629, 0.993455, -0.075592,
		-0.996327, 0.085362, -0.006761,
		35.221195, 31.078596, 50.936935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747803, 31.660770, 51.300812>,  <35.918621, 31.018843, 50.941669>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747803, 31.660770, 51.300812> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.424126, 31.425756, 51.300106>,  <35.229919, 31.284748, 51.299683>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.424126, 31.425756, 51.300106>,  <35.747803, 31.660770, 51.300812>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424126, 31.425756, 51.300106> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112384, 0.151829, 0.981997,
		-0.576691, 0.794826, -0.188889,
		-0.809196, -0.587537, -0.001767,
		35.181366, 31.249495, 51.299576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.276207, 32.006866, 51.750927>,  <35.747803, 31.660770, 51.300812>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.276207, 32.006866, 51.750927> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.133785, 31.633627, 51.730721>,  <35.048332, 31.409683, 51.718597>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.133785, 31.633627, 51.730721>,  <35.276207, 32.006866, 51.750927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133785, 31.633627, 51.730721> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258441, 0.046383, 0.964913,
		-0.898015, 0.356619, -0.257666,
		-0.356057, -0.933098, -0.050512,
		35.026970, 31.353697, 51.715569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675381, 32.004738, 52.194160>,  <35.276207, 32.006866, 51.750927>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.675381, 32.004738, 52.194160> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.777477, 31.619722, 52.157547>,  <34.838737, 31.388714, 52.135578>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.777477, 31.619722, 52.157547>,  <34.675381, 32.004738, 52.194160>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.777477, 31.619722, 52.157547> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242206, -0.155301, 0.957715,
		-0.936049, -0.222281, -0.272771,
		0.255243, -0.962534, -0.091532,
		34.854050, 31.330961, 52.130089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.040936, 31.484022, 52.398067>,  <34.675381, 32.004738, 52.194160>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.040936, 31.484022, 52.398067> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.389122, 31.295097, 52.453506>,  <34.598034, 31.181742, 52.486771>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.389122, 31.295097, 52.453506>,  <34.040936, 31.484022, 52.398067>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.389122, 31.295097, 52.453506> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240709, -0.162837, 0.956840,
		-0.429358, -0.866259, -0.255433,
		0.870466, -0.472312, 0.138601,
		34.650261, 31.153404, 52.495087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900822, 31.109844, 53.022102>,  <34.040936, 31.484022, 52.398067>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900822, 31.109844, 53.022102> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.292767, 31.040070, 52.983219>,  <34.527931, 30.998205, 52.959888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.292767, 31.040070, 52.983219>,  <33.900822, 31.109844, 53.022102>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292767, 31.040070, 52.983219> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097910, -0.004609, 0.995185,
		-0.174044, -0.984658, 0.012563,
		0.979858, -0.174436, -0.097210,
		34.586723, 30.987740, 52.954056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998837, 30.643200, 53.462700>,  <33.900822, 31.109844, 53.022102>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.998837, 30.643200, 53.462700> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.357155, 30.806890, 53.393314>,  <34.572144, 30.905104, 53.351685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.357155, 30.806890, 53.393314>,  <33.998837, 30.643200, 53.462700>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.357155, 30.806890, 53.393314> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194149, -0.009191, 0.980929,
		0.399827, -0.912387, -0.087684,
		0.895793, 0.409226, -0.173464,
		34.625893, 30.929659, 53.341274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303711, 30.525440, 54.077251>,  <33.998837, 30.643200, 53.462700>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303711, 30.525440, 54.077251> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.566471, 30.787094, 53.927273>,  <34.724129, 30.944086, 53.837284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.566471, 30.787094, 53.927273>,  <34.303711, 30.525440, 54.077251>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566471, 30.787094, 53.927273> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363974, 0.160387, 0.917496,
		0.660303, -0.739177, -0.132729,
		0.656904, 0.654135, -0.374945,
		34.763542, 30.983335, 53.814789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940510, 30.404205, 54.471634>,  <34.303711, 30.525440, 54.077251>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940510, 30.404205, 54.471634> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.930496, 30.768682, 54.307144>,  <34.924488, 30.987370, 54.208450>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.930496, 30.768682, 54.307144>,  <34.940510, 30.404205, 54.471634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930496, 30.768682, 54.307144> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320408, 0.396963, 0.860092,
		0.946949, -0.110223, -0.301892,
		-0.025038, 0.911192, -0.411220,
		34.922985, 31.042040, 54.183777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524399, 30.727940, 54.598907>,  <34.940510, 30.404205, 54.471634>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.524399, 30.727940, 54.598907> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.295174, 31.049669, 54.536087>,  <35.157639, 31.242706, 54.498394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.295174, 31.049669, 54.536087>,  <35.524399, 30.727940, 54.598907>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.295174, 31.049669, 54.536087> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324853, 0.398890, 0.857530,
		0.752377, 0.440399, -0.489875,
		-0.573061, 0.804323, -0.157051,
		35.123257, 31.290966, 54.488972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922138, 31.362375, 54.612694>,  <35.524399, 30.727940, 54.598907>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922138, 31.362375, 54.612694> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.559437, 31.517378, 54.679199>,  <35.341816, 31.610380, 54.719101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.559437, 31.517378, 54.679199>,  <35.922138, 31.362375, 54.612694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559437, 31.517378, 54.679199> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349209, 0.469090, 0.811176,
		0.236342, 0.793595, -0.560668,
		-0.906750, 0.387506, 0.166265,
		35.287411, 31.633629, 54.729080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015965, 32.115917, 54.675594>,  <35.922138, 31.362375, 54.612694>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.015965, 32.115917, 54.675594> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.680069, 32.010910, 54.865723>,  <35.478531, 31.947906, 54.979801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.680069, 32.010910, 54.865723>,  <36.015965, 32.115917, 54.675594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.680069, 32.010910, 54.865723> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261417, 0.571794, 0.777633,
		-0.475926, 0.777263, -0.411531,
		-0.839736, -0.262514, 0.475321,
		35.428146, 31.932156, 55.008320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.481358, 32.659409, 54.816833>,  <36.015965, 32.115917, 54.675594>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.481358, 32.659409, 54.816833> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.509712, 32.368519, 55.089924>,  <35.526726, 32.193985, 55.253777>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.509712, 32.368519, 55.089924>,  <35.481358, 32.659409, 54.816833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509712, 32.368519, 55.089924> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352361, 0.658578, 0.664919,
		-0.933175, 0.193429, 0.302934,
		0.070891, -0.727228, 0.682725,
		35.530979, 32.150349, 55.294743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756073, 32.783501, 54.868202>,  <35.481358, 32.659409, 54.816833>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756073, 32.783501, 54.868202> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.653065, 33.161423, 54.949211>,  <34.591259, 33.388176, 54.997818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.653065, 33.161423, 54.949211>,  <34.756073, 32.783501, 54.868202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653065, 33.161423, 54.949211> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064198, 0.225861, -0.972042,
		-0.964137, -0.237322, -0.118820,
		-0.257523, 0.944810, 0.202526,
		34.575809, 33.444866, 55.009968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.186260, 33.025631, 54.337170>,  <34.756073, 32.783501, 54.868202>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.186260, 33.025631, 54.337170> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.422939, 33.313126, 54.483219>,  <34.564949, 33.485622, 54.570847>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.422939, 33.313126, 54.483219>,  <34.186260, 33.025631, 54.337170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.422939, 33.313126, 54.483219> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206581, 0.302608, -0.930458,
		-0.779239, 0.625980, 0.030578,
		0.591702, 0.718733, 0.365120,
		34.600449, 33.528744, 54.592754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.241398, 33.476738, 53.769451>,  <34.186260, 33.025631, 54.337170>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.241398, 33.476738, 53.769451> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.530708, 33.614658, 54.008778>,  <34.704296, 33.697411, 54.152374>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.530708, 33.614658, 54.008778>,  <34.241398, 33.476738, 53.769451>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530708, 33.614658, 54.008778> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429558, 0.453758, -0.780758,
		-0.540696, 0.821716, 0.180082,
		0.723276, 0.344798, 0.598320,
		34.747692, 33.718098, 54.188274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255665, 34.214642, 53.670982>,  <34.241398, 33.476738, 53.769451>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.255665, 34.214642, 53.670982> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.608074, 34.115868, 53.832386>,  <34.819519, 34.056602, 53.929226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.608074, 34.115868, 53.832386>,  <34.255665, 34.214642, 53.670982>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.608074, 34.115868, 53.832386> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464794, 0.292985, -0.835540,
		0.088103, 0.923679, 0.372901,
		0.881025, -0.246936, 0.403507,
		34.872383, 34.041786, 53.953438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558491, 34.719055, 53.443924>,  <34.255665, 34.214642, 53.670982>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558491, 34.719055, 53.443924> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.848270, 34.465000, 53.551083>,  <35.022141, 34.312565, 53.615376>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.848270, 34.465000, 53.551083>,  <34.558491, 34.719055, 53.443924>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.848270, 34.465000, 53.551083> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497782, 0.213189, -0.840692,
		0.476845, 0.742394, 0.470606,
		0.724452, -0.635139, 0.267893,
		35.065605, 34.274460, 53.631451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221863, 35.072510, 53.348457>,  <34.558491, 34.719055, 53.443924>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.221863, 35.072510, 53.348457> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.278320, 34.677341, 53.322849>,  <35.312195, 34.440243, 53.307484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.278320, 34.677341, 53.322849>,  <35.221863, 35.072510, 53.348457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278320, 34.677341, 53.322849> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534237, 0.130451, -0.835208,
		0.833468, 0.083680, 0.546194,
		0.141142, -0.987917, -0.064022,
		35.320663, 34.380966, 53.303642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873837, 35.037922, 53.246235>,  <35.221863, 35.072510, 53.348457>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873837, 35.037922, 53.246235> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.757549, 34.673141, 53.130428>,  <35.687778, 34.454273, 53.060944>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.757549, 34.673141, 53.130428>,  <35.873837, 35.037922, 53.246235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.757549, 34.673141, 53.130428> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558727, 0.083831, -0.825103,
		0.776728, -0.401636, 0.485163,
		-0.290719, -0.911954, -0.289519,
		35.670334, 34.399555, 53.043571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567402, 35.325943, 53.310097>,  <35.873837, 35.037922, 53.246235>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.567402, 35.325943, 53.310097> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.652649, 35.715813, 53.282978>,  <36.703796, 35.949734, 53.266705>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.652649, 35.715813, 53.282978>,  <36.567402, 35.325943, 53.310097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652649, 35.715813, 53.282978> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208130, 0.113091, 0.971541,
		0.954600, -0.192943, 0.226960,
		0.213120, 0.974671, -0.067800,
		36.716583, 36.008213, 53.262638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.115334, 35.368862, 53.817928>,  <36.567402, 35.325943, 53.310097>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.115334, 35.368862, 53.817928> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.953217, 35.728127, 53.749744>,  <36.855946, 35.943684, 53.708836>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.953217, 35.728127, 53.749744>,  <37.115334, 35.368862, 53.817928>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.953217, 35.728127, 53.749744> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236928, 0.076890, 0.968480,
		0.882953, 0.432900, 0.181636,
		-0.405289, 0.898157, -0.170456,
		36.831631, 35.997574, 53.698608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481995, 35.843899, 54.285759>,  <37.115334, 35.368862, 53.817928>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.481995, 35.843899, 54.285759> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.140884, 36.015118, 54.166058>,  <36.936218, 36.117847, 54.094238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.140884, 36.015118, 54.166058>,  <37.481995, 35.843899, 54.285759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140884, 36.015118, 54.166058> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205866, 0.251089, 0.945819,
		0.479992, 0.868176, -0.126003,
		-0.852776, 0.428046, -0.299249,
		36.885052, 36.143532, 54.076283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412148, 36.568748, 54.540836>,  <37.481995, 35.843899, 54.285759>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412148, 36.568748, 54.540836> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.044865, 36.418633, 54.490166>,  <36.824493, 36.328564, 54.459763>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.044865, 36.418633, 54.490166>,  <37.412148, 36.568748, 54.540836>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044865, 36.418633, 54.490166> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232617, 0.252066, 0.939336,
		-0.320596, 0.891974, -0.318749,
		-0.918209, -0.375294, -0.126677,
		36.769402, 36.306046, 54.452164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004475, 36.938709, 55.088161>,  <37.412148, 36.568748, 54.540836>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004475, 36.938709, 55.088161> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.740635, 36.658371, 54.979542>,  <36.582329, 36.490170, 54.914371>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.740635, 36.658371, 54.979542>,  <37.004475, 36.938709, 55.088161>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.740635, 36.658371, 54.979542> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347753, -0.035725, 0.936905,
		-0.666327, 0.712418, -0.220157,
		-0.659602, -0.700846, -0.271550,
		36.542755, 36.448116, 54.898075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432285, 37.061859, 55.499886>,  <37.004475, 36.938709, 55.088161>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.432285, 37.061859, 55.499886> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.391209, 36.683853, 55.375694>,  <36.366562, 36.457050, 55.301178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.391209, 36.683853, 55.375694>,  <36.432285, 37.061859, 55.499886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.391209, 36.683853, 55.375694> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407111, -0.244859, 0.879946,
		-0.907588, 0.216760, -0.359582,
		-0.102690, -0.945018, -0.310477,
		36.360401, 36.400349, 55.282551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879719, 36.888367, 55.871552>,  <36.432285, 37.061859, 55.499886>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879719, 36.888367, 55.871552> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.062923, 36.538082, 55.810425>,  <36.172848, 36.327911, 55.773750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.062923, 36.538082, 55.810425>,  <35.879719, 36.888367, 55.871552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062923, 36.538082, 55.810425> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338296, -0.330681, 0.881025,
		-0.822058, -0.351824, -0.447706,
		0.458014, -0.875711, -0.152818,
		36.200329, 36.275368, 55.764580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440315, 36.428677, 56.149719>,  <35.879719, 36.888367, 55.871552>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.440315, 36.428677, 56.149719> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.801991, 36.257824, 56.149246>,  <36.018997, 36.155312, 56.148960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.801991, 36.257824, 56.149246>,  <35.440315, 36.428677, 56.149719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801991, 36.257824, 56.149246> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189135, -0.402859, 0.895507,
		-0.382975, -0.809484, -0.445046,
		0.904189, -0.427131, -0.001183,
		36.073246, 36.129684, 56.148891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.258671, 35.827015, 56.351475>,  <35.440315, 36.428677, 56.149719>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.258671, 35.827015, 56.351475> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.647263, 35.884285, 56.427074>,  <35.880417, 35.918648, 56.472435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.647263, 35.884285, 56.427074>,  <35.258671, 35.827015, 56.351475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.647263, 35.884285, 56.427074> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167931, -0.147227, 0.974743,
		0.167389, -0.978685, -0.118984,
		0.971483, 0.143180, 0.188996,
		35.938709, 35.927238, 56.483772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<37.553051, 37.308643, 40.759159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.950264, 37.291702, 40.715187>,  <38.188591, 37.281536, 40.688805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.950264, 37.291702, 40.715187>,  <37.553051, 37.308643, 40.759159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.950264, 37.291702, 40.715187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045181, -0.724877, 0.687395,
		-0.108798, -0.687575, -0.717916,
		0.993037, -0.042351, -0.109931,
		38.248177, 37.278996, 40.682209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.856190, 36.603588, 40.586914>,  <37.553051, 37.308643, 40.759159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.856190, 36.603588, 40.586914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070679, 36.857109, 40.809895>,  <38.199371, 37.009224, 40.943684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070679, 36.857109, 40.809895>,  <37.856190, 36.603588, 40.586914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070679, 36.857109, 40.809895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251696, -0.510320, 0.822328,
		0.805674, -0.581263, -0.114121,
		0.536226, 0.633804, 0.557453,
		38.231548, 37.047249, 40.977131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299442, 36.185024, 40.953487>,  <37.856190, 36.603588, 40.586914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299442, 36.185024, 40.953487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.273079, 36.528473, 41.156834>,  <38.257263, 36.734543, 41.278839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.273079, 36.528473, 41.156834>,  <38.299442, 36.185024, 40.953487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273079, 36.528473, 41.156834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056959, -0.511876, 0.857169,
		0.996199, 0.027537, 0.082642,
		-0.065906, 0.858618, 0.508362,
		38.253307, 36.786057, 41.309341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657951, 36.016026, 41.506378>,  <38.299442, 36.185024, 40.953487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.657951, 36.016026, 41.506378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.474403, 36.350243, 41.627251>,  <38.364273, 36.550774, 41.699772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.474403, 36.350243, 41.627251>,  <38.657951, 36.016026, 41.506378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474403, 36.350243, 41.627251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056295, -0.366757, 0.928612,
		0.886718, 0.409102, 0.215331,
		-0.458871, 0.835539, 0.302179,
		38.336742, 36.600903, 41.717903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.918682, 36.203918, 42.209835>,  <38.657951, 36.016026, 41.506378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.918682, 36.203918, 42.209835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.561588, 36.382957, 42.189140>,  <38.347332, 36.490379, 42.176723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.561588, 36.382957, 42.189140>,  <38.918682, 36.203918, 42.209835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.561588, 36.382957, 42.189140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190590, -0.271076, 0.943501,
		0.408283, 0.852159, 0.327307,
		-0.892738, 0.447596, -0.051737,
		38.293766, 36.517235, 42.173618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919838, 36.596912, 42.822601>,  <38.918682, 36.203918, 42.209835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.919838, 36.596912, 42.822601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543819, 36.562485, 42.690594>,  <38.318211, 36.541828, 42.611389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543819, 36.562485, 42.690594>,  <38.919838, 36.596912, 42.822601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543819, 36.562485, 42.690594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313069, -0.166113, 0.935090,
		-0.135300, 0.982344, 0.129208,
		-0.940043, -0.086067, -0.330017,
		38.261806, 36.536663, 42.591587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468407, 36.870899, 43.378716>,  <38.919838, 36.596912, 42.822601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468407, 36.870899, 43.378716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.175770, 36.730106, 43.145172>,  <38.000187, 36.645630, 43.005047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.175770, 36.730106, 43.145172>,  <38.468407, 36.870899, 43.378716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.175770, 36.730106, 43.145172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562259, -0.172803, 0.808705,
		-0.385540, 0.919918, -0.071483,
		-0.731589, -0.351980, -0.583855,
		37.956291, 36.624512, 42.970016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859539, 37.246113, 43.649864>,  <38.468407, 36.870899, 43.378716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859539, 37.246113, 43.649864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.769138, 36.891247, 43.488937>,  <37.714897, 36.678326, 43.392380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.769138, 36.891247, 43.488937>,  <37.859539, 37.246113, 43.649864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.769138, 36.891247, 43.488937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572808, -0.213025, 0.791525,
		-0.787918, 0.409334, -0.460032,
		-0.226000, -0.887167, -0.402316,
		37.701340, 36.625095, 43.368244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125240, 37.258316, 43.690563>,  <37.859539, 37.246113, 43.649864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125240, 37.258316, 43.690563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.229939, 36.873547, 43.659081>,  <37.292755, 36.642685, 43.640190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.229939, 36.873547, 43.659081>,  <37.125240, 37.258316, 43.690563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229939, 36.873547, 43.659081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117569, -0.112723, 0.986646,
		-0.957950, -0.248994, -0.142597,
		0.261743, -0.961923, -0.078709,
		37.308460, 36.584969, 43.635468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585243, 36.869408, 44.054863>,  <37.125240, 37.258316, 43.690563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585243, 36.869408, 44.054863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.900909, 36.624557, 44.034744>,  <37.090309, 36.477650, 44.022675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.900909, 36.624557, 44.034744>,  <36.585243, 36.869408, 44.054863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.900909, 36.624557, 44.034744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177358, -0.305523, 0.935521,
		-0.588020, -0.729357, -0.349671,
		0.789162, -0.612122, -0.050296,
		37.137657, 36.440922, 44.019657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.376251, 36.211079, 44.336018>,  <36.585243, 36.869408, 44.054863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.376251, 36.211079, 44.336018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.772976, 36.217770, 44.386673>,  <37.011009, 36.221783, 44.417065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.772976, 36.217770, 44.386673>,  <36.376251, 36.211079, 44.336018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.772976, 36.217770, 44.386673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112493, -0.355256, 0.927975,
		0.060511, -0.934619, -0.350464,
		0.991808, 0.016728, 0.126635,
		37.070518, 36.222790, 44.424664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526485, 35.611927, 44.647007>,  <36.376251, 36.211079, 44.336018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.526485, 35.611927, 44.647007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.808125, 35.884922, 44.725452>,  <36.977108, 36.048721, 44.772518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.808125, 35.884922, 44.725452>,  <36.526485, 35.611927, 44.647007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.808125, 35.884922, 44.725452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149665, -0.127338, 0.980503,
		0.694156, -0.719716, 0.012487,
		0.704094, 0.682491, 0.196109,
		37.019352, 36.089668, 44.784286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.317440, 35.457180, 43.919796>,  <36.526485, 35.611927, 44.647007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.317440, 35.457180, 43.919796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209942, 35.080040, 43.998600>,  <36.145443, 34.853756, 44.045883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209942, 35.080040, 43.998600>,  <36.317440, 35.457180, 43.919796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209942, 35.080040, 43.998600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636613, 0.020373, -0.770914,
		0.722840, -0.332604, -0.605703,
		-0.268749, -0.942847, 0.197013,
		36.129318, 34.797188, 44.057705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387566, 34.995815, 43.323502>,  <36.317440, 35.457180, 43.919796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.387566, 34.995815, 43.323502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.090061, 34.878025, 43.563534>,  <35.911556, 34.807350, 43.707554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.090061, 34.878025, 43.563534>,  <36.387566, 34.995815, 43.323502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.090061, 34.878025, 43.563534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634518, 0.028666, -0.772376,
		0.210245, -0.955229, -0.208172,
		-0.743763, -0.294477, 0.600083,
		35.866932, 34.789684, 43.743557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075153, 34.442726, 42.959911>,  <36.387566, 34.995815, 43.323502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075153, 34.442726, 42.959911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.794708, 34.540268, 43.227932>,  <35.626442, 34.598793, 43.388744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.794708, 34.540268, 43.227932>,  <36.075153, 34.442726, 42.959911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.794708, 34.540268, 43.227932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689618, 0.007016, -0.724139,
		-0.181287, -0.969786, 0.163248,
		-0.701115, 0.243856, 0.670054,
		35.584373, 34.613426, 43.428947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498421, 34.045643, 42.858410>,  <36.075153, 34.442726, 42.959911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498421, 34.045643, 42.858410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.371246, 34.378059, 43.040966>,  <35.294941, 34.577511, 43.150497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.371246, 34.378059, 43.040966>,  <35.498421, 34.045643, 42.858410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.371246, 34.378059, 43.040966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666231, 0.146666, -0.731181,
		-0.674578, -0.536526, 0.507036,
		-0.317933, 0.831041, 0.456388,
		35.275867, 34.627373, 43.177883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749630, 34.045635, 42.795277>,  <35.498421, 34.045643, 42.858410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749630, 34.045635, 42.795277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.844387, 34.428783, 42.860222>,  <34.901241, 34.658672, 42.899189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.844387, 34.428783, 42.860222>,  <34.749630, 34.045635, 42.795277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.844387, 34.428783, 42.860222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715407, 0.285057, -0.637915,
		-0.657325, 0.034956, 0.752796,
		0.236888, 0.957873, 0.162367,
		34.915455, 34.716145, 42.908932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180168, 34.277767, 42.615013>,  <34.749630, 34.045635, 42.795277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180168, 34.277767, 42.615013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.379139, 34.624737, 42.619923>,  <34.498520, 34.832916, 42.622868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.379139, 34.624737, 42.619923>,  <34.180168, 34.277767, 42.615013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.379139, 34.624737, 42.619923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652697, 0.383538, -0.653364,
		-0.571449, 0.316988, 0.756944,
		0.497425, 0.867420, 0.012276,
		34.528366, 34.884964, 42.623604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621559, 34.694603, 42.581928>,  <34.180168, 34.277767, 42.615013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621559, 34.694603, 42.581928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931622, 34.937599, 42.512543>,  <34.117661, 35.083397, 42.470913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931622, 34.937599, 42.512543>,  <33.621559, 34.694603, 42.581928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931622, 34.937599, 42.512543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531219, 0.478119, -0.699434,
		-0.341961, 0.634319, 0.693327,
		0.775157, 0.607488, -0.173464,
		34.164169, 35.119846, 42.460503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.240475, 35.268211, 42.520863>,  <33.621559, 34.694603, 42.581928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.240475, 35.268211, 42.520863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.605957, 35.318211, 42.366192>,  <33.825245, 35.348209, 42.273392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.605957, 35.318211, 42.366192>,  <33.240475, 35.268211, 42.520863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.605957, 35.318211, 42.366192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389146, 0.543272, -0.743923,
		0.117078, 0.830199, 0.545034,
		0.913706, 0.125001, -0.386674,
		33.880070, 35.355709, 42.250191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.315010, 35.942310, 42.254574>,  <33.240475, 35.268211, 42.520863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.315010, 35.942310, 42.254574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.558857, 35.710320, 42.038425>,  <33.705166, 35.571125, 41.908737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.558857, 35.710320, 42.038425>,  <33.315010, 35.942310, 42.254574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.558857, 35.710320, 42.038425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411247, 0.351381, -0.841075,
		0.677679, 0.734956, -0.024307,
		0.609613, -0.579975, -0.540372,
		33.741741, 35.536327, 41.876312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.595318, 36.401356, 41.659721>,  <33.315010, 35.942310, 42.254574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.595318, 36.401356, 41.659721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.641125, 36.014866, 41.567383>,  <33.668610, 35.782970, 41.511978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.641125, 36.014866, 41.567383>,  <33.595318, 36.401356, 41.659721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.641125, 36.014866, 41.567383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620637, 0.111860, -0.776078,
		0.775690, 0.232145, -0.586867,
		0.114516, -0.966228, -0.230846,
		33.675480, 35.724998, 41.498127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681671, 36.415863, 40.966347>,  <33.595318, 36.401356, 41.659721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681671, 36.415863, 40.966347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604778, 36.025631, 41.008835>,  <33.558643, 35.791492, 41.034328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604778, 36.025631, 41.008835>,  <33.681671, 36.415863, 40.966347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.604778, 36.025631, 41.008835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514355, 0.007982, -0.857540,
		0.835755, -0.219479, -0.503331,
		-0.192230, -0.975584, 0.106219,
		33.547108, 35.732956, 41.040699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.634232, 36.218338, 40.310459>,  <33.681671, 36.415863, 40.966347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.634232, 36.218338, 40.310459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.405773, 35.974907, 40.530792>,  <33.268696, 35.828850, 40.662994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.405773, 35.974907, 40.530792>,  <33.634232, 36.218338, 40.310459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.405773, 35.974907, 40.530792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601385, -0.146494, -0.785414,
		0.558681, -0.779853, -0.282321,
		-0.571149, -0.608579, 0.550836,
		33.234428, 35.792332, 40.696041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.377193, 35.651554, 39.843967>,  <33.634232, 36.218338, 40.310459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.377193, 35.651554, 39.843967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.129700, 35.663990, 40.157963>,  <32.981205, 35.671452, 40.346359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.129700, 35.663990, 40.157963>,  <33.377193, 35.651554, 39.843967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129700, 35.663990, 40.157963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750460, -0.318891, -0.578894,
		0.232327, -0.947281, 0.220641,
		-0.618736, 0.031089, 0.784984,
		32.944080, 35.673317, 40.393459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.030067, 35.000713, 39.609745>,  <33.377193, 35.651554, 39.843967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.030067, 35.000713, 39.609745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.803249, 35.170887, 39.891869>,  <32.667156, 35.272991, 40.061142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.803249, 35.170887, 39.891869>,  <33.030067, 35.000713, 39.609745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.803249, 35.170887, 39.891869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823147, -0.261789, -0.503880,
		-0.029724, -0.866300, 0.498639,
		-0.567050, 0.425430, 0.705311,
		32.633133, 35.298515, 40.103462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.527557, 34.583652, 39.875504>,  <33.030067, 35.000713, 39.609745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.527557, 34.583652, 39.875504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.392372, 34.958229, 39.913155>,  <32.311260, 35.182976, 39.935745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.392372, 34.958229, 39.913155>,  <32.527557, 34.583652, 39.875504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.392372, 34.958229, 39.913155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854573, -0.263430, -0.447559,
		-0.394316, -0.231698, 0.889287,
		-0.337964, 0.936440, 0.094129,
		32.290981, 35.239162, 39.941395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934750, 34.192509, 40.479271>,  <32.527557, 34.583652, 39.875504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934750, 34.192509, 40.479271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.680336, 34.122364, 40.178684>,  <32.527687, 34.080276, 39.998333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.680336, 34.122364, 40.178684>,  <32.934750, 34.192509, 40.479271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680336, 34.122364, 40.178684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633327, 0.674993, 0.378524,
		0.440856, 0.716681, -0.540384,
		-0.636037, -0.175366, -0.751468,
		32.489525, 34.069756, 39.953243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.222588, 33.494835, 40.640308>,  <32.934750, 34.192509, 40.479271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.222588, 33.494835, 40.640308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.515400, 33.229420, 40.578537>,  <33.691086, 33.070171, 40.541473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.515400, 33.229420, 40.578537>,  <33.222588, 33.494835, 40.640308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.515400, 33.229420, 40.578537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003164, -0.229981, 0.973190,
		-0.681266, -0.711915, -0.170453,
		0.732030, -0.663540, -0.154426,
		33.735008, 33.030357, 40.532207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005863, 32.832863, 40.775219>,  <33.222588, 33.494835, 40.640308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.005863, 32.832863, 40.775219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.404263, 32.808334, 40.801254>,  <33.643303, 32.793617, 40.816875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.404263, 32.808334, 40.801254>,  <33.005863, 32.832863, 40.775219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.404263, 32.808334, 40.801254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077313, -0.224698, 0.971357,
		-0.044936, -0.972497, -0.228538,
		0.995994, -0.061318, 0.065090,
		33.703060, 32.789940, 40.820782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221146, 32.143566, 40.953991>,  <33.005863, 32.832863, 40.775219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221146, 32.143566, 40.953991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.459930, 32.436893, 41.084145>,  <33.603203, 32.612892, 41.162235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.459930, 32.436893, 41.084145>,  <33.221146, 32.143566, 40.953991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.459930, 32.436893, 41.084145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153013, -0.294065, 0.943458,
		0.787543, -0.612996, -0.063337,
		0.596961, 0.733323, 0.325385,
		33.639019, 32.656891, 41.181759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.829578, 31.815399, 41.389763>,  <33.221146, 32.143566, 40.953991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.829578, 31.815399, 41.389763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.776772, 32.195950, 41.501087>,  <33.745087, 32.424278, 41.567883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.776772, 32.195950, 41.501087>,  <33.829578, 31.815399, 41.389763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.776772, 32.195950, 41.501087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012359, -0.282328, 0.959238,
		0.991170, 0.123200, 0.049031,
		-0.132021, 0.951374, 0.278312,
		33.737164, 32.481361, 41.584579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166000, 31.791880, 41.957119>,  <33.829578, 31.815399, 41.389763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166000, 31.791880, 41.957119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.987415, 32.147247, 41.999790>,  <33.880264, 32.360470, 42.025394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.987415, 32.147247, 41.999790>,  <34.166000, 31.791880, 41.957119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.987415, 32.147247, 41.999790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120765, -0.177956, 0.976600,
		0.886615, 0.423133, 0.186741,
		-0.446463, 0.888420, 0.106679,
		33.853477, 32.413773, 42.031796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548313, 31.999491, 42.505596>,  <34.166000, 31.791880, 41.957119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548313, 31.999491, 42.505596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201908, 32.197598, 42.478062>,  <33.994064, 32.316460, 42.461540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201908, 32.197598, 42.478062>,  <34.548313, 31.999491, 42.505596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201908, 32.197598, 42.478062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080405, -0.002061, 0.996760,
		0.493519, 0.868739, 0.041607,
		-0.866010, 0.495265, -0.068834,
		33.942104, 32.346176, 42.457413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673859, 32.602386, 42.942459>,  <34.548313, 31.999491, 42.505596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.673859, 32.602386, 42.942459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282993, 32.524693, 42.907990>,  <34.048473, 32.478077, 42.887306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282993, 32.524693, 42.907990>,  <34.673859, 32.602386, 42.942459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282993, 32.524693, 42.907990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078793, -0.045442, 0.995855,
		-0.197346, 0.979902, 0.029100,
		-0.977163, -0.194235, -0.086177,
		33.989845, 32.466423, 42.882137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320408, 33.027260, 43.408760>,  <34.673859, 32.602386, 42.942459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.320408, 33.027260, 43.408760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034607, 32.752686, 43.354668>,  <33.863125, 32.587940, 43.322212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034607, 32.752686, 43.354668>,  <34.320408, 33.027260, 43.408760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034607, 32.752686, 43.354668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202956, 0.018387, 0.979015,
		-0.669546, 0.726957, -0.152454,
		-0.714505, -0.686437, -0.135230,
		33.820255, 32.546753, 43.314098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695229, 33.221676, 43.806988>,  <34.320408, 33.027260, 43.408760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695229, 33.221676, 43.806988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.617886, 32.834030, 43.745762>,  <33.571480, 32.601440, 43.709026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.617886, 32.834030, 43.745762>,  <33.695229, 33.221676, 43.806988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.617886, 32.834030, 43.745762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204496, -0.112771, 0.972350,
		-0.959581, 0.219308, -0.176376,
		-0.193354, -0.969116, -0.153061,
		33.559879, 32.543297, 43.699844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071041, 33.003746, 44.200508>,  <33.695229, 33.221676, 43.806988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071041, 33.003746, 44.200508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.190109, 32.633923, 44.105366>,  <33.261551, 32.412029, 44.048279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.190109, 32.633923, 44.105366>,  <33.071041, 33.003746, 44.200508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.190109, 32.633923, 44.105366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031803, -0.258616, 0.965456,
		-0.954139, -0.279823, -0.106386,
		0.297670, -0.924563, -0.237857,
		33.279411, 32.356552, 44.034008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.661919, 32.502193, 44.518303>,  <33.071041, 33.003746, 44.200508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.661919, 32.502193, 44.518303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021919, 32.334007, 44.472340>,  <33.237919, 32.233097, 44.444763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021919, 32.334007, 44.472340>,  <32.661919, 32.502193, 44.518303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.021919, 32.334007, 44.472340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003205, -0.269988, 0.962858,
		-0.435872, -0.866207, -0.244338,
		0.900003, -0.420466, -0.114904,
		33.291920, 32.207867, 44.437870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.713158, 31.885511, 44.898933>,  <32.661919, 32.502193, 44.518303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.713158, 31.885511, 44.898933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.100544, 31.967295, 44.841980>,  <33.332977, 32.016365, 44.807808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.100544, 31.967295, 44.841980>,  <32.713158, 31.885511, 44.898933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.100544, 31.967295, 44.841980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216681, -0.409082, 0.886398,
		0.122986, -0.889297, -0.440484,
		0.968464, 0.204459, -0.142382,
		33.391083, 32.028633, 44.799267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.066814, 31.413698, 45.292694>,  <32.713158, 31.885511, 44.898933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.066814, 31.413698, 45.292694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.353859, 31.684971, 45.229321>,  <33.526085, 31.847734, 45.191296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.353859, 31.684971, 45.229321>,  <33.066814, 31.413698, 45.292694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.353859, 31.684971, 45.229321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473547, -0.308344, 0.825032,
		0.510669, -0.667080, -0.542422,
		0.717614, 0.678181, -0.158432,
		33.569145, 31.888426, 45.181789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.674641, 31.142994, 45.453335>,  <33.066814, 31.413698, 45.292694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.674641, 31.142994, 45.453335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.793713, 31.524788, 45.460728>,  <33.865158, 31.753864, 45.465164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.793713, 31.524788, 45.460728>,  <33.674641, 31.142994, 45.453335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.793713, 31.524788, 45.460728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486142, -0.168221, 0.857536,
		0.821615, -0.246288, -0.514092,
		0.297682, 0.954486, 0.018482,
		33.883018, 31.811134, 45.466270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348927, 31.175526, 45.599674>,  <33.674641, 31.142994, 45.453335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.348927, 31.175526, 45.599674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.227432, 31.538889, 45.714592>,  <34.154537, 31.756907, 45.783543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.227432, 31.538889, 45.714592>,  <34.348927, 31.175526, 45.599674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227432, 31.538889, 45.714592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538958, -0.084837, 0.838049,
		0.785665, 0.409383, -0.463827,
		-0.303734, 0.908410, 0.287294,
		34.136311, 31.811411, 45.800781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957851, 31.441849, 45.967094>,  <34.348927, 31.175526, 45.599674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957851, 31.441849, 45.967094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651340, 31.659012, 46.104542>,  <34.467434, 31.789309, 46.187012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651340, 31.659012, 46.104542>,  <34.957851, 31.441849, 45.967094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651340, 31.659012, 46.104542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403512, -0.009553, 0.914925,
		0.500001, 0.839739, -0.211749,
		-0.766275, 0.542907, 0.343621,
		34.421459, 31.821884, 46.207626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.222450, 31.833164, 46.595184>,  <34.957851, 31.441849, 45.967094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.222450, 31.833164, 46.595184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.824539, 31.870571, 46.611534>,  <34.585793, 31.893015, 46.621342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.824539, 31.870571, 46.611534>,  <35.222450, 31.833164, 46.595184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824539, 31.870571, 46.611534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047027, 0.064583, 0.996804,
		0.090581, 0.993521, -0.068643,
		-0.994778, 0.093519, 0.040873,
		34.526104, 31.898626, 46.623795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158508, 32.404404, 47.046825>,  <35.222450, 31.833164, 46.595184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158508, 32.404404, 47.046825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.816048, 32.202099, 47.089184>,  <34.610573, 32.080715, 47.114597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.816048, 32.202099, 47.089184>,  <35.158508, 32.404404, 47.046825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.816048, 32.202099, 47.089184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086149, 0.062353, 0.994329,
		-0.509494, 0.860418, -0.009813,
		-0.856151, -0.505759, 0.105892,
		34.559204, 32.050369, 47.120953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801331, 32.801289, 47.515778>,  <35.158508, 32.404404, 47.046825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.801331, 32.801289, 47.515778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.645977, 32.432739, 47.521927>,  <34.552765, 32.211609, 47.525616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.645977, 32.432739, 47.521927>,  <34.801331, 32.801289, 47.515778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645977, 32.432739, 47.521927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177381, -0.058377, 0.982409,
		-0.904264, 0.384280, 0.186106,
		-0.388384, -0.921369, 0.015375,
		34.529461, 32.156330, 47.526539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436020, 32.794746, 48.194550>,  <34.801331, 32.801289, 47.515778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436020, 32.794746, 48.194550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.446945, 32.411835, 48.079395>,  <34.453503, 32.182087, 48.010303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.446945, 32.411835, 48.079395>,  <34.436020, 32.794746, 48.194550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.446945, 32.411835, 48.079395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036450, -0.286850, 0.957282,
		-0.998962, -0.036642, 0.027057,
		0.027315, -0.957274, -0.287888,
		34.455139, 32.124653, 47.993031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926991, 32.436100, 48.602489>,  <34.436020, 32.794746, 48.194550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926991, 32.436100, 48.602489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187984, 32.164780, 48.467331>,  <34.344582, 32.001987, 48.386234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187984, 32.164780, 48.467331>,  <33.926991, 32.436100, 48.602489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187984, 32.164780, 48.467331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067947, -0.391732, 0.917567,
		-0.754752, -0.621655, -0.209510,
		0.652482, -0.678300, -0.337900,
		34.383728, 31.961290, 48.365959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839958, 31.846651, 49.036716>,  <33.926991, 32.436100, 48.602489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839958, 31.846651, 49.036716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.164970, 31.719154, 48.841496>,  <34.359978, 31.642656, 48.724365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.164970, 31.719154, 48.841496>,  <33.839958, 31.846651, 49.036716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.164970, 31.719154, 48.841496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242821, -0.576079, 0.780494,
		-0.529928, -0.752688, -0.390689,
		0.812536, -0.318738, -0.488049,
		34.408730, 31.623533, 48.695080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.793613, 31.127537, 49.022453>,  <33.839958, 31.846651, 49.036716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.793613, 31.127537, 49.022453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.175266, 31.246605, 49.009636>,  <34.404259, 31.318047, 49.001945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.175266, 31.246605, 49.009636>,  <33.793613, 31.127537, 49.022453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.175266, 31.246605, 49.009636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201089, -0.557888, 0.805186,
		0.221806, -0.774695, -0.592156,
		0.954131, 0.297671, -0.032040,
		34.461506, 31.335907, 49.000023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172554, 30.531420, 49.144619>,  <33.793613, 31.127537, 49.022453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172554, 30.531420, 49.144619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.409187, 30.832838, 49.259300>,  <34.551167, 31.013689, 49.328110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.409187, 30.832838, 49.259300>,  <34.172554, 30.531420, 49.144619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.409187, 30.832838, 49.259300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143889, -0.448572, 0.882088,
		0.793299, -0.480577, -0.373795,
		0.591585, 0.753545, 0.286702,
		34.586662, 31.058901, 49.345310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759113, 30.310066, 49.491096>,  <34.172554, 30.531420, 49.144619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759113, 30.310066, 49.491096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801296, 30.693655, 49.596359>,  <34.826607, 30.923809, 49.659515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801296, 30.693655, 49.596359>,  <34.759113, 30.310066, 49.491096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801296, 30.693655, 49.596359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349330, -0.283490, 0.893086,
		0.931046, -0.002255, -0.364894,
		0.105457, 0.958972, 0.263154,
		34.832935, 30.981346, 49.675304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327702, 30.228092, 49.942226>,  <34.759113, 30.310066, 49.491096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327702, 30.228092, 49.942226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.140381, 30.574930, 50.010159>,  <35.027988, 30.783033, 50.050919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.140381, 30.574930, 50.010159>,  <35.327702, 30.228092, 49.942226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140381, 30.574930, 50.010159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063620, -0.158616, 0.985289,
		0.881277, 0.472214, 0.019115,
		-0.468299, 0.867096, 0.169827,
		34.999889, 30.835058, 50.061108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108231, 30.457596, 49.836334>,  <35.327702, 30.228092, 49.942226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.108231, 30.457596, 49.836334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488613, 30.355459, 49.906174>,  <36.716843, 30.294176, 49.948078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488613, 30.355459, 49.906174>,  <36.108231, 30.457596, 49.836334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488613, 30.355459, 49.906174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202872, 0.088715, -0.975178,
		0.233515, 0.962772, 0.136166,
		0.950954, -0.255343, 0.174603,
		36.773899, 30.278856, 49.958553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565674, 31.010706, 49.702255>,  <36.108231, 30.457596, 49.836334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565674, 31.010706, 49.702255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.809959, 30.699924, 49.641098>,  <36.956532, 30.513456, 49.604404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.809959, 30.699924, 49.641098>,  <36.565674, 31.010706, 49.702255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.809959, 30.699924, 49.641098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124364, 0.284799, -0.950486,
		0.782027, 0.561457, 0.270555,
		0.610710, -0.776953, -0.152896,
		36.993172, 30.466839, 49.595230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117554, 31.227106, 49.243832>,  <36.565674, 31.010706, 49.702255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.117554, 31.227106, 49.243832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.139626, 30.828503, 49.218761>,  <37.152870, 30.589340, 49.203720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.139626, 30.828503, 49.218761>,  <37.117554, 31.227106, 49.243832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139626, 30.828503, 49.218761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413995, 0.079958, -0.906761,
		0.908605, 0.024090, 0.416961,
		0.055183, -0.996507, -0.062677,
		37.156181, 30.529551, 49.199959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788219, 30.974894, 49.141438>,  <37.117554, 31.227106, 49.243832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.788219, 30.974894, 49.141438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.542439, 30.715908, 48.961109>,  <37.394970, 30.560516, 48.852913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.542439, 30.715908, 48.961109>,  <37.788219, 30.974894, 49.141438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542439, 30.715908, 48.961109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547102, 0.062032, -0.834764,
		0.568444, -0.759568, 0.316113,
		-0.614452, -0.647463, -0.450823,
		37.358105, 30.521669, 48.825863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221981, 30.481846, 48.758625>,  <37.788219, 30.974894, 49.141438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.221981, 30.481846, 48.758625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.853317, 30.460072, 48.604958>,  <37.632118, 30.447006, 48.512756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.853317, 30.460072, 48.604958>,  <38.221981, 30.481846, 48.758625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.853317, 30.460072, 48.604958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377494, 0.103085, -0.920256,
		0.089692, -0.993182, -0.074462,
		-0.921658, -0.054431, -0.384166,
		37.576820, 30.443741, 48.489708>
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
