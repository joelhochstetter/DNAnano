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
	<24.180536, 34.814949, 34.895340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.223606, 35.037296, 35.225044>,  <24.249449, 35.170704, 35.422867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.223606, 35.037296, 35.225044>,  <24.180536, 34.814949, 34.895340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.223606, 35.037296, 35.225044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603136, -0.695613, 0.390320,
		0.790337, 0.455116, -0.410167,
		0.107676, 0.555871, 0.824265,
		24.255909, 35.204056, 35.472324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.846794, 35.065605, 34.910099>,  <24.180536, 34.814949, 34.895340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.846794, 35.065605, 34.910099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.676605, 35.003258, 35.266678>,  <24.574492, 34.965851, 35.480625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.676605, 35.003258, 35.266678>,  <24.846794, 35.065605, 34.910099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.676605, 35.003258, 35.266678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799792, -0.525681, 0.289814,
		0.423444, 0.836280, 0.348326,
		-0.425474, -0.155869, 0.891446,
		24.548964, 34.956497, 35.534111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.258142, 35.407696, 35.399136>,  <24.846794, 35.065605, 34.910099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.258142, 35.407696, 35.399136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.047918, 35.087593, 35.514629>,  <24.921783, 34.895531, 35.583927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.047918, 35.087593, 35.514629>,  <25.258142, 35.407696, 35.399136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.047918, 35.087593, 35.514629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843256, -0.534974, 0.052180,
		0.112709, 0.270904, 0.955985,
		-0.525563, -0.800259, 0.288738,
		24.890249, 34.847515, 35.601250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.784662, 34.973454, 35.460957>,  <25.258142, 35.407696, 35.399136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.784662, 34.973454, 35.460957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.778343, 34.588619, 35.352039>,  <25.774551, 34.357719, 35.286690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.778343, 34.588619, 35.352039>,  <25.784662, 34.973454, 35.460957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.778343, 34.588619, 35.352039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504689, 0.242765, -0.828465,
		0.863157, 0.124338, -0.489388,
		-0.015797, -0.962084, -0.272296,
		25.773603, 34.299995, 35.270351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.268106, 35.295769, 36.129223>,  <25.784662, 34.973454, 35.460957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.268106, 35.295769, 36.129223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.631798, 35.152515, 36.044331>,  <26.850014, 35.066563, 35.993397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.631798, 35.152515, 36.044331>,  <26.268106, 35.295769, 36.129223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.631798, 35.152515, 36.044331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100294, 0.306334, -0.946626,
		0.404034, 0.881985, 0.242609,
		0.909229, -0.358137, -0.212227,
		26.904566, 35.045074, 35.980663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.696499, 35.859928, 35.709400>,  <26.268106, 35.295769, 36.129223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.696499, 35.859928, 35.709400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.847593, 35.492306, 35.664402>,  <26.938251, 35.271732, 35.637402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.847593, 35.492306, 35.664402>,  <26.696499, 35.859928, 35.709400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.847593, 35.492306, 35.664402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122369, 0.169982, -0.977820,
		0.917791, 0.355595, 0.176672,
		0.377738, -0.919053, -0.112494,
		26.960915, 35.216591, 35.630653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.480280, 35.900490, 35.394600>,  <26.696499, 35.859928, 35.709400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.480280, 35.900490, 35.394600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.310766, 35.551006, 35.299068>,  <27.209059, 35.341316, 35.241749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.310766, 35.551006, 35.299068>,  <27.480280, 35.900490, 35.394600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.310766, 35.551006, 35.299068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270608, 0.129503, -0.953939,
		0.864395, -0.468893, 0.181552,
		-0.423784, -0.873710, -0.238828,
		27.183632, 35.288895, 35.227421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.889990, 35.527527, 34.920746>,  <27.480280, 35.900490, 35.394600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.889990, 35.527527, 34.920746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.542732, 35.337086, 34.864674>,  <27.334377, 35.222820, 34.831028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.542732, 35.337086, 34.864674>,  <27.889990, 35.527527, 34.920746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.542732, 35.337086, 34.864674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160544, -0.002125, -0.987026,
		0.469628, -0.879387, 0.078280,
		-0.868145, -0.476102, -0.140183,
		27.282290, 35.194256, 34.822620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.065639, 35.043472, 34.364594>,  <27.889990, 35.527527, 34.920746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.065639, 35.043472, 34.364594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.667150, 35.050411, 34.398621>,  <27.428057, 35.054577, 34.419037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.667150, 35.050411, 34.398621>,  <28.065639, 35.043472, 34.364594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.667150, 35.050411, 34.398621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086437, -0.106085, -0.990593,
		-0.008159, -0.994206, 0.107184,
		-0.996224, 0.017347, 0.085071,
		27.368284, 35.055614, 34.424141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.789406, 34.493454, 33.925545>,  <28.065639, 35.043472, 34.364594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.789406, 34.493454, 33.925545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.496891, 34.759537, 33.985836>,  <27.321383, 34.919186, 34.022011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.496891, 34.759537, 33.985836>,  <27.789406, 34.493454, 33.925545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.496891, 34.759537, 33.985836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263176, -0.071312, -0.962109,
		-0.629251, -0.743247, 0.227215,
		-0.731287, 0.665206, 0.150732,
		27.277504, 34.959099, 34.031055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.323027, 34.233616, 33.498623>,  <27.789406, 34.493454, 33.925545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.323027, 34.233616, 33.498623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.226486, 34.619576, 33.540051>,  <27.168562, 34.851151, 33.564907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.226486, 34.619576, 33.540051>,  <27.323027, 34.233616, 33.498623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.226486, 34.619576, 33.540051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258846, 0.038850, -0.965137,
		-0.935279, -0.259747, 0.240383,
		-0.241353, 0.964895, 0.103570,
		27.154079, 34.909042, 33.571121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.740288, 34.267014, 33.080067>,  <27.323027, 34.233616, 33.498623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.740288, 34.267014, 33.080067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.864740, 34.646416, 33.103848>,  <26.939411, 34.874058, 33.118114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.864740, 34.646416, 33.103848>,  <26.740288, 34.267014, 33.080067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.864740, 34.646416, 33.103848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167154, 0.116198, -0.979059,
		-0.935552, 0.294678, 0.194699,
		0.311130, 0.948506, 0.059452,
		26.958080, 34.930969, 33.121685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.288553, 34.703587, 32.649567>,  <26.740288, 34.267014, 33.080067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.288553, 34.703587, 32.649567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.616711, 34.922760, 32.714958>,  <26.813604, 35.054264, 32.754192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.616711, 34.922760, 32.714958>,  <26.288553, 34.703587, 32.649567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.616711, 34.922760, 32.714958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068484, 0.189687, -0.979453,
		-0.567683, 0.814733, 0.118094,
		0.820394, 0.547931, 0.163479,
		26.862829, 35.087139, 32.764000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.284389, 35.155891, 32.139515>,  <26.288553, 34.703587, 32.649567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.284389, 35.155891, 32.139515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.665449, 35.172783, 32.259964>,  <26.894085, 35.182919, 32.332233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.665449, 35.172783, 32.259964>,  <26.284389, 35.155891, 32.139515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.665449, 35.172783, 32.259964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297912, 0.068666, -0.952121,
		-0.060887, 0.996745, 0.052833,
		0.952650, 0.042233, 0.301123,
		26.951244, 35.185452, 32.350300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.565022, 35.693539, 31.754440>,  <26.284389, 35.155891, 32.139515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.565022, 35.693539, 31.754440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.889002, 35.484245, 31.860424>,  <27.083389, 35.358669, 31.924015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.889002, 35.484245, 31.860424>,  <26.565022, 35.693539, 31.754440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.889002, 35.484245, 31.860424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321385, 0.018060, -0.946776,
		0.490603, 0.851996, 0.182788,
		0.809950, -0.523237, 0.264959,
		27.131987, 35.327274, 31.939911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.102575, 36.049343, 31.479536>,  <26.565022, 35.693539, 31.754440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.102575, 36.049343, 31.479536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.251329, 35.682812, 31.538937>,  <27.340582, 35.462894, 31.574577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.251329, 35.682812, 31.538937>,  <27.102575, 36.049343, 31.479536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.251329, 35.682812, 31.538937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318339, -0.024384, -0.947663,
		0.871988, 0.399694, 0.282634,
		0.371883, -0.916324, 0.148501,
		27.362894, 35.407913, 31.583487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.627380, 35.844349, 30.932039>,  <27.102575, 36.049343, 31.479536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.627380, 35.844349, 30.932039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.557871, 35.482983, 31.088825>,  <27.516165, 35.266163, 31.182898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.557871, 35.482983, 31.088825>,  <27.627380, 35.844349, 30.932039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.557871, 35.482983, 31.088825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275324, -0.426717, -0.861458,
		0.945516, -0.041780, 0.322885,
		-0.173772, -0.903420, 0.391964,
		27.505739, 35.211956, 31.206415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.209181, 35.414055, 30.834116>,  <27.627380, 35.844349, 30.932039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.209181, 35.414055, 30.834116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.894627, 35.169350, 30.868380>,  <27.705894, 35.022526, 30.888937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.894627, 35.169350, 30.868380>,  <28.209181, 35.414055, 30.834116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.894627, 35.169350, 30.868380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225999, -0.413971, -0.881789,
		0.574910, -0.674068, 0.463800,
		-0.786386, -0.611768, 0.085657,
		27.658710, 34.985821, 30.894077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.450394, 34.777260, 30.887350>,  <28.209181, 35.414055, 30.834116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.450394, 34.777260, 30.887350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.068449, 34.700745, 30.796448>,  <27.839283, 34.654835, 30.741905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.068449, 34.700745, 30.796448>,  <28.450394, 34.777260, 30.887350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.068449, 34.700745, 30.796448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296314, -0.559561, -0.774008,
		0.020897, -0.806411, 0.590986,
		-0.954862, -0.191292, -0.227258,
		27.781990, 34.643356, 30.728270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.346598, 33.973495, 30.884510>,  <28.450394, 34.777260, 30.887350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.346598, 33.973495, 30.884510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.042725, 34.135384, 30.680908>,  <27.860401, 34.232517, 30.558748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.042725, 34.135384, 30.680908>,  <28.346598, 33.973495, 30.884510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.042725, 34.135384, 30.680908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148078, -0.654505, -0.741415,
		-0.633206, -0.638615, 0.437289,
		-0.759686, 0.404715, -0.509001,
		27.814819, 34.256798, 30.528208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.932344, 33.398834, 30.718794>,  <28.346598, 33.973495, 30.884510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.932344, 33.398834, 30.718794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.803204, 33.678177, 30.463276>,  <27.725719, 33.845783, 30.309965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.803204, 33.678177, 30.463276>,  <27.932344, 33.398834, 30.718794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.803204, 33.678177, 30.463276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114479, -0.641169, -0.758813,
		-0.939501, -0.318113, 0.127055,
		-0.322852, 0.698360, -0.638796,
		27.706348, 33.887684, 30.271637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.485096, 33.064804, 30.296673>,  <27.932344, 33.398834, 30.718794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.485096, 33.064804, 30.296673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.609821, 33.370018, 30.070206>,  <27.684656, 33.553146, 29.934326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.609821, 33.370018, 30.070206>,  <27.485096, 33.064804, 30.296673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.609821, 33.370018, 30.070206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250808, -0.640841, -0.725547,
		-0.916443, 0.084235, -0.391198,
		0.311812, 0.763039, -0.566167,
		27.703365, 33.598930, 29.900356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.128832, 32.920506, 29.716854>,  <27.485096, 33.064804, 30.296673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.128832, 32.920506, 29.716854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.457579, 33.141449, 29.661089>,  <27.654827, 33.274014, 29.627630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.457579, 33.141449, 29.661089>,  <27.128832, 32.920506, 29.716854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.457579, 33.141449, 29.661089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327245, -0.658072, -0.678124,
		-0.466310, 0.511706, -0.721604,
		0.821868, 0.552357, -0.139412,
		27.704140, 33.307156, 29.619265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.218410, 33.099857, 28.988310>,  <27.128832, 32.920506, 29.716854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.218410, 33.099857, 28.988310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.576792, 33.102757, 29.165945>,  <27.791821, 33.104496, 29.272526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.576792, 33.102757, 29.165945>,  <27.218410, 33.099857, 28.988310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.576792, 33.102757, 29.165945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348462, -0.631429, -0.692728,
		0.275388, 0.775400, -0.568257,
		0.895955, 0.007247, 0.444086,
		27.845579, 33.104931, 29.299171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.541285, 32.907040, 28.439487>,  <27.218410, 33.099857, 28.988310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.541285, 32.907040, 28.439487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.814592, 32.882523, 28.730524>,  <27.978577, 32.867813, 28.905146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.814592, 32.882523, 28.730524>,  <27.541285, 32.907040, 28.439487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.814592, 32.882523, 28.730524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484562, -0.707356, -0.514633,
		0.546209, 0.704195, -0.453613,
		0.683268, -0.061293, 0.727591,
		28.019573, 32.864136, 28.948801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.175329, 32.870361, 28.101875>,  <27.541285, 32.907040, 28.439487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.175329, 32.870361, 28.101875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.277155, 32.725346, 28.460487>,  <28.338251, 32.638336, 28.675653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.277155, 32.725346, 28.460487>,  <28.175329, 32.870361, 28.101875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.277155, 32.725346, 28.460487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458848, -0.770788, -0.441978,
		0.851267, 0.523883, -0.029867,
		0.254566, -0.362536, 0.896529,
		28.353525, 32.616585, 28.729446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.752560, 32.512199, 27.922215>,  <28.175329, 32.870361, 28.101875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.752560, 32.512199, 27.922215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.654200, 32.383804, 28.288057>,  <28.595184, 32.306767, 28.507563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.654200, 32.383804, 28.288057>,  <28.752560, 32.512199, 27.922215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.654200, 32.383804, 28.288057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723689, -0.688520, -0.047068,
		0.644831, 0.650315, 0.401600,
		-0.245901, -0.320984, 0.914605,
		28.580429, 32.287510, 28.562439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.369507, 32.499393, 28.371778>,  <28.752560, 32.512199, 27.922215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.369507, 32.499393, 28.371778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.098755, 32.211861, 28.435177>,  <28.936304, 32.039341, 28.473215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.098755, 32.211861, 28.435177>,  <29.369507, 32.499393, 28.371778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.098755, 32.211861, 28.435177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699430, -0.695185, -0.165879,
		0.229423, -0.001423, 0.973326,
		-0.676877, -0.718830, 0.158497,
		28.895691, 31.996212, 28.482725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.463551, 32.018311, 28.961245>,  <29.369507, 32.499393, 28.371778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.463551, 32.018311, 28.961245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.272507, 31.827936, 28.665846>,  <29.157881, 31.713713, 28.488607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.272507, 31.827936, 28.665846>,  <29.463551, 32.018311, 28.961245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.272507, 31.827936, 28.665846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771588, -0.629213, -0.093503,
		-0.420170, -0.614473, 0.667743,
		-0.477608, -0.475935, -0.738496,
		29.129225, 31.685156, 28.444298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.616455, 31.241341, 28.947556>,  <29.463551, 32.018311, 28.961245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.616455, 31.241341, 28.947556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.560118, 31.393757, 28.582048>,  <29.526316, 31.485207, 28.362745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.560118, 31.393757, 28.582048>,  <29.616455, 31.241341, 28.947556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.560118, 31.393757, 28.582048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839746, -0.442892, -0.314122,
		-0.524394, -0.811574, -0.257601,
		-0.140844, 0.381043, -0.913767,
		29.517864, 31.508070, 28.307919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.699436, 30.747742, 28.436111>,  <29.616455, 31.241341, 28.947556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.699436, 30.747742, 28.436111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.821810, 31.119001, 28.351313>,  <29.895235, 31.341757, 28.300434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.821810, 31.119001, 28.351313>,  <29.699436, 30.747742, 28.436111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.821810, 31.119001, 28.351313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905279, -0.352539, -0.237035,
		-0.294741, -0.119398, -0.948089,
		0.305936, 0.928149, -0.211996,
		29.913591, 31.397446, 28.287714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.882843, 30.963959, 27.649332>,  <29.699436, 30.747742, 28.436111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.882843, 30.963959, 27.649332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.075132, 31.111361, 27.967604>,  <30.190506, 31.199800, 28.158567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.075132, 31.111361, 27.967604>,  <29.882843, 30.963959, 27.649332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.075132, 31.111361, 27.967604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851254, -0.413855, -0.322632,
		0.210405, 0.832424, -0.512640,
		0.480725, 0.368504, 0.795681,
		30.219351, 31.221912, 28.206308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.359142, 31.547346, 27.569166>,  <29.882843, 30.963959, 27.649332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.359142, 31.547346, 27.569166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.447712, 31.281042, 27.854189>,  <30.500854, 31.121260, 28.025202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.447712, 31.281042, 27.854189>,  <30.359142, 31.547346, 27.569166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.447712, 31.281042, 27.854189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834686, -0.248442, -0.491504,
		0.504252, 0.703592, 0.500688,
		0.221426, -0.665759, 0.712556,
		30.514139, 31.081314, 28.067955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.074791, 31.732265, 27.793846>,  <30.359142, 31.547346, 27.569166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.074791, 31.732265, 27.793846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.022377, 31.350500, 27.901119>,  <30.990929, 31.121441, 27.965483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.022377, 31.350500, 27.901119>,  <31.074791, 31.732265, 27.793846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.022377, 31.350500, 27.901119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854405, -0.245921, -0.457729,
		0.502815, 0.169158, 0.847681,
		-0.131034, -0.954415, 0.268182,
		30.983067, 31.064175, 27.981573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666197, 31.534508, 28.172691>,  <31.074791, 31.732265, 27.793846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666197, 31.534508, 28.172691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.486847, 31.228750, 27.987364>,  <31.379236, 31.045296, 27.876167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.486847, 31.228750, 27.987364>,  <31.666197, 31.534508, 28.172691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.486847, 31.228750, 27.987364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821065, -0.147346, -0.551490,
		0.353287, -0.627688, 0.693683,
		-0.448375, -0.764393, -0.463317,
		31.352335, 30.999432, 27.848368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.061275, 31.792110, 28.727921>,  <31.666197, 31.534508, 28.172691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.061275, 31.792110, 28.727921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786495, 32.075211, 28.793879>,  <31.621628, 32.245071, 28.833454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786495, 32.075211, 28.793879>,  <32.061275, 31.792110, 28.727921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.786495, 32.075211, 28.793879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054701, -0.276625, 0.959420,
		0.724644, 0.650052, 0.228742,
		-0.686949, 0.707750, 0.164896,
		31.580410, 32.287537, 28.843348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.197235, 32.082573, 29.437881>,  <32.061275, 31.792110, 28.727921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.197235, 32.082573, 29.437881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.812809, 32.140781, 29.343920>,  <31.582153, 32.175705, 29.287542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.812809, 32.140781, 29.343920>,  <32.197235, 32.082573, 29.437881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.812809, 32.140781, 29.343920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268847, -0.295951, 0.916589,
		0.063862, 0.944054, 0.323550,
		-0.961063, 0.145521, -0.234906,
		31.524490, 32.184437, 29.273447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.049026, 32.493031, 29.937246>,  <32.197235, 32.082573, 29.437881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.049026, 32.493031, 29.937246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.698315, 32.351841, 29.806610>,  <31.487886, 32.267128, 29.728230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.698315, 32.351841, 29.806610>,  <32.049026, 32.493031, 29.937246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.698315, 32.351841, 29.806610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265594, -0.210717, 0.940775,
		-0.400889, 0.911595, 0.091005,
		-0.876782, -0.352976, -0.326589,
		31.435280, 32.245949, 29.708633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.544201, 32.747780, 30.335896>,  <32.049026, 32.493031, 29.937246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.544201, 32.747780, 30.335896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.311876, 32.458759, 30.185919>,  <31.172482, 32.285347, 30.095932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.311876, 32.458759, 30.185919>,  <31.544201, 32.747780, 30.335896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.311876, 32.458759, 30.185919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332225, -0.210091, 0.919504,
		-0.743158, 0.658625, -0.118025,
		-0.580812, -0.722548, -0.374942,
		31.137632, 32.241997, 30.073437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.828442, 32.913204, 30.477667>,  <31.544201, 32.747780, 30.335896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.828442, 32.913204, 30.477667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.815260, 32.518467, 30.414351>,  <30.807350, 32.281624, 30.376360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.815260, 32.518467, 30.414351>,  <30.828442, 32.913204, 30.477667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.815260, 32.518467, 30.414351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590363, -0.108574, 0.799802,
		-0.806464, 0.119808, -0.579017,
		-0.032956, -0.986842, -0.158292,
		30.805372, 32.222416, 30.366863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.141224, 32.731499, 30.415215>,  <30.828442, 32.913204, 30.477667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.141224, 32.731499, 30.415215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.296509, 32.380219, 30.526964>,  <30.389679, 32.169449, 30.594015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.296509, 32.380219, 30.526964>,  <30.141224, 32.731499, 30.415215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.296509, 32.380219, 30.526964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538107, 0.030094, 0.842339,
		-0.748152, -0.477340, -0.460885,
		0.388212, -0.878203, 0.279375,
		30.412971, 32.116756, 30.610777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.580528, 32.477867, 30.853306>,  <30.141224, 32.731499, 30.415215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.580528, 32.477867, 30.853306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.892752, 32.242134, 30.936651>,  <30.080086, 32.100697, 30.986658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.892752, 32.242134, 30.936651>,  <29.580528, 32.477867, 30.853306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.892752, 32.242134, 30.936651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422478, -0.251711, 0.870720,
		-0.460693, -0.767680, -0.445454,
		0.780560, -0.589329, 0.208366,
		30.126921, 32.065334, 30.999161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.233145, 31.926342, 31.124277>,  <29.580528, 32.477867, 30.853306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.233145, 31.926342, 31.124277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.610771, 31.961279, 31.251467>,  <29.837347, 31.982241, 31.327780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.610771, 31.961279, 31.251467>,  <29.233145, 31.926342, 31.124277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.610771, 31.961279, 31.251467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290189, -0.237917, 0.926923,
		0.156609, -0.967350, -0.199265,
		0.944068, 0.087341, 0.317974,
		29.893991, 31.987482, 31.346859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.349260, 31.316742, 31.672636>,  <29.233145, 31.926342, 31.124277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.349260, 31.316742, 31.672636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.611366, 31.615162, 31.720022>,  <29.768631, 31.794214, 31.748455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.611366, 31.615162, 31.720022>,  <29.349260, 31.316742, 31.672636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.611366, 31.615162, 31.720022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170813, -0.006429, 0.985282,
		0.735833, -0.665857, 0.123223,
		0.655265, 0.746051, 0.118467,
		29.807945, 31.838978, 31.755562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.742811, 31.063772, 32.215668>,  <29.349260, 31.316742, 31.672636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.742811, 31.063772, 32.215668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.793459, 31.459360, 32.184929>,  <29.823847, 31.696712, 32.166485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.793459, 31.459360, 32.184929>,  <29.742811, 31.063772, 32.215668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.793459, 31.459360, 32.184929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236998, 0.105388, 0.965777,
		0.963224, -0.104073, 0.247728,
		0.126619, 0.988970, -0.076847,
		29.831444, 31.756052, 32.161877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.198669, 31.237722, 32.720505>,  <29.742811, 31.063772, 32.215668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.198669, 31.237722, 32.720505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.021013, 31.583733, 32.627151>,  <29.914419, 31.791338, 32.571140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.021013, 31.583733, 32.627151>,  <30.198669, 31.237722, 32.720505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.021013, 31.583733, 32.627151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191608, 0.162758, 0.967882,
		0.875229, 0.474595, 0.093458,
		-0.444141, 0.865026, -0.233387,
		29.887772, 31.843241, 32.557137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.521223, 31.761297, 33.123230>,  <30.198669, 31.237722, 32.720505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.521223, 31.761297, 33.123230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.176922, 31.938532, 33.023006>,  <29.970341, 32.044872, 32.962872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.176922, 31.938532, 33.023006>,  <30.521223, 31.761297, 33.123230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.176922, 31.938532, 33.023006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089808, 0.352328, 0.931557,
		0.501039, 0.824342, -0.263475,
		-0.860752, 0.443085, -0.250563,
		29.918695, 32.071457, 32.947838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.581329, 32.476959, 33.419888>,  <30.521223, 31.761297, 33.123230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.581329, 32.476959, 33.419888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.194359, 32.440975, 33.325233>,  <29.962177, 32.419384, 33.268440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.194359, 32.440975, 33.325233>,  <30.581329, 32.476959, 33.419888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.194359, 32.440975, 33.325233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248843, 0.509813, 0.823509,
		0.046558, 0.855569, -0.515591,
		-0.967424, -0.089960, -0.236638,
		29.904131, 32.413986, 33.254242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.313671, 33.164845, 33.487774>,  <30.581329, 32.476959, 33.419888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.313671, 33.164845, 33.487774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.028896, 32.887600, 33.532936>,  <29.858032, 32.721252, 33.560032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.028896, 32.887600, 33.532936>,  <30.313671, 33.164845, 33.487774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.028896, 32.887600, 33.532936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292509, 0.438850, 0.849617,
		-0.638424, 0.571848, -0.515174,
		-0.711936, -0.693109, 0.112902,
		29.815315, 32.679668, 33.566807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.690353, 33.621986, 33.708759>,  <30.313671, 33.164845, 33.487774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.690353, 33.621986, 33.708759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.572208, 33.250252, 33.797394>,  <29.501322, 33.027210, 33.850574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.572208, 33.250252, 33.797394>,  <29.690353, 33.621986, 33.708759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.572208, 33.250252, 33.797394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597583, 0.360671, 0.716108,
		-0.745423, 0.079093, -0.661882,
		-0.295361, -0.929333, 0.221588,
		29.483601, 32.971451, 33.863869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.961479, 33.666824, 33.712395>,  <29.690353, 33.621986, 33.708759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.961479, 33.666824, 33.712395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.091724, 33.366180, 33.941849>,  <29.169870, 33.185795, 34.079521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.091724, 33.366180, 33.941849>,  <28.961479, 33.666824, 33.712395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.091724, 33.366180, 33.941849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630020, 0.279911, 0.724379,
		-0.705019, -0.597265, -0.382390,
		0.325611, -0.751615, 0.573631,
		29.189407, 33.140697, 34.113937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.359335, 33.400356, 34.009029>,  <28.961479, 33.666824, 33.712395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.359335, 33.400356, 34.009029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.658533, 33.295197, 34.252796>,  <28.838053, 33.232101, 34.399055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.658533, 33.295197, 34.252796>,  <28.359335, 33.400356, 34.009029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.658533, 33.295197, 34.252796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543594, 0.284148, 0.789788,
		-0.380796, -0.922033, 0.069634,
		0.747997, -0.262896, 0.609414,
		28.882933, 33.216328, 34.435619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.989824, 33.127270, 34.555050>,  <28.359335, 33.400356, 34.009029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.989824, 33.127270, 34.555050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.348751, 33.194817, 34.718170>,  <28.564108, 33.235344, 34.816044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.348751, 33.194817, 34.718170>,  <27.989824, 33.127270, 34.555050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.348751, 33.194817, 34.718170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440323, 0.278405, 0.853585,
		0.030610, -0.945502, 0.324175,
		0.897318, 0.168870, 0.407804,
		28.617947, 33.245480, 34.840511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.947899, 32.873245, 35.216362>,  <27.989824, 33.127270, 34.555050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.947899, 32.873245, 35.216362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.250710, 33.133213, 35.243240>,  <28.432396, 33.289192, 35.259369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.250710, 33.133213, 35.243240>,  <27.947899, 32.873245, 35.216362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.250710, 33.133213, 35.243240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455827, 0.451650, 0.766964,
		0.468119, -0.611239, 0.638162,
		0.757024, 0.649922, 0.067194,
		28.477818, 33.328190, 35.263401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.123119, 32.921265, 35.955605>,  <27.947899, 32.873245, 35.216362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.123119, 32.921265, 35.955605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.303223, 33.241615, 35.797684>,  <28.411285, 33.433826, 35.702930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.303223, 33.241615, 35.797684>,  <28.123119, 32.921265, 35.955605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.303223, 33.241615, 35.797684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316856, 0.556696, 0.767914,
		0.834787, -0.220663, 0.504418,
		0.450258, 0.800873, -0.394805,
		28.438299, 33.481876, 35.679241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.500582, 33.245163, 36.514702>,  <28.123119, 32.921265, 35.955605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.500582, 33.245163, 36.514702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.448910, 33.528145, 36.236763>,  <28.417906, 33.697933, 36.070000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.448910, 33.528145, 36.236763>,  <28.500582, 33.245163, 36.514702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.448910, 33.528145, 36.236763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350366, 0.622962, 0.699401,
		0.927661, 0.333802, 0.167393,
		-0.129182, 0.707456, -0.694851,
		28.410154, 33.740383, 36.028309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.903896, 33.831764, 36.743492>,  <28.500582, 33.245163, 36.514702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.903896, 33.831764, 36.743492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.624165, 33.953770, 36.484909>,  <28.456326, 34.026974, 36.329762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.624165, 33.953770, 36.484909>,  <28.903896, 33.831764, 36.743492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.624165, 33.953770, 36.484909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204963, 0.780842, 0.590149,
		0.684783, 0.545208, -0.483549,
		-0.699330, 0.305015, -0.646455,
		28.414366, 34.045273, 36.290974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.100985, 34.432480, 36.372246>,  <28.903896, 33.831764, 36.743492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.100985, 34.432480, 36.372246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.712381, 34.379349, 36.450760>,  <28.479219, 34.347469, 36.497868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.712381, 34.379349, 36.450760>,  <29.100985, 34.432480, 36.372246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.712381, 34.379349, 36.450760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012553, 0.798200, 0.602262,
		-0.236670, 0.587567, -0.773791,
		-0.971509, -0.132824, 0.196286,
		28.420929, 34.339500, 36.509647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.825596, 34.145069, 36.437664>,  <29.100985, 34.432480, 36.372246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.825596, 34.145069, 36.437664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.727516, 34.353752, 36.764515>,  <29.668669, 34.478962, 36.960625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.727516, 34.353752, 36.764515>,  <29.825596, 34.145069, 36.437664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.727516, 34.353752, 36.764515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089128, -0.851419, 0.516858,
		0.965368, 0.053903, 0.255264,
		-0.245197, 0.521709, 0.817128,
		29.653957, 34.510265, 37.009655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.933716, 34.868694, 36.244457>,  <29.825596, 34.145069, 36.437664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.933716, 34.868694, 36.244457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.105471, 35.217487, 36.338501>,  <30.208523, 35.426762, 36.394928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.105471, 35.217487, 36.338501>,  <29.933716, 34.868694, 36.244457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.105471, 35.217487, 36.338501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336156, -0.395937, 0.854537,
		0.838228, -0.287894, -0.463132,
		0.429387, 0.871981, 0.235108,
		30.234287, 35.479080, 36.409035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.736141, 34.830402, 36.279209>,  <29.933716, 34.868694, 36.244457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.736141, 34.830402, 36.279209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.562777, 35.091644, 36.527599>,  <30.458757, 35.248390, 36.676636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.562777, 35.091644, 36.527599>,  <30.736141, 34.830402, 36.279209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.562777, 35.091644, 36.527599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641129, -0.260797, 0.721761,
		0.633332, 0.710947, -0.305690,
		-0.433410, 0.653101, 0.620979,
		30.432753, 35.287575, 36.713894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.181925, 35.372219, 36.574413>,  <30.736141, 34.830402, 36.279209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.181925, 35.372219, 36.574413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.878767, 35.313660, 36.828709>,  <30.696873, 35.278526, 36.981285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.878767, 35.313660, 36.828709>,  <31.181925, 35.372219, 36.574413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.878767, 35.313660, 36.828709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649530, -0.078400, 0.756283,
		-0.060874, 0.986115, 0.154507,
		-0.757895, -0.146396, 0.635739,
		30.651398, 35.269741, 37.019432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.163097, 35.932861, 37.132202>,  <31.181925, 35.372219, 36.574413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.163097, 35.932861, 37.132202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.043818, 35.574013, 37.262589>,  <30.972250, 35.358704, 37.340820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.043818, 35.574013, 37.262589>,  <31.163097, 35.932861, 37.132202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.043818, 35.574013, 37.262589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708228, 0.020994, 0.705671,
		-0.639915, 0.441289, 0.629105,
		-0.298198, -0.897119, 0.325968,
		30.954359, 35.304878, 37.360378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.124369, 35.983925, 37.867096>,  <31.163097, 35.932861, 37.132202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.124369, 35.983925, 37.867096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.207670, 35.610962, 37.748947>,  <31.257650, 35.387184, 37.678059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.207670, 35.610962, 37.748947>,  <31.124369, 35.983925, 37.867096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.207670, 35.610962, 37.748947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682195, -0.077934, 0.727005,
		-0.700886, -0.352900, 0.619855,
		0.208252, -0.932410, -0.295369,
		31.270145, 35.331238, 37.660336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.912035, 35.494812, 38.395836>,  <31.124369, 35.983925, 37.867096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.912035, 35.494812, 38.395836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.249500, 35.399582, 38.203358>,  <31.451981, 35.342445, 38.087872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.249500, 35.399582, 38.203358>,  <30.912035, 35.494812, 38.395836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.249500, 35.399582, 38.203358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506155, 0.053895, 0.860757,
		-0.178988, -0.969751, 0.165970,
		0.843665, -0.238072, -0.481198,
		31.502600, 35.328159, 38.058998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.185545, 35.042736, 38.759991>,  <30.912035, 35.494812, 38.395836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.185545, 35.042736, 38.759991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479845, 35.221104, 38.556095>,  <31.656425, 35.328125, 38.433758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479845, 35.221104, 38.556095>,  <31.185545, 35.042736, 38.759991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.479845, 35.221104, 38.556095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507514, 0.135347, 0.850947,
		0.448443, -0.884781, -0.126728,
		0.735750, 0.445918, -0.509735,
		31.700569, 35.354877, 38.403175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.779816, 34.760181, 38.998230>,  <31.185545, 35.042736, 38.759991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.779816, 34.760181, 38.998230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.921169, 35.097561, 38.836388>,  <32.005981, 35.299988, 38.739281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.921169, 35.097561, 38.836388>,  <31.779816, 34.760181, 38.998230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.921169, 35.097561, 38.836388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508436, 0.189883, 0.839903,
		0.785247, -0.502526, -0.361740,
		0.353385, 0.843453, -0.404607,
		32.027184, 35.350597, 38.715004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.361080, 34.828568, 39.268307>,  <31.779816, 34.760181, 38.998230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.361080, 34.828568, 39.268307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.307606, 35.201664, 39.134365>,  <32.275520, 35.425522, 39.054001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.307606, 35.201664, 39.134365>,  <32.361080, 34.828568, 39.268307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.307606, 35.201664, 39.134365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483261, 0.356349, 0.799672,
		0.865209, -0.054917, -0.498395,
		-0.133687, 0.932738, -0.334856,
		32.267498, 35.481483, 39.033909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.043495, 35.162544, 39.348305>,  <32.361080, 34.828568, 39.268307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.043495, 35.162544, 39.348305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.752869, 35.437012, 39.333984>,  <32.578495, 35.601692, 39.325394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.752869, 35.437012, 39.333984>,  <33.043495, 35.162544, 39.348305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.752869, 35.437012, 39.333984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334598, 0.398845, 0.853796,
		0.600125, 0.608357, -0.519376,
		-0.726563, 0.686166, -0.035802,
		32.534901, 35.642860, 39.323242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.302681, 35.866539, 39.399265>,  <33.043495, 35.162544, 39.348305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.302681, 35.866539, 39.399265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.934277, 35.926765, 39.542973>,  <32.713234, 35.962902, 39.629196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.934277, 35.926765, 39.542973>,  <33.302681, 35.866539, 39.399265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.934277, 35.926765, 39.542973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384655, 0.497215, 0.777700,
		-0.061542, 0.854463, -0.515854,
		-0.921007, 0.150564, 0.359273,
		32.657974, 35.971935, 39.650753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.309898, 36.582527, 39.462631>,  <33.302681, 35.866539, 39.399265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.309898, 36.582527, 39.462631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.010731, 36.453331, 39.694595>,  <32.831230, 36.375813, 39.833775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.010731, 36.453331, 39.694595>,  <33.309898, 36.582527, 39.462631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.010731, 36.453331, 39.694595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337184, 0.567663, 0.751043,
		-0.571768, 0.757257, -0.315663,
		-0.747923, -0.322986, 0.579907,
		32.786354, 36.356434, 39.868568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.109928, 37.129864, 39.822239>,  <33.309898, 36.582527, 39.462631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.109928, 37.129864, 39.822239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.919823, 36.864975, 40.053955>,  <32.805759, 36.706043, 40.192986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.919823, 36.864975, 40.053955>,  <33.109928, 37.129864, 39.822239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.919823, 36.864975, 40.053955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311329, 0.489235, 0.814692,
		-0.822919, 0.567547, -0.026348,
		-0.475267, -0.662223, 0.579295,
		32.777245, 36.666309, 40.227745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.723164, 37.507244, 40.284344>,  <33.109928, 37.129864, 39.822239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.723164, 37.507244, 40.284344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.775120, 37.170750, 40.494278>,  <32.806293, 36.968853, 40.620239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.775120, 37.170750, 40.494278>,  <32.723164, 37.507244, 40.284344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.775120, 37.170750, 40.494278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440047, 0.523243, 0.729778,
		-0.888531, 0.136164, 0.438145,
		0.129887, -0.841235, 0.524837,
		32.814087, 36.918381, 40.651730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.633427, 37.650383, 41.065983>,  <32.723164, 37.507244, 40.284344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.633427, 37.650383, 41.065983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.820229, 37.296890, 41.078140>,  <32.932312, 37.084793, 41.085434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.820229, 37.296890, 41.078140>,  <32.633427, 37.650383, 41.065983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.820229, 37.296890, 41.078140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497872, 0.291198, 0.816901,
		-0.730772, -0.366365, 0.575977,
		0.467007, -0.883731, 0.030396,
		32.960331, 37.031773, 41.087257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.683620, 37.508636, 41.739857>,  <32.633427, 37.650383, 41.065983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.683620, 37.508636, 41.739857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.975826, 37.293240, 41.571865>,  <33.151150, 37.164001, 41.471069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.975826, 37.293240, 41.571865>,  <32.683620, 37.508636, 41.739857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.975826, 37.293240, 41.571865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540556, 0.080154, 0.837481,
		-0.417312, -0.838811, 0.349637,
		0.730513, -0.538489, -0.419975,
		33.194981, 37.131691, 41.445873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884525, 36.978722, 42.283192>,  <32.683620, 37.508636, 41.739857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.884525, 36.978722, 42.283192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201485, 37.000549, 42.040169>,  <33.391659, 37.013645, 41.894356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201485, 37.000549, 42.040169>,  <32.884525, 36.978722, 42.283192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.201485, 37.000549, 42.040169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609673, -0.103755, 0.785833,
		-0.020156, -0.993105, -0.115484,
		0.792397, 0.054568, -0.607560,
		33.439205, 37.016918, 41.857903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319969, 36.563240, 42.652245>,  <32.884525, 36.978722, 42.283192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319969, 36.563240, 42.652245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544449, 36.780266, 42.402229>,  <33.679138, 36.910480, 42.252220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544449, 36.780266, 42.402229>,  <33.319969, 36.563240, 42.652245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544449, 36.780266, 42.402229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669313, 0.146755, 0.728343,
		0.486902, -0.827094, -0.280787,
		0.561202, 0.542566, -0.625040,
		33.712811, 36.943035, 42.214718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003643, 36.255165, 42.694851>,  <33.319969, 36.563240, 42.652245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003643, 36.255165, 42.694851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067066, 36.621479, 42.547234>,  <34.105122, 36.841267, 42.458664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067066, 36.621479, 42.547234>,  <34.003643, 36.255165, 42.694851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067066, 36.621479, 42.547234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747727, 0.132721, 0.650607,
		0.644798, -0.379102, -0.663715,
		0.158557, 0.915788, -0.369042,
		34.114632, 36.896214, 42.436520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766525, 36.345486, 42.630360>,  <34.003643, 36.255165, 42.694851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766525, 36.345486, 42.630360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.638985, 36.724583, 42.634842>,  <34.562462, 36.952042, 42.637531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.638985, 36.724583, 42.634842>,  <34.766525, 36.345486, 42.630360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638985, 36.724583, 42.634842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665247, 0.215358, 0.714890,
		0.675116, 0.235397, -0.699147,
		-0.318850, 0.947739, 0.011205,
		34.543331, 37.008904, 42.638203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322571, 36.722969, 42.893494>,  <34.766525, 36.345486, 42.630360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.322571, 36.722969, 42.893494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.022095, 36.984528, 42.929558>,  <34.841808, 37.141464, 42.951195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.022095, 36.984528, 42.929558>,  <35.322571, 36.722969, 42.893494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.022095, 36.984528, 42.929558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446366, 0.402587, 0.799176,
		0.486284, 0.640577, -0.594298,
		-0.751189, 0.653900, 0.090160,
		34.796738, 37.180698, 42.956604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507687, 37.495064, 42.895477>,  <35.322571, 36.722969, 42.893494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507687, 37.495064, 42.895477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.166481, 37.453640, 43.100082>,  <34.961758, 37.428787, 43.222847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.166481, 37.453640, 43.100082>,  <35.507687, 37.495064, 42.895477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166481, 37.453640, 43.100082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385939, 0.534604, 0.751831,
		-0.351316, 0.838734, -0.416056,
		-0.853011, -0.103558, 0.511515,
		34.910576, 37.422573, 43.253536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355606, 38.199486, 43.160908>,  <35.507687, 37.495064, 42.895477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355606, 38.199486, 43.160908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.129974, 37.949936, 43.377277>,  <34.994595, 37.800205, 43.507099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.129974, 37.949936, 43.377277>,  <35.355606, 38.199486, 43.160908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129974, 37.949936, 43.377277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177440, 0.548205, 0.817304,
		-0.806429, 0.557007, -0.198532,
		-0.564080, -0.623871, 0.540924,
		34.960751, 37.762775, 43.539555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026428, 38.661324, 43.552036>,  <35.355606, 38.199486, 43.160908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026428, 38.661324, 43.552036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.971062, 38.309601, 43.734314>,  <34.937843, 38.098568, 43.843681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.971062, 38.309601, 43.734314>,  <35.026428, 38.661324, 43.552036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.971062, 38.309601, 43.734314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059702, 0.451877, 0.890080,
		-0.988573, 0.150405, -0.010050,
		-0.138414, -0.879309, 0.455693,
		34.929539, 38.045807, 43.871021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.536858, 38.774509, 44.025101>,  <35.026428, 38.661324, 43.552036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.536858, 38.774509, 44.025101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.741760, 38.449806, 44.137276>,  <34.864700, 38.254986, 44.204582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.741760, 38.449806, 44.137276>,  <34.536858, 38.774509, 44.025101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.741760, 38.449806, 44.137276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053082, 0.355839, 0.933038,
		-0.857191, -0.463068, 0.225371,
		0.512256, -0.811755, 0.280442,
		34.895439, 38.206280, 44.221409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.322266, 38.557438, 44.670750>,  <34.536858, 38.774509, 44.025101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.322266, 38.557438, 44.670750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.672756, 38.365555, 44.652367>,  <34.883049, 38.250427, 44.641338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.672756, 38.365555, 44.652367>,  <34.322266, 38.557438, 44.670750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.672756, 38.365555, 44.652367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174633, 0.227205, 0.958061,
		-0.449144, -0.847503, 0.282855,
		0.876226, -0.479703, -0.045954,
		34.935623, 38.221645, 44.638580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382187, 38.091274, 45.159119>,  <34.322266, 38.557438, 44.670750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382187, 38.091274, 45.159119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760437, 38.178814, 45.062866>,  <34.987385, 38.231339, 45.005116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760437, 38.178814, 45.062866>,  <34.382187, 38.091274, 45.159119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760437, 38.178814, 45.062866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184092, 0.249813, 0.950633,
		0.268158, -0.943238, 0.195941,
		0.945623, 0.218849, -0.240632,
		35.044125, 38.244469, 44.990677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715378, 37.831787, 45.702778>,  <34.382187, 38.091274, 45.159119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715378, 37.831787, 45.702778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.967907, 38.080421, 45.517281>,  <35.119423, 38.229603, 45.405983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.967907, 38.080421, 45.517281>,  <34.715378, 37.831787, 45.702778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967907, 38.080421, 45.517281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419504, 0.229225, 0.878335,
		0.652263, -0.749058, -0.116043,
		0.631324, 0.621586, -0.463747,
		35.157303, 38.266895, 45.378155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363045, 37.627842, 45.928360>,  <34.715378, 37.831787, 45.702778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.363045, 37.627842, 45.928360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.401558, 37.998985, 45.784241>,  <35.424664, 38.221672, 45.697769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.401558, 37.998985, 45.784241>,  <35.363045, 37.627842, 45.928360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.401558, 37.998985, 45.784241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429824, 0.287730, 0.855840,
		0.897765, -0.237263, -0.371113,
		0.096279, 0.927856, -0.360296,
		35.430443, 38.277344, 45.676151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050327, 37.845886, 46.239594>,  <35.363045, 37.627842, 45.928360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.050327, 37.845886, 46.239594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848438, 38.167881, 46.114849>,  <35.727306, 38.361076, 46.040005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848438, 38.167881, 46.114849>,  <36.050327, 37.845886, 46.239594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848438, 38.167881, 46.114849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385226, 0.533300, 0.753122,
		0.772566, 0.259980, -0.579268,
		-0.504720, 0.804986, -0.311859,
		35.697021, 38.409378, 46.021290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520119, 38.385750, 46.342613>,  <36.050327, 37.845886, 46.239594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520119, 38.385750, 46.342613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.173027, 38.581985, 46.310692>,  <35.964771, 38.699726, 46.291538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.173027, 38.581985, 46.310692>,  <36.520119, 38.385750, 46.342613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173027, 38.581985, 46.310692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336116, 0.697465, 0.632905,
		0.366152, 0.522370, -0.770106,
		-0.867732, 0.490584, -0.079801,
		35.912708, 38.729160, 46.286751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638748, 39.119064, 46.070267>,  <36.520119, 38.385750, 46.342613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638748, 39.119064, 46.070267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.285992, 39.107986, 46.258522>,  <36.074337, 39.101341, 46.371475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.285992, 39.107986, 46.258522>,  <36.638748, 39.119064, 46.070267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285992, 39.107986, 46.258522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285809, 0.762514, 0.580419,
		-0.374947, 0.646379, -0.664537,
		-0.881889, -0.027696, 0.470643,
		36.021423, 39.099678, 46.399715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362038, 39.821915, 46.226936>,  <36.638748, 39.119064, 46.070267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.362038, 39.821915, 46.226936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.223679, 39.583084, 46.516445>,  <36.140663, 39.439785, 46.690151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.223679, 39.583084, 46.516445>,  <36.362038, 39.821915, 46.226936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223679, 39.583084, 46.516445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243004, 0.688062, 0.683754,
		-0.906257, 0.412391, -0.092909,
		-0.345901, -0.597080, 0.723774,
		36.119907, 39.403961, 46.733578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010033, 40.345310, 46.562027>,  <36.362038, 39.821915, 46.226936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010033, 40.345310, 46.562027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.052761, 40.028957, 46.803055>,  <36.078400, 39.839146, 46.947670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.052761, 40.028957, 46.803055>,  <36.010033, 40.345310, 46.562027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.052761, 40.028957, 46.803055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127530, 0.611928, 0.780564,
		-0.986065, -0.006539, 0.166231,
		0.106825, -0.790887, 0.602567,
		36.084808, 39.791691, 46.983826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713806, 40.603157, 47.257145>,  <36.010033, 40.345310, 46.562027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713806, 40.603157, 47.257145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.941181, 40.281868, 47.328377>,  <36.077606, 40.089096, 47.371117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.941181, 40.281868, 47.328377>,  <35.713806, 40.603157, 47.257145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941181, 40.281868, 47.328377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316756, 0.413430, 0.853663,
		-0.759302, -0.428851, 0.489436,
		0.568442, -0.803220, 0.178078,
		36.111713, 40.040901, 47.381802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530205, 40.353191, 47.902882>,  <35.713806, 40.603157, 47.257145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530205, 40.353191, 47.902882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902935, 40.219315, 47.846767>,  <36.126572, 40.138988, 47.813099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902935, 40.219315, 47.846767>,  <35.530205, 40.353191, 47.902882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902935, 40.219315, 47.846767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261004, 0.349494, 0.899851,
		-0.252142, -0.875121, 0.413023,
		0.931827, -0.334691, -0.140287,
		36.182484, 40.118908, 47.804680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677685, 40.152023, 48.491943>,  <35.530205, 40.353191, 47.902882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.677685, 40.152023, 48.491943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033985, 40.184788, 48.313122>,  <36.247765, 40.204445, 48.205830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033985, 40.184788, 48.313122>,  <35.677685, 40.152023, 48.491943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033985, 40.184788, 48.313122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346194, 0.515019, 0.784159,
		0.294472, -0.853256, 0.430396,
		0.890750, 0.081912, -0.447051,
		36.301208, 40.209362, 48.179005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179054, 39.893829, 49.009541>,  <35.677685, 40.152023, 48.491943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.179054, 39.893829, 49.009541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.351700, 40.148209, 48.753639>,  <36.455288, 40.300835, 48.600098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.351700, 40.148209, 48.753639>,  <36.179054, 39.893829, 49.009541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.351700, 40.148209, 48.753639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491896, 0.428564, 0.757872,
		0.756141, -0.641799, -0.127846,
		0.431612, 0.635945, -0.639753,
		36.481182, 40.338993, 48.561714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903229, 39.951565, 49.193321>,  <36.179054, 39.893829, 49.009541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903229, 39.951565, 49.193321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863541, 40.280926, 48.969833>,  <36.839729, 40.478542, 48.835739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863541, 40.280926, 48.969833>,  <36.903229, 39.951565, 49.193321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863541, 40.280926, 48.969833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492757, 0.528468, 0.691312,
		0.864492, -0.206723, -0.458170,
		-0.099218, 0.823400, -0.558720,
		36.833775, 40.527946, 48.802216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561745, 40.200581, 49.056984>,  <36.903229, 39.951565, 49.193321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.561745, 40.200581, 49.056984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.339191, 40.528053, 49.000126>,  <37.205658, 40.724537, 48.966011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.339191, 40.528053, 49.000126>,  <37.561745, 40.200581, 49.056984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339191, 40.528053, 49.000126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629429, 0.526928, 0.571110,
		0.542454, 0.228287, -0.808473,
		-0.556384, 0.818677, -0.142144,
		37.172276, 40.773655, 48.957481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.067276, 40.766327, 48.785767>,  <37.561745, 40.200581, 49.056984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.067276, 40.766327, 48.785767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.753159, 40.964516, 48.934265>,  <37.564690, 41.083431, 49.023365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.753159, 40.964516, 48.934265>,  <38.067276, 40.766327, 48.785767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.753159, 40.964516, 48.934265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586307, 0.402509, 0.703015,
		0.198897, 0.769735, -0.606587,
		-0.785293, 0.495474, 0.371243,
		37.517570, 41.113159, 49.045639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319065, 41.414253, 48.939754>,  <38.067276, 40.766327, 48.785767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.319065, 41.414253, 48.939754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.968407, 41.393574, 49.131096>,  <37.758011, 41.381165, 49.245899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.968407, 41.393574, 49.131096>,  <38.319065, 41.414253, 48.939754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968407, 41.393574, 49.131096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418688, 0.407862, 0.811387,
		-0.237048, 0.911579, -0.335905,
		-0.876646, -0.051698, 0.478350,
		37.705414, 41.378063, 49.274601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115387, 42.098225, 49.268394>,  <38.319065, 41.414253, 48.939754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115387, 42.098225, 49.268394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.915642, 41.834133, 49.492798>,  <37.795795, 41.675678, 49.627441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.915642, 41.834133, 49.492798>,  <38.115387, 42.098225, 49.268394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.915642, 41.834133, 49.492798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325866, 0.456847, 0.827709,
		-0.802773, 0.596144, -0.012988,
		-0.499367, -0.660229, 0.561008,
		37.765831, 41.636063, 49.661098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792347, 42.457672, 49.869583>,  <38.115387, 42.098225, 49.268394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792347, 42.457672, 49.869583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.761154, 42.075760, 49.984344>,  <37.742439, 41.846611, 50.053204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.761154, 42.075760, 49.984344>,  <37.792347, 42.457672, 49.869583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.761154, 42.075760, 49.984344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204420, 0.266355, 0.941949,
		-0.975773, 0.132100, 0.174407,
		-0.077978, -0.954780, 0.286906,
		37.737762, 41.789326, 50.070415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435116, 42.398102, 50.469547>,  <37.792347, 42.457672, 49.869583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435116, 42.398102, 50.469547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.619473, 42.044289, 50.498356>,  <37.730087, 41.832001, 50.515640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.619473, 42.044289, 50.498356>,  <37.435116, 42.398102, 50.469547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.619473, 42.044289, 50.498356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228474, 0.196682, 0.953476,
		-0.857543, -0.422992, 0.292741,
		0.460889, -0.884530, 0.072020,
		37.757740, 41.778931, 50.519962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252121, 42.115509, 51.086761>,  <37.435116, 42.398102, 50.469547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.252121, 42.115509, 51.086761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.603867, 41.940861, 51.010780>,  <37.814915, 41.836071, 50.965191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.603867, 41.940861, 51.010780>,  <37.252121, 42.115509, 51.086761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603867, 41.940861, 51.010780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342769, 0.303588, 0.889013,
		-0.330495, -0.846875, 0.416624,
		0.879364, -0.436620, -0.189948,
		37.867676, 41.809875, 50.953796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522724, 41.641556, 51.676647>,  <37.252121, 42.115509, 51.086761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.522724, 41.641556, 51.676647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.840038, 41.788677, 51.482571>,  <38.030426, 41.876949, 51.366123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.840038, 41.788677, 51.482571>,  <37.522724, 41.641556, 51.676647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.840038, 41.788677, 51.482571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340608, 0.392446, 0.854384,
		0.504659, -0.843034, 0.186045,
		0.793288, 0.367804, -0.485196,
		38.078026, 41.899017, 51.337013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030678, 41.431206, 52.015255>,  <37.522724, 41.641556, 51.676647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030678, 41.431206, 52.015255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.093678, 41.773289, 51.817741>,  <38.131477, 41.978539, 51.699234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.093678, 41.773289, 51.817741>,  <38.030678, 41.431206, 52.015255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093678, 41.773289, 51.817741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184059, 0.465840, 0.865514,
		0.970215, -0.227201, -0.084039,
		0.157496, 0.855203, -0.493783,
		38.140926, 42.029850, 51.669605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758579, 41.657917, 51.962288>,  <38.030678, 41.431206, 52.015255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.758579, 41.657917, 51.962288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.473549, 41.934547, 52.009541>,  <38.302532, 42.100525, 52.037891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.473549, 41.934547, 52.009541>,  <38.758579, 41.657917, 51.962288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473549, 41.934547, 52.009541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395143, 0.256458, 0.882095,
		0.579742, 0.675239, -0.456018,
		-0.712574, 0.691580, 0.118136,
		38.259777, 42.142021, 52.044983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063812, 42.183189, 52.275658>,  <38.758579, 41.657917, 51.962288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.063812, 42.183189, 52.275658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.691864, 42.172752, 52.422443>,  <38.468697, 42.166489, 52.510517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.691864, 42.172752, 52.422443>,  <39.063812, 42.183189, 52.275658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.691864, 42.172752, 52.422443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357895, 0.166822, 0.918739,
		-0.085194, 0.985642, -0.145783,
		-0.929867, -0.026096, 0.366969,
		38.412903, 42.164925, 52.532536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.704224, 42.536072, 52.421753>,  <39.063812, 42.183189, 52.275658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.704224, 42.536072, 52.421753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.956875, 42.772606, 52.221203>,  <40.108463, 42.914528, 52.100872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.956875, 42.772606, 52.221203>,  <39.704224, 42.536072, 52.421753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.956875, 42.772606, 52.221203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117515, -0.712253, -0.692016,
		-0.766317, 0.378175, -0.519367,
		0.631623, 0.591337, -0.501370,
		40.146362, 42.950008, 52.070793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580387, 42.481815, 51.659031>,  <39.704224, 42.536072, 52.421753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580387, 42.481815, 51.659031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.968128, 42.566513, 51.708874>,  <40.200771, 42.617332, 51.738781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.968128, 42.566513, 51.708874>,  <39.580387, 42.481815, 51.659031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.968128, 42.566513, 51.708874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244030, -0.770997, -0.588229,
		-0.028480, 0.600608, -0.799036,
		0.969349, 0.211741, 0.124609,
		40.258934, 42.630035, 51.746258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.035892, 42.449501, 50.986214>,  <39.580387, 42.481815, 51.659031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.035892, 42.449501, 50.986214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.263958, 42.371132, 51.305344>,  <40.400799, 42.324112, 51.496822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.263958, 42.371132, 51.305344>,  <40.035892, 42.449501, 50.986214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.263958, 42.371132, 51.305344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258187, -0.879207, -0.400418,
		0.779903, 0.434293, -0.450712,
		0.570168, -0.195919, 0.797825,
		40.435009, 42.312355, 51.544689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.737583, 42.461563, 50.926823>,  <40.035892, 42.449501, 50.986214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.737583, 42.461563, 50.926823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.589527, 42.199673, 51.190437>,  <40.500694, 42.042538, 51.348606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.589527, 42.199673, 51.190437>,  <40.737583, 42.461563, 50.926823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.589527, 42.199673, 51.190437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365480, -0.754844, -0.544641,
		0.854060, 0.039269, 0.518690,
		-0.370143, -0.654727, 0.659034,
		40.478485, 42.003254, 51.388149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.246479, 41.881630, 51.009739>,  <40.737583, 42.461563, 50.926823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.246479, 41.881630, 51.009739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.886120, 41.737080, 51.105900>,  <40.669907, 41.650349, 51.163597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.886120, 41.737080, 51.105900>,  <41.246479, 41.881630, 51.009739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.886120, 41.737080, 51.105900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160388, -0.791858, -0.589269,
		0.403314, -0.492312, 0.771341,
		-0.900896, -0.361374, 0.240406,
		40.615852, 41.628666, 51.178020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.245354, 41.356167, 50.485359>,  <41.246479, 41.881630, 51.009739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.245354, 41.356167, 50.485359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.949154, 41.256241, 50.734921>,  <40.771435, 41.196285, 50.884659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.949154, 41.256241, 50.734921>,  <41.245354, 41.356167, 50.485359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.949154, 41.256241, 50.734921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016561, -0.921280, -0.388547,
		0.671857, -0.298050, 0.678066,
		-0.740496, -0.249819, 0.623904,
		40.727005, 41.181293, 50.922092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.298111, 40.643211, 50.653011>,  <41.245354, 41.356167, 50.485359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.298111, 40.643211, 50.653011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.921173, 40.733109, 50.752190>,  <40.695011, 40.787048, 50.811699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.921173, 40.733109, 50.752190>,  <41.298111, 40.643211, 50.653011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.921173, 40.733109, 50.752190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302228, -0.889695, -0.342199,
		0.143693, -0.397407, 0.906322,
		-0.942343, 0.224744, 0.247950,
		40.638470, 40.800533, 50.826576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.117233, 40.183582, 51.184006>,  <41.298111, 40.643211, 50.653011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.117233, 40.183582, 51.184006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.809406, 40.300770, 50.957047>,  <40.624710, 40.371082, 50.820869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.809406, 40.300770, 50.957047>,  <41.117233, 40.183582, 51.184006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.809406, 40.300770, 50.957047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132452, -0.942452, -0.306985,
		-0.624682, -0.161092, 0.764082,
		-0.769564, 0.292972, -0.567396,
		40.578537, 40.388660, 50.786827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.660656, 39.669285, 51.303257>,  <41.117233, 40.183582, 51.184006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.660656, 39.669285, 51.303257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.525360, 39.852448, 50.974400>,  <40.444183, 39.962345, 50.777084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.525360, 39.852448, 50.974400>,  <40.660656, 39.669285, 51.303257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.525360, 39.852448, 50.974400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440262, -0.849126, -0.291813,
		-0.831725, 0.263256, 0.488805,
		-0.338235, 0.457910, -0.822140,
		40.423889, 39.989822, 50.727757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900223, 39.454060, 51.154980>,  <40.660656, 39.669285, 51.303257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.900223, 39.454060, 51.154980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.019451, 39.595783, 50.800438>,  <40.090988, 39.680817, 50.587715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.019451, 39.595783, 50.800438>,  <39.900223, 39.454060, 51.154980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.019451, 39.595783, 50.800438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331587, -0.832302, -0.444211,
		-0.895100, 0.426310, -0.130602,
		0.298072, 0.354307, -0.886352,
		40.108871, 39.702076, 50.534531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.377945, 39.443810, 50.785934>,  <39.900223, 39.454060, 51.154980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.377945, 39.443810, 50.785934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.665401, 39.449997, 50.507851>,  <39.837875, 39.453709, 50.341000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.665401, 39.449997, 50.507851>,  <39.377945, 39.443810, 50.785934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.665401, 39.449997, 50.507851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448124, -0.754168, -0.480016,
		-0.531730, 0.656499, -0.535045,
		0.718643, 0.015472, -0.695207,
		39.880993, 39.454639, 50.299290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.064709, 39.249611, 50.254349>,  <39.377945, 39.443810, 50.785934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.064709, 39.249611, 50.254349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.411289, 39.237728, 50.055000>,  <39.619240, 39.230598, 49.935390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.411289, 39.237728, 50.055000>,  <39.064709, 39.249611, 50.254349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.411289, 39.237728, 50.055000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446220, -0.493823, -0.746342,
		-0.223935, 0.869054, -0.441132,
		0.866453, -0.029709, -0.498374,
		39.671227, 39.228817, 49.905487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041454, 39.539635, 49.552937>,  <39.064709, 39.249611, 50.254349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041454, 39.539635, 49.552937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.354637, 39.293762, 49.514668>,  <39.542545, 39.146240, 49.491707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.354637, 39.293762, 49.514668>,  <39.041454, 39.539635, 49.552937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354637, 39.293762, 49.514668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451676, -0.455971, -0.766863,
		0.427751, 0.643631, -0.634640,
		0.782954, -0.614679, -0.095670,
		39.589523, 39.109360, 49.485966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126514, 39.554035, 48.852852>,  <39.041454, 39.539635, 49.552937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.126514, 39.554035, 48.852852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.330460, 39.242134, 48.998192>,  <39.452827, 39.054993, 49.085396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.330460, 39.242134, 48.998192>,  <39.126514, 39.554035, 48.852852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330460, 39.242134, 48.998192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224250, -0.528244, -0.818944,
		0.830514, 0.336067, -0.444192,
		0.509862, -0.779755, 0.363351,
		39.483418, 39.008209, 49.107197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555317, 39.333542, 48.251965>,  <39.126514, 39.554035, 48.852852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.555317, 39.333542, 48.251965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.517056, 39.030384, 48.510098>,  <39.494099, 38.848492, 48.664978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.517056, 39.030384, 48.510098>,  <39.555317, 39.333542, 48.251965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517056, 39.030384, 48.510098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000468, -0.648339, -0.761352,
		0.995415, -0.072521, 0.062369,
		-0.095650, -0.757890, 0.645332,
		39.488361, 38.803017, 48.703697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.165035, 38.992970, 48.090260>,  <39.555317, 39.333542, 48.251965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.165035, 38.992970, 48.090260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.893700, 38.744026, 48.246479>,  <39.730900, 38.594662, 48.340210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.893700, 38.744026, 48.246479>,  <40.165035, 38.992970, 48.090260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.893700, 38.744026, 48.246479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153624, -0.639927, -0.752923,
		0.718513, -0.450736, 0.529695,
		-0.678336, -0.622359, 0.390552,
		39.690201, 38.557320, 48.363644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.378166, 38.283291, 48.025375>,  <40.165035, 38.992970, 48.090260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.378166, 38.283291, 48.025375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.995472, 38.183964, 48.086018>,  <39.765854, 38.124367, 48.122402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.995472, 38.183964, 48.086018>,  <40.378166, 38.283291, 48.025375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.995472, 38.183964, 48.086018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047704, -0.647923, -0.760211,
		0.287006, -0.720092, 0.631740,
		-0.956740, -0.248322, 0.151606,
		39.708450, 38.109467, 48.131500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.356346, 37.549500, 47.919571>,  <40.378166, 38.283291, 48.025375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.356346, 37.549500, 47.919571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.987690, 37.697727, 47.873512>,  <39.766499, 37.786663, 47.845875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.987690, 37.697727, 47.873512>,  <40.356346, 37.549500, 47.919571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.987690, 37.697727, 47.873512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115212, -0.544670, -0.830699,
		-0.370552, -0.752338, 0.544683,
		-0.921638, 0.370571, -0.115150,
		39.711197, 37.808899, 47.838966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.909035, 36.953651, 47.656567>,  <40.356346, 37.549500, 47.919571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.909035, 36.953651, 47.656567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.710106, 37.290295, 47.572323>,  <39.590748, 37.492283, 47.521774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.710106, 37.290295, 47.572323>,  <39.909035, 36.953651, 47.656567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.710106, 37.290295, 47.572323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264479, -0.378283, -0.887104,
		-0.826269, -0.385474, 0.410718,
		-0.497323, 0.841612, -0.210613,
		39.560909, 37.542778, 47.509140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.236755, 36.676285, 47.402737>,  <39.909035, 36.953651, 47.656567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.236755, 36.676285, 47.402737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.281673, 37.055378, 47.283272>,  <39.308624, 37.282833, 47.211594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.281673, 37.055378, 47.283272>,  <39.236755, 36.676285, 47.402737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.281673, 37.055378, 47.283272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185088, -0.275357, -0.943356,
		-0.976285, 0.161213, 0.144492,
		0.112295, 0.947728, -0.298666,
		39.315361, 37.339695, 47.193672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559727, 36.864780, 47.009785>,  <39.236755, 36.676285, 47.402737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559727, 36.864780, 47.009785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879623, 37.071651, 46.887833>,  <39.071560, 37.195774, 46.814663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879623, 37.071651, 46.887833>,  <38.559727, 36.864780, 47.009785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879623, 37.071651, 46.887833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165187, -0.298669, -0.939952,
		-0.577177, 0.802077, -0.153426,
		0.799738, 0.517175, -0.304877,
		39.119545, 37.226803, 46.796368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227135, 37.278126, 46.393845>,  <38.559727, 36.864780, 47.009785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227135, 37.278126, 46.393845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.621891, 37.245956, 46.337864>,  <38.858746, 37.226654, 46.304276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.621891, 37.245956, 46.337864>,  <38.227135, 37.278126, 46.393845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.621891, 37.245956, 46.337864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157526, -0.290759, -0.943740,
		0.035208, 0.953410, -0.299616,
		0.986887, -0.080424, -0.139950,
		38.917957, 37.221828, 46.295879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266129, 37.633263, 45.794987>,  <38.227135, 37.278126, 46.393845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266129, 37.633263, 45.794987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.592258, 37.403786, 45.826275>,  <38.787937, 37.266098, 45.845047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.592258, 37.403786, 45.826275>,  <38.266129, 37.633263, 45.794987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592258, 37.403786, 45.826275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093827, -0.264215, -0.959889,
		0.571349, 0.775284, -0.269249,
		0.815326, -0.573695, 0.078217,
		38.836857, 37.231678, 45.849739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549595, 37.737637, 45.149853>,  <38.266129, 37.633263, 45.794987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549595, 37.737637, 45.149853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.702991, 37.402912, 45.306149>,  <38.795029, 37.202076, 45.399925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.702991, 37.402912, 45.306149>,  <38.549595, 37.737637, 45.149853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.702991, 37.402912, 45.306149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075270, -0.449999, -0.889851,
		0.920473, 0.311838, -0.235557,
		0.383490, -0.836814, 0.390740,
		38.818039, 37.151867, 45.423370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982689, 37.466606, 44.650841>,  <38.549595, 37.737637, 45.149853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982689, 37.466606, 44.650841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.959869, 37.140705, 44.881641>,  <38.946178, 36.945164, 45.020123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.959869, 37.140705, 44.881641>,  <38.982689, 37.466606, 44.650841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.959869, 37.140705, 44.881641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146051, -0.564914, -0.812121,
		0.987631, -0.130605, -0.086765,
		-0.057052, -0.814748, 0.577002,
		38.942753, 36.896282, 45.054741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353130, 36.924103, 44.233334>,  <38.982689, 37.466606, 44.650841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.353130, 36.924103, 44.233334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.089596, 36.772430, 44.493229>,  <38.931477, 36.681427, 44.649166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.089596, 36.772430, 44.493229>,  <39.353130, 36.924103, 44.233334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.089596, 36.772430, 44.493229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332103, -0.628370, -0.703462,
		0.675017, -0.679244, 0.288063,
		-0.658832, -0.379182, 0.649739,
		38.891945, 36.658676, 44.688152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.465111, 36.186874, 44.319256>,  <39.353130, 36.924103, 44.233334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.465111, 36.186874, 44.319256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.090687, 36.254616, 44.442612>,  <38.866032, 36.295261, 44.516624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.090687, 36.254616, 44.442612>,  <39.465111, 36.186874, 44.319256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.090687, 36.254616, 44.442612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337979, -0.676342, -0.654470,
		0.097744, -0.716856, 0.690336,
		-0.936064, 0.169349, 0.308390,
		38.809868, 36.305420, 44.535130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220905, 35.501469, 44.277340>,  <39.465111, 36.186874, 44.319256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.220905, 35.501469, 44.277340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.906059, 35.748108, 44.283833>,  <38.717152, 35.896091, 44.287727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.906059, 35.748108, 44.283833>,  <39.220905, 35.501469, 44.277340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906059, 35.748108, 44.283833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440789, -0.543890, -0.714065,
		-0.431460, -0.569206, 0.699891,
		-0.787114, 0.616594, 0.016233,
		38.669926, 35.933086, 44.288704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632790, 35.020962, 44.305298>,  <39.220905, 35.501469, 44.277340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.632790, 35.020962, 44.305298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.457783, 35.368870, 44.214016>,  <38.352779, 35.577614, 44.159248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.457783, 35.368870, 44.214016>,  <38.632790, 35.020962, 44.305298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457783, 35.368870, 44.214016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502975, -0.447086, -0.739682,
		-0.745380, -0.208845, 0.633082,
		-0.437521, 0.869769, -0.228205,
		38.326527, 35.629799, 44.145554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870918, 34.928463, 44.337715>,  <38.632790, 35.020962, 44.305298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870918, 34.928463, 44.337715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.939667, 35.234615, 44.089634>,  <37.980915, 35.418304, 43.940784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.939667, 35.234615, 44.089634>,  <37.870918, 34.928463, 44.337715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939667, 35.234615, 44.089634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719190, -0.332757, -0.609950,
		-0.673221, 0.550879, 0.493260,
		0.171873, 0.765379, -0.620206,
		37.991230, 35.464230, 43.903572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262486, 35.030804, 44.149864>,  <37.870918, 34.928463, 44.337715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.262486, 35.030804, 44.149864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.481976, 35.220135, 43.874226>,  <37.613670, 35.333733, 43.708843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.481976, 35.220135, 43.874226>,  <37.262486, 35.030804, 44.149864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481976, 35.220135, 43.874226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532803, -0.437186, -0.724562,
		-0.644221, 0.764741, 0.012295,
		0.548727, 0.473328, -0.689101,
		37.646595, 35.362133, 43.667496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838436, 35.228554, 43.625732>,  <37.262486, 35.030804, 44.149864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.838436, 35.228554, 43.625732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.201111, 35.201736, 43.459156>,  <37.418716, 35.185646, 43.359211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.201111, 35.201736, 43.459156>,  <36.838436, 35.228554, 43.625732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201111, 35.201736, 43.459156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418745, -0.261768, -0.869557,
		-0.050714, 0.962800, -0.265415,
		0.906687, -0.067042, -0.416443,
		37.473118, 35.181625, 43.334225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600307, 35.298813, 42.889072>,  <36.838436, 35.228554, 43.625732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.600307, 35.298813, 42.889072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.979542, 35.174839, 42.860600>,  <37.207085, 35.100456, 42.843517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.979542, 35.174839, 42.860600>,  <36.600307, 35.298813, 42.889072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979542, 35.174839, 42.860600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113316, -0.120123, -0.986271,
		0.297127, 0.943140, -0.149008,
		0.948090, -0.309932, -0.071181,
		37.263969, 35.081860, 42.839245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.813118, 35.636883, 42.285515>,  <36.600307, 35.298813, 42.889072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.813118, 35.636883, 42.285515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.082855, 35.345085, 42.331306>,  <37.244698, 35.170006, 42.358784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.082855, 35.345085, 42.331306>,  <36.813118, 35.636883, 42.285515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082855, 35.345085, 42.331306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121292, -0.262357, -0.957317,
		0.728390, 0.631672, -0.265400,
		0.674341, -0.729492, 0.114482,
		37.285156, 35.126236, 42.365650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224236, 35.756695, 41.679958>,  <36.813118, 35.636883, 42.285515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224236, 35.756695, 41.679958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.318081, 35.386024, 41.797421>,  <37.374386, 35.163624, 41.867897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.318081, 35.386024, 41.797421>,  <37.224236, 35.756695, 41.679958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.318081, 35.386024, 41.797421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042262, -0.311525, -0.949298,
		0.971171, 0.210303, -0.112250,
		0.234609, -0.926674, 0.293656,
		37.388462, 35.108021, 41.885517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805077, 35.419670, 41.283772>,  <37.224236, 35.756695, 41.679958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.805077, 35.419670, 41.283772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.583527, 35.126770, 41.442280>,  <37.450596, 34.951031, 41.537384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.583527, 35.126770, 41.442280>,  <37.805077, 35.419670, 41.283772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583527, 35.126770, 41.442280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097704, -0.415495, -0.904333,
		0.826851, -0.539600, 0.158587,
		-0.553870, -0.732254, 0.396273,
		37.417366, 34.907093, 41.561161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074837, 34.848198, 40.928295>,  <37.805077, 35.419670, 41.283772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.074837, 34.848198, 40.928295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.722900, 34.727150, 41.074886>,  <37.511738, 34.654522, 41.162842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.722900, 34.727150, 41.074886>,  <38.074837, 34.848198, 40.928295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722900, 34.727150, 41.074886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289316, -0.270725, -0.918153,
		0.377065, -0.913854, 0.150641,
		-0.879839, -0.302620, 0.366473,
		37.458950, 34.636364, 41.184830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813721, 34.248081, 40.532486>,  <38.074837, 34.848198, 40.928295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813721, 34.248081, 40.532486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471130, 34.358826, 40.706749>,  <37.265575, 34.425274, 40.811306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471130, 34.358826, 40.706749>,  <37.813721, 34.248081, 40.532486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471130, 34.358826, 40.706749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494432, -0.197588, -0.846461,
		-0.148272, -0.940376, 0.306119,
		-0.856477, 0.276861, 0.435655,
		37.214188, 34.441887, 40.837444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352718, 33.725044, 40.346981>,  <37.813721, 34.248081, 40.532486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.352718, 33.725044, 40.346981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.127758, 34.038036, 40.453888>,  <36.992783, 34.225830, 40.518032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.127758, 34.038036, 40.453888>,  <37.352718, 33.725044, 40.346981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127758, 34.038036, 40.453888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564499, -0.127152, -0.815582,
		-0.604193, -0.609554, 0.513220,
		-0.562398, 0.782481, 0.267268,
		36.959038, 34.272781, 40.534069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606129, 33.548496, 40.349220>,  <37.352718, 33.725044, 40.346981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606129, 33.548496, 40.349220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.631672, 33.946678, 40.320950>,  <36.646999, 34.185585, 40.303989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.631672, 33.946678, 40.320950>,  <36.606129, 33.548496, 40.349220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.631672, 33.946678, 40.320950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708339, -0.004672, -0.705857,
		-0.702978, 0.095138, 0.704820,
		0.063861, 0.995453, -0.070674,
		36.650829, 34.245316, 40.299747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.948807, 33.653061, 40.136875>,  <36.606129, 33.548496, 40.349220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.948807, 33.653061, 40.136875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.128250, 34.003426, 40.065845>,  <36.235916, 34.213646, 40.023228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.128250, 34.003426, 40.065845>,  <35.948807, 33.653061, 40.136875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128250, 34.003426, 40.065845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643472, 0.178662, -0.744327,
		-0.620239, 0.448173, 0.643773,
		0.448606, 0.875911, -0.177573,
		36.262833, 34.266197, 40.012573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.472668, 34.221012, 40.157257>,  <35.948807, 33.653061, 40.136875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.472668, 34.221012, 40.157257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.747913, 34.371655, 39.909168>,  <35.913059, 34.462040, 39.760315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.747913, 34.371655, 39.909168>,  <35.472668, 34.221012, 40.157257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.747913, 34.371655, 39.909168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713685, 0.196972, -0.672202,
		-0.130992, 0.905189, 0.404319,
		0.688110, 0.376610, -0.620218,
		35.954346, 34.484638, 39.723103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106979, 34.815575, 39.840477>,  <35.472668, 34.221012, 40.157257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106979, 34.815575, 39.840477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.415745, 34.746002, 39.595890>,  <35.601006, 34.704258, 39.449139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.415745, 34.746002, 39.595890>,  <35.106979, 34.815575, 39.840477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.415745, 34.746002, 39.595890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584035, 0.185896, -0.790156,
		0.251102, 0.967053, 0.041915,
		0.771914, -0.173929, -0.611471,
		35.647320, 34.693825, 39.412449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172211, 35.421104, 39.357632>,  <35.106979, 34.815575, 39.840477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172211, 35.421104, 39.357632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.329708, 35.091728, 39.194210>,  <35.424206, 34.894104, 39.096157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.329708, 35.091728, 39.194210>,  <35.172211, 35.421104, 39.357632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329708, 35.091728, 39.194210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461424, 0.207348, -0.862609,
		0.795018, 0.528164, -0.298311,
		0.393745, -0.823438, -0.408553,
		35.447830, 34.844696, 39.071644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381084, 35.604248, 38.699570>,  <35.172211, 35.421104, 39.357632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381084, 35.604248, 38.699570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.358021, 35.206596, 38.662933>,  <35.344181, 34.968006, 38.640953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.358021, 35.206596, 38.662933>,  <35.381084, 35.604248, 38.699570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.358021, 35.206596, 38.662933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375961, 0.106610, -0.920482,
		0.924840, -0.018645, -0.379900,
		-0.057663, -0.994126, -0.091588,
		35.340721, 34.908360, 38.635456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789700, 35.403328, 38.134121>,  <35.381084, 35.604248, 38.699570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789700, 35.403328, 38.134121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517838, 35.113792, 38.181660>,  <35.354721, 34.940071, 38.210182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517838, 35.113792, 38.181660>,  <35.789700, 35.403328, 38.134121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517838, 35.113792, 38.181660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259394, 0.085614, -0.961969,
		0.686134, -0.684639, -0.245948,
		-0.679658, -0.723837, 0.118849,
		35.313942, 34.896641, 38.217316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436638, 35.646191, 37.639221>,  <35.789700, 35.403328, 38.134121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436638, 35.646191, 37.639221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.803097, 35.681030, 37.482716>,  <37.022972, 35.701935, 37.388813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.803097, 35.681030, 37.482716>,  <36.436638, 35.646191, 37.639221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803097, 35.681030, 37.482716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396310, -0.050534, 0.916725,
		0.060072, -0.994917, -0.080814,
		0.916149, 0.087097, -0.391260,
		37.077942, 35.707161, 37.365337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903767, 35.172256, 38.036915>,  <36.436638, 35.646191, 37.639221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903767, 35.172256, 38.036915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.157928, 35.417885, 37.849648>,  <37.310425, 35.565262, 37.737289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.157928, 35.417885, 37.849648>,  <36.903767, 35.172256, 38.036915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.157928, 35.417885, 37.849648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589566, 0.005739, 0.807700,
		0.498674, -0.789228, -0.358390,
		0.635403, 0.614073, -0.468164,
		37.348549, 35.602108, 37.709198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617901, 34.918106, 38.192535>,  <36.903767, 35.172256, 38.036915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617901, 34.918106, 38.192535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.626087, 35.303707, 38.086494>,  <37.630997, 35.535069, 38.022869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.626087, 35.303707, 38.086494>,  <37.617901, 34.918106, 38.192535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.626087, 35.303707, 38.086494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611465, 0.197715, 0.766172,
		0.791007, -0.177776, -0.585409,
		0.020463, 0.964004, -0.265098,
		37.632225, 35.592907, 38.006966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248146, 35.077286, 38.245125>,  <37.617901, 34.918106, 38.192535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.248146, 35.077286, 38.245125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.069492, 35.434635, 38.264690>,  <37.962299, 35.649044, 38.276428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.069492, 35.434635, 38.264690>,  <38.248146, 35.077286, 38.245125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.069492, 35.434635, 38.264690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640494, 0.281083, 0.714674,
		0.624725, 0.350529, -0.697745,
		-0.446639, 0.893376, 0.048912,
		37.935501, 35.702648, 38.279366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734173, 35.521023, 38.405888>,  <38.248146, 35.077286, 38.245125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.734173, 35.521023, 38.405888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.416889, 35.741375, 38.509693>,  <38.226521, 35.873585, 38.571976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.416889, 35.741375, 38.509693>,  <38.734173, 35.521023, 38.405888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.416889, 35.741375, 38.509693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505633, 0.358342, 0.784809,
		0.339342, 0.753737, -0.562785,
		-0.793210, 0.550882, 0.259514,
		38.178925, 35.906639, 38.587547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972866, 36.300846, 38.536926>,  <38.734173, 35.521023, 38.405888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972866, 36.300846, 38.536926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.629120, 36.243088, 38.733147>,  <38.422874, 36.208435, 38.850880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.629120, 36.243088, 38.733147>,  <38.972866, 36.300846, 38.536926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.629120, 36.243088, 38.733147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418493, 0.352697, 0.836940,
		-0.293867, 0.924530, -0.242668,
		-0.859364, -0.144394, 0.490555,
		38.371311, 36.199768, 38.880314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775032, 36.955696, 38.920818>,  <38.972866, 36.300846, 38.536926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.775032, 36.955696, 38.920818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.589363, 36.654945, 39.108109>,  <38.477962, 36.474495, 39.220482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.589363, 36.654945, 39.108109>,  <38.775032, 36.955696, 38.920818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589363, 36.654945, 39.108109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324257, 0.347681, 0.879759,
		-0.824260, 0.560182, 0.082417,
		-0.464170, -0.751874, 0.468222,
		38.450111, 36.429382, 39.248573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431164, 37.220482, 39.628326>,  <38.775032, 36.955696, 38.920818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.431164, 37.220482, 39.628326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.408794, 36.830460, 39.714245>,  <38.395374, 36.596447, 39.765797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.408794, 36.830460, 39.714245>,  <38.431164, 37.220482, 39.628326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408794, 36.830460, 39.714245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251658, 0.194423, 0.948087,
		-0.966199, 0.107074, 0.234508,
		-0.055922, -0.975056, 0.214797,
		38.392017, 36.537941, 39.778683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911980, 37.118820, 40.191036>,  <38.431164, 37.220482, 39.628326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.911980, 37.118820, 40.191036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.187145, 36.828796, 40.178013>,  <38.352245, 36.654781, 40.170200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.187145, 36.828796, 40.178013>,  <37.911980, 37.118820, 40.191036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187145, 36.828796, 40.178013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244762, 0.189528, 0.950879,
		-0.683277, -0.662089, 0.307847,
		0.687913, -0.725063, -0.032554,
		38.393520, 36.611279, 40.168247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005005, 36.965088, 40.790604>,  <37.911980, 37.118820, 40.191036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005005, 36.965088, 40.790604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.318592, 36.754375, 40.659218>,  <38.506744, 36.627949, 40.580387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.318592, 36.754375, 40.659218>,  <38.005005, 36.965088, 40.790604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318592, 36.754375, 40.659218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447373, 0.112577, 0.887234,
		-0.430402, -0.842512, 0.323926,
		0.783972, -0.526783, -0.328464,
		38.553783, 36.596340, 40.560680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174145, 36.520676, 41.360138>,  <38.005005, 36.965088, 40.790604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.174145, 36.520676, 41.360138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.476421, 36.605324, 41.112221>,  <38.657787, 36.656113, 40.963470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.476421, 36.605324, 41.112221>,  <38.174145, 36.520676, 41.360138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.476421, 36.605324, 41.112221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505266, 0.413720, 0.757325,
		0.416717, -0.885458, 0.205697,
		0.755681, 0.211658, -0.619796,
		38.703129, 36.668812, 40.926285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719997, 36.260845, 41.686028>,  <38.174145, 36.520676, 41.360138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719997, 36.260845, 41.686028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.896942, 36.503773, 41.422066>,  <39.003109, 36.649529, 41.263687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.896942, 36.503773, 41.422066>,  <38.719997, 36.260845, 41.686028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896942, 36.503773, 41.422066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653176, 0.286044, 0.701099,
		0.614553, -0.741178, -0.270150,
		0.442364, 0.607318, -0.659909,
		39.029652, 36.685966, 41.224094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444061, 36.279911, 41.883335>,  <38.719997, 36.260845, 41.686028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444061, 36.279911, 41.883335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409611, 36.602329, 41.649113>,  <39.388939, 36.795780, 41.508579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409611, 36.602329, 41.649113>,  <39.444061, 36.279911, 41.883335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409611, 36.602329, 41.649113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674800, 0.479593, 0.560925,
		0.732958, -0.346822, -0.585224,
		-0.086128, 0.806043, -0.585557,
		39.383774, 36.844143, 41.473446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127960, 36.459667, 41.737919>,  <39.444061, 36.279911, 41.883335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.127960, 36.459667, 41.737919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.889866, 36.778374, 41.696247>,  <39.747009, 36.969597, 41.671246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.889866, 36.778374, 41.696247>,  <40.127960, 36.459667, 41.737919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.889866, 36.778374, 41.696247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638112, 0.547496, 0.541352,
		0.488369, 0.255755, -0.834317,
		-0.595239, 0.796767, -0.104179,
		39.711296, 37.017403, 41.664993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.597935, 37.018517, 41.682487>,  <40.127960, 36.459667, 41.737919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.597935, 37.018517, 41.682487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.256111, 37.205311, 41.773403>,  <40.051018, 37.317387, 41.827953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.256111, 37.205311, 41.773403>,  <40.597935, 37.018517, 41.682487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.256111, 37.205311, 41.773403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468919, 0.505607, 0.724208,
		0.223277, 0.725455, -0.651047,
		-0.854554, 0.466987, 0.227289,
		39.999744, 37.345406, 41.841591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.786232, 37.712955, 41.664848>,  <40.597935, 37.018517, 41.682487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.786232, 37.712955, 41.664848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.461380, 37.667065, 41.893681>,  <40.266468, 37.639530, 42.030979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.461380, 37.667065, 41.893681>,  <40.786232, 37.712955, 41.664848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.461380, 37.667065, 41.893681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483824, 0.415603, 0.770187,
		-0.326122, 0.902281, -0.282015,
		-0.812132, -0.114729, 0.572083,
		40.217739, 37.632645, 42.065304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.733429, 38.337162, 42.000610>,  <40.786232, 37.712955, 41.664848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.733429, 38.337162, 42.000610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.518208, 38.100529, 42.240784>,  <40.389072, 37.958549, 42.384888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.518208, 38.100529, 42.240784>,  <40.733429, 38.337162, 42.000610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.518208, 38.100529, 42.240784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474015, 0.376670, 0.795883,
		-0.696997, 0.712846, 0.077749,
		-0.538057, -0.591582, 0.600438,
		40.356792, 37.923054, 42.420914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.548233, 38.760571, 42.616917>,  <40.733429, 38.337162, 42.000610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.548233, 38.760571, 42.616917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.444290, 38.392387, 42.733696>,  <40.381924, 38.171478, 42.803764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.444290, 38.392387, 42.733696>,  <40.548233, 38.760571, 42.616917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.444290, 38.392387, 42.733696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294391, 0.212429, 0.931777,
		-0.919679, 0.328072, 0.215775,
		-0.259853, -0.920458, 0.291948,
		40.366333, 38.116249, 42.821281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.112629, 38.784126, 43.253815>,  <40.548233, 38.760571, 42.616917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.112629, 38.784126, 43.253815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.274452, 38.418770, 43.271877>,  <40.371548, 38.199554, 43.282715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.274452, 38.418770, 43.271877>,  <40.112629, 38.784126, 43.253815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.274452, 38.418770, 43.271877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216381, 0.143585, 0.965693,
		-0.888544, -0.380909, 0.255730,
		0.404561, -0.913396, 0.045160,
		40.395821, 38.144753, 43.285427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.698597, 38.324306, 43.688610>,  <40.112629, 38.784126, 43.253815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.698597, 38.324306, 43.688610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.082973, 38.214775, 43.672569>,  <40.313599, 38.149055, 43.662945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.082973, 38.214775, 43.672569>,  <39.698597, 38.324306, 43.688610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.082973, 38.214775, 43.672569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094289, 0.187697, 0.977691,
		-0.260191, -0.943286, 0.206185,
		0.960942, -0.273827, -0.040104,
		40.371258, 38.132626, 43.660538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.853836, 37.893391, 44.323776>,  <39.698597, 38.324306, 43.688610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.853836, 37.893391, 44.323776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.230431, 37.969196, 44.212292>,  <40.456387, 38.014679, 44.145401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.230431, 37.969196, 44.212292>,  <39.853836, 37.893391, 44.323776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.230431, 37.969196, 44.212292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234306, 0.226380, 0.945438,
		0.242282, -0.955422, 0.168727,
		0.941488, 0.189529, -0.278709,
		40.512878, 38.026051, 44.128681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.235874, 37.492054, 44.782280>,  <39.853836, 37.893391, 44.323776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.235874, 37.492054, 44.782280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.491924, 37.767418, 44.645847>,  <40.645554, 37.932636, 44.563988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.491924, 37.767418, 44.645847>,  <40.235874, 37.492054, 44.782280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.491924, 37.767418, 44.645847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451883, 0.021672, 0.891814,
		0.621322, -0.725001, -0.297206,
		0.640125, 0.688406, -0.341081,
		40.683964, 37.973938, 44.543522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.887695, 37.472340, 45.253670>,  <40.235874, 37.492054, 44.782280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.887695, 37.472340, 45.253670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.914448, 37.835602, 45.088367>,  <40.930500, 38.053558, 44.989185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.914448, 37.835602, 45.088367>,  <40.887695, 37.472340, 45.253670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.914448, 37.835602, 45.088367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194366, 0.394392, 0.898152,
		0.978646, -0.140394, -0.150137,
		0.066883, 0.908155, -0.413258,
		40.934513, 38.108047, 44.964390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.429245, 37.769398, 45.500282>,  <40.887695, 37.472340, 45.253670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.429245, 37.769398, 45.500282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.214233, 38.088970, 45.392384>,  <41.085224, 38.280716, 45.327644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.214233, 38.088970, 45.392384>,  <41.429245, 37.769398, 45.500282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.214233, 38.088970, 45.392384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220579, 0.441977, 0.869483,
		0.813882, 0.407875, -0.413805,
		-0.537533, 0.798933, -0.269749,
		41.052975, 38.328651, 45.311459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.780487, 38.370110, 45.763161>,  <41.429245, 37.769398, 45.500282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.780487, 38.370110, 45.763161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.421291, 38.530796, 45.691338>,  <41.205772, 38.627209, 45.648243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.421291, 38.530796, 45.691338>,  <41.780487, 38.370110, 45.763161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.421291, 38.530796, 45.691338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095160, 0.575707, 0.812100,
		0.429600, 0.712173, -0.555207,
		-0.897991, 0.401712, -0.179554,
		41.151894, 38.651310, 45.637470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.798531, 39.092312, 45.915096>,  <41.780487, 38.370110, 45.763161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.798531, 39.092312, 45.915096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.403328, 39.032295, 45.929688>,  <41.166206, 38.996284, 45.938442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.403328, 39.032295, 45.929688>,  <41.798531, 39.092312, 45.915096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.403328, 39.032295, 45.929688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059153, 0.586003, 0.808147,
		-0.142627, 0.796297, -0.587850,
		-0.988007, -0.150037, 0.036476,
		41.106926, 38.987286, 45.940632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.414352, 39.659084, 45.785103>,  <41.798531, 39.092312, 45.915096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.414352, 39.659084, 45.785103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.169003, 39.441856, 46.014481>,  <41.021793, 39.311520, 46.152107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.169003, 39.441856, 46.014481>,  <41.414352, 39.659084, 45.785103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.169003, 39.441856, 46.014481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144325, 0.790922, 0.594654,
		-0.776492, 0.281984, -0.563512,
		-0.613376, -0.543073, 0.573447,
		40.984989, 39.278934, 46.186516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.831894, 40.071640, 45.876480>,  <41.414352, 39.659084, 45.785103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.831894, 40.071640, 45.876480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.837807, 39.795071, 46.165401>,  <40.841354, 39.629131, 46.338753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.837807, 39.795071, 46.165401>,  <40.831894, 40.071640, 45.876480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.837807, 39.795071, 46.165401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092024, 0.718374, 0.689544,
		-0.995647, -0.076665, -0.053005,
		0.014787, -0.691420, 0.722302,
		40.842243, 39.587646, 46.382092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.335606, 40.252766, 46.215218>,  <40.831894, 40.071640, 45.876480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.335606, 40.252766, 46.215218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.550732, 40.038601, 46.475708>,  <40.679806, 39.910103, 46.632004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.550732, 40.038601, 46.475708>,  <40.335606, 40.252766, 46.215218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.550732, 40.038601, 46.475708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238528, 0.644257, 0.726662,
		-0.808618, -0.546143, 0.218779,
		0.537811, -0.535407, 0.651228,
		40.712074, 39.877979, 46.671078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.982670, 40.441620, 46.878395>,  <40.335606, 40.252766, 46.215218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.982670, 40.441620, 46.878395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.318798, 40.256844, 46.991867>,  <40.520473, 40.145977, 47.059952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.318798, 40.256844, 46.991867>,  <39.982670, 40.441620, 46.878395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.318798, 40.256844, 46.991867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009662, 0.535983, 0.844174,
		-0.542006, -0.706634, 0.454860,
		0.840319, -0.461942, 0.283678,
		40.570892, 40.118259, 47.076969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903328, 40.177280, 47.604801>,  <39.982670, 40.441620, 46.878395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.903328, 40.177280, 47.604801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.297249, 40.200195, 47.539227>,  <40.533604, 40.213943, 47.499882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.297249, 40.200195, 47.539227>,  <39.903328, 40.177280, 47.604801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.297249, 40.200195, 47.539227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102092, 0.572660, 0.813411,
		0.140478, -0.817789, 0.558111,
		0.984806, 0.057288, -0.163936,
		40.592690, 40.217381, 47.490047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131992, 40.041393, 48.136967>,  <39.903328, 40.177280, 47.604801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.131992, 40.041393, 48.136967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.446465, 40.231243, 47.978649>,  <40.635147, 40.345154, 47.883659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.446465, 40.231243, 47.978649>,  <40.131992, 40.041393, 48.136967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.446465, 40.231243, 47.978649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044318, 0.595503, 0.802130,
		0.616410, -0.648157, 0.447136,
		0.786177, 0.474625, -0.395799,
		40.682320, 40.373631, 47.859909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.610928, 40.279076, 48.704384>,  <40.131992, 40.041393, 48.136967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.610928, 40.279076, 48.704384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.689007, 40.531971, 48.404472>,  <40.735855, 40.683708, 48.224525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.689007, 40.531971, 48.404472>,  <40.610928, 40.279076, 48.704384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.689007, 40.531971, 48.404472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085401, 0.750622, 0.655190,
		0.977038, -0.191925, 0.092527,
		0.195200, 0.632243, -0.749777,
		40.747566, 40.721645, 48.179539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.346668, 40.644131, 48.823643>,  <40.610928, 40.279076, 48.704384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.346668, 40.644131, 48.823643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.207527, 40.913982, 48.563221>,  <41.124043, 41.075893, 48.406967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.207527, 40.913982, 48.563221>,  <41.346668, 40.644131, 48.823643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.207527, 40.913982, 48.563221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041479, 0.704816, 0.708177,
		0.936632, 0.219334, -0.273153,
		-0.347850, 0.674632, -0.651055,
		41.103172, 41.116371, 48.367905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.725323, 41.230804, 48.853844>,  <41.346668, 40.644131, 48.823643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.725323, 41.230804, 48.853844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.390625, 41.374409, 48.688446>,  <41.189808, 41.460571, 48.589207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.390625, 41.374409, 48.688446>,  <41.725323, 41.230804, 48.853844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.390625, 41.374409, 48.688446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080613, 0.827629, 0.555456,
		0.541632, 0.431441, -0.721453,
		-0.836742, 0.359011, -0.413491,
		41.139603, 41.482113, 48.564400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.826233, 42.022049, 48.723404>,  <41.725323, 41.230804, 48.853844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.826233, 42.022049, 48.723404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.433983, 41.947166, 48.746490>,  <41.198635, 41.902237, 48.760342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.433983, 41.947166, 48.746490>,  <41.826233, 42.022049, 48.723404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.433983, 41.947166, 48.746490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109011, 0.766227, 0.633255,
		-0.162772, 0.614694, -0.771788,
		-0.980623, -0.187209, 0.057712,
		41.139797, 41.891003, 48.763805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.590820, 42.684853, 48.721756>,  <41.826233, 42.022049, 48.723404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.590820, 42.684853, 48.721756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.290062, 42.466972, 48.870327>,  <41.109608, 42.336246, 48.959469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.290062, 42.466972, 48.870327>,  <41.590820, 42.684853, 48.721756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.290062, 42.466972, 48.870327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209939, 0.731870, 0.648299,
		-0.624964, 0.409476, -0.664643,
		-0.751895, -0.544698, 0.371427,
		41.064495, 42.303562, 48.981754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.946579, 43.071594, 48.616390>,  <41.590820, 42.684853, 48.721756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.946579, 43.071594, 48.616390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.897652, 42.822414, 48.925449>,  <40.868298, 42.672909, 49.110886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.897652, 42.822414, 48.925449>,  <40.946579, 43.071594, 48.616390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.897652, 42.822414, 48.925449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305056, 0.764401, 0.568007,
		-0.944447, -0.166224, -0.283531,
		-0.122315, -0.622945, 0.772644,
		40.860958, 42.635532, 49.157242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.510124, 43.494347, 48.533825>,  <40.946579, 43.071594, 48.616390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.510124, 43.494347, 48.533825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.464474, 43.844173, 48.345314>,  <40.437084, 44.054070, 48.232208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.464474, 43.844173, 48.345314>,  <40.510124, 43.494347, 48.533825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.464474, 43.844173, 48.345314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086774, -0.463789, -0.881686,
		-0.989669, -0.141519, -0.022959,
		-0.114127, 0.874570, -0.471278,
		40.430237, 44.106544, 48.203930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.991982, 43.455780, 47.939472>,  <40.510124, 43.494347, 48.533825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.991982, 43.455780, 47.939472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.226151, 43.773117, 47.872669>,  <40.366650, 43.963520, 47.832588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.226151, 43.773117, 47.872669>,  <39.991982, 43.455780, 47.939472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.226151, 43.773117, 47.872669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064818, -0.251137, -0.965779,
		-0.808135, 0.554561, -0.198443,
		0.585419, 0.793343, -0.167007,
		40.401775, 44.011120, 47.822567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771885, 43.748318, 47.295147>,  <39.991982, 43.455780, 47.939472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.771885, 43.748318, 47.295147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.138653, 43.904217, 47.329453>,  <40.358715, 43.997757, 47.350037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.138653, 43.904217, 47.329453>,  <39.771885, 43.748318, 47.295147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.138653, 43.904217, 47.329453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172878, -0.194229, -0.965603,
		-0.359686, 0.900205, -0.245471,
		0.916918, 0.389751, 0.085764,
		40.413727, 44.021141, 47.355183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.795555, 44.292595, 46.775887>,  <39.771885, 43.748318, 47.295147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.795555, 44.292595, 46.775887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.181973, 44.234535, 46.861385>,  <40.413822, 44.199699, 46.912685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.181973, 44.234535, 46.861385>,  <39.795555, 44.292595, 46.775887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.181973, 44.234535, 46.861385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223193, 0.052082, -0.973382,
		0.130158, 0.988037, 0.082711,
		0.966045, -0.145154, 0.213744,
		40.471786, 44.190990, 46.925510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.190655, 44.644920, 46.369507>,  <39.795555, 44.292595, 46.775887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.190655, 44.644920, 46.369507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.443214, 44.351871, 46.471169>,  <40.594749, 44.176041, 46.532166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.443214, 44.351871, 46.471169>,  <40.190655, 44.644920, 46.369507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.443214, 44.351871, 46.471169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365080, -0.008319, -0.930939,
		0.684143, 0.680582, 0.262214,
		0.631399, -0.732625, 0.254158,
		40.632633, 44.132084, 46.547417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.823288, 44.758984, 45.986095>,  <40.190655, 44.644920, 46.369507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.823288, 44.758984, 45.986095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.823357, 44.370232, 46.080292>,  <40.823399, 44.136982, 46.136810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.823357, 44.370232, 46.080292>,  <40.823288, 44.758984, 45.986095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.823357, 44.370232, 46.080292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250046, -0.227968, -0.941014,
		0.968234, 0.059040, 0.242976,
		0.000167, -0.971877, 0.235489,
		40.823406, 44.078667, 46.150940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.211456, 44.372349, 45.450333>,  <40.823288, 44.758984, 45.986095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.211456, 44.372349, 45.450333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.033409, 44.062187, 45.629498>,  <40.926582, 43.876091, 45.736996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.033409, 44.062187, 45.629498>,  <41.211456, 44.372349, 45.450333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.033409, 44.062187, 45.629498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141835, -0.554927, -0.819719,
		0.884170, -0.301339, 0.356984,
		-0.445113, -0.775404, 0.447910,
		40.899876, 43.829567, 45.763870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.529182, 43.814247, 45.225437>,  <41.211456, 44.372349, 45.450333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.529182, 43.814247, 45.225437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.188889, 43.654369, 45.361965>,  <40.984711, 43.558441, 45.443882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.188889, 43.654369, 45.361965>,  <41.529182, 43.814247, 45.225437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.188889, 43.654369, 45.361965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032493, -0.608150, -0.793157,
		0.524591, -0.685856, 0.504387,
		-0.850734, -0.399693, 0.341316,
		40.933670, 43.534462, 45.464359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.653629, 43.122982, 45.356800>,  <41.529182, 43.814247, 45.225437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.653629, 43.122982, 45.356800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.266159, 43.186375, 45.280323>,  <41.033676, 43.224411, 45.234436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.266159, 43.186375, 45.280323>,  <41.653629, 43.122982, 45.356800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.266159, 43.186375, 45.280323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022250, -0.711411, -0.702424,
		-0.247340, -0.684673, 0.685598,
		-0.968673, 0.158483, -0.191194,
		40.975555, 43.233921, 45.222965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.466339, 42.489071, 45.291080>,  <41.653629, 43.122982, 45.356800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.466339, 42.489071, 45.291080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.157955, 42.668274, 45.110016>,  <40.972923, 42.775795, 45.001377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.157955, 42.668274, 45.110016>,  <41.466339, 42.489071, 45.291080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.157955, 42.668274, 45.110016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102754, -0.788938, -0.605821,
		-0.628534, -0.420554, 0.654278,
		-0.770965, 0.448008, -0.452660,
		40.926666, 42.802677, 44.974216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.044926, 41.966225, 45.107361>,  <41.466339, 42.489071, 45.291080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.044926, 41.966225, 45.107361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.906013, 42.268665, 44.885479>,  <40.822666, 42.450130, 44.752350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.906013, 42.268665, 44.885479>,  <41.044926, 41.966225, 45.107361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.906013, 42.268665, 44.885479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188860, -0.635794, -0.748397,
		-0.918547, -0.155141, 0.363596,
		-0.347279, 0.756107, -0.554707,
		40.801830, 42.495499, 44.719067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.396725, 41.832802, 44.778206>,  <41.044926, 41.966225, 45.107361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.396725, 41.832802, 44.778206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.587746, 42.103260, 44.553791>,  <40.702358, 42.265533, 44.419140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.587746, 42.103260, 44.553791>,  <40.396725, 41.832802, 44.778206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.587746, 42.103260, 44.553791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195063, -0.541030, -0.818069,
		-0.856674, 0.500112, -0.126480,
		0.477556, 0.676147, -0.561040,
		40.731014, 42.306103, 44.385479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.951889, 41.790413, 44.255615>,  <40.396725, 41.832802, 44.778206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.951889, 41.790413, 44.255615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.273457, 41.985237, 44.119099>,  <40.466396, 42.102131, 44.037189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.273457, 41.985237, 44.119099>,  <39.951889, 41.790413, 44.255615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.273457, 41.985237, 44.119099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144117, -0.397212, -0.906340,
		-0.577008, 0.777813, -0.249134,
		0.803923, 0.487061, -0.341291,
		40.514633, 42.131355, 44.016712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.790565, 42.126915, 43.532951>,  <39.951889, 41.790413, 44.255615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.790565, 42.126915, 43.532951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.189842, 42.116859, 43.554756>,  <40.429409, 42.110828, 43.567841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.189842, 42.116859, 43.554756>,  <39.790565, 42.126915, 43.532951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.189842, 42.116859, 43.554756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040743, -0.383290, -0.922729,
		0.044088, 0.923286, -0.381575,
		0.998197, -0.025135, 0.054516,
		40.489300, 42.109318, 43.571110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.023952, 42.431034, 42.867485>,  <39.790565, 42.126915, 43.532951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.023952, 42.431034, 42.867485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.280392, 42.179352, 43.043255>,  <40.434254, 42.028343, 43.148716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.280392, 42.179352, 43.043255>,  <40.023952, 42.431034, 42.867485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.280392, 42.179352, 43.043255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105627, -0.639461, -0.761533,
		0.760158, 0.441800, -0.476417,
		0.641096, -0.629208, 0.439425,
		40.472721, 41.990589, 43.175083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.573238, 42.357586, 42.318359>,  <40.023952, 42.431034, 42.867485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.573238, 42.357586, 42.318359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.660984, 42.041191, 42.546818>,  <40.713631, 41.851353, 42.683895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.660984, 42.041191, 42.546818>,  <40.573238, 42.357586, 42.318359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.660984, 42.041191, 42.546818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216229, -0.610267, -0.762115,
		0.951380, 0.043684, -0.304907,
		0.219367, -0.790991, 0.571150,
		40.726795, 41.803894, 42.718163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.048302, 41.900002, 41.969460>,  <40.573238, 42.357586, 42.318359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.048302, 41.900002, 41.969460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.851109, 41.665352, 42.226471>,  <40.732792, 41.524563, 42.380676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.851109, 41.665352, 42.226471>,  <41.048302, 41.900002, 41.969460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.851109, 41.665352, 42.226471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176761, -0.655572, -0.734154,
		0.851893, -0.475500, 0.219494,
		-0.492984, -0.586622, 0.642527,
		40.703213, 41.489365, 42.419228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.442036, 41.265770, 41.934559>,  <41.048302, 41.900002, 41.969460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.442036, 41.265770, 41.934559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.067867, 41.196468, 42.057827>,  <40.843365, 41.154888, 42.131786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.067867, 41.196468, 42.057827>,  <41.442036, 41.265770, 41.934559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.067867, 41.196468, 42.057827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195119, -0.473886, -0.858697,
		0.294810, -0.863374, 0.409479,
		-0.935423, -0.173255, 0.308167,
		40.787239, 41.144493, 42.150276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.328556, 40.578606, 41.748207>,  <41.442036, 41.265770, 41.934559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.328556, 40.578606, 41.748207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.972301, 40.734955, 41.841148>,  <40.758549, 40.828766, 41.896912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.972301, 40.734955, 41.841148>,  <41.328556, 40.578606, 41.748207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.972301, 40.734955, 41.841148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424807, -0.532948, -0.731782,
		-0.162202, -0.750456, 0.640707,
		-0.890635, 0.390873, 0.232354,
		40.705112, 40.852219, 41.910854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.829723, 40.090286, 41.836273>,  <41.328556, 40.578606, 41.748207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.829723, 40.090286, 41.836273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.560001, 40.370365, 41.742432>,  <40.398170, 40.538414, 41.686127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.560001, 40.370365, 41.742432>,  <40.829723, 40.090286, 41.836273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.560001, 40.370365, 41.742432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430243, -0.630716, -0.645823,
		-0.600171, -0.334545, 0.726549,
		-0.674304, 0.700197, -0.234602,
		40.357712, 40.580425, 41.672050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.166733, 39.844028, 41.954521>,  <40.829723, 40.090286, 41.836273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.166733, 39.844028, 41.954521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.096153, 40.139061, 41.693802>,  <40.053806, 40.316082, 41.537373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.096153, 40.139061, 41.693802>,  <40.166733, 39.844028, 41.954521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.096153, 40.139061, 41.693802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525212, -0.630592, -0.571407,
		-0.832477, 0.241508, 0.498654,
		-0.176448, 0.737582, -0.651796,
		40.043221, 40.360336, 41.498264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396133, 39.690903, 41.735485>,  <40.166733, 39.844028, 41.954521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.396133, 39.690903, 41.735485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.567055, 39.945751, 41.478893>,  <39.669605, 40.098660, 41.324940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.567055, 39.945751, 41.478893>,  <39.396133, 39.690903, 41.735485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.567055, 39.945751, 41.478893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515181, -0.411472, -0.751851,
		-0.742970, 0.651742, 0.152411,
		0.427299, 0.637121, -0.641476,
		39.695244, 40.136887, 41.286449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769424, 39.934704, 41.236336>,  <39.396133, 39.690903, 41.735485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.769424, 39.934704, 41.236336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.133656, 39.947392, 41.071487>,  <39.352196, 39.955006, 40.972580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.133656, 39.947392, 41.071487>,  <38.769424, 39.934704, 41.236336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.133656, 39.947392, 41.071487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363421, -0.413549, -0.834807,
		-0.196912, 0.909929, -0.365040,
		0.910577, 0.031720, -0.412120,
		39.406830, 39.956909, 40.947853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669674, 39.952850, 40.506794>,  <38.769424, 39.934704, 41.236336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.669674, 39.952850, 40.506794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.062340, 39.877167, 40.497593>,  <39.297939, 39.831757, 40.492073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.062340, 39.877167, 40.497593>,  <38.669674, 39.952850, 40.506794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.062340, 39.877167, 40.497593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129792, -0.575219, -0.807637,
		0.139583, 0.795816, -0.589232,
		0.981667, -0.189210, -0.023000,
		39.356838, 39.820404, 40.490692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960545, 39.994202, 39.868793>,  <38.669674, 39.952850, 40.506794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.960545, 39.994202, 39.868793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.237823, 39.747780, 40.018433>,  <39.404190, 39.599926, 40.108215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.237823, 39.747780, 40.018433>,  <38.960545, 39.994202, 39.868793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237823, 39.747780, 40.018433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090253, -0.440756, -0.893078,
		0.715071, 0.652846, -0.249931,
		0.693201, -0.616057, 0.374093,
		39.445786, 39.562962, 40.130661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.534912, 40.018681, 39.397461>,  <38.960545, 39.994202, 39.868793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.534912, 40.018681, 39.397461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.584969, 39.671803, 39.590256>,  <39.615002, 39.463676, 39.705933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.584969, 39.671803, 39.590256>,  <39.534912, 40.018681, 39.397461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.584969, 39.671803, 39.590256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155689, -0.462627, -0.872776,
		0.979847, 0.184258, 0.077120,
		0.125138, -0.867194, 0.481990,
		39.622509, 39.411644, 39.734852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.122959, 39.749653, 39.109787>,  <39.534912, 40.018681, 39.397461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.122959, 39.749653, 39.109787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.959118, 39.439259, 39.301647>,  <39.860813, 39.253021, 39.416763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.959118, 39.439259, 39.301647>,  <40.122959, 39.749653, 39.109787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.959118, 39.439259, 39.301647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286406, -0.608583, -0.739998,
		0.866140, -0.165728, 0.471524,
		-0.409600, -0.775990, 0.479653,
		39.836239, 39.206463, 39.445541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.646217, 39.313644, 39.092487>,  <40.122959, 39.749653, 39.109787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.646217, 39.313644, 39.092487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.328846, 39.079006, 39.157452>,  <40.138424, 38.938225, 39.196430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.328846, 39.079006, 39.157452>,  <40.646217, 39.313644, 39.092487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.328846, 39.079006, 39.157452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332399, -0.641118, -0.691721,
		0.509882, -0.494848, 0.703666,
		-0.793430, -0.586594, 0.162407,
		40.090816, 38.903027, 39.206173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.872387, 38.532745, 39.065449>,  <40.646217, 39.313644, 39.092487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.872387, 38.532745, 39.065449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.476418, 38.560215, 39.015911>,  <40.238834, 38.576698, 38.986191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.476418, 38.560215, 39.015911>,  <40.872387, 38.532745, 39.065449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.476418, 38.560215, 39.015911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046467, -0.668566, -0.742200,
		-0.133767, -0.740475, 0.658637,
		-0.989923, 0.068677, -0.123840,
		40.179440, 38.580818, 38.978760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.556637, 37.864082, 38.983990>,  <40.872387, 38.532745, 39.065449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.556637, 37.864082, 38.983990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.291500, 38.106060, 38.807503>,  <40.132416, 38.251247, 38.701611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.291500, 38.106060, 38.807503>,  <40.556637, 37.864082, 38.983990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.291500, 38.106060, 38.807503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156429, -0.688151, -0.708505,
		-0.732235, -0.400609, 0.550767,
		-0.662844, 0.604948, -0.441221,
		40.092648, 38.287544, 38.675137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.130741, 37.379559, 38.708576>,  <40.556637, 37.864082, 38.983990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.130741, 37.379559, 38.708576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.053207, 37.711937, 38.499977>,  <40.006687, 37.911362, 38.374817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.053207, 37.711937, 38.499977>,  <40.130741, 37.379559, 38.708576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.053207, 37.711937, 38.499977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197530, -0.553754, -0.808912,
		-0.960942, -0.053784, 0.271473,
		-0.193836, 0.830942, -0.521501,
		39.995056, 37.961220, 38.343525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549782, 37.168957, 38.324650>,  <40.130741, 37.379559, 38.708576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.549782, 37.168957, 38.324650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.686089, 37.501358, 38.148781>,  <39.767872, 37.700798, 38.043259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.686089, 37.501358, 38.148781>,  <39.549782, 37.168957, 38.324650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.686089, 37.501358, 38.148781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068059, -0.444628, -0.893126,
		-0.937680, 0.334273, -0.094958,
		0.340768, 0.831004, -0.439670,
		39.788319, 37.750660, 38.016880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.108944, 37.245342, 37.743111>,  <39.549782, 37.168957, 38.324650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.108944, 37.245342, 37.743111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.414726, 37.479374, 37.634815>,  <39.598194, 37.619793, 37.569836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.414726, 37.479374, 37.634815>,  <39.108944, 37.245342, 37.743111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.414726, 37.479374, 37.634815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026144, -0.447750, -0.893776,
		-0.644151, 0.676170, -0.357579,
		0.764451, 0.585076, -0.270741,
		39.644062, 37.654896, 37.553593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.913055, 37.547516, 37.158249>,  <39.108944, 37.245342, 37.743111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.913055, 37.547516, 37.158249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.312031, 37.572041, 37.143459>,  <39.551414, 37.586754, 37.134586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.312031, 37.572041, 37.143459>,  <38.913055, 37.547516, 37.158249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.312031, 37.572041, 37.143459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008729, -0.408415, -0.912755,
		-0.071062, 0.910735, -0.406831,
		0.997434, 0.061311, -0.036972,
		39.611259, 37.590435, 37.132366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089046, 37.709877, 36.449535>,  <38.913055, 37.547516, 37.158249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.089046, 37.709877, 36.449535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437710, 37.596462, 36.609444>,  <39.646908, 37.528412, 36.705387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437710, 37.596462, 36.609444>,  <39.089046, 37.709877, 36.449535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.437710, 37.596462, 36.609444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292598, -0.353308, -0.888572,
		0.393183, 0.891505, -0.225002,
		0.871661, -0.283536, 0.399767,
		39.699207, 37.511402, 36.729374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564880, 38.009331, 36.082504>,  <39.089046, 37.709877, 36.449535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.564880, 38.009331, 36.082504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.689453, 37.664764, 36.242992>,  <39.764198, 37.458027, 36.339287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.689453, 37.664764, 36.242992>,  <39.564880, 38.009331, 36.082504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.689453, 37.664764, 36.242992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007088, -0.424314, -0.905487,
		0.950242, 0.279154, -0.138250,
		0.311432, -0.861412, 0.401223,
		39.782883, 37.406342, 36.363358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008121, 37.711510, 35.599537>,  <39.564880, 38.009331, 36.082504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.008121, 37.711510, 35.599537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.935322, 37.391495, 35.828209>,  <39.891640, 37.199486, 35.965412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.935322, 37.391495, 35.828209>,  <40.008121, 37.711510, 35.599537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.935322, 37.391495, 35.828209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136223, -0.596302, -0.791118,
		0.973817, -0.066108, 0.217510,
		-0.182001, -0.800034, 0.571683,
		39.880722, 37.151485, 35.999714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.605152, 37.244999, 35.582138>,  <40.008121, 37.711510, 35.599537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.605152, 37.244999, 35.582138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.298496, 37.007694, 35.680370>,  <40.114502, 36.865311, 35.739311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.298496, 37.007694, 35.680370>,  <40.605152, 37.244999, 35.582138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.298496, 37.007694, 35.680370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277899, -0.651379, -0.706030,
		0.578824, -0.473023, 0.664238,
		-0.766639, -0.593258, 0.245581,
		40.068504, 36.829716, 35.754044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.849781, 36.637100, 35.429749>,  <40.605152, 37.244999, 35.582138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.849781, 36.637100, 35.429749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.462379, 36.541386, 35.457272>,  <40.229939, 36.483955, 35.473785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.462379, 36.541386, 35.457272>,  <40.849781, 36.637100, 35.429749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.462379, 36.541386, 35.457272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070272, -0.527805, -0.846454,
		0.238863, -0.814961, 0.527999,
		-0.968507, -0.239290, 0.068804,
		40.171825, 36.469597, 35.477913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.790432, 35.864220, 35.414608>,  <40.849781, 36.637100, 35.429749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.790432, 35.864220, 35.414608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.459476, 36.050602, 35.289188>,  <40.260902, 36.162430, 35.213936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.459476, 36.050602, 35.289188>,  <40.790432, 35.864220, 35.414608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.459476, 36.050602, 35.289188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054913, -0.488491, -0.870840,
		-0.558936, -0.737742, 0.378586,
		-0.827391, 0.465954, -0.313546,
		40.211258, 36.190388, 35.195126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.398640, 35.313873, 35.012482>,  <40.790432, 35.864220, 35.414608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.398640, 35.313873, 35.012482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.239231, 35.651600, 34.869198>,  <40.143585, 35.854237, 34.783230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.239231, 35.651600, 34.869198>,  <40.398640, 35.313873, 35.012482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239231, 35.651600, 34.869198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123843, -0.337446, -0.933163,
		-0.908760, -0.416246, 0.029917,
		-0.398521, 0.844316, -0.358207,
		40.119675, 35.904896, 34.761734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821621, 35.217026, 34.553551>,  <40.398640, 35.313873, 35.012482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.821621, 35.217026, 34.553551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.026218, 35.546471, 34.455547>,  <40.148979, 35.744137, 34.396748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.026218, 35.546471, 34.455547>,  <39.821621, 35.217026, 34.553551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.026218, 35.546471, 34.455547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150563, -0.366618, -0.918108,
		-0.845991, 0.432722, -0.311531,
		0.511498, 0.823615, -0.245004,
		40.179668, 35.793556, 34.382046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.419834, 35.556763, 33.975304>,  <39.821621, 35.217026, 34.553551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.419834, 35.556763, 33.975304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.818203, 35.585743, 33.996830>,  <40.057224, 35.603130, 34.009747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.818203, 35.585743, 33.996830>,  <39.419834, 35.556763, 33.975304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818203, 35.585743, 33.996830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078070, -0.392445, -0.916456,
		-0.045277, 0.916918, -0.396500,
		0.995919, 0.072449, 0.053815,
		40.116978, 35.607479, 34.012974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.795238, 35.801712, 33.263916>,  <39.419834, 35.556763, 33.975304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.795238, 35.801712, 33.263916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.078648, 35.593800, 33.454842>,  <40.248692, 35.469051, 33.569397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.078648, 35.593800, 33.454842>,  <39.795238, 35.801712, 33.263916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.078648, 35.593800, 33.454842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370831, -0.301230, -0.878490,
		0.600400, 0.799433, -0.020679,
		0.708523, -0.519777, 0.477313,
		40.291203, 35.437866, 33.598034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.434124, 35.952099, 32.903824>,  <39.795238, 35.801712, 33.263916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.434124, 35.952099, 32.903824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.446472, 35.593502, 33.080620>,  <40.453880, 35.378345, 33.186699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.446472, 35.593502, 33.080620>,  <40.434124, 35.952099, 32.903824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.446472, 35.593502, 33.080620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408571, -0.392253, -0.824140,
		0.912204, 0.206023, 0.354172,
		0.030867, -0.896489, 0.441990,
		40.455730, 35.324554, 33.213219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.124302, 35.671917, 32.736595>,  <40.434124, 35.952099, 32.903824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.124302, 35.671917, 32.736595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.860546, 35.386021, 32.829842>,  <40.702293, 35.214481, 32.885792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.860546, 35.386021, 32.829842>,  <41.124302, 35.671917, 32.736595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.860546, 35.386021, 32.829842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413269, -0.603636, -0.681786,
		0.628021, -0.353223, 0.693414,
		-0.659392, -0.714743, 0.233120,
		40.662727, 35.171597, 32.899776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.764324, 35.651798, 32.106518>,  <41.124302, 35.671917, 32.736595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.764324, 35.651798, 32.106518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.443939, 35.436954, 32.212330>,  <41.251709, 35.308048, 32.275818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.443939, 35.436954, 32.212330>,  <41.764324, 35.651798, 32.106518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.443939, 35.436954, 32.212330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508647, 0.377383, -0.773861,
		0.315821, -0.754383, -0.575468,
		-0.800959, -0.537112, 0.264529,
		41.203651, 35.275822, 32.291687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.379314, 35.930302, 32.330807>,  <41.764324, 35.651798, 32.106518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.379314, 35.930302, 32.330807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.698124, 35.749527, 32.491058>,  <42.889408, 35.641060, 32.587208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.698124, 35.749527, 32.491058>,  <42.379314, 35.930302, 32.330807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.698124, 35.749527, 32.491058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341490, -0.884362, -0.318257,
		0.498134, 0.116848, -0.859191,
		0.797023, -0.451940, 0.400629,
		42.937229, 35.613945, 32.611248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.712067, 35.367714, 31.861973>,  <42.379314, 35.930302, 32.330807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.712067, 35.367714, 31.861973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.783268, 35.291515, 32.248138>,  <42.825989, 35.245796, 32.479839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.783268, 35.291515, 32.248138>,  <42.712067, 35.367714, 31.861973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.783268, 35.291515, 32.248138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205314, -0.966681, -0.152885,
		0.962372, -0.170998, -0.211186,
		0.178006, -0.190492, 0.965415,
		42.836670, 35.234367, 32.537762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.133274, 34.729107, 31.827103>,  <42.712067, 35.367714, 31.861973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.133274, 34.729107, 31.827103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.008171, 34.769886, 32.204842>,  <42.933109, 34.794353, 32.431484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.008171, 34.769886, 32.204842>,  <43.133274, 34.729107, 31.827103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.008171, 34.769886, 32.204842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290392, -0.956881, 0.007125,
		0.904353, -0.272002, 0.328879,
		-0.312760, 0.101947, 0.944345,
		42.914345, 34.800468, 32.488144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.386299, 34.187000, 32.109154>,  <43.133274, 34.729107, 31.827103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.386299, 34.187000, 32.109154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.070595, 34.287781, 32.333149>,  <42.881172, 34.348251, 32.467548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.070595, 34.287781, 32.333149>,  <43.386299, 34.187000, 32.109154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.070595, 34.287781, 32.333149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242408, -0.965721, 0.092850,
		0.564191, -0.062464, 0.823278,
		-0.789258, 0.251954, 0.559993,
		42.833817, 34.363365, 32.501148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.307060, 33.632912, 32.588394>,  <43.386299, 34.187000, 32.109154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.307060, 33.632912, 32.588394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.949371, 33.810173, 32.613625>,  <42.734756, 33.916531, 32.628761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.949371, 33.810173, 32.613625>,  <43.307060, 33.632912, 32.588394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.949371, 33.810173, 32.613625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436842, -0.894717, 0.093011,
		0.097650, 0.055620, 0.993665,
		-0.894222, 0.443158, 0.063071,
		42.681107, 33.943119, 32.632545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.927502, 33.343613, 33.148224>,  <43.307060, 33.632912, 32.588394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.927502, 33.343613, 33.148224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.621223, 33.492619, 32.938484>,  <42.437458, 33.582024, 32.812641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.621223, 33.492619, 32.938484>,  <42.927502, 33.343613, 33.148224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.621223, 33.492619, 32.938484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478755, -0.874490, 0.077851,
		-0.429536, 0.310644, 0.847938,
		-0.765697, 0.372515, -0.524347,
		42.391514, 33.604374, 32.781181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.330757, 33.126400, 33.513229>,  <42.927502, 33.343613, 33.148224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.330757, 33.126400, 33.513229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.219753, 33.217983, 33.140015>,  <42.153149, 33.272934, 32.916084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.219753, 33.217983, 33.140015>,  <42.330757, 33.126400, 33.513229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.219753, 33.217983, 33.140015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627916, -0.778270, -0.004216,
		-0.727123, 0.584701, 0.359745,
		-0.277514, 0.228955, -0.933041,
		42.136497, 33.286671, 32.860104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.752434, 32.860085, 33.603779>,  <42.330757, 33.126400, 33.513229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.752434, 32.860085, 33.603779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.812119, 32.888813, 33.209301>,  <41.847931, 32.906048, 32.972614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.812119, 32.888813, 33.209301>,  <41.752434, 32.860085, 33.603779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.812119, 32.888813, 33.209301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549238, -0.823330, -0.143060,
		-0.822236, 0.563002, -0.083409,
		0.149216, 0.071818, -0.986193,
		41.856884, 32.910358, 32.913445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.071369, 32.710182, 33.351009>,  <41.752434, 32.860085, 33.603779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.071369, 32.710182, 33.351009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.328861, 32.653721, 33.050159>,  <41.483356, 32.619843, 32.869652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.328861, 32.653721, 33.050159>,  <41.071369, 32.710182, 33.351009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.328861, 32.653721, 33.050159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532790, -0.788175, -0.308083,
		-0.549316, 0.599046, -0.582577,
		0.643728, -0.141156, -0.752123,
		41.521980, 32.611374, 32.824524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.636765, 32.676479, 32.737282>,  <41.071369, 32.710182, 33.351009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.636765, 32.676479, 32.737282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.979706, 32.500076, 32.631107>,  <41.185471, 32.394234, 32.567402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.979706, 32.500076, 32.631107>,  <40.636765, 32.676479, 32.737282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.979706, 32.500076, 32.631107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496163, -0.845311, -0.198172,
		-0.136979, 0.301602, -0.943543,
		0.857356, -0.441005, -0.265434,
		41.236912, 32.367775, 32.551476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.565559, 32.304279, 32.139442>,  <40.636765, 32.676479, 32.737282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.565559, 32.304279, 32.139442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.888527, 32.135242, 32.304119>,  <41.082306, 32.033821, 32.402924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.888527, 32.135242, 32.304119>,  <40.565559, 32.304279, 32.139442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.888527, 32.135242, 32.304119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426569, -0.900217, -0.087449,
		0.407568, -0.105007, -0.907117,
		0.807420, -0.422590, 0.411692,
		41.130753, 32.008465, 32.427628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.715118, 31.741497, 31.720190>,  <40.565559, 32.304279, 32.139442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.715118, 31.741497, 31.720190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.883308, 31.686834, 32.078972>,  <40.984222, 31.654036, 32.294239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.883308, 31.686834, 32.078972>,  <40.715118, 31.741497, 31.720190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.883308, 31.686834, 32.078972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343973, -0.938803, 0.018214,
		0.839572, -0.316186, -0.441752,
		0.420477, -0.136659, 0.896952,
		41.009453, 31.645836, 32.348057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.109211, 31.114222, 31.660566>,  <40.715118, 31.741497, 31.720190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.109211, 31.114222, 31.660566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.078430, 31.165304, 32.056095>,  <41.059963, 31.195953, 32.293411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.078430, 31.165304, 32.056095>,  <41.109211, 31.114222, 31.660566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.078430, 31.165304, 32.056095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213792, -0.970808, 0.108745,
		0.973844, -0.203035, 0.102005,
		-0.076948, 0.127708, 0.988822,
		41.055347, 31.203617, 32.352741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.413647, 30.545277, 31.940926>,  <41.109211, 31.114222, 31.660566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.413647, 30.545277, 31.940926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.173016, 30.689323, 32.226139>,  <41.028637, 30.775751, 32.397266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.173016, 30.689323, 32.226139>,  <41.413647, 30.545277, 31.940926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.173016, 30.689323, 32.226139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310574, -0.927832, 0.206572,
		0.735967, -0.097181, 0.670006,
		-0.601578, 0.360117, 0.713035,
		40.992542, 30.797358, 32.440048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.516972, 30.062441, 32.583855>,  <41.413647, 30.545277, 31.940926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.516972, 30.062441, 32.583855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.168682, 30.255348, 32.622349>,  <40.959709, 30.371094, 32.645447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.168682, 30.255348, 32.622349>,  <41.516972, 30.062441, 32.583855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.168682, 30.255348, 32.622349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470652, -0.873945, 0.121273,
		0.142590, 0.060301, 0.987943,
		-0.870721, 0.482270, 0.096235,
		40.907467, 30.400030, 32.651218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.205357, 29.750137, 33.123108>,  <41.516972, 30.062441, 32.583855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.205357, 29.750137, 33.123108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.887569, 29.914497, 32.944233>,  <40.696896, 30.013113, 32.836910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.887569, 29.914497, 32.944233>,  <41.205357, 29.750137, 33.123108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.887569, 29.914497, 32.944233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553298, -0.793291, 0.254068,
		-0.250350, 0.449276, 0.857599,
		-0.794472, 0.410902, -0.447183,
		40.649227, 30.037767, 32.810078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.708759, 29.672651, 33.633110>,  <41.205357, 29.750137, 33.123108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.708759, 29.672651, 33.633110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.503994, 29.732790, 33.294800>,  <40.381134, 29.768873, 33.091812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.503994, 29.732790, 33.294800>,  <40.708759, 29.672651, 33.633110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.503994, 29.732790, 33.294800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559499, -0.805454, 0.195461,
		-0.651848, 0.573271, 0.496442,
		-0.511913, 0.150348, -0.845778,
		40.350418, 29.777895, 33.041065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.058685, 29.531887, 33.823986>,  <40.708759, 29.672651, 33.633110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.058685, 29.531887, 33.823986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.065029, 29.495749, 33.425671>,  <40.068836, 29.474066, 33.186684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.065029, 29.495749, 33.425671>,  <40.058685, 29.531887, 33.823986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.065029, 29.495749, 33.425671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466059, -0.881771, 0.072579,
		-0.884611, 0.462944, -0.056092,
		0.015860, -0.090346, -0.995784,
		40.069786, 29.468645, 33.126934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.351795, 29.343887, 33.570873>,  <40.058685, 29.531887, 33.823986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.351795, 29.343887, 33.570873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.610939, 29.235170, 33.286224>,  <39.766426, 29.169939, 33.115437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.610939, 29.235170, 33.286224>,  <39.351795, 29.343887, 33.570873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.610939, 29.235170, 33.286224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489342, -0.864431, -0.115339,
		-0.583800, 0.422950, -0.693030,
		0.647860, -0.271793, -0.711622,
		39.805298, 29.153633, 33.072739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974728, 28.961252, 33.203693>,  <39.351795, 29.343887, 33.570873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.974728, 28.961252, 33.203693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.323086, 28.854870, 33.038376>,  <39.532101, 28.791040, 32.939186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.323086, 28.854870, 33.038376>,  <38.974728, 28.961252, 33.203693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.323086, 28.854870, 33.038376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404722, -0.865177, -0.296089,
		-0.278827, 0.425132, -0.861115,
		0.870894, -0.265954, -0.413295,
		39.584354, 28.775084, 32.914387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863407, 28.737055, 32.558846>,  <38.974728, 28.961252, 33.203693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863407, 28.737055, 32.558846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.195911, 28.538961, 32.659840>,  <39.395412, 28.420105, 32.720436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.195911, 28.538961, 32.659840>,  <38.863407, 28.737055, 32.558846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195911, 28.538961, 32.659840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395550, -0.846100, -0.357289,
		0.390568, 0.197130, -0.899220,
		0.831262, -0.495232, 0.252485,
		39.445290, 28.390392, 32.735584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246517, 28.473192, 31.979290>,  <38.863407, 28.737055, 32.558846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.246517, 28.473192, 31.979290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.304893, 28.248934, 32.305328>,  <39.339920, 28.114380, 32.500950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.304893, 28.248934, 32.305328>,  <39.246517, 28.473192, 31.979290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.304893, 28.248934, 32.305328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371683, -0.794628, -0.480019,
		0.916817, -0.232903, -0.324349,
		0.145939, -0.560645, 0.815095,
		39.348675, 28.080740, 32.549858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.622887, 27.785795, 31.877253>,  <39.246517, 28.473192, 31.979290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.622887, 27.785795, 31.877253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.326488, 27.721045, 32.137936>,  <39.148651, 27.682194, 32.294346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.326488, 27.721045, 32.137936>,  <39.622887, 27.785795, 31.877253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.326488, 27.721045, 32.137936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411389, -0.657625, -0.631100,
		0.530739, -0.735748, 0.420703,
		-0.740996, -0.161877, 0.651706,
		39.104191, 27.672482, 32.333447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.694981, 27.117540, 31.573181>,  <39.622887, 27.785795, 31.877253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.694981, 27.117540, 31.573181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.367233, 27.185833, 31.792084>,  <39.170586, 27.226809, 31.923426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.367233, 27.185833, 31.792084>,  <39.694981, 27.117540, 31.573181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.367233, 27.185833, 31.792084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441981, -0.796094, -0.413385,
		0.365088, -0.580591, 0.727754,
		-0.819368, 0.170731, 0.547255,
		39.121422, 27.237053, 31.956261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.984505, 26.624466, 32.004944>,  <39.694981, 27.117540, 31.573181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.984505, 26.624466, 32.004944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.366154, 26.736788, 31.963385>,  <40.595142, 26.804182, 31.938448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.366154, 26.736788, 31.963385>,  <39.984505, 26.624466, 32.004944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.366154, 26.736788, 31.963385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082319, 0.087626, 0.992746,
		0.287875, -0.955756, 0.060491,
		0.954124, 0.280807, -0.103902,
		40.652390, 26.821030, 31.932215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.481720, 26.221075, 32.352642>,  <39.984505, 26.624466, 32.004944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.481720, 26.221075, 32.352642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.626602, 26.590157, 32.299839>,  <40.713531, 26.811605, 32.268158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.626602, 26.590157, 32.299839>,  <40.481720, 26.221075, 32.352642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.626602, 26.590157, 32.299839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209028, 0.057606, 0.976212,
		0.908359, -0.381181, -0.172006,
		0.362204, 0.922704, -0.132004,
		40.735264, 26.866968, 32.260239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.012150, 26.163286, 31.862566>,  <40.481720, 26.221075, 32.352642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.012150, 26.163286, 31.862566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.930771, 26.378607, 32.189697>,  <40.881943, 26.507799, 32.385975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.930771, 26.378607, 32.189697>,  <41.012150, 26.163286, 31.862566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.930771, 26.378607, 32.189697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184326, -0.799303, 0.571961,
		0.961579, 0.267110, 0.063392,
		-0.203446, 0.538300, 0.817828,
		40.869736, 26.540096, 32.435047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.556786, 26.047920, 32.441948>,  <41.012150, 26.163286, 31.862566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.556786, 26.047920, 32.441948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.201954, 26.142757, 32.600376>,  <40.989056, 26.199659, 32.695435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.201954, 26.142757, 32.600376>,  <41.556786, 26.047920, 32.441948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.201954, 26.142757, 32.600376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028236, -0.828543, 0.559213,
		0.460748, 0.507251, 0.728291,
		-0.887082, 0.237092, 0.396072,
		40.935829, 26.213884, 32.719196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.701794, 26.154808, 33.204590>,  <41.556786, 26.047920, 32.441948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.701794, 26.154808, 33.204590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.348415, 26.012222, 33.082966>,  <41.136387, 25.926670, 33.009991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.348415, 26.012222, 33.082966>,  <41.701794, 26.154808, 33.204590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.348415, 26.012222, 33.082966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008551, -0.636593, 0.771152,
		-0.468455, 0.683872, 0.559348,
		-0.883446, -0.356467, -0.304063,
		41.083382, 25.905283, 32.991749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.376427, 26.502434, 32.943745>,  <41.701794, 26.154808, 33.204590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.376427, 26.502434, 32.943745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.530403, 26.348368, 32.608253>,  <42.622787, 26.255928, 32.406960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.530403, 26.348368, 32.608253>,  <42.376427, 26.502434, 32.943745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.530403, 26.348368, 32.608253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633628, 0.771046, -0.063276,
		0.671072, -0.507086, 0.540857,
		0.384939, -0.385165, -0.838731,
		42.645885, 26.232819, 32.356636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.195484, 26.416115, 32.901211>,  <42.376427, 26.502434, 32.943745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.195484, 26.416115, 32.901211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.035763, 26.495817, 32.543247>,  <42.939930, 26.543638, 32.328468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.035763, 26.495817, 32.543247>,  <43.195484, 26.416115, 32.901211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.035763, 26.495817, 32.543247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593155, 0.800434, -0.086440,
		0.699088, -0.565333, -0.437807,
		-0.399303, 0.199258, -0.894904,
		42.915974, 26.555595, 32.274776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.725243, 26.583990, 32.337208>,  <43.195484, 26.416115, 32.901211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.725243, 26.583990, 32.337208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.363281, 26.747589, 32.290096>,  <43.146103, 26.845749, 32.261829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.363281, 26.747589, 32.290096>,  <43.725243, 26.583990, 32.337208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.363281, 26.747589, 32.290096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409191, 0.912142, 0.023664,
		0.117106, -0.026779, -0.992758,
		-0.904902, 0.408999, -0.117775,
		43.091812, 26.870289, 32.254765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.636688, 27.048092, 31.681509>,  <43.725243, 26.583990, 32.337208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.636688, 27.048092, 31.681509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.345284, 27.169970, 31.926924>,  <43.170441, 27.243097, 32.074173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.345284, 27.169970, 31.926924>,  <43.636688, 27.048092, 31.681509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.345284, 27.169970, 31.926924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352279, 0.934768, -0.045929,
		-0.587508, 0.182675, -0.788330,
		-0.728515, 0.304696, 0.613536,
		43.126728, 27.261377, 32.110985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.319946, 27.587469, 31.363388>,  <43.636688, 27.048092, 31.681509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.319946, 27.587469, 31.363388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.260372, 27.651909, 31.753643>,  <43.224628, 27.690573, 31.987795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.260372, 27.651909, 31.753643>,  <43.319946, 27.587469, 31.363388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.260372, 27.651909, 31.753643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346471, 0.932597, -0.101102,
		-0.926162, 0.322972, -0.194711,
		-0.148934, 0.161098, 0.975636,
		43.215691, 27.700239, 32.046333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.094128, 28.304970, 31.389551>,  <43.319946, 27.587469, 31.363388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.094128, 28.304970, 31.389551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.203167, 28.248377, 31.770218>,  <43.268589, 28.214420, 31.998619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.203167, 28.248377, 31.770218>,  <43.094128, 28.304970, 31.389551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.203167, 28.248377, 31.770218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563236, 0.825393, -0.038623,
		-0.780037, 0.546543, 0.304687,
		0.272595, -0.141483, 0.951669,
		43.284946, 28.205933, 32.055717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.863132, 28.984634, 31.807167>,  <43.094128, 28.304970, 31.389551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.863132, 28.984634, 31.807167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.144718, 28.783731, 32.008034>,  <43.313671, 28.663189, 32.128555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.144718, 28.783731, 32.008034>,  <42.863132, 28.984634, 31.807167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.144718, 28.783731, 32.008034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544090, 0.835824, 0.073245,
		-0.456511, 0.221662, 0.861663,
		0.703963, -0.502259, 0.502167,
		43.355907, 28.633053, 32.158684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.867783, 29.325064, 32.478081>,  <42.863132, 28.984634, 31.807167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.867783, 29.325064, 32.478081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.215397, 29.139351, 32.409710>,  <43.423965, 29.027924, 32.368687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.215397, 29.139351, 32.409710>,  <42.867783, 29.325064, 32.478081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.215397, 29.139351, 32.409710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491600, 0.849244, 0.192650,
		0.055719, -0.251450, 0.966265,
		0.869036, -0.464282, -0.170931,
		43.476109, 29.000067, 32.358429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.313423, 29.497492, 33.059166>,  <42.867783, 29.325064, 32.478081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.313423, 29.497492, 33.059166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.571690, 29.381451, 32.776619>,  <43.726650, 29.311827, 32.607090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.571690, 29.381451, 32.776619>,  <43.313423, 29.497492, 33.059166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.571690, 29.381451, 32.776619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491486, 0.865835, 0.093653,
		0.584432, -0.407640, 0.701619,
		0.645663, -0.290102, -0.706371,
		43.765388, 29.294420, 32.564709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.940159, 29.653461, 33.355591>,  <43.313423, 29.497492, 33.059166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.940159, 29.653461, 33.355591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.035419, 29.632532, 32.967663>,  <44.092575, 29.619974, 32.734905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.035419, 29.632532, 32.967663>,  <43.940159, 29.653461, 33.355591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.035419, 29.632532, 32.967663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546521, 0.832672, 0.089283,
		0.802868, -0.551289, 0.226899,
		0.238153, -0.052322, -0.969817,
		44.106865, 29.616835, 32.676716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.731594, 29.751566, 33.271465>,  <43.940159, 29.653461, 33.355591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.731594, 29.751566, 33.271465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.572662, 29.856836, 32.919815>,  <44.477303, 29.919998, 32.708824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.572662, 29.856836, 32.919815>,  <44.731594, 29.751566, 33.271465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.572662, 29.856836, 32.919815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567278, 0.823467, -0.009872,
		0.721334, -0.502633, -0.476484,
		-0.397331, 0.263178, -0.879127,
		44.453465, 29.935789, 32.656078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.278549, 30.196707, 32.942909>,  <44.731594, 29.751566, 33.271465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.278549, 30.196707, 32.942909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.951508, 30.264097, 32.722675>,  <44.755283, 30.304531, 32.590534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.951508, 30.264097, 32.722675>,  <45.278549, 30.196707, 32.942909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.951508, 30.264097, 32.722675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260644, 0.960945, -0.093002,
		0.513416, -0.219546, -0.829580,
		-0.817599, 0.168476, -0.550588,
		44.706226, 30.314640, 32.557499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.509502, 30.661945, 32.567513>,  <45.278549, 30.196707, 32.942909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.509502, 30.661945, 32.567513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.114677, 30.689137, 32.509430>,  <44.877781, 30.705452, 32.474579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.114677, 30.689137, 32.509430>,  <45.509502, 30.661945, 32.567513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.114677, 30.689137, 32.509430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077401, 0.995177, -0.060265,
		0.140408, -0.070724, -0.987565,
		-0.987064, 0.067977, -0.145205,
		44.818558, 30.709530, 32.465870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.377129, 31.007685, 31.974909>,  <45.509502, 30.661945, 32.567513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.377129, 31.007685, 31.974909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.068573, 31.074610, 32.220501>,  <44.883442, 31.114765, 32.367855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.068573, 31.074610, 32.220501>,  <45.377129, 31.007685, 31.974909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.068573, 31.074610, 32.220501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075571, 0.982076, -0.172673,
		-0.631867, -0.086798, -0.770202,
		-0.771384, 0.167311, 0.613981,
		44.837158, 31.124804, 32.404694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.862740, 31.545683, 31.686354>,  <45.377129, 31.007685, 31.974909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.862740, 31.545683, 31.686354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.765057, 31.550303, 32.074215>,  <44.706448, 31.553074, 32.306931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.765057, 31.550303, 32.074215>,  <44.862740, 31.545683, 31.686354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.765057, 31.550303, 32.074215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134163, 0.990715, 0.021990,
		-0.960398, 0.135462, -0.243487,
		-0.244205, 0.011548, 0.969655,
		44.691795, 31.553766, 32.365112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.559475, 32.204502, 31.771664>,  <44.862740, 31.545683, 31.686354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.559475, 32.204502, 31.771664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.626186, 32.082802, 32.146816>,  <44.666214, 32.009781, 32.371906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.626186, 32.082802, 32.146816>,  <44.559475, 32.204502, 31.771664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.626186, 32.082802, 32.146816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008538, 0.951612, 0.307183,
		-0.985957, -0.043225, 0.161307,
		0.166780, -0.304247, 0.937880,
		44.676220, 31.991528, 32.428181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.008957, 32.386242, 32.269279>,  <44.559475, 32.204502, 31.771664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.008957, 32.386242, 32.269279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.356140, 32.354317, 32.465355>,  <44.564449, 32.335163, 32.583000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.356140, 32.354317, 32.465355>,  <44.008957, 32.386242, 32.269279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.356140, 32.354317, 32.465355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074842, 0.954712, 0.287966,
		-0.490969, -0.286629, 0.822675,
		0.867956, -0.079812, 0.490185,
		44.616528, 32.330372, 32.612411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.874481, 32.848129, 32.792988>,  <44.008957, 32.386242, 32.269279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.874481, 32.848129, 32.792988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.267563, 32.775059, 32.805088>,  <44.503414, 32.731216, 32.812347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.267563, 32.775059, 32.805088>,  <43.874481, 32.848129, 32.792988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.267563, 32.775059, 32.805088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164332, 0.935723, 0.312118,
		-0.085321, -0.301750, 0.949562,
		0.982708, -0.182673, 0.030250,
		44.562374, 32.720257, 32.814163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.081871, 33.277035, 33.251301>,  <43.874481, 32.848129, 32.792988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.081871, 33.277035, 33.251301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.448315, 33.198170, 33.111660>,  <44.668182, 33.150852, 33.027878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.448315, 33.198170, 33.111660>,  <44.081871, 33.277035, 33.251301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.448315, 33.198170, 33.111660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311400, 0.898356, 0.309817,
		0.252530, -0.392536, 0.884389,
		0.916111, -0.197161, -0.349097,
		44.723148, 33.139023, 33.006931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.540695, 33.246723, 33.822266>,  <44.081871, 33.277035, 33.251301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.540695, 33.246723, 33.822266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.743977, 33.331799, 33.488441>,  <44.865944, 33.382843, 33.288147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.743977, 33.331799, 33.488441>,  <44.540695, 33.246723, 33.822266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.743977, 33.331799, 33.488441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356457, 0.830189, 0.428632,
		0.784009, -0.515317, 0.346090,
		0.508202, 0.212685, -0.834564,
		44.896439, 33.395603, 33.238071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.286652, 33.481121, 34.029785>,  <44.540695, 33.246723, 33.822266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.286652, 33.481121, 34.029785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.201435, 33.635521, 33.670761>,  <45.150307, 33.728161, 33.455345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.201435, 33.635521, 33.670761>,  <45.286652, 33.481121, 34.029785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.201435, 33.635521, 33.670761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313706, 0.897035, 0.311315,
		0.925313, -0.215249, -0.312193,
		-0.213038, 0.386000, -0.897563,
		45.137524, 33.751320, 33.401493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.847618, 33.785381, 33.793949>,  <45.286652, 33.481121, 34.029785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.847618, 33.785381, 33.793949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.566795, 33.975986, 33.582272>,  <45.398300, 34.090351, 33.455265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.566795, 33.975986, 33.582272>,  <45.847618, 33.785381, 33.793949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.566795, 33.975986, 33.582272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292464, 0.870499, 0.395849,
		0.649293, 0.123138, -0.750504,
		-0.702057, 0.476517, -0.529195,
		45.356178, 34.118942, 33.423512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.454838, 33.374710, 33.455429>,  <45.847618, 33.785381, 33.793949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.454838, 33.374710, 33.455429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.158344, 33.131218, 33.568588>,  <45.980450, 32.985123, 33.636482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.158344, 33.131218, 33.568588>,  <46.454838, 33.374710, 33.455429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.158344, 33.131218, 33.568588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426024, -0.752301, -0.502540,
		0.518731, -0.251978, 0.816961,
		-0.741230, -0.608728, 0.282894,
		45.935974, 32.948601, 33.653458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.635052, 32.883083, 33.967110>,  <46.454838, 33.374710, 33.455429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.635052, 32.883083, 33.967110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.718887, 33.116184, 34.281174>,  <46.769188, 33.256042, 34.469612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.718887, 33.116184, 34.281174>,  <46.635052, 32.883083, 33.967110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.718887, 33.116184, 34.281174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976739, -0.161983, -0.140509,
		0.045301, 0.796345, -0.603144,
		0.209593, 0.582749, 0.785159,
		46.781765, 33.291008, 34.516720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.155289, 33.573902, 33.871613>,  <46.635052, 32.883083, 33.967110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.155289, 33.573902, 33.871613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.154991, 33.397335, 34.230534>,  <47.154812, 33.291397, 34.445885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.154991, 33.397335, 34.230534>,  <47.155289, 33.573902, 33.871613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.154991, 33.397335, 34.230534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950677, -0.278640, -0.136284,
		0.310182, 0.852943, 0.419851,
		-0.000745, -0.441416, 0.897302,
		47.154766, 33.264912, 34.499725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.554543, 33.957500, 34.323925>,  <47.155289, 33.573902, 33.871613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.554543, 33.957500, 34.323925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.562115, 33.564831, 34.399780>,  <47.566658, 33.329231, 34.445293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.562115, 33.564831, 34.399780>,  <47.554543, 33.957500, 34.323925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.562115, 33.564831, 34.399780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999768, 0.020543, 0.006528,
		-0.010304, 0.189471, 0.981832,
		0.018933, -0.981672, 0.189638,
		47.567795, 33.270329, 34.456673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.535923, 34.496346, 34.916073>,  <47.554543, 33.957500, 34.323925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.535923, 34.496346, 34.916073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.632885, 34.875877, 34.835125>,  <47.691063, 35.103596, 34.786556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.632885, 34.875877, 34.835125>,  <47.535923, 34.496346, 34.916073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.632885, 34.875877, 34.835125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653902, 0.313881, 0.688398,
		0.716694, -0.034545, 0.696531,
		0.242408, 0.948834, -0.202368,
		47.705608, 35.160526, 34.774414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.414677, 42.088303, 43.187187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.317810, 41.832806, 43.479313>,  <34.259689, 41.679508, 43.654587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.317810, 41.832806, 43.479313>,  <34.414677, 42.088303, 43.187187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.317810, 41.832806, 43.479313> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446278, -0.595033, -0.668410,
		0.861505, -0.487789, -0.140961,
		-0.242166, -0.638746, 0.730314,
		34.245159, 41.641182, 43.698406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683884, 41.443386, 42.947029>,  <34.414677, 42.088303, 43.187187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683884, 41.443386, 42.947029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.418251, 41.348370, 43.230598>,  <34.258869, 41.291359, 43.400738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.418251, 41.348370, 43.230598>,  <34.683884, 41.443386, 42.947029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.418251, 41.348370, 43.230598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385413, -0.703731, -0.596842,
		0.640664, -0.669579, 0.375784,
		-0.664083, -0.237544, 0.708919,
		34.219025, 41.277107, 43.443275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766293, 40.768909, 43.045174>,  <34.683884, 41.443386, 42.947029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766293, 40.768909, 43.045174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.401077, 40.844276, 43.189869>,  <34.181946, 40.889496, 43.276688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.401077, 40.844276, 43.189869>,  <34.766293, 40.768909, 43.045174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401077, 40.844276, 43.189869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358372, -0.794076, -0.490930,
		0.194745, -0.577876, 0.792549,
		-0.913041, 0.188421, 0.361737,
		34.127167, 40.900803, 43.298389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468784, 40.156292, 43.098625>,  <34.766293, 40.768909, 43.045174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468784, 40.156292, 43.098625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.155457, 40.403442, 43.125904>,  <33.967461, 40.551731, 43.142273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.155457, 40.403442, 43.125904>,  <34.468784, 40.156292, 43.098625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.155457, 40.403442, 43.125904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571187, -0.672123, -0.471165,
		-0.245281, -0.408026, 0.879405,
		-0.783316, 0.617872, 0.068200,
		33.920464, 40.588802, 43.146362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.052940, 39.625660, 43.303268>,  <34.468784, 40.156292, 43.098625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.052940, 39.625660, 43.303268> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.872082, 39.936848, 43.128761>,  <33.763569, 40.123562, 43.024059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.872082, 39.936848, 43.128761>,  <34.052940, 39.625660, 43.303268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872082, 39.936848, 43.128761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438539, -0.619811, -0.650783,
		-0.776692, -0.102928, 0.621414,
		-0.452142, 0.777972, -0.436264,
		33.736439, 40.170238, 42.997883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.284443, 39.478764, 43.123333>,  <34.052940, 39.625660, 43.303268>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.284443, 39.478764, 43.123333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.431717, 39.738548, 42.857208>,  <33.520081, 39.894421, 42.697533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.431717, 39.738548, 42.857208>,  <33.284443, 39.478764, 43.123333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.431717, 39.738548, 42.857208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441295, -0.507766, -0.739887,
		-0.818351, 0.566013, 0.099653,
		0.368185, 0.649464, -0.665309,
		33.542171, 39.933388, 42.657616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.015461, 39.240837, 42.439629>,  <33.284443, 39.478764, 43.123333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.015461, 39.240837, 42.439629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.255074, 39.523403, 42.288822>,  <33.398842, 39.692944, 42.198338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.255074, 39.523403, 42.288822>,  <33.015461, 39.240837, 42.439629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.255074, 39.523403, 42.288822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035604, -0.493872, -0.868806,
		-0.799933, 0.507020, -0.320996,
		0.599032, 0.706415, -0.377013,
		33.434784, 39.735329, 42.175720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.793732, 39.342571, 41.772297>,  <33.015461, 39.240837, 42.439629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.793732, 39.342571, 41.772297> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.159145, 39.505127, 41.779182>,  <33.378395, 39.602661, 41.783314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.159145, 39.505127, 41.779182>,  <32.793732, 39.342571, 41.772297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.159145, 39.505127, 41.779182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212287, -0.440258, -0.872415,
		-0.346960, 0.800639, -0.488463,
		0.913539, 0.406387, 0.017213,
		33.433208, 39.627045, 41.784348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.741550, 39.496128, 41.149796>,  <32.793732, 39.342571, 41.772297>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.741550, 39.496128, 41.149796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.130154, 39.517467, 41.242168>,  <33.363316, 39.530270, 41.297592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.130154, 39.517467, 41.242168>,  <32.741550, 39.496128, 41.149796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.130154, 39.517467, 41.242168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236848, -0.181524, -0.954438,
		-0.008999, 0.981938, -0.188987,
		0.971505, 0.053350, 0.230937,
		33.421604, 39.533474, 41.311451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.082962, 39.803150, 40.600758>,  <32.741550, 39.496128, 41.149796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.082962, 39.803150, 40.600758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.373631, 39.609085, 40.795307>,  <33.548031, 39.492645, 40.912037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.373631, 39.609085, 40.795307>,  <33.082962, 39.803150, 40.600758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.373631, 39.609085, 40.795307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367910, -0.323065, -0.871935,
		0.580160, 0.812556, -0.056267,
		0.726675, -0.485161, 0.486377,
		33.591633, 39.463535, 40.941219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669659, 39.969906, 40.302486>,  <33.082962, 39.803150, 40.600758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669659, 39.969906, 40.302486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.717812, 39.614899, 40.480396>,  <33.746704, 39.401894, 40.587143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.717812, 39.614899, 40.480396>,  <33.669659, 39.969906, 40.302486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.717812, 39.614899, 40.480396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273170, -0.401124, -0.874344,
		0.954404, 0.226754, 0.194155,
		0.120381, -0.887515, 0.444776,
		33.753925, 39.348644, 40.613831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349548, 39.820663, 40.170105>,  <33.669659, 39.969906, 40.302486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349548, 39.820663, 40.170105> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.167038, 39.468933, 40.224655>,  <34.057529, 39.257896, 40.257385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.167038, 39.468933, 40.224655>,  <34.349548, 39.820663, 40.170105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.167038, 39.468933, 40.224655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477627, -0.371333, -0.796231,
		0.750786, -0.298166, 0.589421,
		-0.456280, -0.879323, 0.136379,
		34.030155, 39.205135, 40.265568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.868233, 39.429153, 40.195312>,  <34.349548, 39.820663, 40.170105>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.868233, 39.429153, 40.195312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.557453, 39.201599, 40.087448>,  <34.370987, 39.065067, 40.022728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.557453, 39.201599, 40.087448>,  <34.868233, 39.429153, 40.195312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.557453, 39.201599, 40.087448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551623, -0.408718, -0.727091,
		0.303413, -0.713667, 0.631364,
		-0.776950, -0.568884, -0.269665,
		34.324368, 39.030933, 40.006550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143997, 38.762054, 40.204559>,  <34.868233, 39.429153, 40.195312>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.143997, 38.762054, 40.204559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.807102, 38.753887, 39.989071>,  <34.604965, 38.748985, 39.859779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.807102, 38.753887, 39.989071>,  <35.143997, 38.762054, 40.204559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807102, 38.753887, 39.989071> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465285, -0.532264, -0.707251,
		-0.272297, -0.846332, 0.457795,
		-0.842237, -0.020423, -0.538720,
		34.554432, 38.747761, 39.827454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123497, 38.114517, 39.962612>,  <35.143997, 38.762054, 40.204559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123497, 38.114517, 39.962612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.867149, 38.305290, 39.722004>,  <34.713341, 38.419754, 39.577637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.867149, 38.305290, 39.722004>,  <35.123497, 38.114517, 39.962612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867149, 38.305290, 39.722004> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223190, -0.633973, -0.740448,
		-0.734492, -0.608781, 0.299845,
		-0.640865, 0.476931, -0.601522,
		34.674889, 38.448368, 39.541546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712978, 37.686592, 39.662003>,  <35.123497, 38.114517, 39.962612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712978, 37.686592, 39.662003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.681122, 37.973274, 39.384876>,  <34.662010, 38.145283, 39.218601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.681122, 37.973274, 39.384876>,  <34.712978, 37.686592, 39.662003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.681122, 37.973274, 39.384876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235876, -0.661733, -0.711668,
		-0.968515, -0.220093, -0.116356,
		-0.079637, 0.716707, -0.692813,
		34.657230, 38.188286, 39.177032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262482, 37.480652, 39.215076>,  <34.712978, 37.686592, 39.662003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.262482, 37.480652, 39.215076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.480148, 37.747490, 39.011562>,  <34.610748, 37.907593, 38.889454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.480148, 37.747490, 39.011562>,  <34.262482, 37.480652, 39.215076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480148, 37.747490, 39.011562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169513, -0.681353, -0.712056,
		-0.821671, 0.301234, -0.483854,
		0.544171, 0.667095, -0.508785,
		34.643398, 37.947620, 38.858929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058720, 37.417847, 38.477203>,  <34.262482, 37.480652, 39.215076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058720, 37.417847, 38.477203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.417408, 37.594219, 38.492516>,  <34.632622, 37.700043, 38.501701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.417408, 37.594219, 38.492516>,  <34.058720, 37.417847, 38.477203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417408, 37.594219, 38.492516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296479, -0.534220, -0.791650,
		-0.328613, 0.721241, -0.609775,
		0.896724, 0.440931, 0.038281,
		34.686424, 37.726498, 38.504002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255623, 37.459850, 37.794586>,  <34.058720, 37.417847, 38.477203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.255623, 37.459850, 37.794586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.612476, 37.513664, 37.967098>,  <34.826588, 37.545952, 38.070606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.612476, 37.513664, 37.967098>,  <34.255623, 37.459850, 37.794586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.612476, 37.513664, 37.967098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445137, -0.424862, -0.788254,
		0.077188, 0.895205, -0.438919,
		0.892129, 0.134535, 0.431284,
		34.880116, 37.554024, 38.096485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766182, 37.798344, 37.287975>,  <34.255623, 37.459850, 37.794586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766182, 37.798344, 37.287975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.964245, 37.595413, 37.570095>,  <35.083084, 37.473656, 37.739365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.964245, 37.595413, 37.570095>,  <34.766182, 37.798344, 37.287975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.964245, 37.595413, 37.570095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561762, -0.432314, -0.705356,
		0.662753, 0.745471, 0.070931,
		0.495158, -0.507324, 0.705295,
		35.112793, 37.443214, 37.781685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406498, 37.696209, 37.050285>,  <34.766182, 37.798344, 37.287975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406498, 37.696209, 37.050285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.437229, 37.425846, 37.343472>,  <35.455669, 37.263626, 37.519382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.437229, 37.425846, 37.343472>,  <35.406498, 37.696209, 37.050285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437229, 37.425846, 37.343472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689817, -0.494758, -0.528552,
		0.719896, 0.546222, 0.428243,
		0.076830, -0.675912, 0.732967,
		35.460278, 37.223072, 37.563362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038429, 37.354637, 36.891682>,  <35.406498, 37.696209, 37.050285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038429, 37.354637, 36.891682> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.919304, 37.097321, 37.173813>,  <35.847828, 36.942932, 37.343090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.919304, 37.097321, 37.173813>,  <36.038429, 37.354637, 36.891682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.919304, 37.097321, 37.173813> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597996, -0.701639, -0.387431,
		0.744115, 0.306401, 0.593642,
		-0.297813, -0.643289, 0.705327,
		35.829960, 36.904335, 37.385410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325912, 36.789970, 36.397942>,  <36.038429, 37.354637, 36.891682>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325912, 36.789970, 36.397942> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.612709, 36.954491, 36.172817>,  <36.784786, 37.053204, 36.037743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.612709, 36.954491, 36.172817>,  <36.325912, 36.789970, 36.397942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612709, 36.954491, 36.172817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221254, 0.631359, 0.743258,
		0.661042, -0.657431, 0.361674,
		0.716987, 0.411303, -0.562814,
		36.827805, 37.077881, 36.003975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.905617, 36.724125, 36.769310>,  <36.325912, 36.789970, 36.397942>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.905617, 36.724125, 36.769310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.949364, 37.032261, 36.518036>,  <36.975613, 37.217140, 36.367271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.949364, 37.032261, 36.518036>,  <36.905617, 36.724125, 36.769310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.949364, 37.032261, 36.518036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257253, 0.588514, 0.766467,
		0.960136, -0.245427, -0.133810,
		0.109363, 0.770336, -0.628190,
		36.982174, 37.263363, 36.329578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404972, 37.130478, 37.071411>,  <36.905617, 36.724125, 36.769310>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404972, 37.130478, 37.071411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.263680, 37.389725, 36.801548>,  <37.178905, 37.545273, 36.639629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.263680, 37.389725, 36.801548>,  <37.404972, 37.130478, 37.071411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.263680, 37.389725, 36.801548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236257, 0.759573, 0.605996,
		0.905212, 0.054664, -0.421429,
		-0.353232, 0.648121, -0.674660,
		37.157711, 37.584160, 36.599152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.884785, 37.749641, 37.003338>,  <37.404972, 37.130478, 37.071411>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.884785, 37.749641, 37.003338> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.541763, 37.865135, 36.833050>,  <37.335953, 37.934433, 36.730877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.541763, 37.865135, 36.833050>,  <37.884785, 37.749641, 37.003338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541763, 37.865135, 36.833050> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032722, 0.856551, 0.515023,
		0.513359, 0.427727, -0.743983,
		-0.857550, 0.288736, -0.425722,
		37.284500, 37.951756, 36.705334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010540, 38.370361, 36.769123>,  <37.884785, 37.749641, 37.003338>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.010540, 38.370361, 36.769123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.618538, 38.329964, 36.837704>,  <37.383339, 38.305725, 36.878853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.618538, 38.329964, 36.837704>,  <38.010540, 38.370361, 36.769123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.618538, 38.329964, 36.837704> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016141, 0.818445, 0.574358,
		-0.198325, 0.565640, -0.800449,
		-0.980003, -0.100990, 0.171448,
		37.324535, 38.299667, 36.889137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794586, 38.975060, 36.701920>,  <38.010540, 38.370361, 36.769123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794586, 38.975060, 36.701920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.489506, 38.806454, 36.898129>,  <37.306458, 38.705288, 37.015854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.489506, 38.806454, 36.898129>,  <37.794586, 38.975060, 36.701920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.489506, 38.806454, 36.898129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011997, 0.749085, 0.662365,
		-0.646642, 0.511070, -0.566270,
		-0.762699, -0.421519, 0.490522,
		37.260696, 38.679996, 37.045284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271912, 39.493565, 36.778038>,  <37.794586, 38.975060, 36.701920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.271912, 39.493565, 36.778038> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.181183, 39.218567, 37.053978>,  <37.126747, 39.053566, 37.219543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.181183, 39.218567, 37.053978>,  <37.271912, 39.493565, 36.778038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181183, 39.218567, 37.053978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156650, 0.724845, 0.670865,
		-0.961257, 0.044099, -0.272105,
		-0.226818, -0.687498, 0.689854,
		37.113136, 39.012318, 37.260933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664513, 39.698414, 36.966560>,  <37.271912, 39.493565, 36.778038>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.664513, 39.698414, 36.966560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.799698, 39.464493, 37.261528>,  <36.880810, 39.324139, 37.438507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.799698, 39.464493, 37.261528>,  <36.664513, 39.698414, 36.966560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.799698, 39.464493, 37.261528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286406, 0.682458, 0.672475,
		-0.896523, -0.438474, 0.063155,
		0.337963, -0.584801, 0.737420,
		36.901085, 39.289051, 37.482754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062027, 39.625904, 37.552048>,  <36.664513, 39.698414, 36.966560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062027, 39.625904, 37.552048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.415771, 39.538052, 37.716808>,  <36.628017, 39.485340, 37.815666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.415771, 39.538052, 37.716808>,  <36.062027, 39.625904, 37.552048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.415771, 39.538052, 37.716808> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178524, 0.656185, 0.733178,
		-0.431309, -0.721931, 0.541099,
		0.884365, -0.219627, 0.411901,
		36.681080, 39.472164, 37.840378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861912, 39.523754, 38.208797>,  <36.062027, 39.625904, 37.552048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861912, 39.523754, 38.208797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.255108, 39.595112, 38.191330>,  <36.491024, 39.637928, 38.180847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.255108, 39.595112, 38.191330>,  <35.861912, 39.523754, 38.208797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.255108, 39.595112, 38.191330> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054259, 0.509252, 0.858905,
		0.175463, -0.841925, 0.510269,
		0.982990, 0.178393, -0.043673,
		36.550003, 39.648628, 38.178226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061348, 39.239197, 38.745144>,  <35.861912, 39.523754, 38.208797>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.061348, 39.239197, 38.745144> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.352753, 39.501972, 38.667473>,  <36.527596, 39.659637, 38.620872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.352753, 39.501972, 38.667473>,  <36.061348, 39.239197, 38.745144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352753, 39.501972, 38.667473> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020198, 0.262729, 0.964658,
		0.684736, -0.706686, 0.178132,
		0.728511, 0.656938, -0.194173,
		36.571304, 39.699055, 38.609222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.427177, 39.232399, 39.317017>,  <36.061348, 39.239197, 38.745144>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.427177, 39.232399, 39.317017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.530476, 39.589291, 39.168835>,  <36.592453, 39.803425, 39.079926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.530476, 39.589291, 39.168835>,  <36.427177, 39.232399, 39.317017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.530476, 39.589291, 39.168835> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069065, 0.365431, 0.928273,
		0.963608, -0.265307, 0.032749,
		0.258245, 0.892229, -0.370455,
		36.607948, 39.856960, 39.057697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877445, 39.654202, 39.868240>,  <36.427177, 39.232399, 39.317017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.877445, 39.654202, 39.868240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.793205, 39.961376, 39.626274>,  <36.742661, 40.145679, 39.481094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.793205, 39.961376, 39.626274>,  <36.877445, 39.654202, 39.868240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.793205, 39.961376, 39.626274> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144450, 0.587555, 0.796187,
		0.966841, 0.255056, -0.012810,
		-0.210599, 0.767936, -0.604916,
		36.730026, 40.191757, 39.444801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210979, 40.212173, 40.175705>,  <36.877445, 39.654202, 39.868240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210979, 40.212173, 40.175705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.932976, 40.366104, 39.932766>,  <36.766174, 40.458462, 39.787003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.932976, 40.366104, 39.932766>,  <37.210979, 40.212173, 40.175705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932976, 40.366104, 39.932766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211418, 0.697983, 0.684195,
		0.687217, 0.603924, -0.403744,
		-0.695008, 0.384831, -0.607346,
		36.724472, 40.481552, 39.750561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404541, 40.918629, 40.150810>,  <37.210979, 40.212173, 40.175705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404541, 40.918629, 40.150810> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.025009, 40.861420, 40.038193>,  <36.797291, 40.827095, 39.970623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.025009, 40.861420, 40.038193>,  <37.404541, 40.918629, 40.150810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.025009, 40.861420, 40.038193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290524, 0.744769, 0.600762,
		0.123764, 0.651817, -0.748210,
		-0.948830, -0.143020, -0.281544,
		36.740360, 40.818512, 39.953732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204388, 41.633980, 40.022263>,  <37.404541, 40.918629, 40.150810>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.204388, 41.633980, 40.022263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.893188, 41.388950, 40.078075>,  <36.706470, 41.241932, 40.111565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.893188, 41.388950, 40.078075>,  <37.204388, 41.633980, 40.022263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.893188, 41.388950, 40.078075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352180, 0.609144, 0.710572,
		-0.520276, 0.503682, -0.689650,
		-0.777999, -0.612575, 0.139537,
		36.659790, 41.205177, 40.119938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.581028, 42.096748, 40.076694>,  <37.204388, 41.633980, 40.022263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.581028, 42.096748, 40.076694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.545353, 41.750439, 40.273666>,  <36.523949, 41.542652, 40.391850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.545353, 41.750439, 40.273666>,  <36.581028, 42.096748, 40.076694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545353, 41.750439, 40.273666> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139271, 0.500383, 0.854529,
		-0.986230, 0.007632, -0.165204,
		-0.089187, -0.865771, 0.492430,
		36.518597, 41.490707, 40.421394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228947, 42.305859, 40.518402>,  <36.581028, 42.096748, 40.076694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228947, 42.305859, 40.518402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.256317, 41.941578, 40.681347>,  <36.272739, 41.723011, 40.779114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.256317, 41.941578, 40.681347>,  <36.228947, 42.305859, 40.518402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256317, 41.941578, 40.681347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110869, 0.398847, 0.910291,
		-0.991477, -0.107448, -0.073678,
		0.068422, -0.910701, 0.407360,
		36.276844, 41.668369, 40.803555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.596863, 42.123238, 41.005932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.907131, 41.902489, 41.128426>,  <36.093292, 41.770039, 41.201920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.907131, 41.902489, 41.128426>,  <35.596863, 42.123238, 41.005932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907131, 41.902489, 41.128426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138736, 0.324241, 0.935746,
		-0.615705, -0.768313, 0.174939,
		0.775668, -0.551873, 0.306230,
		36.139832, 41.736927, 41.220295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324547, 41.780640, 41.609848>,  <35.596863, 42.123238, 41.005932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324547, 41.780640, 41.609848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.723644, 41.767090, 41.633022>,  <35.963104, 41.758961, 41.646927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.723644, 41.767090, 41.633022>,  <35.324547, 41.780640, 41.609848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723644, 41.767090, 41.633022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046624, 0.271043, 0.961437,
		-0.048270, -0.961971, 0.268853,
		0.997745, -0.033874, 0.057934,
		36.022968, 41.756927, 41.650402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518040, 41.592548, 42.296860>,  <35.324547, 41.780640, 41.609848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.518040, 41.592548, 42.296860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.857071, 41.761982, 42.168991>,  <36.060490, 41.863640, 42.092270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.857071, 41.761982, 42.168991>,  <35.518040, 41.592548, 42.296860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.857071, 41.761982, 42.168991> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081855, 0.490823, 0.867406,
		0.524322, -0.761360, 0.381338,
		0.847577, 0.423585, -0.319670,
		36.111343, 41.889057, 42.073090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904938, 41.492168, 42.776939>,  <35.518040, 41.592548, 42.296860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904938, 41.492168, 42.776939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.097324, 41.798267, 42.605793>,  <36.212757, 41.981926, 42.503105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.097324, 41.798267, 42.605793>,  <35.904938, 41.492168, 42.776939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.097324, 41.798267, 42.605793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257303, 0.343326, 0.903284,
		0.838131, -0.544544, -0.031770,
		0.480970, 0.765245, -0.427865,
		36.241615, 42.027840, 42.477432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359371, 41.631401, 43.244061>,  <35.904938, 41.492168, 42.776939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.359371, 41.631401, 43.244061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.392311, 41.961086, 43.019958>,  <36.412075, 42.158897, 42.885498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.392311, 41.961086, 43.019958>,  <36.359371, 41.631401, 43.244061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.392311, 41.961086, 43.019958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314102, 0.512051, 0.799465,
		0.945811, -0.241817, -0.216718,
		0.082353, 0.824214, -0.560258,
		36.417019, 42.208351, 42.851879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892189, 41.928101, 43.566612>,  <36.359371, 41.631401, 43.244061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.892189, 41.928101, 43.566612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.710567, 42.220108, 43.362297>,  <36.601593, 42.395313, 43.239708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.710567, 42.220108, 43.362297>,  <36.892189, 41.928101, 43.566612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710567, 42.220108, 43.362297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211816, 0.645299, 0.733978,
		0.865430, 0.225072, -0.447631,
		-0.454054, 0.730022, -0.510787,
		36.574352, 42.439114, 43.209061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393661, 42.577572, 43.497086>,  <36.892189, 41.928101, 43.566612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393661, 42.577572, 43.497086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.026573, 42.723507, 43.434254>,  <36.806320, 42.811069, 43.396557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.026573, 42.723507, 43.434254>,  <37.393661, 42.577572, 43.497086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026573, 42.723507, 43.434254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151556, 0.687140, 0.710542,
		0.367168, 0.628276, -0.685898,
		-0.917724, 0.364840, -0.157077,
		36.751255, 42.832958, 43.387131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401798, 43.362499, 43.313221>,  <37.393661, 42.577572, 43.497086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401798, 43.362499, 43.313221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.025352, 43.277824, 43.418667>,  <36.799484, 43.227020, 43.481934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.025352, 43.277824, 43.418667>,  <37.401798, 43.362499, 43.313221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.025352, 43.277824, 43.418667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029885, 0.724583, 0.688539,
		-0.336767, 0.655872, -0.675589,
		-0.941114, -0.211687, 0.263616,
		36.743019, 43.214317, 43.497753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993256, 43.890591, 43.138020>,  <37.401798, 43.362499, 43.313221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993256, 43.890591, 43.138020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.840473, 43.681717, 43.443024>,  <36.748802, 43.556393, 43.626026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.840473, 43.681717, 43.443024>,  <36.993256, 43.890591, 43.138020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.840473, 43.681717, 43.443024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167344, 0.772354, 0.612753,
		-0.908902, 0.361649, -0.207623,
		-0.381960, -0.522188, 0.762514,
		36.725883, 43.525063, 43.671776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732193, 44.461220, 43.550758>,  <36.993256, 43.890591, 43.138020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.732193, 44.461220, 43.550758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.751060, 44.143890, 43.793545>,  <36.762383, 43.953491, 43.939217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.751060, 44.143890, 43.793545>,  <36.732193, 44.461220, 43.550758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751060, 44.143890, 43.793545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223060, 0.600663, 0.767756,
		-0.973663, 0.099174, 0.205294,
		0.047171, -0.793328, 0.606964,
		36.765213, 43.905891, 43.975636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.557377, 44.790443, 44.204346>,  <36.732193, 44.461220, 43.550758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.557377, 44.790443, 44.204346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.686584, 44.434784, 44.334003>,  <36.764111, 44.221390, 44.411797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.686584, 44.434784, 44.334003>,  <36.557377, 44.790443, 44.204346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.686584, 44.434784, 44.334003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240648, 0.408418, 0.880502,
		-0.915284, -0.206417, 0.345900,
		0.323022, -0.889149, 0.324145,
		36.783493, 44.168037, 44.431248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452885, 44.737030, 44.975269>,  <36.557377, 44.790443, 44.204346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452885, 44.737030, 44.975269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.739628, 44.474518, 44.881111>,  <36.911674, 44.317013, 44.824615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.739628, 44.474518, 44.881111>,  <36.452885, 44.737030, 44.975269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.739628, 44.474518, 44.881111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483287, 0.224383, 0.846218,
		-0.502537, -0.720383, 0.478022,
		0.716861, -0.656278, -0.235391,
		36.954685, 44.277634, 44.810493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.422722, 44.362049, 45.504860>,  <36.452885, 44.737030, 44.975269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.422722, 44.362049, 45.504860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.789623, 44.290504, 45.362511>,  <37.009766, 44.247578, 45.277100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.789623, 44.290504, 45.362511>,  <36.422722, 44.362049, 45.504860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789623, 44.290504, 45.362511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396013, 0.314078, 0.862861,
		-0.042560, -0.932397, 0.358922,
		0.917258, -0.178861, -0.355874,
		37.064800, 44.236847, 45.255749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753819, 43.842693, 45.897217>,  <36.422722, 44.362049, 45.504860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753819, 43.842693, 45.897217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.037136, 44.070206, 45.729977>,  <37.207127, 44.206715, 45.629635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.037136, 44.070206, 45.729977>,  <36.753819, 43.842693, 45.897217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037136, 44.070206, 45.729977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463677, 0.071730, 0.883096,
		0.532277, -0.819356, -0.212924,
		0.708297, 0.568780, -0.418097,
		37.249626, 44.240841, 45.604549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.265789, 43.686771, 46.299389>,  <36.753819, 43.842693, 45.897217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.265789, 43.686771, 46.299389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.388660, 44.014805, 46.106266>,  <37.462383, 44.211624, 45.990395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.388660, 44.014805, 46.106266>,  <37.265789, 43.686771, 46.299389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388660, 44.014805, 46.106266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460395, 0.315948, 0.829587,
		0.832874, -0.477109, -0.280512,
		0.307176, 0.820088, -0.482804,
		37.480812, 44.260830, 45.961426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031586, 43.656017, 46.261822>,  <37.265789, 43.686771, 46.299389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.031586, 43.656017, 46.261822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.893436, 44.031384, 46.258118>,  <37.810547, 44.256603, 46.255898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.893436, 44.031384, 46.258118>,  <38.031586, 43.656017, 46.261822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893436, 44.031384, 46.258118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619701, 0.235460, 0.748685,
		0.704760, 0.252841, -0.662861,
		-0.345375, 0.938419, -0.009257,
		37.789825, 44.312908, 46.255341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643711, 44.028393, 46.501266>,  <38.031586, 43.656017, 46.261822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.643711, 44.028393, 46.501266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.379665, 44.328480, 46.486191>,  <38.221237, 44.508533, 46.477146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.379665, 44.328480, 46.486191>,  <38.643711, 44.028393, 46.501266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379665, 44.328480, 46.486191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404112, 0.396980, 0.824075,
		0.633197, 0.528756, -0.565225,
		-0.660118, 0.750216, -0.037690,
		38.181629, 44.553543, 46.474884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050545, 44.596897, 46.647705>,  <38.643711, 44.028393, 46.501266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.050545, 44.596897, 46.647705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.671043, 44.683434, 46.739841>,  <38.443340, 44.735355, 46.795124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.671043, 44.683434, 46.739841>,  <39.050545, 44.596897, 46.647705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671043, 44.683434, 46.739841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300335, 0.390619, 0.870181,
		0.098282, 0.894770, -0.435578,
		-0.948757, 0.216343, 0.230340,
		38.386417, 44.748337, 46.808945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.075657, 45.098900, 47.123032>,  <39.050545, 44.596897, 46.647705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.075657, 45.098900, 47.123032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.694042, 44.989655, 47.172390>,  <38.465073, 44.924107, 47.202003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.694042, 44.989655, 47.172390>,  <39.075657, 45.098900, 47.123032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.694042, 44.989655, 47.172390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093385, 0.120317, 0.988334,
		-0.284769, 0.954430, -0.089282,
		-0.954037, -0.273109, 0.123392,
		38.407829, 44.907722, 47.209408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674530, 45.673840, 47.551388>,  <39.075657, 45.098900, 47.123032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.674530, 45.673840, 47.551388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.440231, 45.351070, 47.581787>,  <38.299652, 45.157410, 47.600025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.440231, 45.351070, 47.581787>,  <38.674530, 45.673840, 47.551388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440231, 45.351070, 47.581787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038564, 0.121407, 0.991853,
		-0.809578, 0.578042, -0.102232,
		-0.585744, -0.806925, 0.075997,
		38.264507, 45.108994, 47.604588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235958, 45.812866, 48.034294>,  <38.674530, 45.673840, 47.551388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.235958, 45.812866, 48.034294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.256989, 45.413525, 48.025150>,  <38.269608, 45.173920, 48.019665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.256989, 45.413525, 48.025150>,  <38.235958, 45.812866, 48.034294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.256989, 45.413525, 48.025150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128780, -0.015922, 0.991546,
		-0.990279, -0.055071, 0.127731,
		0.052572, -0.998356, -0.022859,
		38.272758, 45.114017, 48.018291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708275, 45.685322, 48.504890>,  <38.235958, 45.812866, 48.034294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708275, 45.685322, 48.504890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.928120, 45.352715, 48.472614>,  <38.060028, 45.153152, 48.453247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.928120, 45.352715, 48.472614>,  <37.708275, 45.685322, 48.504890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928120, 45.352715, 48.472614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169347, 0.016305, 0.985422,
		-0.818076, -0.555265, 0.149776,
		0.549612, -0.831514, -0.080693,
		38.093002, 45.103260, 48.448406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535656, 45.251057, 49.180908>,  <37.708275, 45.685322, 48.504890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.535656, 45.251057, 49.180908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.884201, 45.123646, 49.031635>,  <38.093327, 45.047199, 48.942070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.884201, 45.123646, 49.031635>,  <37.535656, 45.251057, 49.180908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.884201, 45.123646, 49.031635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416541, 0.078337, 0.905736,
		-0.259267, -0.944671, 0.200939,
		0.871364, -0.318527, -0.373184,
		38.145611, 45.028088, 48.919682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.215019, 45.546425, 49.446068>,  <37.535656, 45.251057, 49.180908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.215019, 45.546425, 49.446068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.891251, 45.713131, 49.280590>,  <37.696991, 45.813156, 49.181301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.891251, 45.713131, 49.280590>,  <38.215019, 45.546425, 49.446068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891251, 45.713131, 49.280590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460484, -0.013290, 0.887569,
		0.364410, 0.908917, 0.202671,
		-0.809420, 0.416766, -0.413698,
		37.648426, 45.838161, 49.156479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596367, 45.346466, 49.943542>,  <38.215019, 45.546425, 49.446068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596367, 45.346466, 49.943542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.322521, 45.161842, 50.169205>,  <37.158215, 45.051067, 50.304600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.322521, 45.161842, 50.169205>,  <37.596367, 45.346466, 49.943542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322521, 45.161842, 50.169205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243822, -0.584374, -0.773988,
		0.686918, -0.667435, 0.287531,
		-0.684612, -0.461560, 0.564153,
		37.117138, 45.023373, 50.338451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800243, 44.594795, 49.888454>,  <37.596367, 45.346466, 49.943542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800243, 44.594795, 49.888454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.421581, 44.620026, 50.014866>,  <37.194386, 44.635166, 50.090714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.421581, 44.620026, 50.014866>,  <37.800243, 44.594795, 49.888454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421581, 44.620026, 50.014866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275815, -0.665757, -0.693321,
		0.166662, -0.743498, 0.647638,
		-0.946652, 0.063078, 0.316025,
		37.137585, 44.638950, 50.109673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481346, 43.862530, 49.840084>,  <37.800243, 44.594795, 49.888454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.481346, 43.862530, 49.840084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.161915, 44.103138, 49.848557>,  <36.970257, 44.247501, 49.853642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.161915, 44.103138, 49.848557>,  <37.481346, 43.862530, 49.840084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.161915, 44.103138, 49.848557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480441, -0.615845, -0.624428,
		-0.362562, -0.508830, 0.780795,
		-0.798576, 0.601520, 0.021181,
		36.922340, 44.283596, 49.854912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949680, 43.432236, 49.973591>,  <37.481346, 43.862530, 49.840084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949680, 43.432236, 49.973591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.784317, 43.754677, 49.804218>,  <36.685097, 43.948139, 49.702595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.784317, 43.754677, 49.804218>,  <36.949680, 43.432236, 49.973591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784317, 43.754677, 49.804218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588641, -0.591395, -0.551139,
		-0.694690, 0.021407, 0.718990,
		-0.413409, 0.806098, -0.423437,
		36.660294, 43.996506, 49.677189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.211544, 43.376038, 50.007164>,  <36.949680, 43.432236, 49.973591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.211544, 43.376038, 50.007164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.291225, 43.611233, 49.693581>,  <36.339035, 43.752350, 49.505432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.291225, 43.611233, 49.693581>,  <36.211544, 43.376038, 50.007164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.291225, 43.611233, 49.693581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539683, -0.601917, -0.588589,
		-0.817960, 0.540339, 0.197421,
		0.199207, 0.587988, -0.783956,
		36.350986, 43.787628, 49.458393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604385, 43.359997, 49.619812>,  <36.211544, 43.376038, 50.007164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.604385, 43.359997, 49.619812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.872055, 43.503117, 49.359295>,  <36.032658, 43.588989, 49.202984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.872055, 43.503117, 49.359295>,  <35.604385, 43.359997, 49.619812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.872055, 43.503117, 49.359295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414585, -0.547606, -0.726806,
		-0.616706, 0.756376, -0.218103,
		0.669173, 0.357803, -0.651294,
		36.072807, 43.610458, 49.163906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.234299, 43.224403, 48.990536>,  <35.604385, 43.359997, 49.619812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.234299, 43.224403, 48.990536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.575401, 43.367680, 48.838478>,  <35.780064, 43.453648, 48.747246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.575401, 43.367680, 48.838478>,  <35.234299, 43.224403, 48.990536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.575401, 43.367680, 48.838478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203070, -0.443177, -0.873130,
		-0.481220, 0.821761, -0.305183,
		0.852755, 0.358194, -0.380140,
		35.831226, 43.475140, 48.724438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.118946, 43.687267, 48.420696>,  <35.234299, 43.224403, 48.990536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.118946, 43.687267, 48.420696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.490322, 43.543404, 48.383495>,  <35.713146, 43.457085, 48.361176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.490322, 43.543404, 48.383495>,  <35.118946, 43.687267, 48.420696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490322, 43.543404, 48.383495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265735, -0.468043, -0.842805,
		0.259599, 0.807204, -0.530123,
		0.928436, -0.359663, -0.092999,
		35.768852, 43.435505, 48.355595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415775, 43.874603, 47.734200>,  <35.118946, 43.687267, 48.420696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415775, 43.874603, 47.734200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.644188, 43.563190, 47.838360>,  <35.781235, 43.376343, 47.900856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.644188, 43.563190, 47.838360>,  <35.415775, 43.874603, 47.734200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644188, 43.563190, 47.838360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109249, -0.386447, -0.915819,
		0.813624, 0.494517, -0.305729,
		0.571035, -0.778532, 0.260397,
		35.815498, 43.329632, 47.916477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992836, 43.893398, 47.280659>,  <35.415775, 43.874603, 47.734200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992836, 43.893398, 47.280659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.953793, 43.519337, 47.416874>,  <35.930367, 43.294899, 47.498604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.953793, 43.519337, 47.416874>,  <35.992836, 43.893398, 47.280659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.953793, 43.519337, 47.416874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090585, -0.332401, -0.938778,
		0.991094, -0.122482, -0.052265,
		-0.097610, -0.935151, 0.340535,
		35.924511, 43.238792, 47.519035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.448612, 43.528572, 46.780781>,  <35.992836, 43.893398, 47.280659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.448612, 43.528572, 46.780781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.237888, 43.269272, 47.000687>,  <36.111454, 43.113693, 47.132629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.237888, 43.269272, 47.000687>,  <36.448612, 43.528572, 46.780781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.237888, 43.269272, 47.000687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270331, -0.485433, -0.831430,
		0.805848, -0.586626, 0.080490,
		-0.526811, -0.648247, 0.549768,
		36.079845, 43.074799, 47.165619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.636581, 42.872375, 46.601662>,  <36.448612, 43.528572, 46.780781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.636581, 42.872375, 46.601662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.263813, 42.846603, 46.744415>,  <36.040150, 42.831142, 46.830067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.263813, 42.846603, 46.744415>,  <36.636581, 42.872375, 46.601662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263813, 42.846603, 46.744415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272488, -0.524981, -0.806316,
		0.239305, -0.848672, 0.471687,
		-0.931925, -0.064427, 0.356883,
		35.984234, 42.827274, 46.851479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367977, 42.126423, 46.384541>,  <36.636581, 42.872375, 46.601662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367977, 42.126423, 46.384541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.042637, 42.342445, 46.471081>,  <35.847435, 42.472057, 46.523006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.042637, 42.342445, 46.471081>,  <36.367977, 42.126423, 46.384541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042637, 42.342445, 46.471081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483910, -0.421574, -0.766880,
		-0.322944, -0.728438, 0.604223,
		-0.813350, 0.540049, 0.216354,
		35.798634, 42.504459, 46.535988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723167, 41.701427, 46.421139>,  <36.367977, 42.126423, 46.384541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723167, 41.701427, 46.421139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.612713, 42.074215, 46.327175>,  <35.546440, 42.297886, 46.270798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.612713, 42.074215, 46.327175>,  <35.723167, 41.701427, 46.421139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.612713, 42.074215, 46.327175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535987, -0.352200, -0.767251,
		-0.797788, -0.085960, 0.596779,
		-0.276138, 0.931969, -0.234907,
		35.529873, 42.353806, 46.256702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.220196, 41.598957, 45.944168>,  <35.723167, 41.701427, 46.421139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.220196, 41.598957, 45.944168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.206169, 41.998325, 45.926613>,  <35.197754, 42.237946, 45.916080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.206169, 41.998325, 45.926613>,  <35.220196, 41.598957, 45.944168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.206169, 41.998325, 45.926613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635644, -0.056170, -0.769936,
		-0.771186, 0.000900, 0.636610,
		-0.035065, 0.998421, -0.043890,
		35.195648, 42.297852, 45.913445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.461639, 41.796844, 46.061989>,  <35.220196, 41.598957, 45.944168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.461639, 41.796844, 46.061989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.672878, 42.062393, 45.850185>,  <34.799622, 42.221722, 45.723103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.672878, 42.062393, 45.850185>,  <34.461639, 41.796844, 46.061989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.672878, 42.062393, 45.850185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743839, 0.060834, -0.665585,
		-0.409652, 0.745367, 0.525941,
		0.528100, 0.663873, -0.529512,
		34.831306, 42.261555, 45.691330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.007111, 42.334969, 45.771004>,  <34.461639, 41.796844, 46.061989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.007111, 42.334969, 45.771004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.322021, 42.325447, 45.524548>,  <34.510967, 42.319733, 45.376675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.322021, 42.325447, 45.524548>,  <34.007111, 42.334969, 45.771004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.322021, 42.325447, 45.524548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612078, -0.150999, -0.776247,
		-0.074558, 0.988247, -0.133449,
		0.787275, -0.023806, -0.616143,
		34.558205, 42.318306, 45.339706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.674904, 42.201965, 45.057873>,  <34.007111, 42.334969, 45.771004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.674904, 42.201965, 45.057873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.063099, 42.196724, 44.961559>,  <34.296017, 42.193581, 44.903770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.063099, 42.196724, 44.961559>,  <33.674904, 42.201965, 45.057873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063099, 42.196724, 44.961559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237209, -0.231394, -0.943498,
		-0.043354, 0.972772, -0.227673,
		0.970491, -0.013102, -0.240782,
		34.354248, 42.192795, 44.889324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.831974, 42.719013, 44.380547>,  <33.674904, 42.201965, 45.057873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.831974, 42.719013, 44.380547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.083904, 42.411667, 44.426029>,  <34.235062, 42.227257, 44.453320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.083904, 42.411667, 44.426029>,  <33.831974, 42.719013, 44.380547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083904, 42.411667, 44.426029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338728, -0.403443, -0.849998,
		0.698987, 0.496835, -0.514367,
		0.629826, -0.768368, 0.113709,
		34.272854, 42.181156, 44.460140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993298, 42.538731, 43.737656>,  <33.831974, 42.719013, 44.380547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.993298, 42.538731, 43.737656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.127151, 42.213005, 43.927357>,  <34.207462, 42.017570, 44.041180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.127151, 42.213005, 43.927357>,  <33.993298, 42.538731, 43.737656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127151, 42.213005, 43.927357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171076, -0.547401, -0.819198,
		0.926691, 0.192995, -0.322487,
		0.334630, -0.814313, 0.474255,
		34.227539, 41.968712, 44.069633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.602749, 28.014828, 33.143993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.242767, 28.106865, 32.995857>,  <40.026779, 28.162086, 32.906975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.242767, 28.106865, 32.995857>,  <40.602749, 28.014828, 33.143993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.242767, 28.106865, 32.995857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320648, 0.924837, -0.204599,
		0.295425, -0.302876, -0.906085,
		-0.899949, 0.230091, -0.370337,
		39.972782, 28.175892, 32.884758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.720383, 28.333231, 32.549191>,  <40.602749, 28.014828, 33.143993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.720383, 28.333231, 32.549191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.370029, 28.480129, 32.674389>,  <40.159817, 28.568268, 32.749508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.370029, 28.480129, 32.674389>,  <40.720383, 28.333231, 32.549191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.370029, 28.480129, 32.674389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357844, 0.929508, -0.089230,
		-0.323698, 0.033848, -0.945555,
		-0.875881, 0.367245, 0.312992,
		40.107265, 28.590303, 32.768288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.567059, 28.820324, 32.076073>,  <40.720383, 28.333231, 32.549191>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.567059, 28.820324, 32.076073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.349926, 28.914858, 32.398434>,  <40.219646, 28.971579, 32.591850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.349926, 28.914858, 32.398434>,  <40.567059, 28.820324, 32.076073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.349926, 28.914858, 32.398434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253302, 0.960975, -0.111196,
		-0.800731, 0.143775, -0.581514,
		-0.542833, 0.236336, 0.805901,
		40.187077, 28.985758, 32.640205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.161564, 29.299767, 31.815134>,  <40.567059, 28.820324, 32.076073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.161564, 29.299767, 31.815134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.135799, 29.361607, 32.209484>,  <40.120338, 29.398710, 32.446095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.135799, 29.361607, 32.209484>,  <40.161564, 29.299767, 31.815134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.135799, 29.361607, 32.209484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094805, 0.984406, -0.148177,
		-0.993410, 0.083921, -0.078067,
		-0.064415, 0.154602, 0.985875,
		40.116474, 29.407988, 32.505245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.761410, 29.982662, 31.943506>,  <40.161564, 29.299767, 31.815134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.761410, 29.982662, 31.943506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.952110, 29.936592, 32.292091>,  <40.066528, 29.908951, 32.501244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.952110, 29.936592, 32.292091>,  <39.761410, 29.982662, 31.943506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.952110, 29.936592, 32.292091> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143838, 0.988238, 0.051918,
		-0.867191, 0.100598, 0.487708,
		0.476749, -0.115174, 0.871462,
		40.095135, 29.902040, 32.553532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577728, 30.602013, 32.348598>,  <39.761410, 29.982662, 31.943506>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.577728, 30.602013, 32.348598> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.905716, 30.428732, 32.498257>,  <40.102509, 30.324764, 32.588051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.905716, 30.428732, 32.498257>,  <39.577728, 30.602013, 32.348598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905716, 30.428732, 32.498257> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448280, 0.892445, 0.050866,
		-0.355936, 0.126012, 0.925975,
		0.819972, -0.433202, 0.374142,
		40.151707, 30.298771, 32.610500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818802, 31.063578, 32.857544>,  <39.577728, 30.602013, 32.348598>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.818802, 31.063578, 32.857544> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.147141, 30.850311, 32.775620>,  <40.344143, 30.722351, 32.726463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.147141, 30.850311, 32.775620>,  <39.818802, 31.063578, 32.857544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.147141, 30.850311, 32.775620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544604, 0.838693, -0.000616,
		0.172105, -0.111037, 0.978801,
		0.820845, -0.533164, -0.204814,
		40.393394, 30.690363, 32.714176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.241375, 31.176533, 33.424389>,  <39.818802, 31.063578, 32.857544>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.241375, 31.176533, 33.424389> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.465805, 31.075117, 33.109200>,  <40.600464, 31.014267, 32.920086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.465805, 31.075117, 33.109200>,  <40.241375, 31.176533, 33.424389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.465805, 31.075117, 33.109200> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596442, 0.783909, 0.172465,
		0.573975, -0.566749, 0.591057,
		0.561079, -0.253541, -0.787977,
		40.634129, 30.999054, 32.872807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.958248, 31.359577, 33.594730>,  <40.241375, 31.176533, 33.424389>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.958248, 31.359577, 33.594730> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.956364, 31.310442, 33.197765>,  <40.955235, 31.280960, 32.959587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.956364, 31.310442, 33.197765>,  <40.958248, 31.359577, 33.594730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.956364, 31.310442, 33.197765> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606627, 0.788610, -0.100490,
		0.794973, -0.602499, 0.070804,
		-0.004709, -0.122839, -0.992415,
		40.954952, 31.273590, 32.900040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.648388, 31.377699, 33.448318>,  <40.958248, 31.359577, 33.594730>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.648388, 31.377699, 33.448318> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.441841, 31.455702, 33.114769>,  <41.317913, 31.502502, 32.914639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.441841, 31.455702, 33.114769>,  <41.648388, 31.377699, 33.448318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.441841, 31.455702, 33.114769> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571867, 0.803322, -0.166260,
		0.637445, -0.562714, -0.526325,
		-0.516365, 0.195006, -0.833870,
		41.286930, 31.514204, 32.864609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.183651, 31.500168, 32.976475>,  <41.648388, 31.377699, 33.448318>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.183651, 31.500168, 32.976475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.845715, 31.650896, 32.824551>,  <41.642952, 31.741333, 32.733398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.845715, 31.650896, 32.824551>,  <42.183651, 31.500168, 32.976475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.845715, 31.650896, 32.824551> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478354, 0.849967, -0.220757,
		0.239637, -0.368186, -0.898339,
		-0.844838, 0.376823, -0.379807,
		41.592262, 31.763943, 32.710609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.509331, 31.854464, 32.360256>,  <42.183651, 31.500168, 32.976475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.509331, 31.854464, 32.360256> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.133896, 31.982414, 32.412014>,  <41.908634, 32.059185, 32.443069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.133896, 31.982414, 32.412014>,  <42.509331, 31.854464, 32.360256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.133896, 31.982414, 32.412014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329185, 0.942490, 0.057876,
		-0.103436, 0.096915, -0.989903,
		-0.938583, 0.319875, 0.129390,
		41.852322, 32.078377, 32.450832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.347988, 32.351566, 31.875017>,  <42.509331, 31.854464, 32.360256>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.347988, 32.351566, 31.875017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.084808, 32.421913, 32.167912>,  <41.926899, 32.464123, 32.343647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.084808, 32.421913, 32.167912>,  <42.347988, 32.351566, 31.875017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.084808, 32.421913, 32.167912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280437, 0.959632, 0.021498,
		-0.698898, 0.219491, -0.680709,
		-0.657949, 0.175872, 0.732238,
		41.887424, 32.474674, 32.387585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.035019, 32.911114, 31.624531>,  <42.347988, 32.351566, 31.875017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.035019, 32.911114, 31.624531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.985008, 32.928158, 32.021027>,  <41.955002, 32.938385, 32.258923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.985008, 32.928158, 32.021027>,  <42.035019, 32.911114, 31.624531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.985008, 32.928158, 32.021027> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408135, 0.912840, 0.012242,
		-0.904320, 0.406089, -0.131517,
		-0.125025, 0.042606, 0.991238,
		41.947502, 32.940941, 32.318398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.721275, 33.499283, 31.664410>,  <42.035019, 32.911114, 31.624531>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.721275, 33.499283, 31.664410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.826748, 33.454521, 32.047649>,  <41.890030, 33.427666, 32.277592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.826748, 33.454521, 32.047649>,  <41.721275, 33.499283, 31.664410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.826748, 33.454521, 32.047649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373866, 0.927467, 0.005431,
		-0.889212, 0.356768, 0.286388,
		0.263678, -0.111900, 0.958098,
		41.905849, 33.420952, 32.335079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.534920, 34.123627, 31.982990>,  <41.721275, 33.499283, 31.664410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.534920, 34.123627, 31.982990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.785477, 33.969341, 32.253944>,  <41.935810, 33.876770, 32.416515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.785477, 33.969341, 32.253944>,  <41.534920, 34.123627, 31.982990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.785477, 33.969341, 32.253944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295136, 0.921655, 0.251887,
		-0.721474, 0.042140, 0.691159,
		0.626395, -0.385716, 0.677387,
		41.973396, 33.853626, 32.457161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.502949, 34.495087, 32.574726>,  <41.534920, 34.123627, 31.982990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.502949, 34.495087, 32.574726> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.860821, 34.324032, 32.626377>,  <42.075542, 34.221397, 32.657368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.860821, 34.324032, 32.626377>,  <41.502949, 34.495087, 32.574726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.860821, 34.324032, 32.626377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417112, 0.903208, 0.101161,
		-0.159890, -0.036646, 0.986454,
		0.894680, -0.427637, 0.129128,
		42.129227, 34.195740, 32.665115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.805676, 34.758083, 33.251804>,  <41.502949, 34.495087, 32.574726>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.805676, 34.758083, 33.251804> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.110497, 34.632004, 33.025558>,  <42.293388, 34.556355, 32.889812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.110497, 34.632004, 33.025558>,  <41.805676, 34.758083, 33.251804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.110497, 34.632004, 33.025558> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502011, 0.839318, 0.208639,
		0.408968, -0.442940, 0.797841,
		0.762057, -0.315198, -0.565615,
		42.339115, 34.537445, 32.855873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.451046, 34.770813, 33.675205>,  <41.805676, 34.758083, 33.251804>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.451046, 34.770813, 33.675205> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.570011, 34.811771, 33.295509>,  <42.641392, 34.836346, 33.067692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.570011, 34.811771, 33.295509>,  <42.451046, 34.770813, 33.675205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.570011, 34.811771, 33.295509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535071, 0.805548, 0.254543,
		0.790723, -0.583616, 0.184794,
		0.297416, 0.102395, -0.949242,
		42.659237, 34.842491, 33.010738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.031570, 35.155327, 33.804413>,  <42.451046, 34.770813, 33.675205>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.031570, 35.155327, 33.804413> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.006863, 35.150043, 33.405212>,  <42.992039, 35.146873, 33.165691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.006863, 35.150043, 33.405212>,  <43.031570, 35.155327, 33.804413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.006863, 35.150043, 33.405212> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677468, 0.733737, -0.051640,
		0.732955, -0.679304, -0.036364,
		-0.061761, -0.013215, -0.998004,
		42.988335, 35.146080, 33.105812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.644558, 35.036240, 33.486176>,  <43.031570, 35.155327, 33.804413>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.644558, 35.036240, 33.486176> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.414925, 35.253651, 33.241226>,  <43.277145, 35.384098, 33.094257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.414925, 35.253651, 33.241226>,  <43.644558, 35.036240, 33.486176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.414925, 35.253651, 33.241226> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591509, 0.792443, 0.148834,
		0.566167, -0.276782, -0.776432,
		-0.574083, 0.543532, -0.612374,
		43.242699, 35.416710, 33.057514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.104218, 34.572552, 33.228199>,  <43.644558, 35.036240, 33.486176>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.104218, 34.572552, 33.228199> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.499016, 34.636700, 33.232712>,  <44.735893, 34.675190, 33.235420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.499016, 34.636700, 33.232712>,  <44.104218, 34.572552, 33.228199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.499016, 34.636700, 33.232712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149827, -0.892101, -0.426271,
		-0.058298, 0.422416, -0.904525,
		0.986992, 0.160373, 0.011282,
		44.795113, 34.684811, 33.236095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.318863, 34.547344, 32.613407>,  <44.104218, 34.572552, 33.228199>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.318863, 34.547344, 32.613407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.644749, 34.438171, 32.818054>,  <44.840279, 34.372669, 32.940842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.644749, 34.438171, 32.818054>,  <44.318863, 34.547344, 32.613407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.644749, 34.438171, 32.818054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010321, -0.888990, -0.457810,
		0.579772, 0.367703, -0.727089,
		0.814713, -0.272930, 0.511617,
		44.889164, 34.356293, 32.971539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.866501, 34.190552, 32.145760>,  <44.318863, 34.547344, 32.613407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.866501, 34.190552, 32.145760> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.947998, 34.069885, 32.518314>,  <44.996895, 33.997486, 32.741848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.947998, 34.069885, 32.518314>,  <44.866501, 34.190552, 32.145760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.947998, 34.069885, 32.518314> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058774, -0.945860, -0.319210,
		0.977259, 0.119777, -0.174978,
		0.203739, -0.301667, 0.931390,
		45.009121, 33.979385, 32.797729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.365246, 33.600128, 32.056606>,  <44.866501, 34.190552, 32.145760>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.365246, 33.600128, 32.056606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.202419, 33.567467, 32.420502>,  <45.104725, 33.547871, 32.638840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.202419, 33.567467, 32.420502>,  <45.365246, 33.600128, 32.056606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.202419, 33.567467, 32.420502> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213770, -0.959818, -0.181803,
		0.888031, -0.268481, 0.373253,
		-0.407066, -0.081657, 0.909741,
		45.080299, 33.542969, 32.693424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.754681, 33.088749, 32.326668>,  <45.365246, 33.600128, 32.056606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.754681, 33.088749, 32.326668> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.398487, 33.108204, 32.507629>,  <45.184769, 33.119877, 32.616207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.398487, 33.108204, 32.507629>,  <45.754681, 33.088749, 32.326668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.398487, 33.108204, 32.507629> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010896, -0.996265, 0.085658,
		0.454879, 0.071347, 0.887691,
		-0.890487, 0.048636, 0.452402,
		45.131340, 33.122795, 32.643349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.871262, 32.651180, 32.933731>,  <45.754681, 33.088749, 32.326668>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.871262, 32.651180, 32.933731> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.474289, 32.671120, 32.888847>,  <45.236103, 32.683083, 32.861919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.474289, 32.671120, 32.888847>,  <45.871262, 32.651180, 32.933731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.474289, 32.671120, 32.888847> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047795, -0.998637, -0.020956,
		-0.113097, -0.015435, 0.993464,
		-0.992434, 0.049852, -0.112205,
		45.176559, 32.686077, 32.855186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.630947, 32.168343, 33.348335>,  <45.871262, 32.651180, 32.933731>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.630947, 32.168343, 33.348335> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.321545, 32.228306, 33.102013>,  <45.135902, 32.264286, 32.954220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.321545, 32.228306, 33.102013>,  <45.630947, 32.168343, 33.348335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.321545, 32.228306, 33.102013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195442, -0.980692, 0.006756,
		-0.602899, 0.125579, 0.787872,
		-0.773508, 0.149910, -0.615802,
		45.089493, 32.273277, 32.917271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.136051, 31.709063, 33.563515>,  <45.630947, 32.168343, 33.348335>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.136051, 31.709063, 33.563515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.968300, 31.801416, 33.212330>,  <44.867649, 31.856829, 33.001621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.968300, 31.801416, 33.212330>,  <45.136051, 31.709063, 33.563515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.968300, 31.801416, 33.212330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492076, -0.870531, 0.006121,
		-0.762877, 0.434590, 0.478697,
		-0.419380, 0.230886, -0.877959,
		44.842487, 31.870682, 32.948940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.411236, 31.450405, 33.585670>,  <45.136051, 31.709063, 33.563515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.411236, 31.450405, 33.585670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.502983, 31.498236, 33.199284>,  <44.558033, 31.526934, 32.967453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.502983, 31.498236, 33.199284>,  <44.411236, 31.450405, 33.585670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.502983, 31.498236, 33.199284> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428034, -0.878922, -0.210436,
		-0.874172, 0.461734, -0.150415,
		0.229368, 0.119575, -0.965967,
		44.571793, 31.534109, 32.909492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.881866, 31.205219, 33.191032>,  <44.411236, 31.450405, 33.585670>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.881866, 31.205219, 33.191032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.165176, 31.189796, 32.909081>,  <44.335163, 31.180542, 32.739910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.165176, 31.189796, 32.909081>,  <43.881866, 31.205219, 33.191032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.165176, 31.189796, 32.909081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361949, -0.877108, -0.315712,
		-0.606083, 0.478743, -0.635192,
		0.708277, -0.038559, -0.704881,
		44.377659, 31.178228, 32.697617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.564232, 31.036911, 32.585136>,  <43.881866, 31.205219, 33.191032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.564232, 31.036911, 32.585136> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.943386, 30.914707, 32.548958>,  <44.170879, 30.841385, 32.527252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.943386, 30.914707, 32.548958>,  <43.564232, 31.036911, 32.585136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.943386, 30.914707, 32.548958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315656, -0.939054, -0.136157,
		-0.043335, 0.157610, -0.986550,
		0.947884, -0.305510, -0.090445,
		44.227753, 30.823053, 32.521824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.640362, 30.577589, 31.905670>,  <43.564232, 31.036911, 32.585136>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.640362, 30.577589, 31.905670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.971760, 30.492508, 32.112881>,  <44.170601, 30.441460, 32.237206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.971760, 30.492508, 32.112881>,  <43.640362, 30.577589, 31.905670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.971760, 30.492508, 32.112881> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064951, -0.955313, -0.288372,
		0.556215, 0.205269, -0.805289,
		0.828496, -0.212701, 0.518026,
		44.220310, 30.428698, 32.268288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.124657, 30.172668, 31.430010>,  <43.640362, 30.577589, 31.905670>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.124657, 30.172668, 31.430010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.187481, 30.108349, 31.819775>,  <44.225174, 30.069757, 32.053635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.187481, 30.108349, 31.819775>,  <44.124657, 30.172668, 31.430010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.187481, 30.108349, 31.819775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012781, -0.986242, -0.164814,
		0.987507, 0.038339, -0.152840,
		0.157056, -0.160801, 0.974411,
		44.234596, 30.060108, 32.112099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.404083, 29.486975, 31.415728>,  <44.124657, 30.172668, 31.430010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.404083, 29.486975, 31.415728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.332878, 29.521860, 31.807791>,  <44.290157, 29.542791, 32.043030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.332878, 29.521860, 31.807791>,  <44.404083, 29.486975, 31.415728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.332878, 29.521860, 31.807791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446532, -0.894766, -0.001479,
		0.876882, -0.437935, 0.198219,
		-0.178008, 0.087214, 0.980157,
		44.279476, 29.548025, 32.101837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.649120, 28.863930, 31.722265>,  <44.404083, 29.486975, 31.415728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.649120, 28.863930, 31.722265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.345875, 28.983683, 31.954000>,  <44.163929, 29.055534, 32.093040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.345875, 28.983683, 31.954000>,  <44.649120, 28.863930, 31.722265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.345875, 28.983683, 31.954000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330816, -0.942151, 0.053969,
		0.561983, -0.150740, 0.813297,
		-0.758114, 0.299381, 0.579340,
		44.118443, 29.073498, 32.127804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.609100, 28.354239, 32.216839>,  <44.649120, 28.863930, 31.722265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.609100, 28.354239, 32.216839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.262909, 28.546217, 32.274250>,  <44.055195, 28.661404, 32.308697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.262909, 28.546217, 32.274250>,  <44.609100, 28.354239, 32.216839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.262909, 28.546217, 32.274250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473301, -0.877297, 0.079600,
		0.164118, 0.000961, 0.986440,
		-0.865477, 0.479947, 0.143525,
		44.003265, 28.690201, 32.317307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.285717, 28.038918, 32.832253>,  <44.609100, 28.354239, 32.216839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.285717, 28.038918, 32.832253> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.007374, 28.212999, 32.603733>,  <43.840370, 28.317450, 32.466621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.007374, 28.212999, 32.603733>,  <44.285717, 28.038918, 32.832253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.007374, 28.212999, 32.603733> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546140, -0.837246, 0.027410,
		-0.466389, 0.331082, 0.820284,
		-0.695854, 0.435206, -0.571299,
		43.798618, 28.343561, 32.432343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.683170, 27.991207, 33.257969>,  <44.285717, 28.038918, 32.832253>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.683170, 27.991207, 33.257969> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.568188, 28.032341, 32.877064>,  <43.499199, 28.057022, 32.648521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.568188, 28.032341, 32.877064>,  <43.683170, 27.991207, 33.257969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.568188, 28.032341, 32.877064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585562, -0.805643, 0.089758,
		-0.757950, 0.583407, 0.291801,
		-0.287453, 0.102836, -0.952258,
		43.481953, 28.063192, 32.591385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.971619, 27.933460, 33.269032>,  <43.683170, 27.991207, 33.257969>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.971619, 27.933460, 33.269032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.072697, 27.852699, 32.890533>,  <43.133343, 27.804243, 32.663433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.072697, 27.852699, 32.890533>,  <42.971619, 27.933460, 33.269032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.072697, 27.852699, 32.890533> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603282, -0.797476, 0.009052,
		-0.756436, 0.568565, -0.323324,
		0.252697, -0.201903, -0.946245,
		43.148506, 27.792128, 32.606659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.360806, 27.618599, 33.078896>,  <42.971619, 27.933460, 33.269032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.360806, 27.618599, 33.078896> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.599300, 27.516964, 32.774281>,  <42.742397, 27.455982, 32.591511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.599300, 27.516964, 32.774281>,  <42.360806, 27.618599, 33.078896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.599300, 27.516964, 32.774281> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520040, -0.844908, -0.125254,
		-0.611604, 0.470711, -0.635902,
		0.596238, -0.254088, -0.761538,
		42.778172, 27.440737, 32.545818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.893822, 27.412182, 32.525146>,  <42.360806, 27.618599, 33.078896>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.893822, 27.412182, 32.525146> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.250729, 27.257021, 32.432728>,  <42.464874, 27.163923, 32.377277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.250729, 27.257021, 32.432728>,  <41.893822, 27.412182, 32.525146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.250729, 27.257021, 32.432728> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368006, -0.921303, 0.125586,
		-0.261579, -0.027031, -0.964803,
		0.892271, -0.387904, -0.231046,
		42.518410, 27.140650, 32.363415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.969528, 40.933895, 38.380978> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886200, 40.615437, 38.608223>,  <36.836205, 40.424362, 38.744572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886200, 40.615437, 38.608223>,  <36.969528, 40.933895, 38.380978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.886200, 40.615437, 38.608223> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525218, -0.581061, -0.621702,
		0.825075, 0.168871, 0.539197,
		-0.208319, -0.796148, 0.568113,
		36.823704, 40.376591, 38.778656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547230, 40.550907, 38.420799>,  <36.969528, 40.933895, 38.380978>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.547230, 40.550907, 38.420799> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245968, 40.292717, 38.471588>,  <37.065212, 40.137802, 38.502060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245968, 40.292717, 38.471588>,  <37.547230, 40.550907, 38.420799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245968, 40.292717, 38.471588> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429997, -0.629107, -0.647555,
		0.497861, -0.433109, 0.751366,
		-0.753151, -0.645478, 0.126972,
		37.020023, 40.099075, 38.509678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851936, 39.916965, 38.105209>,  <37.547230, 40.550907, 38.420799>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851936, 39.916965, 38.105209> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.473022, 39.810154, 38.176033>,  <37.245674, 39.746067, 38.218529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.473022, 39.810154, 38.176033>,  <37.851936, 39.916965, 38.105209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.473022, 39.810154, 38.176033> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143551, -0.847785, -0.510543,
		0.286436, -0.458212, 0.841425,
		-0.947284, -0.267025, 0.177059,
		37.188839, 39.730045, 38.229149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788124, 39.188847, 38.460316>,  <37.851936, 39.916965, 38.105209>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.788124, 39.188847, 38.460316> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452240, 39.263653, 38.256390>,  <37.250710, 39.308537, 38.134033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452240, 39.263653, 38.256390>,  <37.788124, 39.188847, 38.460316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.452240, 39.263653, 38.256390> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031252, -0.920625, -0.389195,
		-0.542135, -0.342744, 0.767214,
		-0.839710, 0.187020, -0.509814,
		37.200325, 39.319759, 38.103447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.363804, 38.549366, 38.479679>,  <37.788124, 39.188847, 38.460316>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.363804, 38.549366, 38.479679> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244976, 38.770100, 38.167980>,  <37.173679, 38.902538, 37.980961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244976, 38.770100, 38.167980>,  <37.363804, 38.549366, 38.479679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244976, 38.770100, 38.167980> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052755, -0.824329, -0.563647,
		-0.953397, -0.126333, 0.273996,
		-0.297070, 0.551834, -0.779248,
		37.155853, 38.935650, 37.934204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859127, 38.123764, 38.208012>,  <37.363804, 38.549366, 38.479679>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859127, 38.123764, 38.208012> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929237, 38.393082, 37.920692>,  <36.971306, 38.554672, 37.748302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929237, 38.393082, 37.920692>,  <36.859127, 38.123764, 38.208012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929237, 38.393082, 37.920692> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099014, -0.713838, -0.693276,
		-0.979527, 0.192639, -0.058456,
		0.175280, 0.673294, -0.718298,
		36.981823, 38.595070, 37.705204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387817, 38.033321, 37.712566>,  <36.859127, 38.123764, 38.208012>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.387817, 38.033321, 37.712566> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638683, 38.250324, 37.489014>,  <36.789204, 38.380527, 37.354881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638683, 38.250324, 37.489014>,  <36.387817, 38.033321, 37.712566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638683, 38.250324, 37.489014> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206908, -0.575721, -0.791034,
		-0.750904, 0.611744, -0.248821,
		0.627162, 0.542508, -0.558886,
		36.826832, 38.413078, 37.321346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.022514, 38.284451, 37.162441>,  <36.387817, 38.033321, 37.712566>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.022514, 38.284451, 37.162441> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414326, 38.260292, 37.085629>,  <36.649414, 38.245796, 37.039543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414326, 38.260292, 37.085629>,  <36.022514, 38.284451, 37.162441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.414326, 38.260292, 37.085629> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188045, -0.614973, -0.765798,
		-0.071845, 0.786232, -0.613741,
		0.979529, -0.060392, -0.192030,
		36.708183, 38.242176, 37.028019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029030, 38.290981, 36.394283>,  <36.022514, 38.284451, 37.162441>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029030, 38.290981, 36.394283> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402802, 38.194611, 36.499199>,  <36.627064, 38.136787, 36.562149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402802, 38.194611, 36.499199>,  <36.029030, 38.290981, 36.394283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.402802, 38.194611, 36.499199> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097468, -0.535342, -0.838993,
		0.342548, 0.809545, -0.476757,
		0.934431, -0.240927, 0.262285,
		36.683132, 38.122334, 36.577885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494823, 38.374233, 35.819782>,  <36.029030, 38.290981, 36.394283>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.494823, 38.374233, 35.819782> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711445, 38.132187, 36.053207>,  <36.841419, 37.986958, 36.193264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711445, 38.132187, 36.053207>,  <36.494823, 38.374233, 35.819782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711445, 38.132187, 36.053207> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143493, -0.617444, -0.773416,
		0.828327, 0.502586, -0.247551,
		0.541557, -0.605120, 0.583563,
		36.873913, 37.950649, 36.228275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105968, 38.139160, 35.326900>,  <36.494823, 38.374233, 35.819782>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105968, 38.139160, 35.326900> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.070801, 37.886360, 35.634888>,  <37.049702, 37.734680, 35.819679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.070801, 37.886360, 35.634888>,  <37.105968, 38.139160, 35.326900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.070801, 37.886360, 35.634888> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244066, -0.763067, -0.598465,
		0.965765, 0.135309, 0.221335,
		-0.087915, -0.631997, 0.769968,
		37.044426, 37.696762, 35.865879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758217, 37.722363, 35.321072>,  <37.105968, 38.139160, 35.326900>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.758217, 37.722363, 35.321072> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457371, 37.532314, 35.503757>,  <37.276863, 37.418285, 35.613369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457371, 37.532314, 35.503757>,  <37.758217, 37.722363, 35.321072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457371, 37.532314, 35.503757> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298266, -0.863369, -0.406978,
		0.587678, -0.169870, 0.791062,
		-0.752111, -0.475119, 0.456717,
		37.231739, 37.389778, 35.640774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910809, 37.102001, 35.408607>,  <37.758217, 37.722363, 35.321072>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910809, 37.102001, 35.408607> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518578, 37.023781, 35.414616>,  <37.283237, 36.976849, 35.418221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518578, 37.023781, 35.414616>,  <37.910809, 37.102001, 35.408607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.518578, 37.023781, 35.414616> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149880, -0.796548, -0.585702,
		0.126503, -0.572075, 0.810387,
		-0.980578, -0.195554, 0.015023,
		37.224403, 36.965115, 35.419121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.544880, 37.283451, 35.001156>,  <37.910809, 37.102001, 35.408607>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.544880, 37.283451, 35.001156> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331009, 36.961800, 35.105080>,  <38.202686, 36.768810, 35.167435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331009, 36.961800, 35.105080>,  <38.544880, 37.283451, 35.001156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.331009, 36.961800, 35.105080> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172304, -0.404728, -0.898057,
		0.827302, -0.435407, 0.354954,
		-0.534680, -0.804125, 0.259810,
		38.170605, 36.720562, 35.183022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030872, 36.633137, 34.836742>,  <38.544880, 37.283451, 35.001156>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.030872, 36.633137, 34.836742> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.386635, 36.480885, 34.937996>,  <39.600094, 36.389534, 34.998749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.386635, 36.480885, 34.937996>,  <39.030872, 36.633137, 34.836742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.386635, 36.480885, 34.937996> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137664, 0.305025, 0.942342,
		-0.435893, -0.872974, 0.218893,
		0.889408, -0.380626, 0.253135,
		39.653458, 36.366695, 35.013935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923100, 36.214886, 35.485184>,  <39.030872, 36.633137, 34.836742>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.923100, 36.214886, 35.485184> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318279, 36.274677, 35.501198>,  <39.555389, 36.310555, 35.510807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318279, 36.274677, 35.501198>,  <38.923100, 36.214886, 35.485184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.318279, 36.274677, 35.501198> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102337, 0.437026, 0.893608,
		0.116082, -0.886941, 0.447059,
		0.987953, 0.149483, 0.040035,
		39.614666, 36.319523, 35.513206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125271, 36.068665, 36.186596>,  <38.923100, 36.214886, 35.485184>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125271, 36.068665, 36.186596> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400703, 36.312466, 36.029434>,  <39.565964, 36.458744, 35.935139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400703, 36.312466, 36.029434>,  <39.125271, 36.068665, 36.186596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.400703, 36.312466, 36.029434> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010112, 0.533690, 0.845620,
		0.725093, -0.586247, 0.361323,
		0.688576, 0.609499, -0.392903,
		39.607277, 36.495316, 35.911564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607052, 36.185963, 36.771534>,  <39.125271, 36.068665, 36.186596>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.607052, 36.185963, 36.771534> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709000, 36.482910, 36.523685>,  <39.770168, 36.661079, 36.374977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709000, 36.482910, 36.523685>,  <39.607052, 36.185963, 36.771534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709000, 36.482910, 36.523685> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139030, 0.605989, 0.783229,
		0.956930, -0.285763, 0.051233,
		0.254864, 0.742373, -0.619618,
		39.785458, 36.705624, 36.337799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.333267, 36.385372, 36.942802>,  <39.607052, 36.185963, 36.771534>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.333267, 36.385372, 36.942802> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141304, 36.692142, 36.772385>,  <40.026127, 36.876205, 36.670135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141304, 36.692142, 36.772385>,  <40.333267, 36.385372, 36.942802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.141304, 36.692142, 36.772385> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292684, 0.597756, 0.746340,
		0.827058, 0.233478, -0.511334,
		-0.479907, 0.766926, -0.426044,
		39.997334, 36.922222, 36.644573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.750996, 36.914562, 37.158974>,  <40.333267, 36.385372, 36.942802>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.750996, 36.914562, 37.158974> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.418598, 37.085434, 37.016445>,  <40.219158, 37.187958, 36.930927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.418598, 37.085434, 37.016445>,  <40.750996, 36.914562, 37.158974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.418598, 37.085434, 37.016445> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045036, 0.690106, 0.722306,
		0.554457, 0.584183, -0.592712,
		-0.830993, 0.427181, -0.356325,
		40.169300, 37.213589, 36.909546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.896595, 37.566875, 37.255379>,  <40.750996, 36.914562, 37.158974>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.896595, 37.566875, 37.255379> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.500904, 37.580532, 37.198444>,  <40.263489, 37.588726, 37.164284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.500904, 37.580532, 37.198444>,  <40.896595, 37.566875, 37.255379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.500904, 37.580532, 37.198444> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064288, 0.772244, 0.632065,
		0.131498, 0.634408, -0.761731,
		-0.989230, 0.034145, -0.142333,
		40.204136, 37.590775, 37.155743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.718010, 38.246651, 37.157867>,  <40.896595, 37.566875, 37.255379>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.718010, 38.246651, 37.157867> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.372276, 38.085102, 37.277748>,  <40.164837, 37.988174, 37.349678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.372276, 38.085102, 37.277748>,  <40.718010, 38.246651, 37.157867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.372276, 38.085102, 37.277748> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087765, 0.707907, 0.700831,
		-0.495207, 0.579447, -0.647311,
		-0.864331, -0.403867, 0.299706,
		40.112976, 37.963943, 37.367661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.216602, 38.769062, 37.338150>,  <40.718010, 38.246651, 37.157867>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.216602, 38.769062, 37.338150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.103535, 38.453091, 37.555813>,  <40.035694, 38.263508, 37.686409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.103535, 38.453091, 37.555813>,  <40.216602, 38.769062, 37.338150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.103535, 38.453091, 37.555813> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274645, 0.610192, 0.743126,
		-0.919059, 0.060607, -0.389432,
		-0.282667, -0.789932, 0.544157,
		40.018734, 38.216110, 37.719059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754841, 39.068146, 37.744965>,  <40.216602, 38.769062, 37.338150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.754841, 39.068146, 37.744965> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.791649, 38.715343, 37.929829>,  <39.813732, 38.503662, 38.040749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.791649, 38.715343, 37.929829>,  <39.754841, 39.068146, 37.744965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.791649, 38.715343, 37.929829> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034430, 0.461032, 0.886715,
		-0.995162, -0.097506, 0.012056,
		0.092018, -0.882010, 0.462159,
		39.819256, 38.450741, 38.068478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167904, 38.940929, 38.103333>,  <39.754841, 39.068146, 37.744965>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.167904, 38.940929, 38.103333> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462479, 38.742371, 38.287182>,  <39.639221, 38.623234, 38.397491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462479, 38.742371, 38.287182>,  <39.167904, 38.940929, 38.103333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.462479, 38.742371, 38.287182> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245240, 0.437309, 0.865227,
		-0.630496, -0.749900, 0.200312,
		0.736432, -0.496398, 0.459627,
		39.683407, 38.593452, 38.425072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915489, 38.741085, 38.742023>,  <39.167904, 38.940929, 38.103333>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.915489, 38.741085, 38.742023> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310261, 38.696350, 38.788425>,  <39.547123, 38.669510, 38.816269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310261, 38.696350, 38.788425>,  <38.915489, 38.741085, 38.742023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.310261, 38.696350, 38.788425> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065911, 0.376780, 0.923955,
		-0.147042, -0.919527, 0.364484,
		0.986932, -0.111837, 0.116010,
		39.606339, 38.662800, 38.823227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002598, 38.277401, 39.242580>,  <38.915489, 38.741085, 38.742023>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.002598, 38.277401, 39.242580> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.343216, 38.487061, 39.237770>,  <39.547585, 38.612854, 39.234886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.343216, 38.487061, 39.237770>,  <39.002598, 38.277401, 39.242580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.343216, 38.487061, 39.237770> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106388, 0.195203, 0.974976,
		0.513377, -0.828955, 0.221987,
		0.851543, 0.524147, -0.012022,
		39.598679, 38.644306, 39.234165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307079, 38.147652, 39.941994>,  <39.002598, 38.277401, 39.242580>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.307079, 38.147652, 39.941994> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464855, 38.485641, 39.797531>,  <39.559521, 38.688435, 39.710854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464855, 38.485641, 39.797531>,  <39.307079, 38.147652, 39.941994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.464855, 38.485641, 39.797531> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073510, 0.420778, 0.904180,
		0.915977, -0.330097, 0.228086,
		0.394441, 0.844974, -0.361157,
		39.583187, 38.739136, 39.689182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463966, 37.554432, 40.330563>,  <39.307079, 38.147652, 39.941994>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.463966, 37.554432, 40.330563> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345688, 37.291721, 40.608036>,  <39.274719, 37.134094, 40.774521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345688, 37.291721, 40.608036>,  <39.463966, 37.554432, 40.330563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.345688, 37.291721, 40.608036> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382467, -0.584024, -0.715985,
		0.875374, -0.477029, -0.078500,
		-0.295700, -0.656779, 0.693688,
		39.256977, 37.094688, 40.816143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.767231, 36.846363, 40.192814>,  <39.463966, 37.554432, 40.330563>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.767231, 36.846363, 40.192814> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433056, 36.806282, 40.408962>,  <39.232552, 36.782234, 40.538651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433056, 36.806282, 40.408962>,  <39.767231, 36.846363, 40.192814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.433056, 36.806282, 40.408962> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342021, -0.674848, -0.653912,
		0.430193, -0.731122, 0.529523,
		-0.835437, -0.100201, 0.540374,
		39.182426, 36.776222, 40.571075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637718, 36.131092, 40.066650>,  <39.767231, 36.846363, 40.192814>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637718, 36.131092, 40.066650> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.304996, 36.286167, 40.225544>,  <39.105362, 36.379211, 40.320881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.304996, 36.286167, 40.225544>,  <39.637718, 36.131092, 40.066650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.304996, 36.286167, 40.225544> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546243, -0.444664, -0.709853,
		-0.098561, -0.807450, 0.581644,
		-0.831808, 0.387683, 0.397238,
		39.055454, 36.402473, 40.344715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146782, 35.551674, 40.074623>,  <39.637718, 36.131092, 40.066650>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.146782, 35.551674, 40.074623> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933945, 35.890144, 40.086353>,  <38.806244, 36.093227, 40.093391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933945, 35.890144, 40.086353>,  <39.146782, 35.551674, 40.074623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.933945, 35.890144, 40.086353> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683188, -0.408630, -0.605207,
		-0.500131, -0.342059, 0.795528,
		-0.532093, 0.846178, 0.029322,
		38.774315, 36.143997, 40.095150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.408985, 35.319069, 39.907532>,  <39.146782, 35.551674, 40.074623>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.408985, 35.319069, 39.907532> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451004, 35.711525, 39.842636>,  <38.476215, 35.946999, 39.803699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451004, 35.711525, 39.842636>,  <38.408985, 35.319069, 39.907532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451004, 35.711525, 39.842636> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456034, -0.097450, -0.884611,
		-0.883741, 0.166912, 0.437199,
		0.105047, 0.981144, -0.162239,
		38.482517, 36.005867, 39.793964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732136, 35.574085, 39.828232>,  <38.408985, 35.319069, 39.907532>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.732136, 35.574085, 39.828232> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.949856, 35.858299, 39.649845>,  <38.080486, 36.028828, 39.542812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.949856, 35.858299, 39.649845>,  <37.732136, 35.574085, 39.828232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.949856, 35.858299, 39.649845> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625416, -0.010610, -0.780220,
		-0.559103, 0.703585, 0.438603,
		0.544297, 0.710532, -0.445965,
		38.113144, 36.071461, 39.516056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276775, 36.059994, 39.519222>,  <37.732136, 35.574085, 39.828232>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.276775, 36.059994, 39.519222> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611275, 36.101738, 39.303890>,  <37.811974, 36.126785, 39.174690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611275, 36.101738, 39.303890>,  <37.276775, 36.059994, 39.519222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.611275, 36.101738, 39.303890> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503272, -0.243735, -0.829042,
		-0.217732, 0.964210, -0.151300,
		0.836247, 0.104364, -0.538329,
		37.862148, 36.133049, 39.142391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096470, 36.528065, 38.967312>,  <37.276775, 36.059994, 39.519222>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096470, 36.528065, 38.967312> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428043, 36.334660, 38.854824>,  <37.626987, 36.218616, 38.787331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428043, 36.334660, 38.854824>,  <37.096470, 36.528065, 38.967312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428043, 36.334660, 38.854824> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368902, -0.094669, -0.924634,
		0.420448, 0.870204, -0.256843,
		0.828936, -0.483511, -0.281217,
		37.676723, 36.189606, 38.770458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268822, 36.844280, 38.346699>,  <37.096470, 36.528065, 38.967312>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268822, 36.844280, 38.346699> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455910, 36.490768, 38.341648>,  <37.568165, 36.278660, 38.338619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455910, 36.490768, 38.341648>,  <37.268822, 36.844280, 38.346699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.455910, 36.490768, 38.341648> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361815, -0.178412, -0.915019,
		0.806427, 0.432545, -0.403214,
		0.467725, -0.883784, -0.012625,
		37.596226, 36.225632, 38.337860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676945, 36.844898, 37.721912>,  <37.268822, 36.844280, 38.346699>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676945, 36.844898, 37.721912> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644543, 36.454586, 37.803200>,  <37.625099, 36.220398, 37.851974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644543, 36.454586, 37.803200>,  <37.676945, 36.844898, 37.721912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644543, 36.454586, 37.803200> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369034, -0.160038, -0.915534,
		0.925879, -0.149160, -0.347131,
		-0.081007, -0.975776, 0.203221,
		37.620239, 36.161854, 37.864166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059921, 36.612446, 37.164413>,  <37.676945, 36.844898, 37.721912>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.059921, 36.612446, 37.164413> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860806, 36.313789, 37.340927>,  <37.741337, 36.134594, 37.446835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860806, 36.313789, 37.340927>,  <38.059921, 36.612446, 37.164413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.860806, 36.313789, 37.340927> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320807, -0.314202, -0.893510,
		0.805786, -0.586345, -0.083123,
		-0.497787, -0.746644, 0.441283,
		37.711468, 36.089798, 37.473312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247818, 35.985928, 36.871632>,  <38.059921, 36.612446, 37.164413>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.247818, 35.985928, 36.871632> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881496, 35.908337, 37.012299>,  <37.661701, 35.861782, 37.096699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881496, 35.908337, 37.012299>,  <38.247818, 35.985928, 36.871632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881496, 35.908337, 37.012299> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285895, -0.300086, -0.910062,
		0.282065, -0.933980, 0.219363,
		-0.915808, -0.193982, 0.351664,
		37.606754, 35.850143, 37.117798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<41.744045, 38.246017, 43.742046> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.371487, 38.160660, 43.860001>,  <41.147949, 38.109444, 43.930771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.371487, 38.160660, 43.860001>,  <41.744045, 38.246017, 43.742046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.371487, 38.160660, 43.860001> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192992, -0.397367, -0.897136,
		0.308623, -0.892503, 0.328924,
		-0.931400, -0.213397, 0.294882,
		41.092068, 38.096642, 43.948463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.519276, 37.556244, 43.586262>,  <41.744045, 38.246017, 43.742046>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.519276, 37.556244, 43.586262> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.169022, 37.748653, 43.603569>,  <40.958870, 37.864098, 43.613953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.169022, 37.748653, 43.603569>,  <41.519276, 37.556244, 43.586262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.169022, 37.748653, 43.603569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298193, -0.467985, -0.831908,
		-0.379917, -0.741355, 0.553224,
		-0.875639, 0.481023, 0.043271,
		40.906330, 37.892960, 43.616550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.069149, 37.189846, 42.996731>,  <41.519276, 37.556244, 43.586262>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.069149, 37.189846, 42.996731> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.824642, 37.458874, 43.163586>,  <40.677937, 37.620289, 43.263699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.824642, 37.458874, 43.163586>,  <41.069149, 37.189846, 42.996731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.824642, 37.458874, 43.163586> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678557, -0.174118, -0.713612,
		-0.407320, -0.719261, 0.562808,
		-0.611269, 0.672566, 0.417138,
		40.641262, 37.660645, 43.288727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.393467, 36.858864, 43.063541>,  <41.069149, 37.189846, 42.996731>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.393467, 36.858864, 43.063541> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.357513, 37.253922, 43.012196>,  <40.335941, 37.490955, 42.981388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.357513, 37.253922, 43.012196>,  <40.393467, 36.858864, 43.063541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.357513, 37.253922, 43.012196> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628197, -0.156238, -0.762207,
		-0.772846, 0.012132, 0.634478,
		-0.089883, 0.987645, -0.128369,
		40.330547, 37.550217, 42.973686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649933, 37.054909, 43.102886>,  <40.393467, 36.858864, 43.063541>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.649933, 37.054909, 43.102886> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.849617, 37.327225, 42.888477>,  <39.969425, 37.490612, 42.759830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.849617, 37.327225, 42.888477>,  <39.649933, 37.054909, 43.102886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.849617, 37.327225, 42.888477> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622952, -0.147996, -0.768132,
		-0.602265, 0.717373, 0.350218,
		0.499207, 0.680788, -0.536022,
		39.999378, 37.531460, 42.727669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159996, 37.487831, 42.781792>,  <39.649933, 37.054909, 43.102886>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159996, 37.487831, 42.781792> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.488007, 37.553127, 42.562374>,  <39.684814, 37.592304, 42.430721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.488007, 37.553127, 42.562374>,  <39.159996, 37.487831, 42.781792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.488007, 37.553127, 42.562374> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542256, -0.084958, -0.835907,
		-0.183055, 0.982922, 0.018848,
		0.820030, 0.163238, -0.548547,
		39.734016, 37.602100, 42.397808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923920, 37.933872, 42.225662>,  <39.159996, 37.487831, 42.781792>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.923920, 37.933872, 42.225662> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.253155, 37.738892, 42.109097>,  <39.450695, 37.621902, 42.039158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.253155, 37.738892, 42.109097>,  <38.923920, 37.933872, 42.225662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253155, 37.738892, 42.109097> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399427, -0.132095, -0.907198,
		0.403720, 0.863101, -0.303426,
		0.823084, -0.487451, -0.291417,
		39.500080, 37.592655, 42.021671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029400, 38.140957, 41.532265>,  <38.923920, 37.933872, 42.225662>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.029400, 38.140957, 41.532265> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.231457, 37.796188, 41.549797>,  <39.352692, 37.589325, 41.560314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.231457, 37.796188, 41.549797>,  <39.029400, 38.140957, 41.532265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231457, 37.796188, 41.549797> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238510, -0.188226, -0.952724,
		0.829427, 0.470803, -0.300658,
		0.505138, -0.861925, 0.043828,
		39.382999, 37.537609, 41.562946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.480381, 38.022423, 40.882385>,  <39.029400, 38.140957, 41.532265>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.480381, 38.022423, 40.882385> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.405933, 37.669014, 41.054310>,  <39.361263, 37.456966, 41.157467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.405933, 37.669014, 41.054310>,  <39.480381, 38.022423, 40.882385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.405933, 37.669014, 41.054310> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194775, -0.395599, -0.897532,
		0.963027, -0.250767, -0.098460,
		-0.186121, -0.883525, 0.429816,
		39.350098, 37.403957, 41.183254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.927540, 38.329323, 40.378166>,  <39.480381, 38.022423, 40.882385>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.927540, 38.329323, 40.378166> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.812195, 38.658119, 40.181728>,  <39.742989, 38.855396, 40.063866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.812195, 38.658119, 40.181728>,  <39.927540, 38.329323, 40.378166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.812195, 38.658119, 40.181728> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133132, 0.542322, 0.829556,
		0.948220, 0.173835, -0.265820,
		-0.288366, 0.821991, -0.491097,
		39.725685, 38.904716, 40.034401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.282257, 38.858212, 40.761448>,  <39.927540, 38.329323, 40.378166>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.282257, 38.858212, 40.761448> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.053173, 39.092152, 40.531685>,  <39.915722, 39.232517, 40.393826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.053173, 39.092152, 40.531685>,  <40.282257, 38.858212, 40.761448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.053173, 39.092152, 40.531685> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021612, 0.711240, 0.702617,
		0.819470, 0.389984, -0.419976,
		-0.572714, 0.584851, -0.574412,
		39.881359, 39.267609, 40.359360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.625317, 39.571438, 40.671848>,  <40.282257, 38.858212, 40.761448>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.625317, 39.571438, 40.671848> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.235592, 39.631275, 40.604511>,  <40.001759, 39.667179, 40.564110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.235592, 39.631275, 40.604511>,  <40.625317, 39.571438, 40.671848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.235592, 39.631275, 40.604511> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003689, 0.758015, 0.652227,
		0.225176, 0.634851, -0.739094,
		-0.974311, 0.149592, -0.168344,
		39.943298, 39.676151, 40.554008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.563763, 40.193306, 40.299156>,  <40.625317, 39.571438, 40.671848>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.563763, 40.193306, 40.299156> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.227482, 40.126015, 40.505039>,  <40.025715, 40.085640, 40.628571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.227482, 40.126015, 40.505039>,  <40.563763, 40.193306, 40.299156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.227482, 40.126015, 40.505039> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122841, 0.866493, 0.483839,
		-0.527388, 0.469990, -0.707793,
		-0.840697, -0.168225, 0.514712,
		39.975273, 40.075546, 40.659454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.211357, 40.805370, 40.282402>,  <40.563763, 40.193306, 40.299156>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.211357, 40.805370, 40.282402> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.045712, 40.612900, 40.591461>,  <39.946323, 40.497417, 40.776897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.045712, 40.612900, 40.591461>,  <40.211357, 40.805370, 40.282402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.045712, 40.612900, 40.591461> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016408, 0.852660, 0.522209,
		-0.910078, 0.203575, -0.360991,
		-0.414112, -0.481174, 0.772647,
		39.921478, 40.468548, 40.823254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.819267, 41.330860, 40.673878>,  <40.211357, 40.805370, 40.282402>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.819267, 41.330860, 40.673878> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.911228, 41.042912, 40.935848>,  <39.966404, 40.870144, 41.093033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.911228, 41.042912, 40.935848>,  <39.819267, 41.330860, 40.673878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.911228, 41.042912, 40.935848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153319, 0.691343, 0.706072,
		-0.961061, -0.061916, 0.269312,
		0.229904, -0.719869, 0.654930,
		39.980198, 40.826950, 41.132328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478214, 41.474888, 41.381035>,  <39.819267, 41.330860, 40.673878>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478214, 41.474888, 41.381035> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.764172, 41.208023, 41.464767>,  <39.935745, 41.047905, 41.515007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.764172, 41.208023, 41.464767>,  <39.478214, 41.474888, 41.381035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.764172, 41.208023, 41.464767> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167262, 0.453854, 0.875237,
		-0.678930, -0.590690, 0.436050,
		0.714897, -0.667159, 0.209335,
		39.978642, 41.007874, 41.527569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.479416, 41.434177, 42.100334>,  <39.478214, 41.474888, 41.381035>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.479416, 41.434177, 42.100334> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.826313, 41.243401, 42.043175>,  <40.034451, 41.128937, 42.008881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.826313, 41.243401, 42.043175>,  <39.479416, 41.434177, 42.100334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.826313, 41.243401, 42.043175> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328080, 0.331534, 0.884561,
		-0.374506, -0.814012, 0.443994,
		0.867242, -0.476939, -0.142899,
		40.086487, 41.100319, 42.000305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605801, 41.126678, 42.721493>,  <39.479416, 41.434177, 42.100334>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.605801, 41.126678, 42.721493> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.961365, 41.130177, 42.538296>,  <40.174702, 41.132275, 42.428375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.961365, 41.130177, 42.538296>,  <39.605801, 41.126678, 42.721493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.961365, 41.130177, 42.538296> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452535, 0.138333, 0.880952,
		0.071056, -0.990347, 0.119011,
		0.888911, 0.008740, -0.457996,
		40.228039, 41.132801, 42.400898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.027676, 40.862000, 43.273083>,  <39.605801, 41.126678, 42.721493>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.027676, 40.862000, 43.273083> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.243683, 41.045330, 42.990715>,  <40.373287, 41.155327, 42.821293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.243683, 41.045330, 42.990715>,  <40.027676, 40.862000, 43.273083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.243683, 41.045330, 42.990715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353628, 0.637552, 0.684452,
		0.763761, -0.619248, 0.182212,
		0.540015, 0.458323, -0.705921,
		40.405685, 41.182827, 42.778938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.742195, 40.870537, 43.594791>,  <40.027676, 40.862000, 43.273083>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.742195, 40.870537, 43.594791> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.726803, 41.155087, 43.314087>,  <40.717567, 41.325817, 43.145664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.726803, 41.155087, 43.314087>,  <40.742195, 40.870537, 43.594791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.726803, 41.155087, 43.314087> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325039, 0.673000, 0.664395,
		0.944917, -0.202535, -0.257120,
		-0.038479, 0.711373, -0.701761,
		40.715260, 41.368500, 43.103558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.390762, 41.222656, 43.691730>,  <40.742195, 40.870537, 43.594791>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.390762, 41.222656, 43.691730> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.109039, 41.451206, 43.523216>,  <40.940006, 41.588337, 43.422108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.109039, 41.451206, 43.523216>,  <41.390762, 41.222656, 43.691730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.109039, 41.451206, 43.523216> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230855, 0.745537, 0.625204,
		0.671309, 0.343082, -0.656993,
		-0.704309, 0.571375, -0.421284,
		40.897747, 41.622620, 43.396832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.752705, 41.850739, 43.683224>,  <41.390762, 41.222656, 43.691730>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.752705, 41.850739, 43.683224> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.365479, 41.931068, 43.623199>,  <41.133144, 41.979267, 43.587185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.365479, 41.931068, 43.623199>,  <41.752705, 41.850739, 43.683224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.365479, 41.931068, 43.623199> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039365, 0.712924, 0.700136,
		0.247589, 0.671870, -0.698062,
		-0.968065, 0.200825, -0.150064,
		41.075058, 41.991318, 43.578178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.691418, 42.589752, 43.519138>,  <41.752705, 41.850739, 43.683224>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.691418, 42.589752, 43.519138> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.351494, 42.455036, 43.681324>,  <41.147541, 42.374207, 43.778637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.351494, 42.455036, 43.681324>,  <41.691418, 42.589752, 43.519138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.351494, 42.455036, 43.681324> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121717, 0.623073, 0.772635,
		-0.512851, 0.705942, -0.488498,
		-0.849805, -0.336789, 0.405469,
		41.096554, 42.354000, 43.802963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.872044, 38.962826, 46.943325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.221764, 39.042286, 46.766178>,  <35.431595, 39.089962, 46.659889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.221764, 39.042286, 46.766178>,  <34.872044, 38.962826, 46.943325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.221764, 39.042286, 46.766178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288890, -0.520238, -0.803676,
		-0.390050, 0.830596, -0.397456,
		0.874302, 0.198652, -0.442870,
		35.484055, 39.101883, 46.633316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757328, 39.303898, 46.193710>,  <34.872044, 38.962826, 46.943325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.757328, 39.303898, 46.193710> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.123207, 39.142296, 46.197811>,  <35.342735, 39.045334, 46.200272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.123207, 39.142296, 46.197811>,  <34.757328, 39.303898, 46.193710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123207, 39.142296, 46.197811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150149, -0.363284, -0.919500,
		0.375210, 0.839525, -0.392956,
		0.914698, -0.404008, 0.010254,
		35.397617, 39.021095, 46.200886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163136, 39.574852, 45.594570>,  <34.757328, 39.303898, 46.193710>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163136, 39.574852, 45.594570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.295345, 39.218697, 45.719761>,  <35.374672, 39.005001, 45.794876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.295345, 39.218697, 45.719761>,  <35.163136, 39.574852, 45.594570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.295345, 39.218697, 45.719761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116311, -0.367516, -0.922715,
		0.936602, 0.268580, -0.225036,
		0.330527, -0.890391, 0.312978,
		35.394505, 38.951580, 45.813656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809666, 39.512665, 45.232616>,  <35.163136, 39.574852, 45.594570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809666, 39.512665, 45.232616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.650661, 39.166710, 45.355225>,  <35.555260, 38.959137, 45.428791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.650661, 39.166710, 45.355225>,  <35.809666, 39.512665, 45.232616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.650661, 39.166710, 45.355225> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228382, -0.230284, -0.945944,
		0.888723, -0.446024, -0.105985,
		-0.397508, -0.864888, 0.306523,
		35.531410, 38.907242, 45.447182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977440, 39.032085, 44.663601>,  <35.809666, 39.512665, 45.232616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977440, 39.032085, 44.663601> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.755531, 38.798031, 44.900192>,  <35.622387, 38.657597, 45.042145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.755531, 38.798031, 44.900192>,  <35.977440, 39.032085, 44.663601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.755531, 38.798031, 44.900192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180459, -0.609356, -0.772088,
		0.812194, -0.535072, 0.232462,
		-0.554775, -0.585135, 0.591474,
		35.589100, 38.622490, 45.077633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240536, 38.287144, 44.628113>,  <35.977440, 39.032085, 44.663601>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240536, 38.287144, 44.628113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.858200, 38.269428, 44.744320>,  <35.628799, 38.258797, 44.814045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.858200, 38.269428, 44.744320>,  <36.240536, 38.287144, 44.628113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.858200, 38.269428, 44.744320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208544, -0.594291, -0.776742,
		0.207057, -0.803029, 0.558812,
		-0.955843, -0.044293, 0.290519,
		35.571445, 38.256142, 44.831474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054138, 37.702286, 44.360596>,  <36.240536, 38.287144, 44.628113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054138, 37.702286, 44.360596> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.702019, 37.854546, 44.473858>,  <35.490746, 37.945900, 44.541817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.702019, 37.854546, 44.473858>,  <36.054138, 37.702286, 44.360596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702019, 37.854546, 44.473858> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449760, -0.479687, -0.753404,
		-0.150956, -0.790574, 0.593469,
		-0.880301, 0.380649, 0.283157,
		35.437927, 37.968739, 44.558804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602325, 37.137615, 44.475933>,  <36.054138, 37.702286, 44.360596>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602325, 37.137615, 44.475933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.391228, 37.470684, 44.408833>,  <35.264568, 37.670525, 44.368572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.391228, 37.470684, 44.408833>,  <35.602325, 37.137615, 44.475933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391228, 37.470684, 44.408833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479978, -0.455285, -0.749891,
		-0.700789, -0.315235, 0.639939,
		-0.527746, 0.832672, -0.167753,
		35.232903, 37.720486, 44.358505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945580, 36.895794, 44.471249>,  <35.602325, 37.137615, 44.475933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945580, 36.895794, 44.471249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.919949, 37.242149, 44.272804>,  <34.904572, 37.449963, 44.153736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.919949, 37.242149, 44.272804>,  <34.945580, 36.895794, 44.471249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.919949, 37.242149, 44.272804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508538, -0.456077, -0.730331,
		-0.858652, 0.205497, 0.469561,
		-0.064076, 0.865890, -0.496115,
		34.900726, 37.501915, 44.123970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.260502, 36.999519, 44.287205>,  <34.945580, 36.895794, 44.471249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.260502, 36.999519, 44.287205> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.473404, 37.231728, 44.040726>,  <34.601147, 37.371052, 43.892838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.473404, 37.231728, 44.040726>,  <34.260502, 36.999519, 44.287205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473404, 37.231728, 44.040726> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461441, -0.411299, -0.786069,
		-0.709772, 0.702728, 0.048961,
		0.532255, 0.580522, -0.616197,
		34.633080, 37.405884, 43.855865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.811920, 37.242081, 43.762142>,  <34.260502, 36.999519, 44.287205>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.811920, 37.242081, 43.762142> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.163830, 37.351452, 43.606590>,  <34.374977, 37.417076, 43.513260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.163830, 37.351452, 43.606590>,  <33.811920, 37.242081, 43.762142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163830, 37.351452, 43.606590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382938, -0.077107, -0.920550,
		-0.281689, 0.958797, 0.036869,
		0.879778, 0.273427, -0.388880,
		34.427765, 37.433479, 43.489925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750217, 37.824356, 43.302437>,  <33.811920, 37.242081, 43.762142>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750217, 37.824356, 43.302437> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.082756, 37.646244, 43.169415>,  <34.282280, 37.539379, 43.089600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.082756, 37.646244, 43.169415>,  <33.750217, 37.824356, 43.302437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.082756, 37.646244, 43.169415> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412864, -0.094253, -0.905903,
		0.372032, 0.890419, -0.262195,
		0.831346, -0.445276, -0.332556,
		34.332161, 37.512661, 43.069649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921280, 38.116478, 42.716976>,  <33.750217, 37.824356, 43.302437>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921280, 38.116478, 42.716976> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.133232, 37.779240, 42.680290>,  <34.260403, 37.576897, 42.658279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.133232, 37.779240, 42.680290>,  <33.921280, 38.116478, 42.716976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.133232, 37.779240, 42.680290> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491478, -0.217140, -0.843386,
		0.691141, 0.491971, -0.529423,
		0.529880, -0.843098, -0.091718,
		34.292194, 37.526310, 42.652775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.287354, 38.194893, 42.101654>,  <33.921280, 38.116478, 42.716976>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.287354, 38.194893, 42.101654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.236740, 37.807060, 42.185467>,  <34.206371, 37.574360, 42.235756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.236740, 37.807060, 42.185467>,  <34.287354, 38.194893, 42.101654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.236740, 37.807060, 42.185467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448267, -0.132545, -0.884018,
		0.884899, -0.205785, -0.417860,
		-0.126533, -0.969580, 0.209535,
		34.198780, 37.516186, 42.248329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390827, 38.774773, 41.592838>,  <34.287354, 38.194893, 42.101654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390827, 38.774773, 41.592838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.159779, 39.016407, 41.373226>,  <34.021149, 39.161388, 41.241459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.159779, 39.016407, 41.373226>,  <34.390827, 38.774773, 41.592838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.159779, 39.016407, 41.373226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287205, 0.479185, 0.829394,
		0.764112, 0.636761, -0.103292,
		-0.577622, 0.604084, -0.549032,
		33.986492, 39.197632, 41.208515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.710255, 39.445148, 41.607548>,  <34.390827, 38.774773, 41.592838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.710255, 39.445148, 41.607548> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.320400, 39.482765, 41.526318>,  <34.086487, 39.505337, 41.477581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.320400, 39.482765, 41.526318>,  <34.710255, 39.445148, 41.607548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320400, 39.482765, 41.526318> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082721, 0.691760, 0.717374,
		0.207939, 0.715978, -0.666436,
		-0.974638, 0.094042, -0.203071,
		34.028008, 39.510979, 41.465397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712242, 40.135513, 41.774040>,  <34.710255, 39.445148, 41.607548>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712242, 40.135513, 41.774040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.341221, 39.986080, 41.777611>,  <34.118607, 39.896420, 41.779755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.341221, 39.986080, 41.777611>,  <34.712242, 40.135513, 41.774040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.341221, 39.986080, 41.777611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281017, 0.713062, 0.642318,
		-0.246326, 0.593275, -0.766386,
		-0.927552, -0.373587, 0.008925,
		34.062954, 39.874004, 41.780289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.222210, 40.669884, 41.709068>,  <34.712242, 40.135513, 41.774040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.222210, 40.669884, 41.709068> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.990425, 40.389065, 41.874649>,  <33.851353, 40.220573, 41.973999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.990425, 40.389065, 41.874649>,  <34.222210, 40.669884, 41.709068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.990425, 40.389065, 41.874649> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417982, 0.692027, 0.588549,
		-0.699654, 0.168016, -0.694445,
		-0.579461, -0.702046, 0.413952,
		33.816586, 40.178452, 41.998837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549644, 40.946507, 41.787266>,  <34.222210, 40.669884, 41.709068>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549644, 40.946507, 41.787266> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.600548, 40.646667, 42.047085>,  <33.631088, 40.466763, 42.202976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.600548, 40.646667, 42.047085>,  <33.549644, 40.946507, 41.787266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.600548, 40.646667, 42.047085> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230193, 0.614671, 0.754448,
		-0.964788, -0.245531, -0.094329,
		0.127259, -0.749596, 0.649547,
		33.638725, 40.421787, 42.241947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.143627, 41.176743, 42.461876>,  <33.549644, 40.946507, 41.787266>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.143627, 41.176743, 42.461876> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.290752, 40.841961, 42.623974>,  <33.379028, 40.641090, 42.721233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.290752, 40.841961, 42.623974>,  <33.143627, 41.176743, 42.461876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.290752, 40.841961, 42.623974> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006684, 0.433400, 0.901177,
		-0.929876, -0.334173, 0.153815,
		0.367812, -0.836955, 0.405242,
		33.401096, 40.590874, 42.745548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.810955, 41.215038, 43.069527>,  <33.143627, 41.176743, 42.461876>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.810955, 41.215038, 43.069527> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.159782, 41.022697, 43.105942>,  <33.369080, 40.907295, 43.127792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.159782, 41.022697, 43.105942>,  <32.810955, 41.215038, 43.069527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.159782, 41.022697, 43.105942> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257380, 0.608848, 0.750373,
		-0.416243, -0.630943, 0.654716,
		0.872065, -0.480848, 0.091036,
		33.421402, 40.878445, 43.133251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.977139, 41.255417, 43.781738>,  <32.810955, 41.215038, 43.069527>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.977139, 41.255417, 43.781738> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.326508, 41.128746, 43.633762>,  <33.536129, 41.052742, 43.544979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.326508, 41.128746, 43.633762>,  <32.977139, 41.255417, 43.781738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326508, 41.128746, 43.633762> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486784, 0.546759, 0.681246,
		-0.013471, -0.775092, 0.631705,
		0.873418, -0.316681, -0.369937,
		33.588531, 41.033741, 43.522781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.364899, 40.847454, 44.339687>,  <32.977139, 41.255417, 43.781738>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.364899, 40.847454, 44.339687> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.600826, 40.996506, 44.053120>,  <33.742382, 41.085938, 43.881180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.600826, 40.996506, 44.053120>,  <33.364899, 40.847454, 44.339687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.600826, 40.996506, 44.053120> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521060, 0.502160, 0.690168,
		0.616938, -0.780372, 0.102019,
		0.589818, 0.372633, -0.716422,
		33.777771, 41.108295, 43.838192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967552, 40.859676, 44.670902>,  <33.364899, 40.847454, 44.339687>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.967552, 40.859676, 44.670902> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.037407, 41.105473, 44.363163>,  <34.079319, 41.252953, 44.178520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.037407, 41.105473, 44.363163>,  <33.967552, 40.859676, 44.670902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.037407, 41.105473, 44.363163> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557444, 0.582373, 0.591691,
		0.811638, -0.532201, -0.240841,
		0.174639, 0.614494, -0.769349,
		34.089798, 41.289822, 44.132359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622463, 40.915325, 44.716595>,  <33.967552, 40.859676, 44.670902>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622463, 40.915325, 44.716595> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.506577, 41.227985, 44.495655>,  <34.437046, 41.415581, 44.363091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.506577, 41.227985, 44.495655>,  <34.622463, 40.915325, 44.716595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506577, 41.227985, 44.495655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580291, 0.602385, 0.548082,
		0.761136, -0.161739, -0.628102,
		-0.289713, 0.781647, -0.552353,
		34.419662, 41.462479, 44.329948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189602, 41.281437, 44.478451>,  <34.622463, 40.915325, 44.716595>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189602, 41.281437, 44.478451> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.889366, 41.545723, 44.481823>,  <34.709225, 41.704296, 44.483845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.889366, 41.545723, 44.481823>,  <35.189602, 41.281437, 44.478451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.889366, 41.545723, 44.481823> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529444, 0.593732, 0.605947,
		0.395356, 0.459278, -0.795461,
		-0.750588, 0.660717, 0.008426,
		34.664188, 41.743938, 44.484352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549152, 41.883621, 44.582916>,  <35.189602, 41.281437, 44.478451>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549152, 41.883621, 44.582916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.170502, 41.989025, 44.657177>,  <34.943314, 42.052269, 44.701733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.170502, 41.989025, 44.657177>,  <35.549152, 41.883621, 44.582916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170502, 41.989025, 44.657177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317214, 0.659218, 0.681768,
		0.057271, 0.704268, -0.707621,
		-0.946623, 0.263513, 0.185649,
		34.886517, 42.068081, 44.712872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.472610, 42.621708, 44.518703>,  <35.549152, 41.883621, 44.582916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.472610, 42.621708, 44.518703> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.219990, 42.469078, 44.788677>,  <35.068417, 42.377499, 44.950661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.219990, 42.469078, 44.788677>,  <35.472610, 42.621708, 44.518703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219990, 42.469078, 44.788677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377699, 0.608828, 0.697619,
		-0.677114, 0.695507, -0.240387,
		-0.631553, -0.381573, 0.674938,
		35.030525, 42.354607, 44.991158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532822, 42.970131, 43.886639>,  <35.472610, 42.621708, 44.518703>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532822, 42.970131, 43.886639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.906887, 43.052773, 43.771545>,  <36.131325, 43.102360, 43.702488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.906887, 43.052773, 43.771545>,  <35.532822, 42.970131, 43.886639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.906887, 43.052773, 43.771545> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087170, -0.653076, -0.752259,
		-0.343333, 0.728564, -0.592720,
		0.935160, 0.206608, -0.287732,
		36.187435, 43.114754, 43.685226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528431, 43.146103, 43.200325>,  <35.532822, 42.970131, 43.886639>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528431, 43.146103, 43.200325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.911945, 43.045853, 43.253872>,  <36.142052, 42.985703, 43.285999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.911945, 43.045853, 43.253872>,  <35.528431, 43.146103, 43.200325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911945, 43.045853, 43.253872> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050072, -0.314721, -0.947863,
		0.279691, 0.915498, -0.289200,
		0.958784, -0.250628, 0.133865,
		36.199581, 42.970665, 43.294033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832798, 43.200554, 42.544109>,  <35.528431, 43.146103, 43.200325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832798, 43.200554, 42.544109> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.111267, 42.980946, 42.729111>,  <36.278351, 42.849182, 42.840111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.111267, 42.980946, 42.729111>,  <35.832798, 43.200554, 42.544109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111267, 42.980946, 42.729111> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257271, -0.410668, -0.874736,
		0.670186, 0.727961, -0.144650,
		0.696177, -0.549022, 0.462507,
		36.320122, 42.816238, 42.867863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478569, 43.318409, 42.180271>,  <35.832798, 43.200554, 42.544109>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.478569, 43.318409, 42.180271> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.480042, 42.972820, 42.381683>,  <36.480927, 42.765469, 42.502533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.480042, 42.972820, 42.381683>,  <36.478569, 43.318409, 42.180271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480042, 42.972820, 42.381683> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159838, -0.496554, -0.853162,
		0.987136, 0.083624, 0.136267,
		0.003681, -0.863968, 0.503533,
		36.481144, 42.713631, 42.532742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084522, 42.950066, 41.978081>,  <36.478569, 43.318409, 42.180271>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.084522, 42.950066, 41.978081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.811024, 42.686283, 42.103050>,  <36.646923, 42.528015, 42.178032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.811024, 42.686283, 42.103050>,  <37.084522, 42.950066, 41.978081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811024, 42.686283, 42.103050> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048158, -0.467988, -0.882422,
		0.728130, -0.588306, 0.351743,
		-0.683745, -0.659457, 0.312424,
		36.605900, 42.488445, 42.196777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261887, 42.371956, 41.663170>,  <37.084522, 42.950066, 41.978081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261887, 42.371956, 41.663170> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.909870, 42.229958, 41.789352>,  <36.698662, 42.144760, 41.865063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.909870, 42.229958, 41.789352>,  <37.261887, 42.371956, 41.663170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.909870, 42.229958, 41.789352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037605, -0.714258, -0.698872,
		0.473413, -0.603171, 0.641923,
		-0.880038, -0.354995, 0.315457,
		36.645859, 42.123459, 41.883991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352261, 41.719521, 41.755619>,  <37.261887, 42.371956, 41.663170>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.352261, 41.719521, 41.755619> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.955864, 41.754936, 41.715420>,  <36.718025, 41.776184, 41.691299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.955864, 41.754936, 41.715420>,  <37.352261, 41.719521, 41.755619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955864, 41.754936, 41.715420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003888, -0.731013, -0.682353,
		-0.133876, -0.676596, 0.724082,
		-0.990991, 0.088535, -0.100496,
		36.658566, 41.781498, 41.685272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198433, 41.079823, 41.567913>,  <37.352261, 41.719521, 41.755619>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.198433, 41.079823, 41.567913> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.858360, 41.263092, 41.464176>,  <36.654316, 41.373055, 41.401932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.858360, 41.263092, 41.464176>,  <37.198433, 41.079823, 41.567913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858360, 41.263092, 41.464176> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043812, -0.552462, -0.832386,
		-0.524649, -0.696324, 0.489771,
		-0.850190, 0.458168, -0.259341,
		36.603306, 41.400543, 41.386372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750412, 40.606030, 41.291679>,  <37.198433, 41.079823, 41.567913>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750412, 40.606030, 41.291679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.596954, 40.942730, 41.139744>,  <36.504879, 41.144749, 41.048584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.596954, 40.942730, 41.139744>,  <36.750412, 40.606030, 41.291679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596954, 40.942730, 41.139744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023718, -0.420157, -0.907142,
		-0.923178, -0.339007, 0.181154,
		-0.383640, 0.841749, -0.379839,
		36.481861, 41.195255, 41.025791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000488, 40.473129, 41.009388>,  <36.750412, 40.606030, 41.291679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000488, 40.473129, 41.009388> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.197048, 40.770947, 40.828644>,  <36.314983, 40.949638, 40.720200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.197048, 40.770947, 40.828644>,  <36.000488, 40.473129, 41.009388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.197048, 40.770947, 40.828644> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179961, -0.420821, -0.889114,
		-0.852138, 0.518229, -0.072802,
		0.491401, 0.744546, -0.451858,
		36.344467, 40.994312, 40.693085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621529, 40.449196, 40.433369>,  <36.000488, 40.473129, 41.009388>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621529, 40.449196, 40.433369> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.938618, 40.673836, 40.338547>,  <36.128872, 40.808620, 40.281654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.938618, 40.673836, 40.338547>,  <35.621529, 40.449196, 40.433369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938618, 40.673836, 40.338547> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077728, -0.292582, -0.953076,
		-0.604603, 0.773953, -0.188285,
		0.792725, 0.561597, -0.237054,
		36.176434, 40.842316, 40.267429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482029, 40.647591, 39.737461>,  <35.621529, 40.449196, 40.433369>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482029, 40.647591, 39.737461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.877357, 40.664688, 39.795963>,  <36.114555, 40.674946, 39.831066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.877357, 40.664688, 39.795963>,  <35.482029, 40.647591, 39.737461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877357, 40.664688, 39.795963> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152348, -0.259222, -0.953726,
		-0.002854, 0.964872, -0.262707,
		0.988323, 0.042745, 0.146256,
		36.173855, 40.677513, 39.839840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.745445, 40.998398, 39.011459>,  <35.482029, 40.647591, 39.737461>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.745445, 40.998398, 39.011459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.029915, 40.828735, 39.235718>,  <36.200596, 40.726940, 39.370274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.029915, 40.828735, 39.235718>,  <35.745445, 40.998398, 39.011459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029915, 40.828735, 39.235718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445970, -0.344295, -0.826179,
		0.543454, 0.837589, -0.055694,
		0.711174, -0.424152, 0.560648,
		36.243267, 40.701488, 39.403912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307247, 41.091282, 38.698997>,  <35.745445, 40.998398, 39.011459>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307247, 41.091282, 38.698997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.438549, 40.792580, 38.930378>,  <36.517330, 40.613358, 39.069206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.438549, 40.792580, 38.930378>,  <36.307247, 41.091282, 38.698997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438549, 40.792580, 38.930378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464800, -0.405424, -0.787142,
		0.822322, 0.527244, 0.214011,
		0.328251, -0.746756, 0.578452,
		36.537025, 40.568554, 39.103912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.976131, 32.833450, 29.821909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.683472, 32.838974, 29.549294>,  <28.507875, 32.842289, 29.385725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.683472, 32.838974, 29.549294>,  <28.976131, 32.833450, 29.821909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.683472, 32.838974, 29.549294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389237, 0.812321, 0.434316,
		0.559625, 0.583048, -0.588961,
		-0.731652, 0.013809, -0.681539,
		28.463976, 32.843117, 29.344831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.964903, 33.561554, 29.573898>,  <28.976131, 32.833450, 29.821909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.964903, 33.561554, 29.573898> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.614620, 33.394310, 29.477299>,  <28.404451, 33.293964, 29.419338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.614620, 33.394310, 29.477299>,  <28.964903, 33.561554, 29.573898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.614620, 33.394310, 29.477299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481795, 0.789604, 0.380000,
		0.031807, 0.449121, -0.892904,
		-0.875707, -0.418110, -0.241499,
		28.351908, 33.268875, 29.404848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.713326, 34.092991, 29.196930>,  <28.964903, 33.561554, 29.573898>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.713326, 34.092991, 29.196930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.427555, 33.861702, 29.354542>,  <28.256094, 33.722931, 29.449108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.427555, 33.861702, 29.354542>,  <28.713326, 34.092991, 29.196930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.427555, 33.861702, 29.354542> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492494, 0.815556, 0.303839,
		-0.497038, 0.023013, -0.867424,
		-0.714424, -0.578221, 0.394029,
		28.213228, 33.688236, 29.472750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.136028, 34.636475, 29.244314>,  <28.713326, 34.092991, 29.196930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.136028, 34.636475, 29.244314> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.015001, 34.314426, 29.448366>,  <27.942385, 34.121197, 29.570797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.015001, 34.314426, 29.448366>,  <28.136028, 34.636475, 29.244314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.015001, 34.314426, 29.448366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591046, 0.578374, 0.562271,
		-0.747743, -0.131387, -0.650860,
		-0.302565, -0.805122, 0.510130,
		27.924232, 34.072891, 29.601406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.503174, 34.854694, 29.410282>,  <28.136028, 34.636475, 29.244314>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.503174, 34.854694, 29.410282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.563150, 34.546661, 29.658310>,  <27.599136, 34.361839, 29.807127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.563150, 34.546661, 29.658310>,  <27.503174, 34.854694, 29.410282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.563150, 34.546661, 29.658310> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431823, 0.513169, 0.741745,
		-0.889408, -0.378979, -0.255595,
		0.149942, -0.770086, 0.620069,
		27.608133, 34.315636, 29.844330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.855200, 34.825672, 29.832457>,  <27.503174, 34.854694, 29.410282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.855200, 34.825672, 29.832457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.127104, 34.632347, 30.053123>,  <27.290247, 34.516354, 30.185524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.127104, 34.632347, 30.053123>,  <26.855200, 34.825672, 29.832457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.127104, 34.632347, 30.053123> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435510, 0.339221, 0.833822,
		-0.590131, -0.807057, 0.020103,
		0.679762, -0.483310, 0.551667,
		27.331032, 34.487354, 30.218624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.470264, 34.570694, 30.425964>,  <26.855200, 34.825672, 29.832457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.470264, 34.570694, 30.425964> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.858477, 34.576134, 30.522202>,  <27.091404, 34.579399, 30.579943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.858477, 34.576134, 30.522202>,  <26.470264, 34.570694, 30.425964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.858477, 34.576134, 30.522202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236529, 0.244677, 0.940312,
		-0.046079, -0.969509, 0.240683,
		0.970531, 0.013600, 0.240591,
		27.149635, 34.580215, 30.594379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.540565, 34.361099, 31.078205>,  <26.470264, 34.570694, 30.425964>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.540565, 34.361099, 31.078205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.914968, 34.496998, 31.041405>,  <27.139610, 34.578537, 31.019323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.914968, 34.496998, 31.041405>,  <26.540565, 34.361099, 31.078205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.914968, 34.496998, 31.041405> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083084, 0.467255, 0.880210,
		0.342037, -0.816238, 0.465581,
		0.936006, 0.339747, -0.092002,
		27.195770, 34.598923, 31.013803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.884159, 34.270847, 31.733690>,  <26.540565, 34.361099, 31.078205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.884159, 34.270847, 31.733690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.066568, 34.570522, 31.541540>,  <27.176014, 34.750328, 31.426250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.066568, 34.570522, 31.541540>,  <26.884159, 34.270847, 31.733690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.066568, 34.570522, 31.541540> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088591, 0.498870, 0.862137,
		0.885548, -0.435710, 0.161125,
		0.456022, 0.749189, -0.480374,
		27.203375, 34.795280, 31.397429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.636343, 34.172916, 31.894070>,  <26.884159, 34.270847, 31.733690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.636343, 34.172916, 31.894070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.555059, 34.544598, 31.770592>,  <27.506289, 34.767605, 31.696505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.555059, 34.544598, 31.770592>,  <27.636343, 34.172916, 31.894070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.555059, 34.544598, 31.770592> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412746, 0.367183, 0.833557,
		0.887889, 0.041974, -0.458139,
		-0.203208, 0.929201, -0.308693,
		27.494097, 34.823357, 31.677984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.187206, 34.711887, 32.192253>,  <27.636343, 34.172916, 31.894070>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.187206, 34.711887, 32.192253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.825560, 34.869518, 32.126190>,  <27.608572, 34.964096, 32.086552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.825560, 34.869518, 32.126190>,  <28.187206, 34.711887, 32.192253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.825560, 34.869518, 32.126190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031205, 0.324594, 0.945338,
		0.426142, 0.859851, -0.281175,
		-0.904118, 0.394075, -0.165155,
		27.554325, 34.987740, 32.076645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.199156, 35.344536, 32.621349>,  <28.187206, 34.711887, 32.192253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.199156, 35.344536, 32.621349> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.807573, 35.317059, 32.544483>,  <27.572624, 35.300571, 32.498363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.807573, 35.317059, 32.544483>,  <28.199156, 35.344536, 32.621349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.807573, 35.317059, 32.544483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203283, 0.245528, 0.947836,
		-0.017930, 0.966952, -0.254325,
		-0.978956, -0.068695, -0.192163,
		27.513887, 35.296452, 32.486835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.909378, 35.775326, 33.113003>,  <28.199156, 35.344536, 32.621349>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.909378, 35.775326, 33.113003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.599365, 35.557732, 32.984375>,  <27.413359, 35.427174, 32.907200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.599365, 35.557732, 32.984375>,  <27.909378, 35.775326, 33.113003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.599365, 35.557732, 32.984375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316245, -0.106676, 0.942661,
		-0.547098, 0.832286, -0.089356,
		-0.775031, -0.543986, -0.321569,
		27.366856, 35.394535, 32.887905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.237873, 36.189240, 33.303497>,  <27.909378, 35.775326, 33.113003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.237873, 36.189240, 33.303497> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.144964, 35.803963, 33.249378>,  <27.089218, 35.572796, 33.216908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.144964, 35.803963, 33.249378>,  <27.237873, 36.189240, 33.303497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.144964, 35.803963, 33.249378> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272753, -0.069020, 0.959605,
		-0.933625, 0.259794, -0.246683,
		-0.232273, -0.963195, -0.135298,
		27.075283, 35.515003, 33.208790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.630518, 36.130089, 33.639172>,  <27.237873, 36.189240, 33.303497>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.630518, 36.130089, 33.639172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.765333, 35.753548, 33.632713>,  <26.846222, 35.527622, 33.628838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.765333, 35.753548, 33.632713>,  <26.630518, 36.130089, 33.639172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.765333, 35.753548, 33.632713> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055470, -0.036969, 0.997776,
		-0.939856, -0.335392, -0.064676,
		0.337037, -0.941353, -0.016142,
		26.866444, 35.471142, 33.627872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.257839, 35.703915, 34.145523>,  <26.630518, 36.130089, 33.639172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.257839, 35.703915, 34.145523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.579124, 35.472221, 34.089893>,  <26.771894, 35.333206, 34.056515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.579124, 35.472221, 34.089893>,  <26.257839, 35.703915, 34.145523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.579124, 35.472221, 34.089893> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015926, -0.212498, 0.977032,
		-0.595482, -0.786977, -0.161456,
		0.803211, -0.579233, -0.139073,
		26.820087, 35.298450, 34.048172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.077599, 35.191616, 34.501823>,  <26.257839, 35.703915, 34.145523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.077599, 35.191616, 34.501823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.471449, 35.129463, 34.469902>,  <26.707760, 35.092171, 34.450748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.471449, 35.129463, 34.469902>,  <26.077599, 35.191616, 34.501823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.471449, 35.129463, 34.469902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032428, -0.286314, 0.957587,
		-0.171641, -0.945453, -0.276874,
		0.984626, -0.155382, -0.079803,
		26.766836, 35.082848, 34.445961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.166903, 34.499599, 34.696789>,  <26.077599, 35.191616, 34.501823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.166903, 34.499599, 34.696789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.503241, 34.711819, 34.739685>,  <26.705044, 34.839149, 34.765423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.503241, 34.711819, 34.739685>,  <26.166903, 34.499599, 34.696789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.503241, 34.711819, 34.739685> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070853, -0.304299, 0.949938,
		0.536620, -0.791151, -0.293459,
		0.840844, 0.530548, 0.107238,
		26.755493, 34.870983, 34.771858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.600786, 34.088409, 35.112976>,  <26.166903, 34.499599, 34.696789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.600786, 34.088409, 35.112976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.772888, 34.448227, 35.143188>,  <26.876150, 34.664116, 35.161316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.772888, 34.448227, 35.143188>,  <26.600786, 34.088409, 35.112976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.772888, 34.448227, 35.143188> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198513, -0.175906, 0.964183,
		0.880610, -0.399850, -0.254255,
		0.430254, 0.899542, 0.075529,
		26.901964, 34.718090, 35.165848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.365784, 34.051048, 35.427940>,  <26.600786, 34.088409, 35.112976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.365784, 34.051048, 35.427940> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.190674, 34.404633, 35.493626>,  <27.085608, 34.616783, 35.533039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.190674, 34.404633, 35.493626>,  <27.365784, 34.051048, 35.427940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.190674, 34.404633, 35.493626> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207223, -0.078527, 0.975137,
		0.874877, 0.460921, -0.148799,
		-0.437776, 0.883960, 0.164215,
		27.059341, 34.669819, 35.542889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.686586, 34.626301, 35.387024>,  <27.365784, 34.051048, 35.427940>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.686586, 34.626301, 35.387024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.936119, 34.470615, 35.658123>,  <28.085838, 34.377205, 35.820782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.936119, 34.470615, 35.658123>,  <27.686586, 34.626301, 35.387024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.936119, 34.470615, 35.658123> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510146, -0.454182, -0.730390,
		0.592100, 0.801393, -0.084777,
		0.623834, -0.389215, 0.677748,
		28.123270, 34.353851, 35.861446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.260033, 34.540829, 35.026405>,  <27.686586, 34.626301, 35.387024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.260033, 34.540829, 35.026405> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.334146, 34.325912, 35.355522>,  <28.378614, 34.196964, 35.552994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.334146, 34.325912, 35.355522>,  <28.260033, 34.540829, 35.026405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.334146, 34.325912, 35.355522> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695336, -0.519969, -0.496126,
		0.694390, 0.664044, 0.277253,
		0.185286, -0.537288, 0.822794,
		28.389732, 34.164726, 35.602360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.986860, 34.585045, 35.313457>,  <28.260033, 34.540829, 35.026405>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.986860, 34.585045, 35.313457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.823566, 34.235058, 35.417595>,  <28.725590, 34.025066, 35.480080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.823566, 34.235058, 35.417595>,  <28.986860, 34.585045, 35.313457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.823566, 34.235058, 35.417595> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718783, -0.483901, -0.499190,
		0.562756, -0.016654, 0.826455,
		-0.408236, -0.874964, 0.260348,
		28.701096, 33.972569, 35.495701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.499777, 34.136543, 35.266193>,  <28.986860, 34.585045, 35.313457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.499777, 34.136543, 35.266193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.190851, 33.882629, 35.275776>,  <29.005495, 33.730282, 35.281525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.190851, 33.882629, 35.275776>,  <29.499777, 34.136543, 35.266193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.190851, 33.882629, 35.275776> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516585, -0.649554, -0.557870,
		0.369691, -0.418475, 0.829582,
		-0.772314, -0.634789, 0.023957,
		28.959156, 33.692192, 35.282963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.773209, 33.478645, 35.302677>,  <29.499777, 34.136543, 35.266193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.773209, 33.478645, 35.302677> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.406828, 33.404114, 35.160515>,  <29.187000, 33.359394, 35.075218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.406828, 33.404114, 35.160515>,  <29.773209, 33.478645, 35.302677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.406828, 33.404114, 35.160515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389701, -0.624315, -0.677025,
		-0.095736, -0.758625, 0.644455,
		-0.915952, -0.186329, -0.355407,
		29.132042, 33.348217, 35.053894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.870255, 32.792030, 35.193180>,  <29.773209, 33.478645, 35.302677>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.870255, 32.792030, 35.193180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.570358, 32.917114, 34.959908>,  <29.390421, 32.992165, 34.819942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.570358, 32.917114, 34.959908>,  <29.870255, 32.792030, 35.193180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.570358, 32.917114, 34.959908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348585, -0.562474, -0.749741,
		-0.562474, -0.765401, 0.312705,
		0.749741, -0.312705, 0.583184,
		29.345436, 33.010925, 34.784954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.544294, 32.207123, 34.918560>,  <29.870255, 32.792030, 35.193180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.544294, 32.207123, 34.918560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.461737, 32.497280, 34.655891>,  <29.412203, 32.671375, 34.498291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.461737, 32.497280, 34.655891>,  <29.544294, 32.207123, 34.918560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.461737, 32.497280, 34.655891> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322637, -0.583132, -0.745562,
		-0.923746, -0.365744, -0.113684,
		-0.206392, 0.725389, -0.656669,
		29.399818, 32.714897, 34.458889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.183029, 31.860210, 34.382782>,  <29.544294, 32.207123, 34.918560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.183029, 31.860210, 34.382782> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.284555, 32.203491, 34.204311>,  <29.345470, 32.409458, 34.097229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.284555, 32.203491, 34.204311>,  <29.183029, 31.860210, 34.382782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.284555, 32.203491, 34.204311> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205264, -0.498561, -0.842202,
		-0.945222, 0.122180, -0.302700,
		0.253814, 0.858201, -0.446172,
		29.360701, 32.460953, 34.070461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.829336, 31.817972, 33.734589>,  <29.183029, 31.860210, 34.382782>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.829336, 31.817972, 33.734589> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.094837, 32.110443, 33.671581>,  <29.254137, 32.285927, 33.633778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.094837, 32.110443, 33.671581>,  <28.829336, 31.817972, 33.734589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.094837, 32.110443, 33.671581> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191026, -0.369336, -0.909450,
		-0.723146, 0.573560, -0.384822,
		0.663753, 0.731177, -0.157519,
		29.293962, 32.329796, 33.624325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.636356, 32.161003, 33.094986>,  <28.829336, 31.817972, 33.734589>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.636356, 32.161003, 33.094986> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.022371, 32.256123, 33.139080>,  <29.253981, 32.313194, 33.165535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.022371, 32.256123, 33.139080>,  <28.636356, 32.161003, 33.094986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.022371, 32.256123, 33.139080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160206, -0.202276, -0.966136,
		-0.207447, 0.950019, -0.233301,
		0.965039, 0.237798, 0.110237,
		29.311882, 32.327461, 33.172150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.851238, 32.521500, 32.494492>,  <28.636356, 32.161003, 33.094986>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.851238, 32.521500, 32.494492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.200905, 32.405396, 32.650227>,  <29.410706, 32.335732, 32.743668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.200905, 32.405396, 32.650227>,  <28.851238, 32.521500, 32.494492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.200905, 32.405396, 32.650227> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408472, 0.005882, -0.912752,
		0.262648, 0.956929, 0.123706,
		0.874166, -0.290263, 0.389334,
		29.463154, 32.318317, 32.767025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.438053, 33.011848, 32.308308>,  <28.851238, 32.521500, 32.494492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.438053, 33.011848, 32.308308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.557310, 32.636116, 32.376141>,  <29.628864, 32.410675, 32.416840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.557310, 32.636116, 32.376141>,  <29.438053, 33.011848, 32.308308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.557310, 32.636116, 32.376141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531836, 0.015944, -0.846697,
		0.792628, 0.342630, 0.504326,
		0.298145, -0.939335, 0.169585,
		29.646753, 32.354317, 32.427017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.186256, 33.020432, 32.169559>,  <29.438053, 33.011848, 32.308308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.186256, 33.020432, 32.169559> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.051178, 32.644749, 32.144714>,  <29.970131, 32.419338, 32.129807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.051178, 32.644749, 32.144714>,  <30.186256, 33.020432, 32.169559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.051178, 32.644749, 32.144714> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535604, -0.137474, -0.833204,
		0.774009, -0.314639, 0.549465,
		-0.337696, -0.939204, -0.062116,
		29.949869, 32.362988, 32.126080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.746632, 32.730091, 31.837345>,  <30.186256, 33.020432, 32.169559>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.746632, 32.730091, 31.837345> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.463888, 32.447311, 31.827776>,  <30.294243, 32.277645, 31.822035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.463888, 32.447311, 31.827776>,  <30.746632, 32.730091, 31.837345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.463888, 32.447311, 31.827776> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310394, -0.279606, -0.908557,
		0.635616, -0.649647, 0.417075,
		-0.706858, -0.706951, -0.023925,
		30.251831, 32.235226, 31.820599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.168833, 32.045452, 31.695726>,  <30.746632, 32.730091, 31.837345>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.168833, 32.045452, 31.695726> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.781063, 31.997328, 31.610176>,  <30.548401, 31.968452, 31.558846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.781063, 31.997328, 31.610176>,  <31.168833, 32.045452, 31.695726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.781063, 31.997328, 31.610176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241526, -0.313676, -0.918299,
		0.043395, -0.941877, 0.333144,
		-0.969424, -0.120313, -0.213875,
		30.490236, 31.961235, 31.546013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.204081, 31.456316, 31.379322>,  <31.168833, 32.045452, 31.695726>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.204081, 31.456316, 31.379322> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.873131, 31.639942, 31.249887>,  <30.674561, 31.750118, 31.172226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.873131, 31.639942, 31.249887>,  <31.204081, 31.456316, 31.379322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.873131, 31.639942, 31.249887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231197, -0.246686, -0.941113,
		-0.511857, -0.853466, 0.097967,
		-0.827375, 0.459066, -0.323586,
		30.624918, 31.777662, 31.152811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.816820, 30.992020, 30.869370>,  <31.204081, 31.456316, 31.379322>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.816820, 30.992020, 30.869370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.741173, 31.381937, 30.822023>,  <30.695784, 31.615887, 30.793615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.741173, 31.381937, 30.822023>,  <30.816820, 30.992020, 30.869370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.741173, 31.381937, 30.822023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350348, -0.045625, -0.935508,
		-0.917328, -0.218392, -0.332888,
		-0.189120, 0.974794, -0.118367,
		30.684437, 31.674376, 30.786514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.734863, 30.993795, 30.167120>,  <30.816820, 30.992020, 30.869370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.734863, 30.993795, 30.167120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.751114, 31.385691, 30.245567>,  <30.760864, 31.620829, 30.292635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.751114, 31.385691, 30.245567>,  <30.734863, 30.993795, 30.167120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.751114, 31.385691, 30.245567> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430819, 0.159919, -0.888156,
		-0.901524, 0.120575, -0.415592,
		0.040628, 0.979738, 0.196117,
		30.763302, 31.679613, 30.304403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.382820, 31.334282, 29.548012>,  <30.734863, 30.993795, 30.167120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.382820, 31.334282, 29.548012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.602697, 31.622818, 29.716536>,  <30.734623, 31.795940, 29.817650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.602697, 31.622818, 29.716536>,  <30.382820, 31.334282, 29.548012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.602697, 31.622818, 29.716536> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214536, 0.365526, -0.905740,
		-0.807349, 0.588265, 0.046174,
		0.549693, 0.721342, 0.421311,
		30.767605, 31.839220, 29.842928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.198946, 31.918446, 29.193983>,  <30.382820, 31.334282, 29.548012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.198946, 31.918446, 29.193983> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.558466, 32.012379, 29.342045>,  <30.774178, 32.068741, 29.430882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.558466, 32.012379, 29.342045>,  <30.198946, 31.918446, 29.193983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.558466, 32.012379, 29.342045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266429, 0.377895, -0.886685,
		-0.348104, 0.895571, 0.277085,
		0.898799, 0.234835, 0.370153,
		30.828106, 32.082829, 29.453091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.279051, 32.572598, 29.059788>,  <30.198946, 31.918446, 29.193983>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.279051, 32.572598, 29.059788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.653654, 32.452454, 29.132160>,  <30.878416, 32.380367, 29.175583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.653654, 32.452454, 29.132160>,  <30.279051, 32.572598, 29.059788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.653654, 32.452454, 29.132160> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311753, 0.477048, -0.821727,
		0.160501, 0.825960, 0.540398,
		0.936509, -0.300359, 0.180929,
		30.934607, 32.362347, 29.186440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.761183, 33.138802, 29.186434>,  <30.279051, 32.572598, 29.059788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.761183, 33.138802, 29.186434> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.975496, 32.835186, 29.038486>,  <31.104084, 32.653019, 28.949718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.975496, 32.835186, 29.038486>,  <30.761183, 33.138802, 29.186434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.975496, 32.835186, 29.038486> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357843, 0.600886, -0.714762,
		0.764778, 0.250602, 0.593559,
		0.535782, -0.759035, -0.369869,
		31.136230, 32.607475, 28.927526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<41.176300, 43.330399, 43.841385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.019703, 42.981091, 43.957409>,  <40.925743, 42.771507, 44.027023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.019703, 42.981091, 43.957409>,  <41.176300, 43.330399, 43.841385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.019703, 42.981091, 43.957409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367213, 0.437298, 0.820930,
		-0.843733, 0.214879, -0.491876,
		-0.391497, -0.873268, 0.290056,
		40.902252, 42.719109, 44.044426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.453659, 43.414028, 43.893238>,  <41.176300, 43.330399, 43.841385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.453659, 43.414028, 43.893238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.581158, 43.143711, 44.159084>,  <40.657658, 42.981522, 44.318592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.581158, 43.143711, 44.159084>,  <40.453659, 43.414028, 43.893238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.581158, 43.143711, 44.159084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343736, 0.571039, 0.745494,
		-0.883317, -0.466072, -0.050279,
		0.318743, -0.675790, 0.664614,
		40.676781, 42.940975, 44.358467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972569, 43.496273, 44.366795>,  <40.453659, 43.414028, 43.893238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.972569, 43.496273, 44.366795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.261513, 43.293907, 44.555367>,  <40.434879, 43.172489, 44.668510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.261513, 43.293907, 44.555367>,  <39.972569, 43.496273, 44.366795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.261513, 43.293907, 44.555367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122971, 0.576886, 0.807515,
		-0.680492, -0.641291, 0.354508,
		0.722363, -0.505913, 0.471427,
		40.478222, 43.142132, 44.696796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.694607, 43.446800, 45.062256>,  <39.972569, 43.496273, 44.366795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.694607, 43.446800, 45.062256> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.086735, 43.374371, 45.093723>,  <40.322010, 43.330914, 45.112602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.086735, 43.374371, 45.093723>,  <39.694607, 43.446800, 45.062256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.086735, 43.374371, 45.093723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028575, 0.524402, 0.850991,
		-0.195348, -0.831994, 0.519255,
		0.980318, -0.181078, 0.078667,
		40.380829, 43.320049, 45.117325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.756275, 43.138344, 45.804604>,  <39.694607, 43.446800, 45.062256>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.756275, 43.138344, 45.804604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.123100, 43.254505, 45.695301>,  <40.343193, 43.324200, 45.629719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.123100, 43.254505, 45.695301>,  <39.756275, 43.138344, 45.804604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.123100, 43.254505, 45.695301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219453, 0.204587, 0.953931,
		0.332928, -0.934778, 0.123889,
		0.917060, 0.290403, -0.273252,
		40.398220, 43.341625, 45.613327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316593, 42.778286, 46.312111>,  <39.756275, 43.138344, 45.804604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.316593, 42.778286, 46.312111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.471294, 43.111893, 46.154716>,  <40.564117, 43.312057, 46.060280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.471294, 43.111893, 46.154716>,  <40.316593, 42.778286, 46.312111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.471294, 43.111893, 46.154716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301815, 0.288711, 0.908600,
		0.871394, -0.470166, -0.140059,
		0.386757, 0.834020, -0.393484,
		40.587322, 43.362099, 46.036671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.027916, 42.905010, 46.604443>,  <40.316593, 42.778286, 46.312111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.027916, 42.905010, 46.604443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.932575, 43.268108, 46.466351>,  <40.875370, 43.485970, 46.383495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.932575, 43.268108, 46.466351>,  <41.027916, 42.905010, 46.604443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.932575, 43.268108, 46.466351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093274, 0.375227, 0.922228,
		0.966689, 0.187615, -0.174105,
		-0.238353, 0.907747, -0.345228,
		40.861069, 43.540432, 46.362782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.617825, 43.417004, 46.757557>,  <41.027916, 42.905010, 46.604443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.617825, 43.417004, 46.757557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.276020, 43.619366, 46.710438>,  <41.070938, 43.740784, 46.682167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.276020, 43.619366, 46.710438>,  <41.617825, 43.417004, 46.757557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.276020, 43.619366, 46.710438> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067350, 0.332775, 0.940598,
		0.515055, 0.795814, -0.318431,
		-0.854507, 0.505906, -0.117799,
		41.019669, 43.771137, 46.675098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.748177, 43.999996, 47.096401>,  <41.617825, 43.417004, 46.757557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.748177, 43.999996, 47.096401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.349529, 44.024330, 47.074295>,  <41.110340, 44.038929, 47.061031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.349529, 44.024330, 47.074295>,  <41.748177, 43.999996, 47.096401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.349529, 44.024330, 47.074295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016304, 0.512732, 0.858394,
		0.080555, 0.856391, -0.510006,
		-0.996617, 0.060833, -0.055266,
		41.050545, 44.042580, 47.057716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.619617, 44.541016, 47.464405>,  <41.748177, 43.999996, 47.096401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.619617, 44.541016, 47.464405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.265453, 44.355434, 47.453140>,  <41.052956, 44.244083, 47.446381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.265453, 44.355434, 47.453140>,  <41.619617, 44.541016, 47.464405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.265453, 44.355434, 47.453140> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320714, 0.565956, 0.759498,
		-0.336437, 0.681498, -0.649900,
		-0.885411, -0.463955, -0.028157,
		40.999828, 44.216248, 47.444695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.137791, 45.019073, 47.666504>,  <41.619617, 44.541016, 47.464405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.137791, 45.019073, 47.666504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.935551, 44.679405, 47.727539>,  <40.814205, 44.475605, 47.764160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.935551, 44.679405, 47.727539>,  <41.137791, 45.019073, 47.666504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.935551, 44.679405, 47.727539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351414, 0.364210, 0.862473,
		-0.787957, 0.382446, -0.482554,
		-0.505600, -0.849168, 0.152586,
		40.783871, 44.424656, 47.773315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.416004, 45.271572, 47.715908>,  <41.137791, 45.019073, 47.666504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.416004, 45.271572, 47.715908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.437840, 44.909672, 47.884880>,  <40.450939, 44.692532, 47.986263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.437840, 44.909672, 47.884880>,  <40.416004, 45.271572, 47.715908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.437840, 44.909672, 47.884880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571040, 0.318763, 0.756507,
		-0.819105, -0.282518, -0.499250,
		0.054585, -0.904751, 0.422429,
		40.454216, 44.638248, 48.011608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766567, 45.153851, 48.073971>,  <40.416004, 45.271572, 47.715908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.766567, 45.153851, 48.073971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.050682, 44.928638, 48.242966>,  <40.221149, 44.793510, 48.344364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.050682, 44.928638, 48.242966>,  <39.766567, 45.153851, 48.073971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.050682, 44.928638, 48.242966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411699, 0.154557, 0.898118,
		-0.570966, -0.811856, -0.122020,
		0.710283, -0.563030, 0.422487,
		40.263767, 44.759731, 48.369713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199932, 44.772110, 48.459049>,  <39.766567, 45.153851, 48.073971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.199932, 44.772110, 48.459049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.845387, 44.700047, 48.629650>,  <38.632660, 44.656811, 48.732010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.845387, 44.700047, 48.629650>,  <39.199932, 44.772110, 48.459049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.845387, 44.700047, 48.629650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397509, -0.176169, -0.900528,
		0.237371, -0.967734, 0.084537,
		-0.886364, -0.180155, 0.426500,
		38.579475, 44.646000, 48.757599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884403, 44.074375, 48.375759>,  <39.199932, 44.772110, 48.459049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884403, 44.074375, 48.375759> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.617035, 44.369442, 48.413815>,  <38.456612, 44.546482, 48.436649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.617035, 44.369442, 48.413815>,  <38.884403, 44.074375, 48.375759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.617035, 44.369442, 48.413815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299127, -0.149501, -0.942429,
		-0.680979, -0.658400, 0.320587,
		-0.668424, 0.737671, 0.095138,
		38.416508, 44.590744, 48.442356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281723, 43.806610, 48.096802>,  <38.884403, 44.074375, 48.375759>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.281723, 43.806610, 48.096802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.273632, 44.205574, 48.069168>,  <38.268776, 44.444950, 48.052589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.273632, 44.205574, 48.069168>,  <38.281723, 43.806610, 48.096802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273632, 44.205574, 48.069168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375814, -0.071618, -0.923923,
		-0.926474, 0.007270, 0.376288,
		-0.020232, 0.997406, -0.069085,
		38.267563, 44.504795, 48.048443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710812, 43.932919, 47.746895>,  <38.281723, 43.806610, 48.096802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710812, 43.932919, 47.746895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.881714, 44.291496, 47.699848>,  <37.984257, 44.506645, 47.671619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.881714, 44.291496, 47.699848>,  <37.710812, 43.932919, 47.746895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881714, 44.291496, 47.699848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213397, -0.026427, -0.976608,
		-0.878585, 0.442363, 0.180008,
		0.427258, 0.896447, -0.117617,
		38.009892, 44.560429, 47.664562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220070, 44.312351, 47.337391>,  <37.710812, 43.932919, 47.746895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.220070, 44.312351, 47.337391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.582241, 44.478348, 47.301643>,  <37.799541, 44.577946, 47.280193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.582241, 44.478348, 47.301643>,  <37.220070, 44.312351, 47.337391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582241, 44.478348, 47.301643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171543, 0.165114, -0.971242,
		-0.388304, 0.894716, 0.220688,
		0.905424, 0.414995, -0.089368,
		37.853867, 44.602848, 47.274834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168842, 45.027775, 47.091370>,  <37.220070, 44.312351, 47.337391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.168842, 45.027775, 47.091370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.532360, 44.896133, 46.988770>,  <37.750469, 44.817150, 46.927212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.532360, 44.896133, 46.988770>,  <37.168842, 45.027775, 47.091370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.532360, 44.896133, 46.988770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194654, 0.209340, -0.958273,
		0.369062, 0.920799, 0.126186,
		0.908792, -0.329099, -0.256497,
		37.804996, 44.797405, 46.911819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304516, 45.477325, 46.627232>,  <37.168842, 45.027775, 47.091370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304516, 45.477325, 46.627232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.597858, 45.209206, 46.581844>,  <37.773865, 45.048332, 46.554611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.597858, 45.209206, 46.581844>,  <37.304516, 45.477325, 46.627232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597858, 45.209206, 46.581844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079212, 0.081512, -0.993520,
		0.675209, 0.737596, 0.006682,
		0.733361, -0.670304, -0.113464,
		37.817867, 45.008114, 46.547806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602272, 45.579449, 45.941158>,  <37.304516, 45.477325, 46.627232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.602272, 45.579449, 45.941158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.641983, 45.194973, 46.044121>,  <37.665810, 44.964287, 46.105900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.641983, 45.194973, 46.044121>,  <37.602272, 45.579449, 45.941158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641983, 45.194973, 46.044121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003369, -0.258358, -0.966043,
		0.995054, 0.096769, -0.022410,
		0.099273, -0.961190, 0.257407,
		37.671764, 44.906616, 46.121342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916161, 45.313911, 45.386280>,  <37.602272, 45.579449, 45.941158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.916161, 45.313911, 45.386280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.795986, 44.972298, 45.556156>,  <37.723881, 44.767330, 45.658081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.795986, 44.972298, 45.556156>,  <37.916161, 45.313911, 45.386280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.795986, 44.972298, 45.556156> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193303, -0.381498, -0.903932,
		0.934007, -0.353670, -0.050470,
		-0.300440, -0.854035, 0.424688,
		37.705853, 44.716087, 45.683563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320091, 44.731918, 45.060474>,  <37.916161, 45.313911, 45.386280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.320091, 44.731918, 45.060474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.990093, 44.580765, 45.228565>,  <37.792095, 44.490070, 45.329418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.990093, 44.580765, 45.228565>,  <38.320091, 44.731918, 45.060474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.990093, 44.580765, 45.228565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224971, -0.462525, -0.857589,
		0.518437, -0.802042, 0.296565,
		-0.824991, -0.377887, 0.420227,
		37.742596, 44.467400, 45.354633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194893, 44.057919, 44.717350>,  <38.320091, 44.731918, 45.060474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194893, 44.057919, 44.717350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.840702, 44.111382, 44.895367>,  <37.628185, 44.143459, 45.002174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.840702, 44.111382, 44.895367>,  <38.194893, 44.057919, 44.717350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.840702, 44.111382, 44.895367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452036, -0.469633, -0.758358,
		0.107641, -0.872685, 0.476271,
		-0.885481, 0.133661, 0.445037,
		37.575058, 44.151482, 45.028877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883896, 43.428040, 44.676735>,  <38.194893, 44.057919, 44.717350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883896, 43.428040, 44.676735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.578884, 43.682690, 44.722801>,  <37.395878, 43.835480, 44.750443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.578884, 43.682690, 44.722801>,  <37.883896, 43.428040, 44.676735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.578884, 43.682690, 44.722801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576422, -0.587715, -0.567740,
		-0.293751, -0.499302, 0.815112,
		-0.762527, 0.636623, 0.115167,
		37.350124, 43.873676, 44.757351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314983, 43.058479, 44.691566>,  <37.883896, 43.428040, 44.676735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314983, 43.058479, 44.691566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.158527, 43.411411, 44.586868>,  <37.064651, 43.623169, 44.524052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.158527, 43.411411, 44.586868>,  <37.314983, 43.058479, 44.691566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.158527, 43.411411, 44.586868> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512896, -0.445122, -0.734033,
		-0.764164, -0.152864, 0.626647,
		-0.391141, 0.882326, -0.261743,
		37.041183, 43.676109, 44.508347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648891, 42.926620, 44.782299>,  <37.314983, 43.058479, 44.691566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648891, 42.926620, 44.782299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.659889, 43.235283, 44.528118>,  <36.666489, 43.420479, 44.375610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.659889, 43.235283, 44.528118>,  <36.648891, 42.926620, 44.782299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659889, 43.235283, 44.528118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581755, -0.504596, -0.637922,
		-0.812899, 0.387214, 0.435040,
		0.027493, 0.771653, -0.635450,
		36.668137, 43.466778, 44.337482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.044750, 43.051643, 44.635891>,  <36.648891, 42.926620, 44.782299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.044750, 43.051643, 44.635891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.274380, 43.166401, 44.329132>,  <36.412155, 43.235256, 44.145077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.274380, 43.166401, 44.329132>,  <36.044750, 43.051643, 44.635891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.274380, 43.166401, 44.329132> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591663, -0.502107, -0.630732,
		-0.566017, 0.815832, -0.118502,
		0.574072, 0.286892, -0.766899,
		36.446602, 43.252468, 44.099064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437878, 43.196144, 45.050228>,  <36.044750, 43.051643, 44.635891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437878, 43.196144, 45.050228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.228012, 42.922947, 45.253502>,  <35.102093, 42.759029, 45.375465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.228012, 42.922947, 45.253502>,  <35.437878, 43.196144, 45.050228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228012, 42.922947, 45.253502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486385, 0.249424, 0.837387,
		-0.698683, 0.686518, 0.201334,
		-0.524664, -0.682994, 0.508180,
		35.070614, 42.718048, 45.405956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248505, 43.561066, 45.716984>,  <35.437878, 43.196144, 45.050228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248505, 43.561066, 45.716984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.224392, 43.169117, 45.793098>,  <35.209923, 42.933949, 45.838768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.224392, 43.169117, 45.793098>,  <35.248505, 43.561066, 45.716984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224392, 43.169117, 45.793098> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502494, 0.134929, 0.853987,
		-0.862477, 0.147101, 0.484247,
		-0.060284, -0.979875, 0.190291,
		35.206306, 42.875153, 45.850185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907314, 43.472054, 46.269356>,  <35.248505, 43.561066, 45.716984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907314, 43.472054, 46.269356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.093304, 43.117970, 46.263504>,  <35.204895, 42.905521, 46.259995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.093304, 43.117970, 46.263504>,  <34.907314, 43.472054, 46.269356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093304, 43.117970, 46.263504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259941, 0.120707, 0.958050,
		-0.846306, -0.449266, 0.286227,
		0.464969, -0.885206, -0.014627,
		35.232796, 42.852409, 46.259117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.732246, 43.213032, 46.882221>,  <34.907314, 43.472054, 46.269356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.732246, 43.213032, 46.882221> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.068153, 43.023624, 46.775955>,  <35.269699, 42.909981, 46.712196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.068153, 43.023624, 46.775955>,  <34.732246, 43.213032, 46.882221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.068153, 43.023624, 46.775955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303503, 0.003679, 0.952824,
		-0.450199, -0.880778, 0.146802,
		0.839766, -0.473515, -0.265662,
		35.320084, 42.881569, 46.696255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819847, 42.652821, 47.281303>,  <34.732246, 43.213032, 46.882221>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819847, 42.652821, 47.281303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.182381, 42.753010, 47.145176>,  <35.399902, 42.813122, 47.063499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.182381, 42.753010, 47.145176>,  <34.819847, 42.652821, 47.281303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182381, 42.753010, 47.145176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338233, 0.052719, 0.939585,
		0.253283, -0.966687, -0.036937,
		0.906336, 0.250474, -0.340318,
		35.454281, 42.828152, 47.043079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.307144, 42.239258, 47.757324>,  <34.819847, 42.652821, 47.281303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.307144, 42.239258, 47.757324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.549892, 42.508575, 47.588379>,  <35.695541, 42.670166, 47.487011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.549892, 42.508575, 47.588379>,  <35.307144, 42.239258, 47.757324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549892, 42.508575, 47.588379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397551, 0.203016, 0.894840,
		0.688235, -0.710959, -0.144464,
		0.606866, 0.673292, -0.422365,
		35.731953, 42.710564, 47.461670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.001602, 42.027084, 47.964500>,  <35.307144, 42.239258, 47.757324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.001602, 42.027084, 47.964500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.973362, 42.406151, 47.839954>,  <35.956417, 42.633591, 47.765228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.973362, 42.406151, 47.839954>,  <36.001602, 42.027084, 47.964500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.973362, 42.406151, 47.839954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233358, 0.319172, 0.918517,
		0.969824, -0.007812, -0.243679,
		-0.070600, 0.947665, -0.311364,
		35.952183, 42.690449, 47.746544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641346, 41.515450, 47.999973>,  <36.001602, 42.027084, 47.964500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.641346, 41.515450, 47.999973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.709675, 41.197636, 48.233051>,  <36.750671, 41.006947, 48.372898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.709675, 41.197636, 48.233051>,  <36.641346, 41.515450, 47.999973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709675, 41.197636, 48.233051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361995, -0.600641, -0.712874,
		0.916394, -0.089157, -0.390221,
		0.170826, -0.794532, 0.582699,
		36.760921, 40.959274, 48.407860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.092602, 41.019424, 47.606556>,  <36.641346, 41.515450, 47.999973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.092602, 41.019424, 47.606556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.907032, 40.811943, 47.893810>,  <36.795689, 40.687454, 48.066162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.907032, 40.811943, 47.893810>,  <37.092602, 41.019424, 47.606556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907032, 40.811943, 47.893810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257297, -0.696812, -0.669516,
		0.847684, -0.495382, 0.189811,
		-0.463929, -0.518700, 0.718137,
		36.767853, 40.656334, 48.109253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416889, 40.329498, 47.558807>,  <37.092602, 41.019424, 47.606556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.416889, 40.329498, 47.558807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.069794, 40.302555, 47.755783>,  <36.861538, 40.286388, 47.873966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.069794, 40.302555, 47.755783>,  <37.416889, 40.329498, 47.558807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.069794, 40.302555, 47.755783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246519, -0.801989, -0.544098,
		0.431579, -0.593530, 0.679310,
		-0.867737, -0.067358, 0.492437,
		36.809471, 40.282349, 47.903515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414967, 39.634186, 47.799522>,  <37.416889, 40.329498, 47.558807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414967, 39.634186, 47.799522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.045494, 39.785465, 47.774952>,  <36.823811, 39.876232, 47.760208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.045494, 39.785465, 47.774952>,  <37.414967, 39.634186, 47.799522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.045494, 39.785465, 47.774952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270458, -0.757135, -0.594642,
		-0.271404, -0.532647, 0.801640,
		-0.923684, 0.378198, -0.061430,
		36.768391, 39.898926, 47.756523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965096, 39.036633, 47.748814>,  <37.414967, 39.634186, 47.799522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965096, 39.036633, 47.748814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.699440, 39.322586, 47.661304>,  <36.540047, 39.494156, 47.608799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.699440, 39.322586, 47.661304>,  <36.965096, 39.036633, 47.748814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699440, 39.322586, 47.661304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346080, -0.553369, -0.757635,
		-0.662680, -0.427464, 0.614922,
		-0.664141, 0.714882, -0.218770,
		36.500198, 39.537052, 47.595673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235554, 38.728893, 47.767944>,  <36.965096, 39.036633, 47.748814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235554, 38.728893, 47.767944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.182350, 39.049690, 47.535007>,  <36.150429, 39.242168, 47.395245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.182350, 39.049690, 47.535007>,  <36.235554, 38.728893, 47.767944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.182350, 39.049690, 47.535007> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459490, -0.570498, -0.680736,
		-0.878168, 0.177037, 0.444386,
		-0.133006, 0.801991, -0.582340,
		36.142448, 39.290287, 47.360306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583977, 38.605030, 47.590767>,  <36.235554, 38.728893, 47.767944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.583977, 38.605030, 47.590767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.791653, 38.833794, 47.336723>,  <35.916260, 38.971054, 47.184299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.791653, 38.833794, 47.336723>,  <35.583977, 38.605030, 47.590767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.791653, 38.833794, 47.336723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437756, -0.460279, -0.772342,
		-0.734038, 0.679012, 0.011386,
		0.519189, 0.571913, -0.635104,
		35.947411, 39.005367, 47.146191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<40.509476, 41.644039, 49.965233> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.546913, 41.961487, 49.724762>,  <40.569374, 42.151955, 49.580479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.546913, 41.961487, 49.724762>,  <40.509476, 41.644039, 49.965233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.546913, 41.961487, 49.724762> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022737, -0.601967, -0.798197,
		-0.995351, 0.088375, -0.038296,
		0.093593, 0.793615, -0.601178,
		40.574989, 42.199570, 49.544407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010090, 41.643230, 49.465546>,  <40.509476, 41.644039, 49.965233>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.010090, 41.643230, 49.465546> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.320343, 41.845806, 49.314865>,  <40.506496, 41.967350, 49.224457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.320343, 41.845806, 49.314865>,  <40.010090, 41.643230, 49.465546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.320343, 41.845806, 49.314865> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001390, -0.598194, -0.801350,
		-0.631178, 0.621033, -0.464686,
		0.775637, 0.506440, -0.376703,
		40.553036, 41.997738, 49.201855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.836987, 41.718678, 48.724308>,  <40.010090, 41.643230, 49.465546>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.836987, 41.718678, 48.724308> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.232117, 41.780300, 48.732941>,  <40.469196, 41.817276, 48.738121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.232117, 41.780300, 48.732941>,  <39.836987, 41.718678, 48.724308>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.232117, 41.780300, 48.732941> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105086, -0.558571, -0.822773,
		-0.114703, 0.815024, -0.567960,
		0.987826, 0.154059, 0.021578,
		40.528465, 41.826519, 48.739414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.038639, 41.810471, 48.068302>,  <39.836987, 41.718678, 48.724308>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.038639, 41.810471, 48.068302> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.397499, 41.711723, 48.214821>,  <40.612816, 41.652473, 48.302731>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.397499, 41.711723, 48.214821>,  <40.038639, 41.810471, 48.068302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.397499, 41.711723, 48.214821> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125217, -0.653096, -0.746851,
		0.423598, 0.715907, -0.555016,
		0.897154, -0.246868, 0.366294,
		40.666645, 41.637665, 48.324707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.424347, 41.759575, 47.488480>,  <40.038639, 41.810471, 48.068302>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.424347, 41.759575, 47.488480> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.608566, 41.552719, 47.777054>,  <40.719097, 41.428608, 47.950199>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.608566, 41.552719, 47.777054>,  <40.424347, 41.759575, 47.488480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.608566, 41.552719, 47.777054> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169885, -0.746380, -0.643472,
		0.871225, 0.418911, -0.255892,
		0.460550, -0.517137, 0.721431,
		40.746731, 41.397579, 47.993484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.112343, 41.507793, 47.186939>,  <40.424347, 41.759575, 47.488480>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.112343, 41.507793, 47.186939> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.012302, 41.266388, 47.489784>,  <40.952278, 41.121544, 47.671494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.012302, 41.266388, 47.489784>,  <41.112343, 41.507793, 47.186939>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.012302, 41.266388, 47.489784> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067474, -0.790930, -0.608175,
		0.965865, -0.101021, 0.238535,
		-0.250103, -0.603510, 0.757116,
		40.937271, 41.085335, 47.716919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.678631, 41.038628, 47.349964>,  <41.112343, 41.507793, 47.186939>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.678631, 41.038628, 47.349964> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.365334, 40.827129, 47.480785>,  <41.177357, 40.700230, 47.559277>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.365334, 40.827129, 47.480785>,  <41.678631, 41.038628, 47.349964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.365334, 40.827129, 47.480785> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170911, -0.688895, -0.704424,
		0.597764, -0.495837, 0.629940,
		-0.783242, -0.528743, 0.327053,
		41.130360, 40.668507, 47.578899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.845398, 40.333118, 47.351330>,  <41.678631, 41.038628, 47.349964>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.845398, 40.333118, 47.351330> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.447517, 40.297733, 47.372295>,  <41.208790, 40.276501, 47.384876>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.447517, 40.297733, 47.372295>,  <41.845398, 40.333118, 47.351330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.447517, 40.297733, 47.372295> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059512, -0.910962, -0.408175,
		0.083858, -0.402892, 0.911398,
		-0.994699, -0.088467, 0.052415,
		41.149109, 40.271194, 47.388020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.743633, 39.674580, 47.479378>,  <41.845398, 40.333118, 47.351330>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.743633, 39.674580, 47.479378> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.378902, 39.794788, 47.367477>,  <41.160065, 39.866913, 47.300339>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.378902, 39.794788, 47.367477>,  <41.743633, 39.674580, 47.479378>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.378902, 39.794788, 47.367477> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039479, -0.742369, -0.668828,
		-0.408675, -0.598810, 0.688775,
		-0.911826, 0.300525, -0.279746,
		41.105354, 39.884945, 47.283554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.299431, 39.122532, 47.507656>,  <41.743633, 39.674580, 47.479378>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.299431, 39.122532, 47.507656> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.125359, 39.374058, 47.249908>,  <41.020916, 39.524975, 47.095261>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.125359, 39.374058, 47.249908>,  <41.299431, 39.122532, 47.507656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.125359, 39.374058, 47.249908> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233420, -0.770016, -0.593794,
		-0.869561, -0.107997, 0.481871,
		-0.435176, 0.628818, -0.644367,
		40.994804, 39.562702, 47.056599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.652767, 38.718876, 47.308899>,  <41.299431, 39.122532, 47.507656>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.652767, 38.718876, 47.308899> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.732849, 38.998436, 47.034248>,  <40.780899, 39.166172, 46.869457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.732849, 38.998436, 47.034248>,  <40.652767, 38.718876, 47.308899>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.732849, 38.998436, 47.034248> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111781, -0.679945, -0.724693,
		-0.973357, 0.221838, -0.058003,
		0.200203, 0.698901, -0.686626,
		40.792912, 39.208107, 46.828262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.168713, 38.547783, 46.840984>,  <40.652767, 38.718876, 47.308899>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.168713, 38.547783, 46.840984> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.396988, 38.793602, 46.623127>,  <40.533955, 38.941093, 46.492413>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.396988, 38.793602, 46.623127>,  <40.168713, 38.547783, 46.840984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.396988, 38.793602, 46.623127> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253080, -0.499344, -0.828617,
		-0.781194, 0.610722, -0.129440,
		0.570690, 0.614552, -0.544646,
		40.568195, 38.977966, 46.459732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428635, 38.537582, 46.684277>,  <40.168713, 38.547783, 46.840984>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.428635, 38.537582, 46.684277> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.415779, 38.170933, 46.843662>,  <39.408066, 37.950943, 46.939293>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.415779, 38.170933, 46.843662>,  <39.428635, 38.537582, 46.684277>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415779, 38.170933, 46.843662> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032148, 0.397514, 0.917033,
		-0.998966, 0.042282, 0.016693,
		-0.032138, -0.916621, 0.398463,
		39.406139, 37.895947, 46.963200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891888, 38.541626, 47.229244>,  <39.428635, 38.537582, 46.684277>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891888, 38.541626, 47.229244> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.101685, 38.223881, 47.351818>,  <39.227562, 38.033234, 47.425362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.101685, 38.223881, 47.351818>,  <38.891888, 38.541626, 47.229244>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.101685, 38.223881, 47.351818> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080170, 0.312233, 0.946617,
		-0.847635, -0.521055, 0.100079,
		0.524487, -0.794363, 0.306433,
		39.259029, 37.985573, 47.443748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567966, 38.391769, 47.783859>,  <38.891888, 38.541626, 47.229244>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.567966, 38.391769, 47.783859> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.934223, 38.231640, 47.798504>,  <39.153976, 38.135563, 47.807289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.934223, 38.231640, 47.798504>,  <38.567966, 38.391769, 47.783859>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934223, 38.231640, 47.798504> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046645, 0.196263, 0.979441,
		-0.399281, -0.895109, 0.198380,
		0.915641, -0.400326, 0.036612,
		39.208916, 38.111542, 47.809486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484360, 37.862717, 48.271343>,  <38.567966, 38.391769, 47.783859>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.484360, 37.862717, 48.271343> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.868420, 37.959442, 48.215290>,  <39.098858, 38.017475, 48.181660>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.868420, 37.959442, 48.215290>,  <38.484360, 37.862717, 48.271343>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868420, 37.959442, 48.215290> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055987, 0.324821, 0.944117,
		0.273809, -0.914342, 0.298340,
		0.960153, 0.241805, -0.140130,
		39.156464, 38.031986, 48.173252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734581, 37.803307, 48.906090>,  <38.484360, 37.862717, 48.271343>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.734581, 37.803307, 48.906090> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.031979, 38.016056, 48.743942>,  <39.210415, 38.143707, 48.646652>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.031979, 38.016056, 48.743942>,  <38.734581, 37.803307, 48.906090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031979, 38.016056, 48.743942> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284031, 0.297631, 0.911451,
		0.605431, -0.792794, 0.070216,
		0.743491, 0.531876, -0.405373,
		39.255028, 38.175617, 48.622330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306705, 37.685898, 49.380203>,  <38.734581, 37.803307, 48.906090>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.306705, 37.685898, 49.380203> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.377796, 38.025410, 49.181011>,  <39.420448, 38.229118, 49.061497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.377796, 38.025410, 49.181011>,  <39.306705, 37.685898, 49.380203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377796, 38.025410, 49.181011> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338748, 0.422347, 0.840758,
		0.923940, -0.318112, -0.212463,
		0.177722, 0.848780, -0.497983,
		39.431114, 38.280045, 49.031616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.000984, 37.856400, 49.489178>,  <39.306705, 37.685898, 49.380203>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.000984, 37.856400, 49.489178> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.851620, 38.207844, 49.370106>,  <39.762001, 38.418709, 49.298664>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.851620, 38.207844, 49.370106>,  <40.000984, 37.856400, 49.489178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.851620, 38.207844, 49.370106> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385486, 0.438837, 0.811679,
		0.843779, 0.188341, -0.502558,
		-0.373414, 0.878607, -0.297678,
		39.739597, 38.471424, 49.280804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.656372, 38.348045, 49.306103>,  <40.000984, 37.856400, 49.489178>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.656372, 38.348045, 49.306103> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.339211, 38.581631, 49.375725>,  <40.148914, 38.721783, 49.417500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.339211, 38.581631, 49.375725>,  <40.656372, 38.348045, 49.306103>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.339211, 38.581631, 49.375725> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569758, 0.609221, 0.551567,
		0.216055, 0.536508, -0.815769,
		-0.792904, 0.583960, 0.174055,
		40.101341, 38.756817, 49.427940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.948338, 38.917992, 49.543869>,  <40.656372, 38.348045, 49.306103>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.948338, 38.917992, 49.543869> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.567032, 39.028114, 49.593655>,  <40.338249, 39.094189, 49.623528>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.567032, 39.028114, 49.593655>,  <40.948338, 38.917992, 49.543869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.567032, 39.028114, 49.593655> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301263, 0.834804, 0.460806,
		0.022962, 0.476766, -0.878730,
		-0.953265, 0.275310, 0.124463,
		40.281052, 39.110706, 49.630993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.814972, 39.685532, 49.391529>,  <40.948338, 38.917992, 49.543869>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.814972, 39.685532, 49.391529> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.530743, 39.623192, 49.665989>,  <40.360207, 39.585789, 49.830666>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.530743, 39.623192, 49.665989>,  <40.814972, 39.685532, 49.391529>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.530743, 39.623192, 49.665989> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172037, 0.907085, 0.384187,
		-0.682272, 0.391035, -0.617735,
		-0.710569, -0.155847, 0.686151,
		40.317574, 39.576439, 49.871834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.488297, 40.288395, 49.405041>,  <40.814972, 39.685532, 49.391529>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.488297, 40.288395, 49.405041> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.360115, 40.111195, 49.739960>,  <40.283207, 40.004875, 49.940910>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.360115, 40.111195, 49.739960>,  <40.488297, 40.288395, 49.405041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.360115, 40.111195, 49.739960> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057014, 0.873284, 0.483864,
		-0.945548, 0.202791, -0.254586,
		-0.320450, -0.443002, 0.837294,
		40.263981, 39.978294, 49.991146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.931004, 40.705040, 49.688599>,  <40.488297, 40.288395, 49.405041>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.931004, 40.705040, 49.688599> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.061649, 40.498230, 50.005081>,  <40.140038, 40.374146, 50.194973>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.061649, 40.498230, 50.005081>,  <39.931004, 40.705040, 49.688599>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.061649, 40.498230, 50.005081> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047062, 0.827184, 0.559956,
		-0.943986, -0.220124, 0.245836,
		0.326612, -0.517021, 0.791210,
		40.159634, 40.343124, 50.242443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.628895, 41.083382, 50.253605>,  <39.931004, 40.705040, 49.688599>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.628895, 41.083382, 50.253605> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.892254, 40.833981, 50.422249>,  <40.050270, 40.684338, 50.523434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.892254, 40.833981, 50.422249>,  <39.628895, 41.083382, 50.253605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.892254, 40.833981, 50.422249> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171366, 0.669616, 0.722667,
		-0.732906, -0.403550, 0.547719,
		0.658395, -0.623507, 0.421611,
		40.089771, 40.646927, 50.548733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415058, 41.024258, 50.970718>,  <39.628895, 41.083382, 50.253605>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.415058, 41.024258, 50.970718> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.804562, 40.958195, 50.908089>,  <40.038265, 40.918556, 50.870510>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.804562, 40.958195, 50.908089>,  <39.415058, 41.024258, 50.970718>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.804562, 40.958195, 50.908089> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224711, 0.806739, 0.546513,
		0.036054, -0.567356, 0.822683,
		0.973758, -0.165162, -0.156578,
		40.096687, 40.908646, 50.861115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929001, 41.204918, 50.535793>,  <39.415058, 41.024258, 50.970718>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.929001, 41.204918, 50.535793> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.581646, 41.342934, 50.678257>,  <38.373234, 41.425743, 50.763737>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.581646, 41.342934, 50.678257>,  <38.929001, 41.204918, 50.535793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.581646, 41.342934, 50.678257> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463560, -0.309760, -0.830157,
		-0.176109, -0.886002, 0.428936,
		-0.868388, 0.345036, 0.356163,
		38.321129, 41.446445, 50.785107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446144, 40.697403, 50.463612>,  <38.929001, 41.204918, 50.535793>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446144, 40.697403, 50.463612> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.207943, 41.016949, 50.497536>,  <38.065022, 41.208675, 50.517891>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.207943, 41.016949, 50.497536>,  <38.446144, 40.697403, 50.463612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.207943, 41.016949, 50.497536> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477189, -0.266829, -0.837313,
		-0.646269, -0.539093, 0.540106,
		-0.595505, 0.798862, 0.084806,
		38.029293, 41.256607, 50.522976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648022, 40.548096, 50.361378>,  <38.446144, 40.697403, 50.463612>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.648022, 40.548096, 50.361378> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.681614, 40.936291, 50.270950>,  <37.701771, 41.169209, 50.216694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.681614, 40.936291, 50.270950>,  <37.648022, 40.548096, 50.361378>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681614, 40.936291, 50.270950> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519104, -0.151046, -0.841259,
		-0.850575, 0.188007, 0.491096,
		0.083984, 0.970484, -0.226071,
		37.706810, 41.227436, 50.203129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973537, 40.844452, 50.299026>,  <37.648022, 40.548096, 50.361378>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973537, 40.844452, 50.299026> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.236988, 41.057045, 50.085960>,  <37.395058, 41.184601, 49.958122>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.236988, 41.057045, 50.085960>,  <36.973537, 40.844452, 50.299026>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.236988, 41.057045, 50.085960> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531723, -0.172155, -0.829236,
		-0.532427, 0.829390, 0.169216,
		0.658629, 0.531484, -0.532666,
		37.434578, 41.216492, 49.926159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563061, 41.259907, 49.857910>,  <36.973537, 40.844452, 50.299026>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563061, 41.259907, 49.857910> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.928776, 41.251568, 49.696098>,  <37.148205, 41.246563, 49.599010>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.928776, 41.251568, 49.696098>,  <36.563061, 41.259907, 49.857910>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928776, 41.251568, 49.696098> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396501, -0.250362, -0.883236,
		-0.082867, 0.967928, -0.237168,
		0.914286, -0.020846, -0.404532,
		37.203060, 41.245316, 49.574738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271778, 41.493454, 49.313293>,  <36.563061, 41.259907, 49.857910>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271778, 41.493454, 49.313293> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.651344, 41.384480, 49.249626>,  <36.879086, 41.319096, 49.211426>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.651344, 41.384480, 49.249626>,  <36.271778, 41.493454, 49.313293>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651344, 41.384480, 49.249626> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249341, -0.338326, -0.907394,
		0.193359, 0.900728, -0.388974,
		0.948916, -0.272440, -0.159170,
		36.936020, 41.302746, 49.201874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524300, 41.820614, 48.646282>,  <36.271778, 41.493454, 49.313293>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524300, 41.820614, 48.646282> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.745907, 41.497601, 48.727230>,  <36.878872, 41.303791, 48.775799>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.745907, 41.497601, 48.727230>,  <36.524300, 41.820614, 48.646282>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745907, 41.497601, 48.727230> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201367, -0.365858, -0.908625,
		0.807785, 0.462642, -0.365302,
		0.554017, -0.807533, 0.202374,
		36.912113, 41.255341, 48.787941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.592148, 42.398422, 48.320599>,  <36.524300, 41.820614, 48.646282>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.592148, 42.398422, 48.320599> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.348457, 42.683620, 48.181755>,  <36.202244, 42.854740, 48.098450>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.348457, 42.683620, 48.181755>,  <36.592148, 42.398422, 48.320599>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.348457, 42.683620, 48.181755> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307774, 0.615999, 0.725135,
		0.730835, 0.334940, -0.594723,
		-0.609226, 0.712994, -0.347108,
		36.165691, 42.897518, 48.077621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024410, 42.941467, 48.340397>,  <36.592148, 42.398422, 48.320599>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024410, 42.941467, 48.340397> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.659214, 43.104630, 48.337452>,  <36.440094, 43.202526, 48.335686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.659214, 43.104630, 48.337452>,  <37.024410, 42.941467, 48.340397>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659214, 43.104630, 48.337452> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288299, 0.657838, 0.695796,
		0.288659, 0.633137, -0.718202,
		-0.912995, 0.407905, -0.007358,
		36.385315, 43.227001, 48.335243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096985, 43.603378, 48.366402>,  <37.024410, 42.941467, 48.340397>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096985, 43.603378, 48.366402> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.712402, 43.573574, 48.472275>,  <36.481655, 43.555691, 48.535797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.712402, 43.573574, 48.472275>,  <37.096985, 43.603378, 48.366402>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.712402, 43.573574, 48.472275> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126240, 0.735525, 0.665633,
		-0.244277, 0.673388, -0.697766,
		-0.961453, -0.074513, 0.264680,
		36.423965, 43.551220, 48.551678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876755, 44.266895, 48.332161>,  <37.096985, 43.603378, 48.366402>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876755, 44.266895, 48.332161> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.639889, 44.047058, 48.567886>,  <36.497768, 43.915157, 48.709320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.639889, 44.047058, 48.567886>,  <36.876755, 44.266895, 48.332161>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.639889, 44.047058, 48.567886> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033732, 0.713779, 0.699559,
		-0.805110, 0.434133, -0.404136,
		-0.592166, -0.549589, 0.589315,
		36.462238, 43.882183, 48.744682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371254, 44.769333, 48.588638>,  <36.876755, 44.266895, 48.332161>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371254, 44.769333, 48.588638> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.362453, 44.477272, 48.861813>,  <36.357174, 44.302036, 49.025719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.362453, 44.477272, 48.861813>,  <36.371254, 44.769333, 48.588638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.362453, 44.477272, 48.861813> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235897, 0.660021, 0.713249,
		-0.971529, 0.176796, 0.157717,
		-0.022003, -0.730147, 0.682935,
		36.355854, 44.258228, 49.066692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048492, 45.111813, 49.274921>,  <36.371254, 44.769333, 48.588638>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048492, 45.111813, 49.274921> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.229145, 44.771729, 49.383118>,  <36.337536, 44.567677, 49.448036>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.229145, 44.771729, 49.383118>,  <36.048492, 45.111813, 49.274921>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229145, 44.771729, 49.383118> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245396, 0.409855, 0.878521,
		-0.857793, -0.330391, 0.393743,
		0.451633, -0.850212, 0.270494,
		36.364635, 44.516666, 49.464268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850018, 45.039471, 49.901325>,  <36.048492, 45.111813, 49.274921>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850018, 45.039471, 49.901325> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.180550, 44.815666, 49.875641>,  <36.378868, 44.681381, 49.860229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.180550, 44.815666, 49.875641>,  <35.850018, 45.039471, 49.901325>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180550, 44.815666, 49.875641> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339063, 0.403204, 0.849978,
		-0.449685, -0.724134, 0.522890,
		0.826329, -0.559515, -0.064212,
		36.428448, 44.647812, 49.856377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905132, 44.755123, 50.534733>,  <35.850018, 45.039471, 49.901325>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905132, 44.755123, 50.534733> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.269863, 44.721867, 50.373905>,  <36.488701, 44.701912, 50.277409>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.269863, 44.721867, 50.373905>,  <35.905132, 44.755123, 50.534733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269863, 44.721867, 50.373905> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410180, 0.227415, 0.883196,
		0.018002, -0.970242, 0.241468,
		0.911827, -0.083146, -0.402068,
		36.543411, 44.696922, 50.253284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256302, 44.332710, 51.007885>,  <35.905132, 44.755123, 50.534733>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256302, 44.332710, 51.007885> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.517746, 44.564777, 50.813484>,  <36.674614, 44.704018, 50.696842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.517746, 44.564777, 50.813484>,  <36.256302, 44.332710, 51.007885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.517746, 44.564777, 50.813484> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321843, 0.368130, 0.872294,
		0.684986, -0.726560, 0.053893,
		0.653614, 0.580164, -0.486002,
		36.713829, 44.738827, 50.667683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.301964, 35.978275, 38.012642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.488461, 36.292778, 37.850449>,  <35.600357, 36.481480, 37.753132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.488461, 36.292778, 37.850449>,  <35.301964, 35.978275, 38.012642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.488461, 36.292778, 37.850449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484411, 0.610428, 0.626676,
		0.740249, -0.095761, 0.665479,
		0.466238, 0.786262, -0.405481,
		35.628330, 36.528656, 37.728806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606331, 36.410099, 38.567551>,  <35.301964, 35.978275, 38.012642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.606331, 36.410099, 38.567551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551506, 36.643566, 38.247414>,  <35.518612, 36.783646, 38.055332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551506, 36.643566, 38.247414>,  <35.606331, 36.410099, 38.567551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.551506, 36.643566, 38.247414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284388, 0.750765, 0.596217,
		0.948861, 0.309327, 0.063087,
		-0.137062, 0.583668, -0.800341,
		35.510387, 36.818668, 38.007313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891586, 37.043385, 38.703178>,  <35.606331, 36.410099, 38.567551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891586, 37.043385, 38.703178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635799, 37.142990, 38.412231>,  <35.482327, 37.202755, 38.237663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635799, 37.142990, 38.412231>,  <35.891586, 37.043385, 38.703178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635799, 37.142990, 38.412231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311964, 0.780662, 0.541521,
		0.702678, 0.573200, -0.421528,
		-0.639471, 0.249013, -0.727372,
		35.443958, 37.217693, 38.194019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026363, 37.773556, 38.625614>,  <35.891586, 37.043385, 38.703178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026363, 37.773556, 38.625614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.669334, 37.688728, 38.466450>,  <35.455116, 37.637833, 38.370949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.669334, 37.688728, 38.466450>,  <36.026363, 37.773556, 38.625614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.669334, 37.688728, 38.466450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372293, 0.844485, 0.385024,
		0.254380, 0.491803, -0.832719,
		-0.892574, -0.212073, -0.397915,
		35.401562, 37.625107, 38.347076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749187, 38.443344, 38.624187>,  <36.026363, 37.773556, 38.625614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749187, 38.443344, 38.624187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.419758, 38.229595, 38.548115>,  <35.222099, 38.101345, 38.502472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.419758, 38.229595, 38.548115>,  <35.749187, 38.443344, 38.624187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419758, 38.229595, 38.548115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560533, 0.715500, 0.416968,
		-0.086738, 0.450010, -0.888801,
		-0.823577, -0.534369, -0.190185,
		35.172684, 38.069286, 38.491058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244202, 38.867001, 38.214161>,  <35.749187, 38.443344, 38.624187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244202, 38.867001, 38.214161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064732, 38.572552, 38.416870>,  <34.957050, 38.395882, 38.538498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064732, 38.572552, 38.416870>,  <35.244202, 38.867001, 38.214161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064732, 38.572552, 38.416870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442080, 0.675629, 0.589992,
		-0.776697, 0.040677, -0.628559,
		-0.448672, -0.736119, 0.506777,
		34.930130, 38.351715, 38.568905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.562862, 39.108524, 38.312138>,  <35.244202, 38.867001, 38.214161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.562862, 39.108524, 38.312138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.622650, 38.818436, 38.580975>,  <34.658524, 38.644382, 38.742279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.622650, 38.818436, 38.580975>,  <34.562862, 39.108524, 38.312138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622650, 38.818436, 38.580975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565994, 0.494597, 0.659564,
		-0.810747, -0.478985, -0.336545,
		0.149467, -0.725222, 0.672096,
		34.667492, 38.600868, 38.782604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997665, 39.157745, 38.769505>,  <34.562862, 39.108524, 38.312138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.997665, 39.157745, 38.769505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193184, 38.911995, 39.017254>,  <34.310493, 38.764545, 39.165905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193184, 38.911995, 39.017254>,  <33.997665, 39.157745, 38.769505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193184, 38.911995, 39.017254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642689, 0.226508, 0.731877,
		-0.589939, -0.755804, -0.284135,
		0.488797, -0.614373, 0.619373,
		34.339825, 38.727684, 39.203064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.508503, 38.756702, 39.111080>,  <33.997665, 39.157745, 38.769505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.508503, 38.756702, 39.111080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.828461, 38.713345, 39.347191>,  <34.020435, 38.687328, 39.488857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.828461, 38.713345, 39.347191>,  <33.508503, 38.756702, 39.111080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.828461, 38.713345, 39.347191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580429, 0.110313, 0.806804,
		-0.152571, -0.987968, 0.025320,
		0.799890, -0.108398, 0.590276,
		34.068428, 38.680824, 39.524273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274250, 38.308514, 39.715061>,  <33.508503, 38.756702, 39.111080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274250, 38.308514, 39.715061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.599762, 38.520878, 39.809628>,  <33.795071, 38.648296, 39.866367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.599762, 38.520878, 39.809628>,  <33.274250, 38.308514, 39.715061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.599762, 38.520878, 39.809628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375157, 0.169196, 0.911389,
		0.443870, -0.830363, 0.336865,
		0.813779, 0.530915, 0.236415,
		33.843895, 38.680153, 39.880550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.420238, 38.090748, 40.479435>,  <33.274250, 38.308514, 39.715061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.420238, 38.090748, 40.479435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.584602, 38.447304, 40.402939>,  <33.683220, 38.661236, 40.357040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.584602, 38.447304, 40.402939>,  <33.420238, 38.090748, 40.479435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.584602, 38.447304, 40.402939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273187, 0.320519, 0.906993,
		0.869781, -0.320452, 0.375222,
		0.410913, 0.891391, -0.191238,
		33.707878, 38.714722, 40.345566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907059, 38.144459, 41.047791>,  <33.420238, 38.090748, 40.479435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.907059, 38.144459, 41.047791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.897873, 38.526512, 40.929672>,  <33.892361, 38.755745, 40.858803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.897873, 38.526512, 40.929672>,  <33.907059, 38.144459, 41.047791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.897873, 38.526512, 40.929672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071647, 0.296183, 0.952440,
		0.997166, 0.000714, -0.075233,
		-0.022963, 0.955131, -0.295292,
		33.890984, 38.813053, 40.841084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457428, 37.700829, 41.467587>,  <33.907059, 38.144459, 41.047791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.457428, 37.700829, 41.467587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224510, 37.455929, 41.681534>,  <34.084759, 37.308990, 41.809902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224510, 37.455929, 41.681534>,  <34.457428, 37.700829, 41.467587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224510, 37.455929, 41.681534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406212, -0.350784, -0.843767,
		0.704218, -0.708591, -0.044443,
		-0.582296, -0.612249, 0.534867,
		34.049820, 37.272255, 41.841995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531071, 37.090973, 41.138779>,  <34.457428, 37.700829, 41.467587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531071, 37.090973, 41.138779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190300, 37.047092, 41.343594>,  <33.985836, 37.020763, 41.466484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190300, 37.047092, 41.343594>,  <34.531071, 37.090973, 41.138779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190300, 37.047092, 41.343594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462754, -0.299956, -0.834197,
		0.245098, -0.947625, 0.204778,
		-0.851931, -0.109698, 0.512036,
		33.934719, 37.014183, 41.497204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.188072, 36.570992, 40.831280>,  <34.531071, 37.090973, 41.138779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.188072, 36.570992, 40.831280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.875294, 36.720451, 41.030857>,  <33.687626, 36.810127, 41.150604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.875294, 36.720451, 41.030857>,  <34.188072, 36.570992, 40.831280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.875294, 36.720451, 41.030857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609526, -0.290698, -0.737545,
		-0.130540, -0.880841, 0.455059,
		-0.781945, 0.373649, 0.498948,
		33.640709, 36.832546, 41.180542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.722214, 35.978794, 41.051830>,  <34.188072, 36.570992, 40.831280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.722214, 35.978794, 41.051830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.511974, 36.316906, 41.013363>,  <33.385830, 36.519772, 40.990284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.511974, 36.316906, 41.013363>,  <33.722214, 35.978794, 41.051830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.511974, 36.316906, 41.013363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653072, -0.473339, -0.591140,
		-0.545198, -0.247899, 0.800815,
		-0.525600, 0.845279, -0.096167,
		33.354294, 36.570488, 40.984512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934280, 35.728924, 41.134335>,  <33.722214, 35.978794, 41.051830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934280, 35.728924, 41.134335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901894, 36.097977, 40.983498>,  <32.882462, 36.319408, 40.892994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901894, 36.097977, 40.983498>,  <32.934280, 35.728924, 41.134335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901894, 36.097977, 40.983498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673992, -0.329403, -0.661233,
		-0.734289, 0.200622, 0.648515,
		-0.080965, 0.922629, -0.377094,
		32.877605, 36.374767, 40.870369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.305462, 35.662888, 41.002468>,  <32.934280, 35.728924, 41.134335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.305462, 35.662888, 41.002468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.438747, 35.978870, 40.796577>,  <32.518719, 36.168461, 40.673042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.438747, 35.978870, 40.796577>,  <32.305462, 35.662888, 41.002468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.438747, 35.978870, 40.796577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570099, -0.266015, -0.777318,
		-0.750970, 0.552456, 0.361713,
		0.333213, 0.789955, -0.514724,
		32.538712, 36.215858, 40.642159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.756527, 36.003933, 40.642078>,  <32.305462, 35.662888, 41.002468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.756527, 36.003933, 40.642078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.066303, 36.120644, 40.417538>,  <32.252167, 36.190670, 40.282814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.066303, 36.120644, 40.417538>,  <31.756527, 36.003933, 40.642078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.066303, 36.120644, 40.417538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436468, -0.395901, -0.807934,
		-0.457974, 0.870706, -0.179250,
		0.774439, 0.291776, -0.561348,
		32.298634, 36.208176, 40.249134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.484333, 36.336906, 39.962578>,  <31.756527, 36.003933, 40.642078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.484333, 36.336906, 39.962578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853426, 36.216854, 39.865845>,  <32.074883, 36.144821, 39.807804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853426, 36.216854, 39.865845>,  <31.484333, 36.336906, 39.962578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.853426, 36.216854, 39.865845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311650, -0.211770, -0.926298,
		0.226800, 0.930093, -0.288944,
		0.922733, -0.300133, -0.241835,
		32.130245, 36.126816, 39.793293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.627312, 36.589005, 39.339439>,  <31.484333, 36.336906, 39.962578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.627312, 36.589005, 39.339439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.915483, 36.311626, 39.335064>,  <32.088387, 36.145199, 39.332439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.915483, 36.311626, 39.335064>,  <31.627312, 36.589005, 39.339439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.915483, 36.311626, 39.335064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197954, -0.190492, -0.961523,
		0.664678, 0.694875, -0.274506,
		0.720429, -0.693442, -0.010937,
		32.131611, 36.103592, 39.331783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.895266, 36.667091, 38.663025>,  <31.627312, 36.589005, 39.339439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.895266, 36.667091, 38.663025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.985176, 36.300224, 38.794643>,  <32.039124, 36.080105, 38.873615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.985176, 36.300224, 38.794643>,  <31.895266, 36.667091, 38.663025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.985176, 36.300224, 38.794643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206514, -0.374861, -0.903787,
		0.952274, 0.135198, -0.273669,
		0.224778, -0.917170, 0.329050,
		32.052608, 36.025074, 38.893360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.355194, 36.475674, 38.229576>,  <31.895266, 36.667091, 38.663025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.355194, 36.475674, 38.229576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.234848, 36.129616, 38.390083>,  <32.162640, 35.921982, 38.486385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.234848, 36.129616, 38.390083>,  <32.355194, 36.475674, 38.229576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.234848, 36.129616, 38.390083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177773, -0.362507, -0.914869,
		0.936952, -0.346583, -0.044734,
		-0.300862, -0.865141, 0.401265,
		32.144588, 35.870075, 38.510464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.582195, 36.001942, 37.721619>,  <32.355194, 36.475674, 38.229576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.582195, 36.001942, 37.721619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.316463, 35.791824, 37.934311>,  <32.157024, 35.665752, 38.061924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.316463, 35.791824, 37.934311>,  <32.582195, 36.001942, 37.721619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.316463, 35.791824, 37.934311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446194, -0.292018, -0.845953,
		0.599651, -0.799241, -0.040390,
		-0.664326, -0.525298, 0.531726,
		32.117165, 35.634235, 38.093830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.623352, 35.155640, 37.643665>,  <32.582195, 36.001942, 37.721619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.623352, 35.155640, 37.643665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.275951, 35.346527, 37.697269>,  <32.067509, 35.461060, 37.729431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.275951, 35.346527, 37.697269>,  <32.623352, 35.155640, 37.643665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.275951, 35.346527, 37.697269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412409, -0.545713, -0.729463,
		-0.274986, -0.688808, 0.670765,
		-0.868505, 0.477222, 0.134007,
		32.015400, 35.489693, 37.737473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.317520, 35.015465, 37.657001>,  <32.623352, 35.155640, 37.643665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.317520, 35.015465, 37.657001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.373959, 35.018417, 38.052990>,  <33.407822, 35.020187, 38.290581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.373959, 35.018417, 38.052990>,  <33.317520, 35.015465, 37.657001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.373959, 35.018417, 38.052990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123537, -0.992025, 0.025004,
		0.982258, -0.125825, -0.139057,
		0.141094, 0.007382, 0.989969,
		33.416286, 35.020634, 38.349979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610615, 34.681576, 38.091454>,  <33.317520, 35.015465, 37.657001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610615, 34.681576, 38.091454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.235256, 34.808842, 38.145390>,  <33.010040, 34.885201, 38.177750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.235256, 34.808842, 38.145390>,  <33.610615, 34.681576, 38.091454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.235256, 34.808842, 38.145390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143508, -0.713789, 0.685500,
		0.314345, 0.623922, 0.715478,
		-0.938399, 0.318160, 0.134838,
		32.953735, 34.904289, 38.185841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195015, 34.361359, 38.490673>,  <33.610615, 34.681576, 38.091454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195015, 34.361359, 38.490673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.453793, 34.468868, 38.205235>,  <34.609058, 34.533375, 38.033970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.453793, 34.468868, 38.205235>,  <34.195015, 34.361359, 38.490673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453793, 34.468868, 38.205235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761063, -0.169420, 0.626163,
		0.047401, -0.948185, -0.314162,
		0.646944, 0.268778, -0.713598,
		34.647877, 34.549503, 37.991154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621944, 33.716484, 38.375526>,  <34.195015, 34.361359, 38.490673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621944, 33.716484, 38.375526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792271, 34.073559, 38.316471>,  <34.894466, 34.287804, 38.281036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792271, 34.073559, 38.316471>,  <34.621944, 33.716484, 38.375526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792271, 34.073559, 38.316471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574579, -0.140730, 0.806259,
		0.698957, -0.428148, -0.572842,
		0.425814, 0.892684, -0.147641,
		34.920013, 34.341366, 38.272179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.246246, 33.605927, 38.551033>,  <34.621944, 33.716484, 38.375526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.246246, 33.605927, 38.551033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.269981, 34.004677, 38.571884>,  <35.284222, 34.243927, 38.584393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.269981, 34.004677, 38.571884>,  <35.246246, 33.605927, 38.551033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.269981, 34.004677, 38.571884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564874, -0.076583, 0.821616,
		0.823041, -0.019309, -0.567653,
		0.059337, 0.996876, 0.052123,
		35.287781, 34.303741, 38.587521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987389, 33.765453, 38.502968>,  <35.246246, 33.605927, 38.551033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.987389, 33.765453, 38.502968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.802601, 34.075825, 38.674786>,  <35.691727, 34.262047, 38.777878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.802601, 34.075825, 38.674786>,  <35.987389, 33.765453, 38.502968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802601, 34.075825, 38.674786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771180, 0.112236, 0.626645,
		0.438023, 0.620751, -0.650234,
		-0.461970, 0.775933, 0.429549,
		35.664009, 34.308605, 38.803650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529858, 34.299248, 38.600655>,  <35.987389, 33.765453, 38.502968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529858, 34.299248, 38.600655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.259140, 34.422527, 38.868076>,  <36.096710, 34.496494, 39.028530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.259140, 34.422527, 38.868076>,  <36.529858, 34.299248, 38.600655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.259140, 34.422527, 38.868076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719719, 0.086061, 0.688911,
		0.154783, 0.947422, -0.280060,
		-0.676792, 0.308196, 0.668557,
		36.056103, 34.514988, 39.068642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.819477, 34.941574, 38.866859>,  <36.529858, 34.299248, 38.600655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.819477, 34.941574, 38.866859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552101, 34.824398, 39.140320>,  <36.391678, 34.754093, 39.304398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552101, 34.824398, 39.140320>,  <36.819477, 34.941574, 38.866859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552101, 34.824398, 39.140320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721908, -0.034315, 0.691138,
		-0.179005, 0.955514, 0.234416,
		-0.668436, -0.292944, 0.683650,
		36.351570, 34.736515, 39.345413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818256, 35.364670, 39.643890>,  <36.819477, 34.941574, 38.866859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818256, 35.364670, 39.643890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.653065, 35.012428, 39.736828>,  <36.553951, 34.801083, 39.792591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.653065, 35.012428, 39.736828>,  <36.818256, 35.364670, 39.643890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.653065, 35.012428, 39.736828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511628, -0.013266, 0.859104,
		-0.753448, 0.473668, 0.456020,
		-0.412980, -0.880604, 0.232346,
		36.529171, 34.748245, 39.806530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529816, 35.529938, 40.245369>,  <36.818256, 35.364670, 39.643890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529816, 35.529938, 40.245369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572159, 35.132210, 40.249928>,  <36.597565, 34.893574, 40.252663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572159, 35.132210, 40.249928>,  <36.529816, 35.529938, 40.245369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572159, 35.132210, 40.249928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270604, 0.039835, 0.961866,
		-0.956853, -0.098739, 0.273282,
		0.105860, -0.994316, 0.011397,
		36.603916, 34.833916, 40.253345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218735, 35.362835, 40.812397>,  <36.529816, 35.529938, 40.245369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.218735, 35.362835, 40.812397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.446789, 35.045757, 40.726070>,  <36.583622, 34.855511, 40.674274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.446789, 35.045757, 40.726070>,  <36.218735, 35.362835, 40.812397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446789, 35.045757, 40.726070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240935, -0.089807, 0.966377,
		-0.785425, -0.602966, 0.139786,
		0.570139, -0.792696, -0.215812,
		36.617832, 34.807949, 40.661327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173817, 34.911243, 41.352528>,  <36.218735, 35.362835, 40.812397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.173817, 34.911243, 41.352528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.501957, 34.777588, 41.166893>,  <36.698841, 34.697395, 41.055511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.501957, 34.777588, 41.166893>,  <36.173817, 34.911243, 41.352528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501957, 34.777588, 41.166893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444418, -0.138210, 0.885093,
		-0.359889, -0.932334, 0.035118,
		0.820349, -0.334142, -0.464087,
		36.748062, 34.677345, 41.027668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.290577, 34.328056, 41.662632>,  <36.173817, 34.911243, 41.352528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.290577, 34.328056, 41.662632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659019, 34.406235, 41.527958>,  <36.880085, 34.453144, 41.447151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659019, 34.406235, 41.527958>,  <36.290577, 34.328056, 41.662632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659019, 34.406235, 41.527958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374795, -0.211280, 0.902712,
		0.105299, -0.957685, -0.267865,
		0.921108, 0.195449, -0.336688,
		36.935352, 34.464870, 41.426952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805122, 33.870354, 42.040852>,  <36.290577, 34.328056, 41.662632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805122, 33.870354, 42.040852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.031399, 34.158947, 41.881123>,  <37.167164, 34.332104, 41.785286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.031399, 34.158947, 41.881123>,  <36.805122, 33.870354, 42.040852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031399, 34.158947, 41.881123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441810, 0.143699, 0.885525,
		0.696271, -0.677359, -0.237468,
		0.565694, 0.721481, -0.399318,
		37.201107, 34.375393, 41.761326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.473495, 33.802906, 42.356995>,  <36.805122, 33.870354, 42.040852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.473495, 33.802906, 42.356995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.461536, 34.183315, 42.233929>,  <37.454361, 34.411560, 42.160091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.461536, 34.183315, 42.233929>,  <37.473495, 33.802906, 42.356995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461536, 34.183315, 42.233929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517994, 0.277985, 0.808954,
		0.854862, -0.135179, -0.500938,
		-0.029899, 0.951026, -0.307661,
		37.452568, 34.468624, 42.141632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149887, 34.117538, 42.426510>,  <37.473495, 33.802906, 42.356995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149887, 34.117538, 42.426510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.881577, 34.414074, 42.417736>,  <37.720589, 34.591995, 42.412472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.881577, 34.414074, 42.417736>,  <38.149887, 34.117538, 42.426510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881577, 34.414074, 42.417736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439625, 0.421251, 0.793270,
		0.597318, 0.522464, -0.608475,
		-0.670776, 0.741335, -0.021933,
		37.680344, 34.636475, 42.411156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502228, 34.693272, 42.658066>,  <38.149887, 34.117538, 42.426510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502228, 34.693272, 42.658066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.121914, 34.797176, 42.725632>,  <37.893726, 34.859520, 42.766171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.121914, 34.797176, 42.725632>,  <38.502228, 34.693272, 42.658066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.121914, 34.797176, 42.725632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287390, 0.535529, 0.794113,
		0.115818, 0.803576, -0.583825,
		-0.950785, 0.259758, 0.168916,
		37.836678, 34.875103, 42.776306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613663, 35.324089, 42.737270>,  <38.502228, 34.693272, 42.658066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613663, 35.324089, 42.737270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.254017, 35.268288, 42.903221>,  <38.038227, 35.234806, 43.002792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.254017, 35.268288, 42.903221>,  <38.613663, 35.324089, 42.737270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254017, 35.268288, 42.903221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313881, 0.455117, 0.833275,
		-0.305067, 0.879435, -0.365415,
		-0.899118, -0.139508, 0.414879,
		37.984280, 35.226437, 43.027683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354099, 36.016556, 42.739323>,  <38.613663, 35.324089, 42.737270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354099, 36.016556, 42.739323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.131153, 35.825672, 43.011093>,  <37.997387, 35.711140, 43.174156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.131153, 35.825672, 43.011093>,  <38.354099, 36.016556, 42.739323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.131153, 35.825672, 43.011093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384741, 0.576703, 0.720686,
		-0.735745, 0.663085, -0.137830,
		-0.557363, -0.477212, 0.679422,
		37.963943, 35.682510, 43.214920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999989, 36.478382, 43.099499>,  <38.354099, 36.016556, 42.739323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.999989, 36.478382, 43.099499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.021282, 36.175320, 43.359688>,  <38.034058, 35.993481, 43.515800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.021282, 36.175320, 43.359688>,  <37.999989, 36.478382, 43.099499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021282, 36.175320, 43.359688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433430, 0.604369, 0.668488,
		-0.899614, 0.246350, 0.360564,
		0.053232, -0.757660, 0.650474,
		38.037251, 35.948021, 43.554829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801731, 36.749493, 43.688484>,  <37.999989, 36.478382, 43.099499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.801731, 36.749493, 43.688484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.960392, 36.418701, 43.847870>,  <38.055588, 36.220226, 43.943501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.960392, 36.418701, 43.847870>,  <37.801731, 36.749493, 43.688484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960392, 36.418701, 43.847870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317533, 0.530878, 0.785711,
		-0.861301, -0.185129, 0.473167,
		0.396652, -0.826980, 0.398462,
		38.079388, 36.170609, 43.967407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582409, 36.666313, 44.354992>,  <37.801731, 36.749493, 43.688484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582409, 36.666313, 44.354992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.918461, 36.449734, 44.342232>,  <38.120090, 36.319786, 44.334576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.918461, 36.449734, 44.342232>,  <37.582409, 36.666313, 44.354992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.918461, 36.449734, 44.342232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365224, 0.521256, 0.771300,
		-0.400988, -0.659644, 0.635672,
		0.840131, -0.541445, -0.031900,
		38.170502, 36.287300, 44.332661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624321, 36.446697, 45.014385>,  <37.582409, 36.666313, 44.354992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.624321, 36.446697, 45.014385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.985115, 36.401508, 44.847691>,  <38.201591, 36.374393, 44.747673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.985115, 36.401508, 44.847691>,  <37.624321, 36.446697, 45.014385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985115, 36.401508, 44.847691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431730, 0.221934, 0.874274,
		-0.006284, -0.968495, 0.248955,
		0.901981, -0.112975, -0.416734,
		38.255711, 36.367615, 44.722672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075615, 36.010838, 45.362473>,  <37.624321, 36.446697, 45.014385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075615, 36.010838, 45.362473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.334175, 36.220348, 45.140545>,  <38.489311, 36.346054, 45.007389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.334175, 36.220348, 45.140545>,  <38.075615, 36.010838, 45.362473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334175, 36.220348, 45.140545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484572, 0.279866, 0.828773,
		0.589369, -0.804568, -0.072903,
		0.646402, 0.523780, -0.554815,
		38.528095, 36.377483, 44.974102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723911, 35.825886, 45.817131>,  <38.075615, 36.010838, 45.362473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723911, 35.825886, 45.817131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.805195, 36.144997, 45.590061>,  <38.853966, 36.336464, 45.453819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.805195, 36.144997, 45.590061>,  <38.723911, 35.825886, 45.817131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805195, 36.144997, 45.590061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616422, 0.346223, 0.707215,
		0.760743, -0.493642, -0.421412,
		0.203209, 0.797776, -0.567679,
		38.866158, 36.384331, 45.419758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437832, 36.077591, 45.923615>,  <38.723911, 35.825886, 45.817131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.437832, 36.077591, 45.923615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.231564, 36.387543, 45.777386>,  <39.107803, 36.573513, 45.689648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.231564, 36.387543, 45.777386>,  <39.437832, 36.077591, 45.923615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231564, 36.387543, 45.777386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401659, 0.595520, 0.695719,
		0.756806, 0.211926, -0.618330,
		-0.515670, 0.774882, -0.365571,
		39.076862, 36.620007, 45.667713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943958, 36.549824, 45.831238>,  <39.437832, 36.077591, 45.923615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.943958, 36.549824, 45.831238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.602818, 36.755764, 45.866055>,  <39.398132, 36.879326, 45.886944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.602818, 36.755764, 45.866055>,  <39.943958, 36.549824, 45.831238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.602818, 36.755764, 45.866055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430498, 0.598970, 0.675209,
		0.295494, 0.613324, -0.732473,
		-0.852851, 0.514848, 0.087043,
		39.346962, 36.910217, 45.892166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.178970, 37.253799, 46.073963>,  <39.943958, 36.549824, 45.831238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.178970, 37.253799, 46.073963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.788246, 37.248569, 46.159447>,  <39.553810, 37.245434, 46.210739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.788246, 37.248569, 46.159447>,  <40.178970, 37.253799, 46.073963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.788246, 37.248569, 46.159447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182394, 0.471986, 0.862532,
		-0.112143, 0.881509, -0.458657,
		-0.976810, -0.013070, 0.213712,
		39.495205, 37.244648, 46.223560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.042328, 38.009853, 46.337601>,  <40.178970, 37.253799, 46.073963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.042328, 38.009853, 46.337601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.756123, 37.768604, 46.478615>,  <39.584400, 37.623856, 46.563225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.756123, 37.768604, 46.478615>,  <40.042328, 38.009853, 46.337601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.756123, 37.768604, 46.478615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186456, 0.321455, 0.928386,
		-0.673259, 0.730003, -0.117548,
		-0.715511, -0.603127, 0.352536,
		39.541470, 37.587666, 46.584377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.898407, 38.672516, 46.017635>,  <40.042328, 38.009853, 46.337601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.898407, 38.672516, 46.017635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.284248, 38.776638, 46.000744>,  <40.515751, 38.839111, 45.990608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.284248, 38.776638, 46.000744>,  <39.898407, 38.672516, 46.017635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.284248, 38.776638, 46.000744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055616, -0.357334, -0.932319,
		-0.257782, 0.896968, -0.359163,
		0.964601, 0.260310, -0.042229,
		40.573627, 38.854733, 45.988075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.967598, 39.170513, 45.437847>,  <39.898407, 38.672516, 46.017635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.967598, 39.170513, 45.437847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.329315, 39.007339, 45.488194>,  <40.546345, 38.909435, 45.518402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.329315, 39.007339, 45.488194>,  <39.967598, 39.170513, 45.437847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.329315, 39.007339, 45.488194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088703, -0.108860, -0.990092,
		0.417596, 0.906498, -0.062256,
		0.904293, -0.407936, 0.125869,
		40.600601, 38.884960, 45.525955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.309376, 39.371712, 44.862141>,  <39.967598, 39.170513, 45.437847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.309376, 39.371712, 44.862141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.550121, 39.070988, 44.969872>,  <40.694569, 38.890553, 45.034512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.550121, 39.070988, 44.969872>,  <40.309376, 39.371712, 44.862141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.550121, 39.070988, 44.969872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161227, -0.215919, -0.963008,
		0.782151, 0.623028, -0.008743,
		0.601869, -0.751808, 0.269330,
		40.730682, 38.845444, 45.050671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.972622, 39.310120, 44.452957>,  <40.309376, 39.371712, 44.862141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.972622, 39.310120, 44.452957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.930801, 38.940823, 44.600845>,  <40.905708, 38.719246, 44.689579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.930801, 38.940823, 44.600845>,  <40.972622, 39.310120, 44.452957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.930801, 38.940823, 44.600845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080944, -0.378422, -0.922087,
		0.991221, -0.066475, 0.114294,
		-0.104547, -0.923243, 0.369718,
		40.899437, 38.663849, 44.711761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.496082, 38.807068, 44.139717>,  <40.972622, 39.310120, 44.452957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.496082, 38.807068, 44.139717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.178921, 38.590488, 44.251530>,  <40.988625, 38.460541, 44.318619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.178921, 38.590488, 44.251530>,  <41.496082, 38.807068, 44.139717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.178921, 38.590488, 44.251530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121968, -0.590482, -0.797781,
		0.597016, -0.598469, 0.534234,
		-0.792903, -0.541448, 0.279533,
		40.941051, 38.428055, 44.335388>
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
