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
	<23.897411, 34.867626, 35.015144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.263727, 35.016243, 34.954109>,  <24.483517, 35.105412, 34.917488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.263727, 35.016243, 34.954109>,  <23.897411, 34.867626, 35.015144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.263727, 35.016243, 34.954109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398846, -0.796362, 0.454675,
		0.047416, -0.477246, -0.877490,
		0.915791, 0.371543, -0.152587,
		24.538464, 35.127705, 34.908333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.325682, 34.383999, 34.637253>,  <23.897411, 34.867626, 35.015144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.325682, 34.383999, 34.637253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.594662, 34.625275, 34.808819>,  <24.756050, 34.770039, 34.911758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.594662, 34.625275, 34.808819>,  <24.325682, 34.383999, 34.637253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.594662, 34.625275, 34.808819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536015, -0.796503, 0.279771,
		0.510388, 0.041773, -0.858929,
		0.672452, 0.603190, 0.428917,
		24.796398, 34.806232, 34.937492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.015978, 34.232208, 34.356033>,  <24.325682, 34.383999, 34.637253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.015978, 34.232208, 34.356033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.037722, 34.392769, 34.721748>,  <25.050768, 34.489105, 34.941177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.037722, 34.392769, 34.721748>,  <25.015978, 34.232208, 34.356033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.037722, 34.392769, 34.721748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629098, -0.724830, 0.280816,
		0.775423, 0.559913, -0.291920,
		0.054360, 0.401397, 0.914289,
		25.054029, 34.513187, 34.996037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.743631, 34.417130, 34.657108>,  <25.015978, 34.232208, 34.356033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.743631, 34.417130, 34.657108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.481941, 34.294010, 34.933441>,  <25.324926, 34.220139, 35.099239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.481941, 34.294010, 34.933441>,  <25.743631, 34.417130, 34.657108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.481941, 34.294010, 34.933441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648061, -0.699039, 0.302262,
		0.389881, 0.645448, 0.656803,
		-0.654225, -0.307803, 0.690831,
		25.285673, 34.201668, 35.140690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.112116, 34.154190, 35.199051>,  <25.743631, 34.417130, 34.657108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.112116, 34.154190, 35.199051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.757969, 33.982086, 35.269474>,  <25.545481, 33.878822, 35.311729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.757969, 33.982086, 35.269474>,  <26.112116, 34.154190, 35.199051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.757969, 33.982086, 35.269474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463771, -0.791166, 0.398714,
		-0.032258, 0.434661, 0.900016,
		-0.885368, -0.430263, 0.176061,
		25.492359, 33.853008, 35.322292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.220894, 33.790169, 34.521255>,  <26.112116, 34.154190, 35.199051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.220894, 33.790169, 34.521255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.614195, 33.736908, 34.571037>,  <26.850176, 33.704952, 34.600906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.614195, 33.736908, 34.571037>,  <26.220894, 33.790169, 34.521255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.614195, 33.736908, 34.571037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180606, -0.620172, 0.763393,
		-0.024461, -0.773084, -0.633832,
		0.983251, -0.133147, 0.124454,
		26.909170, 33.696964, 34.608372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.286846, 33.100346, 34.716248>,  <26.220894, 33.790169, 34.521255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.286846, 33.100346, 34.716248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.630205, 33.280914, 34.813717>,  <26.836220, 33.389256, 34.872196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.630205, 33.280914, 34.813717>,  <26.286846, 33.100346, 34.716248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.630205, 33.280914, 34.813717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014038, -0.454155, 0.890812,
		0.512792, -0.768092, -0.383509,
		0.858398, 0.451418, 0.243669,
		26.887724, 33.416340, 34.886818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.639280, 32.638138, 34.977879>,  <26.286846, 33.100346, 34.716248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.639280, 32.638138, 34.977879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.832315, 32.954384, 35.128632>,  <26.948137, 33.144131, 35.219086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.832315, 32.954384, 35.128632>,  <26.639280, 32.638138, 34.977879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.832315, 32.954384, 35.128632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021467, -0.440859, 0.897319,
		0.875584, -0.424945, -0.229726,
		0.482588, 0.790610, 0.376887,
		26.977093, 33.191566, 35.241699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.290344, 32.355076, 35.276382>,  <26.639280, 32.638138, 34.977879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.290344, 32.355076, 35.276382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.281118, 32.678383, 35.511726>,  <27.275583, 32.872368, 35.652931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.281118, 32.678383, 35.511726>,  <27.290344, 32.355076, 35.276382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.281118, 32.678383, 35.511726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414377, -0.543311, 0.730140,
		0.909813, -0.226964, 0.347458,
		-0.023062, 0.808270, 0.588361,
		27.274200, 32.920864, 35.688236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.534939, 32.182499, 35.925350>,  <27.290344, 32.355076, 35.276382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.534939, 32.182499, 35.925350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.321985, 32.510517, 36.009342>,  <27.194212, 32.707329, 36.059738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.321985, 32.510517, 36.009342>,  <27.534939, 32.182499, 35.925350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.321985, 32.510517, 36.009342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225957, -0.376719, 0.898346,
		0.815788, 0.430820, 0.385855,
		-0.532385, 0.820047, 0.209976,
		27.162270, 32.756531, 36.072334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.603058, 32.234882, 36.674431>,  <27.534939, 32.182499, 35.925350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.603058, 32.234882, 36.674431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.291416, 32.476212, 36.606308>,  <27.104431, 32.621010, 36.565434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.291416, 32.476212, 36.606308>,  <27.603058, 32.234882, 36.674431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.291416, 32.476212, 36.606308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453398, -0.354681, 0.817699,
		0.432930, 0.714287, 0.549878,
		-0.779103, 0.603320, -0.170305,
		27.057686, 32.657207, 36.555218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.450077, 32.616283, 37.356461>,  <27.603058, 32.234882, 36.674431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.450077, 32.616283, 37.356461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.105032, 32.630573, 37.154617>,  <26.898005, 32.639149, 37.033512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.105032, 32.630573, 37.154617>,  <27.450077, 32.616283, 37.356461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.105032, 32.630573, 37.154617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484819, -0.343123, 0.804498,
		-0.144400, 0.938611, 0.313303,
		-0.862612, 0.035726, -0.504604,
		26.846249, 32.641293, 37.003235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.948082, 32.868385, 37.887722>,  <27.450077, 32.616283, 37.356461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.948082, 32.868385, 37.887722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.735455, 32.705063, 37.590878>,  <26.607878, 32.607071, 37.412773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.735455, 32.705063, 37.590878>,  <26.948082, 32.868385, 37.887722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.735455, 32.705063, 37.590878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558170, -0.490136, 0.669487,
		-0.637089, 0.770099, 0.032637,
		-0.531568, -0.408306, -0.742107,
		26.575985, 32.582573, 37.368244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.205582, 32.992107, 38.092754>,  <26.948082, 32.868385, 37.887722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.205582, 32.992107, 38.092754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.186514, 32.721725, 37.798595>,  <26.175074, 32.559498, 37.622101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.186514, 32.721725, 37.798595>,  <26.205582, 32.992107, 38.092754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.186514, 32.721725, 37.798595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629417, -0.551351, 0.547583,
		-0.775605, 0.488974, -0.399176,
		-0.047668, -0.675956, -0.735399,
		26.172215, 32.518940, 37.577976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.454865, 32.961330, 37.865852>,  <26.205582, 32.992107, 38.092754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.454865, 32.961330, 37.865852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.636381, 32.615726, 37.778618>,  <25.745291, 32.408363, 37.726276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.636381, 32.615726, 37.778618>,  <25.454865, 32.961330, 37.865852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.636381, 32.615726, 37.778618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624427, -0.482918, 0.613906,
		-0.635738, -0.142407, -0.758655,
		0.453792, -0.864008, -0.218086,
		25.772518, 32.356525, 37.713192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.969498, 32.386497, 38.007088>,  <25.454865, 32.961330, 37.865852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.969498, 32.386497, 38.007088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.316381, 32.191147, 37.968235>,  <25.524511, 32.073936, 37.944923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.316381, 32.191147, 37.968235>,  <24.969498, 32.386497, 38.007088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.316381, 32.191147, 37.968235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313170, -0.686596, 0.656132,
		-0.387131, -0.538586, -0.748368,
		0.867211, -0.488376, -0.097134,
		25.576544, 32.044636, 37.939095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.811855, 31.734690, 37.886238>,  <24.969498, 32.386497, 38.007088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.811855, 31.734690, 37.886238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.176809, 31.684683, 38.042149>,  <25.395782, 31.654678, 38.135693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.176809, 31.684683, 38.042149>,  <24.811855, 31.734690, 37.886238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.176809, 31.684683, 38.042149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352381, -0.724410, 0.592501,
		0.208283, -0.677938, -0.704995,
		0.912385, -0.125019, 0.389775,
		25.450525, 31.647177, 38.159081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.076229, 30.973156, 37.932186>,  <24.811855, 31.734690, 37.886238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.076229, 30.973156, 37.932186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.303894, 31.154942, 38.206272>,  <25.440493, 31.264013, 38.370724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.303894, 31.154942, 38.206272>,  <25.076229, 30.973156, 37.932186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.303894, 31.154942, 38.206272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219824, -0.718925, 0.659412,
		0.792296, -0.525939, -0.309282,
		0.569161, 0.454462, 0.685215,
		25.474642, 31.291281, 38.411839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.564236, 30.547104, 38.097099>,  <25.076229, 30.973156, 37.932186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.564236, 30.547104, 38.097099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.586386, 30.786961, 38.416439>,  <25.599676, 30.930874, 38.608044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.586386, 30.786961, 38.416439>,  <25.564236, 30.547104, 38.097099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.586386, 30.786961, 38.416439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222115, -0.772145, 0.595363,
		0.973447, -0.210293, 0.090433,
		0.055373, 0.599641, 0.798351,
		25.602997, 30.966852, 38.655945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.101204, 30.247501, 38.620369>,  <25.564236, 30.547104, 38.097099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.101204, 30.247501, 38.620369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.884541, 30.491108, 38.852131>,  <25.754543, 30.637272, 38.991188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.884541, 30.491108, 38.852131>,  <26.101204, 30.247501, 38.620369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.884541, 30.491108, 38.852131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022388, -0.678574, 0.734191,
		0.840301, 0.410651, 0.353920,
		-0.541657, 0.609018, 0.579400,
		25.722044, 30.673813, 39.025951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.429987, 30.198610, 39.236137>,  <26.101204, 30.247501, 38.620369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.429987, 30.198610, 39.236137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.075033, 30.345232, 39.347984>,  <25.862061, 30.433205, 39.415092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.075033, 30.345232, 39.347984>,  <26.429987, 30.198610, 39.236137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.075033, 30.345232, 39.347984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072494, -0.488015, 0.869819,
		0.455292, 0.792136, 0.406485,
		-0.887386, 0.366554, 0.279615,
		25.808817, 30.455198, 39.431870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.518003, 30.629425, 39.866005>,  <26.429987, 30.198610, 39.236137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.518003, 30.629425, 39.866005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.150501, 30.473999, 39.837986>,  <25.930000, 30.380743, 39.821175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.150501, 30.473999, 39.837986>,  <26.518003, 30.629425, 39.866005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.150501, 30.473999, 39.837986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075783, -0.347657, 0.934554,
		-0.387487, 0.853318, 0.348859,
		-0.918755, -0.388565, -0.070045,
		25.874874, 30.357430, 39.816971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.400591, 30.452909, 40.562798>,  <26.518003, 30.629425, 39.866005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.400591, 30.452909, 40.562798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.067856, 30.310253, 40.392689>,  <25.868216, 30.224659, 40.290623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.067856, 30.310253, 40.392689>,  <26.400591, 30.452909, 40.562798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.067856, 30.310253, 40.392689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137562, -0.609836, 0.780497,
		-0.537702, 0.707747, 0.458224,
		-0.831837, -0.356641, -0.425270,
		25.818304, 30.203260, 40.265106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.861811, 30.359846, 41.122883>,  <26.400591, 30.452909, 40.562798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.861811, 30.359846, 41.122883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.749655, 30.121124, 40.822163>,  <25.682362, 29.977890, 40.641731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.749655, 30.121124, 40.822163>,  <25.861811, 30.359846, 41.122883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.749655, 30.121124, 40.822163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296675, -0.690989, 0.659180,
		-0.912889, 0.407868, 0.016689,
		-0.280390, -0.596807, -0.751800,
		25.665537, 29.942081, 40.596622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.145790, 30.080540, 41.291431>,  <25.861811, 30.359846, 41.122883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.145790, 30.080540, 41.291431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.358948, 29.837639, 41.055714>,  <25.486841, 29.691898, 40.914284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.358948, 29.837639, 41.055714>,  <25.145790, 30.080540, 41.291431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.358948, 29.837639, 41.055714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211121, -0.769806, 0.602351,
		-0.819422, -0.196577, -0.538428,
		0.532894, -0.607253, -0.589294,
		25.518816, 29.655462, 40.878925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.772676, 29.450562, 41.071907>,  <25.145790, 30.080540, 41.291431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.772676, 29.450562, 41.071907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.161493, 29.379852, 41.133732>,  <25.394783, 29.337427, 41.170826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.161493, 29.379852, 41.133732>,  <24.772676, 29.450562, 41.071907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.161493, 29.379852, 41.133732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233543, -0.659361, 0.714633,
		-0.024414, -0.730749, -0.682209,
		0.972040, -0.176772, 0.154564,
		25.453106, 29.326820, 41.180099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.846949, 28.669720, 41.180061>,  <24.772676, 29.450562, 41.071907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.846949, 28.669720, 41.180061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.111881, 28.908251, 41.361481>,  <25.270842, 29.051371, 41.470333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.111881, 28.908251, 41.361481>,  <24.846949, 28.669720, 41.180061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.111881, 28.908251, 41.361481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007457, -0.600093, 0.799896,
		0.749173, -0.533179, -0.393014,
		0.662333, 0.596329, 0.453549,
		25.310581, 29.087149, 41.497547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.873495, 27.897228, 41.141300>,  <24.846949, 28.669720, 41.180061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.873495, 27.897228, 41.141300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.656315, 27.576015, 41.043041>,  <24.526007, 27.383287, 40.984085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.656315, 27.576015, 41.043041>,  <24.873495, 27.897228, 41.141300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.656315, 27.576015, 41.043041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136867, -0.203989, 0.969359,
		-0.828535, 0.559937, 0.000847,
		-0.542953, -0.803031, -0.245649,
		24.493429, 27.335106, 40.969345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.448053, 28.023357, 41.667801>,  <24.873495, 27.897228, 41.141300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.448053, 28.023357, 41.667801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.598967, 27.808842, 41.969810>,  <25.689514, 27.680132, 42.151016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.598967, 27.808842, 41.969810>,  <25.448053, 28.023357, 41.667801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.598967, 27.808842, 41.969810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647232, -0.430422, -0.629148,
		0.662381, 0.726039, 0.184712,
		0.377282, -0.536287, 0.755019,
		25.712151, 27.647955, 42.196316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.133356, 28.084354, 41.725712>,  <25.448053, 28.023357, 41.667801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.133356, 28.084354, 41.725712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.007549, 27.727783, 41.856209>,  <25.932064, 27.513840, 41.934505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.007549, 27.727783, 41.856209>,  <26.133356, 28.084354, 41.725712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.007549, 27.727783, 41.856209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611649, -0.453139, -0.648499,
		0.725923, -0.004420, 0.687762,
		-0.314518, -0.891429, 0.326241,
		25.913195, 27.460354, 41.954082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.734205, 28.175385, 41.286419>,  <26.133356, 28.084354, 41.725712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.734205, 28.175385, 41.286419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.087450, 28.352455, 41.224258>,  <27.299397, 28.458696, 41.186962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.087450, 28.352455, 41.224258>,  <26.734205, 28.175385, 41.286419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.087450, 28.352455, 41.224258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430804, 0.896310, 0.105056,
		0.185794, -0.025828, 0.982249,
		0.883113, 0.442675, -0.155402,
		27.352385, 28.485258, 41.177639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.995827, 28.559935, 41.885868>,  <26.734205, 28.175385, 41.286419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.995827, 28.559935, 41.885868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.292049, 28.695431, 42.118015>,  <27.469784, 28.776728, 42.257305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.292049, 28.695431, 42.118015>,  <26.995827, 28.559935, 41.885868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.292049, 28.695431, 42.118015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049437, 0.833852, -0.549769,
		-0.670171, 0.435828, 0.600770,
		0.740558, 0.338739, 0.580370,
		27.514217, 28.797052, 42.292126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.816753, 29.275316, 42.012291>,  <26.995827, 28.559935, 41.885868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.816753, 29.275316, 42.012291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.205112, 29.180548, 42.026287>,  <27.438128, 29.123686, 42.034683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.205112, 29.180548, 42.026287>,  <26.816753, 29.275316, 42.012291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.205112, 29.180548, 42.026287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197953, 0.711652, -0.674067,
		0.134799, 0.661378, 0.737841,
		0.970899, -0.236921, 0.034992,
		27.496382, 29.109472, 42.036785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.232655, 29.916107, 41.962372>,  <26.816753, 29.275316, 42.012291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.232655, 29.916107, 41.962372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.471334, 29.621744, 41.834381>,  <27.614542, 29.445126, 41.757587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.471334, 29.621744, 41.834381>,  <27.232655, 29.916107, 41.962372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.471334, 29.621744, 41.834381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453555, 0.638234, -0.622050,
		0.661994, 0.226049, 0.714609,
		0.596702, -0.735907, -0.319981,
		27.650345, 29.400972, 41.738388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.875782, 30.177467, 41.922409>,  <27.232655, 29.916107, 41.962372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.875782, 30.177467, 41.922409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.869062, 29.868727, 41.668175>,  <27.865030, 29.683483, 41.515636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.869062, 29.868727, 41.668175>,  <27.875782, 30.177467, 41.922409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.869062, 29.868727, 41.668175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416695, 0.572433, -0.706177,
		0.908891, -0.276707, 0.312009,
		-0.016799, -0.771850, -0.635582,
		27.864023, 29.637171, 41.477501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.604662, 29.994358, 41.697914>,  <27.875782, 30.177467, 41.922409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.604662, 29.994358, 41.697914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.302040, 29.899719, 41.454063>,  <28.120466, 29.842936, 41.307755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.302040, 29.899719, 41.454063>,  <28.604662, 29.994358, 41.697914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.302040, 29.899719, 41.454063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551260, 0.270722, -0.789190,
		0.351760, -0.933130, -0.074389,
		-0.756556, -0.236598, -0.609626,
		28.075073, 29.828739, 41.271175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.826534, 29.369217, 41.131069>,  <28.604662, 29.994358, 41.697914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.826534, 29.369217, 41.131069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.528622, 29.603983, 41.004055>,  <28.349873, 29.744843, 40.927849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.528622, 29.603983, 41.004055>,  <28.826534, 29.369217, 41.131069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.528622, 29.603983, 41.004055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430671, 0.059293, -0.900559,
		-0.509725, -0.807474, -0.296928,
		-0.744784, 0.586915, -0.317533,
		28.305187, 29.780058, 40.908794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.811832, 29.346077, 40.412251>,  <28.826534, 29.369217, 41.131069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.811832, 29.346077, 40.412251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.565941, 29.659916, 40.444527>,  <28.418406, 29.848219, 40.463894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.565941, 29.659916, 40.444527>,  <28.811832, 29.346077, 40.412251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.565941, 29.659916, 40.444527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278580, 0.311691, -0.908428,
		-0.737902, -0.535960, -0.410179,
		-0.614731, 0.784599, 0.080690,
		28.381521, 29.895296, 40.468735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.578375, 29.423723, 39.747875>,  <28.811832, 29.346077, 40.412251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.578375, 29.423723, 39.747875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.500177, 29.788492, 39.892197>,  <28.453259, 30.007353, 39.978790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.500177, 29.788492, 39.892197>,  <28.578375, 29.423723, 39.747875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.500177, 29.788492, 39.892197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272496, 0.403925, -0.873264,
		-0.942087, -0.072399, -0.327460,
		-0.195493, 0.911923, 0.360804,
		28.441530, 30.062069, 40.000439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.951464, 29.766415, 39.331043>,  <28.578375, 29.423723, 39.747875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.951464, 29.766415, 39.331043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.178469, 30.056417, 39.487144>,  <28.314672, 30.230419, 39.580807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.178469, 30.056417, 39.487144>,  <27.951464, 29.766415, 39.331043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.178469, 30.056417, 39.487144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240588, 0.307271, -0.920708,
		-0.787431, 0.616403, -0.000048,
		0.567512, 0.725005, 0.390254,
		28.348722, 30.273918, 39.604221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.784023, 30.333241, 38.841213>,  <27.951464, 29.766415, 39.331043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.784023, 30.333241, 38.841213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.099892, 30.451599, 39.056198>,  <28.289413, 30.522614, 39.185188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.099892, 30.451599, 39.056198>,  <27.784023, 30.333241, 38.841213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.099892, 30.451599, 39.056198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240383, 0.656756, -0.714764,
		-0.564476, 0.693626, 0.447493,
		0.789672, 0.295897, 0.537459,
		28.336794, 30.540369, 39.217438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.828171, 31.063549, 38.843384>,  <27.784023, 30.333241, 38.841213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.828171, 31.063549, 38.843384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.202599, 30.945522, 38.920025>,  <28.427256, 30.874706, 38.966007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.202599, 30.945522, 38.920025>,  <27.828171, 31.063549, 38.843384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.202599, 30.945522, 38.920025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349396, 0.715949, -0.604433,
		0.041172, 0.632735, 0.773273,
		0.936070, -0.295065, 0.191598,
		28.483419, 30.857002, 38.977505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.206530, 31.667503, 38.763390>,  <27.828171, 31.063549, 38.843384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.206530, 31.667503, 38.763390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.493265, 31.391394, 38.724064>,  <28.665306, 31.225727, 38.700470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.493265, 31.391394, 38.724064>,  <28.206530, 31.667503, 38.763390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.493265, 31.391394, 38.724064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460682, 0.574738, -0.676349,
		0.523371, 0.439541, 0.729991,
		0.716837, -0.690275, -0.098313,
		28.708317, 31.184311, 38.694569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.820942, 32.056717, 38.686661>,  <28.206530, 31.667503, 38.763390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.820942, 32.056717, 38.686661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.919149, 31.697929, 38.539604>,  <28.978073, 31.482656, 38.451370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.919149, 31.697929, 38.539604>,  <28.820942, 32.056717, 38.686661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.919149, 31.697929, 38.539604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440398, 0.441059, -0.781995,
		0.863580, 0.030086, 0.503314,
		0.245518, -0.896973, -0.367640,
		28.992805, 31.428837, 38.429314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.460321, 32.105553, 38.419979>,  <28.820942, 32.056717, 38.686661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.460321, 32.105553, 38.419979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.302639, 31.787331, 38.235935>,  <29.208029, 31.596397, 38.125511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.302639, 31.787331, 38.235935>,  <29.460321, 32.105553, 38.419979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.302639, 31.787331, 38.235935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414790, 0.292736, -0.861542,
		0.820092, -0.530472, 0.214589,
		-0.394207, -0.795553, -0.460105,
		29.184378, 31.548664, 38.097904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.929668, 31.968782, 38.022278>,  <29.460321, 32.105553, 38.419979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.929668, 31.968782, 38.022278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.618355, 31.780090, 37.856510>,  <29.431566, 31.666876, 37.757050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.618355, 31.780090, 37.856510>,  <29.929668, 31.968782, 38.022278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.618355, 31.780090, 37.856510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214435, 0.420644, -0.881519,
		0.590163, -0.774939, -0.226225,
		-0.778284, -0.471729, -0.414423,
		29.384871, 31.638571, 37.732182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.174063, 31.659578, 37.390854>,  <29.929668, 31.968782, 38.022278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.174063, 31.659578, 37.390854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.777205, 31.687883, 37.349590>,  <29.539089, 31.704866, 37.324833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.777205, 31.687883, 37.349590>,  <30.174063, 31.659578, 37.390854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.777205, 31.687883, 37.349590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121630, 0.352980, -0.927691,
		-0.029236, -0.932951, -0.358815,
		-0.992145, 0.070764, -0.103155,
		29.479561, 31.709112, 37.318645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.107285, 31.751606, 36.730537>,  <30.174063, 31.659578, 37.390854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.107285, 31.751606, 36.730537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.729858, 31.864168, 36.800388>,  <29.503403, 31.931705, 36.842297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.729858, 31.864168, 36.800388>,  <30.107285, 31.751606, 36.730537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.729858, 31.864168, 36.800388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086556, 0.299408, -0.950191,
		-0.319673, -0.911683, -0.258154,
		-0.943566, 0.281405, 0.174624,
		29.446789, 31.948589, 36.852776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.734419, 31.666924, 36.036148>,  <30.107285, 31.751606, 36.730537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.734419, 31.666924, 36.036148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.514517, 31.912605, 36.262608>,  <29.382576, 32.060013, 36.398483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.514517, 31.912605, 36.262608>,  <29.734419, 31.666924, 36.036148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.514517, 31.912605, 36.262608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168816, 0.582075, -0.795418,
		-0.818088, -0.532861, -0.216312,
		-0.549757, 0.614205, 0.566144,
		29.349590, 32.096867, 36.432449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.189339, 31.781387, 35.697140>,  <29.734419, 31.666924, 36.036148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.189339, 31.781387, 35.697140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.132309, 32.085041, 35.951191>,  <29.098091, 32.267235, 36.103622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.132309, 32.085041, 35.951191>,  <29.189339, 31.781387, 35.697140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.132309, 32.085041, 35.951191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083545, 0.648621, -0.756512,
		-0.986251, -0.054799, -0.155900,
		-0.142576, 0.759136, 0.635126,
		29.089537, 32.312782, 36.141727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.620771, 32.179222, 35.346954>,  <29.189339, 31.781387, 35.697140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.620771, 32.179222, 35.346954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.837549, 32.403259, 35.597580>,  <28.967617, 32.537682, 35.747955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.837549, 32.403259, 35.597580>,  <28.620771, 32.179222, 35.346954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.837549, 32.403259, 35.597580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053382, 0.721101, -0.690770,
		-0.838716, 0.407808, 0.360899,
		0.541947, 0.560094, 0.626569,
		29.000134, 32.571289, 35.785549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.324629, 32.799629, 35.369034>,  <28.620771, 32.179222, 35.346954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.324629, 32.799629, 35.369034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.693121, 32.884579, 35.499409>,  <28.914215, 32.935551, 35.577633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.693121, 32.884579, 35.499409>,  <28.324629, 32.799629, 35.369034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.693121, 32.884579, 35.499409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036026, 0.787657, -0.615060,
		-0.387348, 0.578353, 0.717961,
		0.921229, 0.212377, 0.325933,
		28.969490, 32.948292, 35.597187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.265923, 33.493572, 35.688889>,  <28.324629, 32.799629, 35.369034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.265923, 33.493572, 35.688889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.647661, 33.429752, 35.587883>,  <28.876705, 33.391460, 35.527279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.647661, 33.429752, 35.587883>,  <28.265923, 33.493572, 35.688889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.647661, 33.429752, 35.587883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064382, 0.935389, -0.347710,
		0.291676, 0.315579, 0.902959,
		0.954348, -0.159553, -0.252513,
		28.933966, 33.381886, 35.512131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.482468, 34.117111, 35.765278>,  <28.265923, 33.493572, 35.688889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.482468, 34.117111, 35.765278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.785372, 33.938847, 35.574306>,  <28.967115, 33.831886, 35.459724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.785372, 33.938847, 35.574306>,  <28.482468, 34.117111, 35.765278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.785372, 33.938847, 35.574306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089997, 0.795237, -0.599582,
		0.646880, 0.411074, 0.642311,
		0.757263, -0.445664, -0.477427,
		29.012550, 33.805149, 35.431080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.021339, 34.650803, 35.676567>,  <28.482468, 34.117111, 35.765278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.021339, 34.650803, 35.676567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.074537, 34.373199, 35.393536>,  <29.106457, 34.206638, 35.223717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.074537, 34.373199, 35.393536>,  <29.021339, 34.650803, 35.676567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.074537, 34.373199, 35.393536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031370, 0.716510, -0.696871,
		0.990620, 0.070483, 0.117064,
		0.132995, -0.694007, -0.707578,
		29.114435, 34.164997, 35.181263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.528151, 34.927002, 35.226761>,  <29.021339, 34.650803, 35.676567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.528151, 34.927002, 35.226761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.363998, 34.643723, 34.996967>,  <29.265507, 34.473755, 34.859089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.363998, 34.643723, 34.996967>,  <29.528151, 34.927002, 35.226761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.363998, 34.643723, 34.996967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123349, 0.581082, -0.804443,
		0.903533, -0.400992, -0.151110,
		-0.410382, -0.708201, -0.574488,
		29.240883, 34.431263, 34.824619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.023176, 34.822716, 34.700371>,  <29.528151, 34.927002, 35.226761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.023176, 34.822716, 34.700371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.663767, 34.703018, 34.571926>,  <29.448122, 34.631199, 34.494862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.663767, 34.703018, 34.571926>,  <30.023176, 34.822716, 34.700371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.663767, 34.703018, 34.571926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046628, 0.662365, -0.747729,
		0.436441, -0.686825, -0.581198,
		-0.898524, -0.299240, -0.321108,
		29.394209, 34.613247, 34.475594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.996433, 34.992325, 34.015732>,  <30.023176, 34.822716, 34.700371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.996433, 34.992325, 34.015732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.602297, 34.961792, 34.076759>,  <29.365814, 34.943474, 34.113377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.602297, 34.961792, 34.076759>,  <29.996433, 34.992325, 34.015732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.602297, 34.961792, 34.076759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167531, 0.601784, -0.780890,
		-0.032210, -0.795003, -0.605749,
		-0.985340, -0.076329, 0.152571,
		29.306694, 34.938892, 34.122532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.503828, 35.469711, 34.010651>,  <29.996433, 34.992325, 34.015732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.503828, 35.469711, 34.010651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.385679, 35.429878, 34.390720>,  <30.314791, 35.405979, 34.618763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.385679, 35.429878, 34.390720>,  <30.503828, 35.469711, 34.010651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.385679, 35.429878, 34.390720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913885, 0.260482, 0.311388,
		-0.278513, 0.960330, 0.014065,
		-0.295371, -0.099579, 0.950179,
		30.297068, 35.400005, 34.675774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.747910, 35.950363, 34.434525>,  <30.503828, 35.469711, 34.010651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.747910, 35.950363, 34.434525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.704470, 35.673203, 34.719646>,  <30.678406, 35.506905, 34.890720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.704470, 35.673203, 34.719646>,  <30.747910, 35.950363, 34.434525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.704470, 35.673203, 34.719646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880890, 0.265229, 0.392028,
		-0.460694, 0.670478, 0.581567,
		-0.108597, -0.692902, 0.712807,
		30.671890, 35.465332, 34.933487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.776182, 36.210403, 35.120983>,  <30.747910, 35.950363, 34.434525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.776182, 36.210403, 35.120983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.924911, 35.840443, 35.089211>,  <31.014149, 35.618465, 35.070148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.924911, 35.840443, 35.089211>,  <30.776182, 36.210403, 35.120983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.924911, 35.840443, 35.089211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900435, 0.338531, 0.273156,
		-0.225751, -0.173088, 0.958685,
		0.371824, -0.924899, -0.079431,
		31.036459, 35.562973, 35.065380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.492800, 36.439510, 35.070835>,  <30.776182, 36.210403, 35.120983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.492800, 36.439510, 35.070835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.269783, 36.463310, 35.402042>,  <31.135973, 36.477592, 35.600765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.269783, 36.463310, 35.402042>,  <31.492800, 36.439510, 35.070835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.269783, 36.463310, 35.402042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781835, -0.297669, 0.547839,
		0.279072, 0.952813, 0.119441,
		-0.557542, 0.059504, 0.828014,
		31.102520, 36.481163, 35.650448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.989988, 36.516136, 35.607807>,  <31.492800, 36.439510, 35.070835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.989988, 36.516136, 35.607807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642660, 36.470520, 35.800892>,  <31.434263, 36.443150, 35.916744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642660, 36.470520, 35.800892>,  <31.989988, 36.516136, 35.607807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.642660, 36.470520, 35.800892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495992, -0.192953, 0.846617,
		-0.003409, 0.974558, 0.224109,
		-0.868320, -0.114043, 0.482715,
		31.382164, 36.436306, 35.945705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.846970, 36.929840, 36.217785>,  <31.989988, 36.516136, 35.607807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.846970, 36.929840, 36.217785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.669298, 36.573410, 36.255085>,  <31.562695, 36.359554, 36.277466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.669298, 36.573410, 36.255085>,  <31.846970, 36.929840, 36.217785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.669298, 36.573410, 36.255085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465430, -0.140557, 0.873852,
		-0.765558, 0.431549, 0.477164,
		-0.444179, -0.891072, 0.093251,
		31.536045, 36.306087, 36.283062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.664831, 36.874641, 36.849197>,  <31.846970, 36.929840, 36.217785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.664831, 36.874641, 36.849197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.636839, 36.484932, 36.763512>,  <31.620043, 36.251106, 36.712101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.636839, 36.484932, 36.763512>,  <31.664831, 36.874641, 36.849197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.636839, 36.484932, 36.763512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516876, -0.219080, 0.827552,
		-0.853195, -0.052808, 0.518912,
		-0.069982, -0.974277, -0.214213,
		31.615845, 36.192650, 36.699249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.315054, 36.593296, 37.386112>,  <31.664831, 36.874641, 36.849197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.315054, 36.593296, 37.386112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.517721, 36.289536, 37.222851>,  <31.639320, 36.107277, 37.124893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.517721, 36.289536, 37.222851>,  <31.315054, 36.593296, 37.386112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.517721, 36.289536, 37.222851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394532, -0.216711, 0.892962,
		-0.766572, -0.613465, 0.189810,
		0.506667, -0.759405, -0.408156,
		31.669722, 36.061714, 37.100403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.152409, 35.802433, 37.662632>,  <31.315054, 36.593296, 37.386112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.152409, 35.802433, 37.662632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.527000, 35.772190, 37.525639>,  <31.751755, 35.754044, 37.443443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.527000, 35.772190, 37.525639>,  <31.152409, 35.802433, 37.662632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.527000, 35.772190, 37.525639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279140, -0.430524, 0.858330,
		-0.212345, -0.899407, -0.382070,
		0.936478, -0.075611, -0.342480,
		31.807943, 35.749508, 37.422894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.354801, 35.073051, 37.890537>,  <31.152409, 35.802433, 37.662632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.354801, 35.073051, 37.890537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.694494, 35.269051, 37.811848>,  <31.898310, 35.386650, 37.764633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.694494, 35.269051, 37.811848>,  <31.354801, 35.073051, 37.890537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.694494, 35.269051, 37.811848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474068, -0.543516, 0.692712,
		0.232510, -0.681534, -0.693867,
		0.849234, 0.490003, -0.196721,
		31.949265, 35.416050, 37.752831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.954779, 34.677574, 38.078259>,  <31.354801, 35.073051, 37.890537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.954779, 34.677574, 38.078259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.138805, 35.032719, 38.075607>,  <32.249222, 35.245804, 38.074017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.138805, 35.032719, 38.075607>,  <31.954779, 34.677574, 38.078259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.138805, 35.032719, 38.075607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570262, -0.289758, 0.768662,
		0.680543, -0.357416, -0.639621,
		0.460068, 0.887859, -0.006628,
		32.276825, 35.299076, 38.073620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.692425, 34.421543, 38.126102>,  <31.954779, 34.677574, 38.078259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.692425, 34.421543, 38.126102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.711124, 34.803223, 38.244297>,  <32.722343, 35.032230, 38.315216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.711124, 34.803223, 38.244297>,  <32.692425, 34.421543, 38.126102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.711124, 34.803223, 38.244297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668143, -0.249773, 0.700856,
		0.742563, 0.164662, -0.649220,
		0.046753, 0.954201, 0.295489,
		32.725151, 35.089481, 38.332943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.381512, 34.465923, 38.405788>,  <32.692425, 34.421543, 38.126102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.381512, 34.465923, 38.405788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.206821, 34.797340, 38.545952>,  <33.102005, 34.996189, 38.630051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.206821, 34.797340, 38.545952>,  <33.381512, 34.465923, 38.405788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.206821, 34.797340, 38.545952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481716, -0.113578, 0.868936,
		0.759748, 0.548287, -0.349519,
		-0.436729, 0.828541, 0.350410,
		33.075802, 35.045902, 38.651073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944572, 34.874550, 38.760986>,  <33.381512, 34.465923, 38.405788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.944572, 34.874550, 38.760986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596752, 34.979557, 38.928303>,  <33.388062, 35.042561, 39.028694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596752, 34.979557, 38.928303>,  <33.944572, 34.874550, 38.760986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596752, 34.979557, 38.928303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404640, -0.106823, 0.908215,
		0.283102, 0.958997, -0.013336,
		-0.869551, 0.262514, 0.418291,
		33.335888, 35.058311, 39.053791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192554, 35.338367, 39.285172>,  <33.944572, 34.874550, 38.760986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192554, 35.338367, 39.285172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822208, 35.232311, 39.392849>,  <33.599998, 35.168678, 39.457455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822208, 35.232311, 39.392849>,  <34.192554, 35.338367, 39.285172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822208, 35.232311, 39.392849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278432, 0.002843, 0.960452,
		-0.255424, 0.964205, 0.071193,
		-0.925870, -0.265144, 0.269191,
		33.544449, 35.152767, 39.473606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009457, 35.695808, 39.888973>,  <34.192554, 35.338367, 39.285172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009457, 35.695808, 39.888973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.780125, 35.368080, 39.889042>,  <33.642525, 35.171444, 39.889084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.780125, 35.368080, 39.889042>,  <34.009457, 35.695808, 39.888973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.780125, 35.368080, 39.889042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074234, -0.051737, 0.995898,
		-0.815954, 0.570992, 0.090484,
		-0.573331, -0.819324, 0.000172,
		33.608124, 35.122284, 39.889091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.422760, 35.709431, 40.378960>,  <34.009457, 35.695808, 39.888973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.422760, 35.709431, 40.378960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.443008, 35.315353, 40.313442>,  <33.455158, 35.078907, 40.274132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.443008, 35.315353, 40.313442>,  <33.422760, 35.709431, 40.378960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.443008, 35.315353, 40.313442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013354, -0.163324, 0.986482,
		-0.998629, -0.052123, 0.004889,
		0.050620, -0.985195, -0.163796,
		33.458195, 35.019794, 40.264305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.935417, 35.379921, 40.771339>,  <33.422760, 35.709431, 40.378960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.935417, 35.379921, 40.771339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.186344, 35.078987, 40.690872>,  <33.336899, 34.898426, 40.642593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.186344, 35.078987, 40.690872>,  <32.935417, 35.379921, 40.771339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.186344, 35.078987, 40.690872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021067, -0.241822, 0.970092,
		-0.778481, -0.612791, -0.135849,
		0.627315, -0.752336, -0.201164,
		33.374538, 34.853287, 40.630524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.663982, 34.810165, 41.053402>,  <32.935417, 35.379921, 40.771339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.663982, 34.810165, 41.053402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.041107, 34.689846, 40.995968>,  <33.267384, 34.617653, 40.961506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.041107, 34.689846, 40.995968>,  <32.663982, 34.810165, 41.053402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.041107, 34.689846, 40.995968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011457, -0.401290, 0.915879,
		-0.333117, -0.865151, -0.374897,
		0.942817, -0.300799, -0.143589,
		33.323952, 34.599606, 40.952892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632870, 34.125034, 41.087666>,  <32.663982, 34.810165, 41.053402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.632870, 34.125034, 41.087666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.022648, 34.198883, 41.138851>,  <33.256516, 34.243191, 41.169563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.022648, 34.198883, 41.138851>,  <32.632870, 34.125034, 41.087666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.022648, 34.198883, 41.138851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050478, -0.375121, 0.925601,
		0.218887, -0.908405, -0.356215,
		0.974444, 0.184621, 0.127964,
		33.314980, 34.254269, 41.177238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.958023, 33.372215, 41.232349>,  <32.632870, 34.125034, 41.087666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.958023, 33.372215, 41.232349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.208424, 33.642696, 41.387718>,  <33.358662, 33.804985, 41.480942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.208424, 33.642696, 41.387718>,  <32.958023, 33.372215, 41.232349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208424, 33.642696, 41.387718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186068, -0.354189, 0.916476,
		0.757301, -0.645986, -0.095902,
		0.625999, 0.676204, 0.388425,
		33.396225, 33.845558, 41.504246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374153, 33.062546, 41.631470>,  <32.958023, 33.372215, 41.232349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374153, 33.062546, 41.631470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.371464, 33.436180, 41.774261>,  <33.369850, 33.660362, 41.859936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.371464, 33.436180, 41.774261>,  <33.374153, 33.062546, 41.631470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.371464, 33.436180, 41.774261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212630, -0.350159, 0.912237,
		0.977110, -0.069769, 0.200970,
		-0.006726, 0.934088, 0.356979,
		33.369446, 33.716408, 41.881355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783218, 33.052753, 42.205620>,  <33.374153, 33.062546, 41.631470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.783218, 33.052753, 42.205620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.555473, 33.377270, 42.258720>,  <33.418827, 33.571980, 42.290581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.555473, 33.377270, 42.258720>,  <33.783218, 33.052753, 42.205620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.555473, 33.377270, 42.258720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082603, -0.217127, 0.972642,
		0.817923, 0.542824, 0.190640,
		-0.569367, 0.811294, 0.132754,
		33.384663, 33.620659, 42.298546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963387, 33.380623, 42.889862>,  <33.783218, 33.052753, 42.205620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.963387, 33.380623, 42.889862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603592, 33.551998, 42.855522>,  <33.387714, 33.654823, 42.834919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603592, 33.551998, 42.855522>,  <33.963387, 33.380623, 42.889862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603592, 33.551998, 42.855522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189763, -0.206055, 0.959964,
		0.393592, 0.879765, 0.266645,
		-0.899486, 0.428434, -0.085846,
		33.333748, 33.680527, 42.829769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.853344, 33.549976, 43.547054>,  <33.963387, 33.380623, 42.889862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.853344, 33.549976, 43.547054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.488636, 33.551647, 43.382778>,  <33.269814, 33.552650, 43.284214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.488636, 33.551647, 43.382778>,  <33.853344, 33.549976, 43.547054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.488636, 33.551647, 43.382778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407479, -0.134336, 0.903280,
		-0.051397, 0.990927, 0.124186,
		-0.911767, 0.004177, -0.410686,
		33.215107, 33.552902, 43.259571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.461555, 33.879089, 43.938255>,  <33.853344, 33.549976, 43.547054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.461555, 33.879089, 43.938255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.185623, 33.659088, 43.749947>,  <33.020065, 33.527088, 43.636963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.185623, 33.659088, 43.749947>,  <33.461555, 33.879089, 43.938255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.185623, 33.659088, 43.749947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339813, -0.328194, 0.881372,
		-0.639265, 0.767972, 0.039499,
		-0.689832, -0.550008, -0.470769,
		32.978672, 33.494087, 43.608715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880997, 33.938938, 44.351734>,  <33.461555, 33.879089, 43.938255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.880997, 33.938938, 44.351734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831917, 33.613110, 44.124958>,  <32.802467, 33.417614, 43.988892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831917, 33.613110, 44.124958>,  <32.880997, 33.938938, 44.351734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.831917, 33.613110, 44.124958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240628, -0.529790, 0.813278,
		-0.962831, 0.236209, -0.131004,
		-0.122699, -0.814572, -0.566937,
		32.795109, 33.368736, 43.954876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.333488, 33.644165, 44.754848>,  <32.880997, 33.938938, 44.351734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.333488, 33.644165, 44.754848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.493393, 33.382996, 44.497517>,  <32.589336, 33.226292, 44.343117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.493393, 33.382996, 44.497517>,  <32.333488, 33.644165, 44.754848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.493393, 33.382996, 44.497517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084126, -0.725027, 0.683563,
		-0.912750, -0.219142, -0.344767,
		0.399763, -0.652926, -0.643333,
		32.613323, 33.187119, 44.304516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.851797, 33.029583, 44.666771>,  <32.333488, 33.644165, 44.754848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.851797, 33.029583, 44.666771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.214409, 32.894466, 44.565495>,  <32.431976, 32.813396, 44.504730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.214409, 32.894466, 44.565495>,  <31.851797, 33.029583, 44.666771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.214409, 32.894466, 44.565495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090674, -0.741575, 0.664715,
		-0.412289, -0.579626, -0.702888,
		0.906529, -0.337788, -0.253187,
		32.486366, 32.793129, 44.489540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.775354, 32.324036, 44.556709>,  <31.851797, 33.029583, 44.666771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.775354, 32.324036, 44.556709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166443, 32.376472, 44.622284>,  <32.401096, 32.407936, 44.661629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166443, 32.376472, 44.622284>,  <31.775354, 32.324036, 44.556709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.166443, 32.376472, 44.622284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018172, -0.725198, 0.688300,
		0.209115, -0.675945, -0.706660,
		0.977722, 0.131093, 0.163933,
		32.459759, 32.415802, 44.671463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.050579, 31.708036, 44.617420>,  <31.775354, 32.324036, 44.556709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.050579, 31.708036, 44.617420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.341789, 31.934067, 44.772686>,  <32.516514, 32.069683, 44.865845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.341789, 31.934067, 44.772686>,  <32.050579, 31.708036, 44.617420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.341789, 31.934067, 44.772686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103618, -0.650402, 0.752489,
		0.677675, -0.507610, -0.532060,
		0.728025, 0.565074, 0.388164,
		32.560196, 32.103588, 44.889133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.677101, 31.296022, 44.704617>,  <32.050579, 31.708036, 44.617420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.677101, 31.296022, 44.704617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.719662, 31.611404, 44.946945>,  <32.745197, 31.800632, 45.092342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.719662, 31.611404, 44.946945>,  <32.677101, 31.296022, 44.704617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.719662, 31.611404, 44.946945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050061, -0.612756, 0.788685,
		0.993062, -0.053588, -0.104669,
		0.106400, 0.788453, 0.605823,
		32.751583, 31.847940, 45.128693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140285, 31.145445, 45.157803>,  <32.677101, 31.296022, 44.704617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140285, 31.145445, 45.157803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.948895, 31.438425, 45.351536>,  <32.834061, 31.614212, 45.467777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.948895, 31.438425, 45.351536>,  <33.140285, 31.145445, 45.157803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.948895, 31.438425, 45.351536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027638, -0.538736, 0.842021,
		0.877666, 0.416272, 0.237529,
		-0.478475, 0.732448, 0.484335,
		32.805351, 31.658159, 45.496838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.442085, 31.284000, 45.808418>,  <33.140285, 31.145445, 45.157803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.442085, 31.284000, 45.808418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074017, 31.428556, 45.868652>,  <32.853176, 31.515291, 45.904793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074017, 31.428556, 45.868652>,  <33.442085, 31.284000, 45.808418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.074017, 31.428556, 45.868652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098779, -0.586481, 0.803918,
		0.378843, 0.724870, 0.575362,
		-0.920174, 0.361392, 0.150582,
		32.797966, 31.536974, 45.913826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.469513, 31.447641, 46.427586>,  <33.442085, 31.284000, 45.808418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.469513, 31.447641, 46.427586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079277, 31.407669, 46.349369>,  <32.845135, 31.383686, 46.302441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079277, 31.407669, 46.349369>,  <33.469513, 31.447641, 46.427586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.079277, 31.407669, 46.349369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108525, -0.554712, 0.824935,
		-0.190904, 0.826020, 0.530327,
		-0.975591, -0.099930, -0.195541,
		32.786598, 31.377689, 46.290707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.096981, 31.530102, 47.154732>,  <33.469513, 31.447641, 46.427586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.096981, 31.530102, 47.154732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.844536, 31.339899, 46.909592>,  <32.693069, 31.225777, 46.762508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.844536, 31.339899, 46.909592>,  <33.096981, 31.530102, 47.154732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844536, 31.339899, 46.909592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145586, -0.703419, 0.695705,
		-0.761904, 0.528293, 0.374711,
		-0.631115, -0.475508, -0.612850,
		32.655201, 31.197247, 46.725735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.845020, 31.028786, 47.571850>,  <33.096981, 31.530102, 47.154732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.845020, 31.028786, 47.571850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613262, 30.925697, 47.262558>,  <32.474209, 30.863844, 47.076984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613262, 30.925697, 47.262558>,  <32.845020, 31.028786, 47.571850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.613262, 30.925697, 47.262558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337942, -0.787339, 0.515647,
		-0.741687, 0.560069, 0.369084,
		-0.579393, -0.257720, -0.773230,
		32.439445, 30.848381, 47.030590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.206017, 30.816313, 47.790771>,  <32.845020, 31.028786, 47.571850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.206017, 30.816313, 47.790771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.217960, 30.613228, 47.446369>,  <32.225128, 30.491377, 47.239727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.217960, 30.613228, 47.446369>,  <32.206017, 30.816313, 47.790771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.217960, 30.613228, 47.446369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145940, -0.854376, 0.498741,
		-0.988842, 0.110762, -0.099610,
		0.029863, -0.507714, -0.861008,
		32.226917, 30.460913, 47.188068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.633238, 30.342270, 47.828747>,  <32.206017, 30.816313, 47.790771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.633238, 30.342270, 47.828747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.901676, 30.196543, 47.570473>,  <32.062740, 30.109106, 47.415508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.901676, 30.196543, 47.570473>,  <31.633238, 30.342270, 47.828747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.901676, 30.196543, 47.570473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022729, -0.880630, 0.473259,
		-0.741021, -0.302927, -0.599268,
		0.671097, -0.364316, -0.645681,
		32.103004, 30.087248, 47.376770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.341410, 29.802595, 47.470627>,  <31.633238, 30.342270, 47.828747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.341410, 29.802595, 47.470627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.736729, 29.742300, 47.461296>,  <31.973921, 29.706123, 47.455700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.736729, 29.742300, 47.461296>,  <31.341410, 29.802595, 47.470627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.736729, 29.742300, 47.461296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129126, -0.908195, 0.398130,
		-0.081196, -0.390460, -0.917033,
		0.988298, -0.150740, -0.023324,
		32.033218, 29.697079, 47.454300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.437807, 29.133583, 47.356209>,  <31.341410, 29.802595, 47.470627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.437807, 29.133583, 47.356209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.795206, 29.249777, 47.493191>,  <32.009647, 29.319492, 47.575382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.795206, 29.249777, 47.493191>,  <31.437807, 29.133583, 47.356209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.795206, 29.249777, 47.493191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082676, -0.855976, 0.510362,
		0.441388, -0.427695, -0.788831,
		0.893499, 0.290485, 0.342458,
		32.063255, 29.336922, 47.595928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.774712, 28.545038, 47.305481>,  <31.437807, 29.133583, 47.356209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.774712, 28.545038, 47.305481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.998964, 28.754810, 47.561813>,  <32.133514, 28.880674, 47.715614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.998964, 28.754810, 47.561813>,  <31.774712, 28.545038, 47.305481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.998964, 28.754810, 47.561813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248657, -0.844794, 0.473807,
		0.789849, -0.106284, -0.604021,
		0.560632, 0.524430, 0.640831,
		32.167152, 28.912140, 47.754063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419167, 28.255074, 47.310272>,  <31.774712, 28.545038, 47.305481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419167, 28.255074, 47.310272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.357533, 28.451132, 47.653439>,  <32.320553, 28.568766, 47.859337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.357533, 28.451132, 47.653439>,  <32.419167, 28.255074, 47.310272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.357533, 28.451132, 47.653439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177515, -0.840423, 0.512033,
		0.971981, 0.231188, 0.042487,
		-0.154083, 0.490144, 0.857915,
		32.311306, 28.598175, 47.910812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.921303, 27.939985, 47.785744>,  <32.419167, 28.255074, 47.310272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.921303, 27.939985, 47.785744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.637604, 28.124929, 47.998608>,  <32.467384, 28.235895, 48.126328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.637604, 28.124929, 47.998608>,  <32.921303, 27.939985, 47.785744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.637604, 28.124929, 47.998608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042347, -0.725573, 0.686841,
		0.703689, 0.509674, 0.495029,
		-0.709245, 0.462360, 0.532161,
		32.424831, 28.263638, 48.158257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.102951, 27.766138, 48.481636>,  <32.921303, 27.939985, 47.785744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.102951, 27.766138, 48.481636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.722656, 27.882935, 48.523281>,  <32.494480, 27.953012, 48.548267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.722656, 27.882935, 48.523281>,  <33.102951, 27.766138, 48.481636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.722656, 27.882935, 48.523281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091777, -0.585923, 0.805153,
		0.296098, 0.755934, 0.583857,
		-0.950738, 0.291989, 0.104113,
		32.437435, 27.970531, 48.554516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.029587, 27.952003, 49.209312>,  <33.102951, 27.766138, 48.481636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.029587, 27.952003, 49.209312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.674503, 27.866096, 49.046413>,  <32.461452, 27.814552, 48.948673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.674503, 27.866096, 49.046413>,  <33.029587, 27.952003, 49.209312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674503, 27.866096, 49.046413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184959, -0.643675, 0.742612,
		-0.421626, 0.734545, 0.531671,
		-0.887706, -0.214767, -0.407251,
		32.408192, 27.801666, 48.924236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555954, 28.154753, 49.735909>,  <33.029587, 27.952003, 49.209312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.555954, 28.154753, 49.735909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.408085, 27.883284, 49.482059>,  <32.319363, 27.720402, 49.329750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.408085, 27.883284, 49.482059>,  <32.555954, 28.154753, 49.735909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.408085, 27.883284, 49.482059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263849, -0.578214, 0.772044,
		-0.890914, 0.452847, 0.034681,
		-0.369671, -0.678674, -0.634622,
		32.297184, 27.679682, 49.291672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.970999, 27.985701, 50.006157>,  <32.555954, 28.154753, 49.735909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.970999, 27.985701, 50.006157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.077900, 27.687370, 49.762085>,  <32.142040, 27.508371, 49.615643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.077900, 27.687370, 49.762085>,  <31.970999, 27.985701, 50.006157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.077900, 27.687370, 49.762085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184866, -0.661131, 0.727138,
		-0.945726, -0.081530, -0.314570,
		0.267256, -0.745827, -0.610177,
		32.158077, 27.463623, 49.579033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.429134, 27.510590, 50.030510>,  <31.970999, 27.985701, 50.006157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.429134, 27.510590, 50.030510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.760487, 27.312031, 49.926682>,  <31.959297, 27.192896, 49.864384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.760487, 27.312031, 49.926682>,  <31.429134, 27.510590, 50.030510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.760487, 27.312031, 49.926682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217242, -0.711806, 0.667936,
		-0.516326, -0.496915, -0.697483,
		0.828380, -0.496395, -0.259573,
		32.008999, 27.163113, 49.848808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.095530, 26.733471, 49.907215>,  <31.429134, 27.510590, 50.030510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.095530, 26.733471, 49.907215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.462202, 26.828712, 50.035587>,  <31.682205, 26.885859, 50.112610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.462202, 26.828712, 50.035587>,  <31.095530, 26.733471, 49.907215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.462202, 26.828712, 50.035587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101258, -0.638496, 0.762935,
		0.386575, -0.731866, -0.561188,
		0.916683, 0.238106, 0.320934,
		31.737207, 26.900145, 50.131866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.679352, 26.203737, 50.086525>,  <31.095530, 26.733471, 49.907215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.679352, 26.203737, 50.086525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.662430, 26.531389, 50.315342>,  <31.652277, 26.727980, 50.452633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.662430, 26.531389, 50.315342>,  <31.679352, 26.203737, 50.086525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.662430, 26.531389, 50.315342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390961, -0.540476, 0.745007,
		0.919434, -0.192129, 0.343114,
		-0.042307, 0.819130, 0.572047,
		31.649738, 26.777128, 50.486958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.127419, 26.135172, 50.710983>,  <31.679352, 26.203737, 50.086525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.127419, 26.135172, 50.710983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.798532, 26.362535, 50.699135>,  <31.601202, 26.498953, 50.692024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.798532, 26.362535, 50.699135>,  <32.127419, 26.135172, 50.710983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.798532, 26.362535, 50.699135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414811, -0.562774, 0.714995,
		0.389738, 0.600166, 0.698502,
		-0.822214, 0.568407, -0.029621,
		31.551868, 26.533058, 50.690250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.395668, 26.161343, 50.020329>,  <32.127419, 26.135172, 50.710983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.395668, 26.161343, 50.020329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762993, 26.054850, 49.903149>,  <32.983387, 25.990953, 49.832840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762993, 26.054850, 49.903149>,  <32.395668, 26.161343, 50.020329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762993, 26.054850, 49.903149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337298, -0.913608, -0.227047,
		-0.207193, 0.307312, -0.928779,
		0.918314, -0.266233, -0.292949,
		33.038486, 25.974979, 49.815266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.509686, 25.990692, 49.279057>,  <32.395668, 26.161343, 50.020329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.509686, 25.990692, 49.279057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.690029, 25.752026, 49.544601>,  <32.798237, 25.608826, 49.703926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.690029, 25.752026, 49.544601>,  <32.509686, 25.990692, 49.279057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.690029, 25.752026, 49.544601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651689, -0.728268, -0.211961,
		0.609938, -0.337065, -0.717191,
		0.450863, -0.596668, 0.663860,
		32.825287, 25.573025, 49.743759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.079502, 25.350706, 49.237675>,  <32.509686, 25.990692, 49.279057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.079502, 25.350706, 49.237675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.907198, 25.040989, 49.052238>,  <31.803816, 24.855160, 48.940975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.907198, 25.040989, 49.052238>,  <32.079502, 25.350706, 49.237675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.907198, 25.040989, 49.052238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300065, 0.361588, -0.882732,
		0.851122, -0.519353, 0.076580,
		-0.430758, -0.774292, -0.463594,
		31.777969, 24.808702, 48.913158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.629292, 25.078781, 48.740437>,  <32.079502, 25.350706, 49.237675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.629292, 25.078781, 48.740437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.237957, 25.045086, 48.664791>,  <32.003155, 25.024870, 48.619404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.237957, 25.045086, 48.664791>,  <32.629292, 25.078781, 48.740437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.237957, 25.045086, 48.664791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152868, 0.322077, -0.934290,
		0.139609, -0.942959, -0.302223,
		-0.978336, -0.084235, -0.189113,
		31.944456, 25.019815, 48.608059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.480686, 24.645735, 48.237232>,  <32.629292, 25.078781, 48.740437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.480686, 24.645735, 48.237232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.183033, 24.912773, 48.227577>,  <32.004440, 25.072996, 48.221786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.183033, 24.912773, 48.227577>,  <32.480686, 24.645735, 48.237232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.183033, 24.912773, 48.227577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310634, 0.313809, -0.897235,
		-0.591417, -0.675159, -0.440893,
		-0.744132, 0.667597, -0.024136,
		31.959793, 25.113052, 48.220337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.000256, 24.534550, 47.601101>,  <32.480686, 24.645735, 48.237232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.000256, 24.534550, 47.601101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.079388, 24.907364, 47.722546>,  <32.126865, 25.131052, 47.795410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.079388, 24.907364, 47.722546>,  <32.000256, 24.534550, 47.601101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.079388, 24.907364, 47.722546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356722, 0.220041, -0.907927,
		-0.913025, 0.287917, -0.288946,
		0.197827, 0.932033, 0.303609,
		32.138737, 25.186974, 47.813629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.873194, 24.970095, 46.990108>,  <32.000256, 24.534550, 47.601101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.873194, 24.970095, 46.990108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.096378, 25.191988, 47.236996>,  <32.230289, 25.325123, 47.385128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.096378, 25.191988, 47.236996>,  <31.873194, 24.970095, 46.990108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.096378, 25.191988, 47.236996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436138, 0.436739, -0.786793,
		-0.706020, 0.708189, 0.001743,
		0.557960, 0.554731, 0.617215,
		32.263767, 25.358408, 47.422161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.772461, 25.545418, 46.641296>,  <31.873194, 24.970095, 46.990108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.772461, 25.545418, 46.641296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.074245, 25.609591, 46.895870>,  <32.255318, 25.648094, 47.048615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.074245, 25.609591, 46.895870>,  <31.772461, 25.545418, 46.641296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.074245, 25.609591, 46.895870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560768, 0.346330, -0.752060,
		-0.341071, 0.924293, 0.171327,
		0.754460, 0.160432, 0.636437,
		32.300583, 25.657721, 47.086800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.088322, 26.315813, 46.657856>,  <31.772461, 25.545418, 46.641296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.088322, 26.315813, 46.657856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.386791, 26.086123, 46.792610>,  <32.565872, 25.948309, 46.873463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.386791, 26.086123, 46.792610>,  <32.088322, 26.315813, 46.657856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.386791, 26.086123, 46.792610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608431, 0.382760, -0.695202,
		0.270255, 0.723714, 0.634981,
		0.746172, -0.574224, 0.336887,
		32.610641, 25.913855, 46.893677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.612171, 26.765835, 46.673538>,  <32.088322, 26.315813, 46.657856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.612171, 26.765835, 46.673538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.801975, 26.414011, 46.687489>,  <32.915859, 26.202917, 46.695858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.801975, 26.414011, 46.687489>,  <32.612171, 26.765835, 46.673538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.801975, 26.414011, 46.687489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686833, 0.345180, -0.639618,
		0.550544, 0.327458, 0.767902,
		0.474512, -0.879558, 0.034872,
		32.944328, 26.150143, 46.697948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.368065, 26.896181, 46.736965>,  <32.612171, 26.765835, 46.673538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.368065, 26.896181, 46.736965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.330536, 26.528347, 46.584354>,  <33.308018, 26.307646, 46.492790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.330536, 26.528347, 46.584354>,  <33.368065, 26.896181, 46.736965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.330536, 26.528347, 46.584354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746580, 0.188534, -0.638023,
		0.658647, -0.344700, 0.668854,
		-0.093825, -0.919585, -0.381524,
		33.302387, 26.252472, 46.469898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.091270, 26.722582, 46.661263>,  <33.368065, 26.896181, 46.736965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.091270, 26.722582, 46.661263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.841705, 26.511673, 46.430538>,  <33.691967, 26.385128, 46.292103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.841705, 26.511673, 46.430538>,  <34.091270, 26.722582, 46.661263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.841705, 26.511673, 46.430538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498047, 0.300512, -0.813414,
		0.602230, -0.794782, 0.075112,
		-0.623914, -0.527271, -0.576815,
		33.654530, 26.353491, 46.257492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.518112, 26.387959, 46.259972>,  <34.091270, 26.722582, 46.661263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.518112, 26.387959, 46.259972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161724, 26.392687, 46.078407>,  <33.947891, 26.395523, 45.969467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161724, 26.392687, 46.078407>,  <34.518112, 26.387959, 46.259972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161724, 26.392687, 46.078407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401314, 0.488154, -0.775018,
		0.212416, -0.872677, -0.439675,
		-0.890970, 0.011821, -0.453910,
		33.894432, 26.396233, 45.942234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.645164, 26.099915, 45.629616>,  <34.518112, 26.387959, 46.259972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.645164, 26.099915, 45.629616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.306797, 26.311396, 45.601639>,  <34.103775, 26.438284, 45.584850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.306797, 26.311396, 45.601639>,  <34.645164, 26.099915, 45.629616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.306797, 26.311396, 45.601639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361746, 0.472467, -0.803688,
		-0.391863, -0.705160, -0.590925,
		-0.845921, 0.528701, -0.069947,
		34.053020, 26.470005, 45.580654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516235, 26.057243, 44.929268>,  <34.645164, 26.099915, 45.629616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516235, 26.057243, 44.929268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.296352, 26.367462, 45.053429>,  <34.164425, 26.553595, 45.127926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.296352, 26.367462, 45.053429>,  <34.516235, 26.057243, 44.929268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.296352, 26.367462, 45.053429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106931, 0.433847, -0.894619,
		-0.828487, -0.458585, -0.321418,
		-0.549705, 0.775549, 0.310399,
		34.131439, 26.600126, 45.146549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027264, 26.213152, 44.359085>,  <34.516235, 26.057243, 44.929268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027264, 26.213152, 44.359085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043240, 26.540524, 44.588371>,  <34.052826, 26.736946, 44.725945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043240, 26.540524, 44.588371>,  <34.027264, 26.213152, 44.359085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043240, 26.540524, 44.588371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124248, 0.565153, -0.815576,
		-0.991447, 0.103792, -0.079119,
		0.039936, 0.818431, 0.573215,
		34.055222, 26.786053, 44.760334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.688923, 26.667484, 44.031723>,  <34.027264, 26.213152, 44.359085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.688923, 26.667484, 44.031723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.911125, 26.894053, 44.275227>,  <34.044445, 27.029993, 44.421329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.911125, 26.894053, 44.275227>,  <33.688923, 26.667484, 44.031723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.911125, 26.894053, 44.275227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181655, 0.631755, -0.753583,
		-0.811430, 0.529201, 0.248049,
		0.555503, 0.566420, 0.608757,
		34.077778, 27.063978, 44.457855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459038, 27.371685, 43.902119>,  <33.688923, 26.667484, 44.031723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459038, 27.371685, 43.902119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.819908, 27.417374, 44.068504>,  <34.036430, 27.444786, 44.168335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.819908, 27.417374, 44.068504>,  <33.459038, 27.371685, 43.902119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.819908, 27.417374, 44.068504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222932, 0.702085, -0.676297,
		-0.369291, 0.702873, 0.607942,
		0.902178, 0.114220, 0.415967,
		34.090561, 27.451639, 44.193295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530460, 28.084446, 43.804489>,  <33.459038, 27.371685, 43.902119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530460, 28.084446, 43.804489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.897770, 27.951639, 43.890785>,  <34.118156, 27.871956, 43.942562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.897770, 27.951639, 43.890785>,  <33.530460, 28.084446, 43.804489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.897770, 27.951639, 43.890785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389804, 0.662398, -0.639751,
		0.069504, 0.671561, 0.737682,
		0.918271, -0.332016, 0.215738,
		34.173252, 27.852034, 43.955505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.909859, 28.627306, 44.049999>,  <33.530460, 28.084446, 43.804489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.909859, 28.627306, 44.049999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185207, 28.370852, 43.914303>,  <34.350418, 28.216980, 43.832886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185207, 28.370852, 43.914303>,  <33.909859, 28.627306, 44.049999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185207, 28.370852, 43.914303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460940, 0.747767, -0.477889,
		0.560065, 0.172598, 0.810270,
		0.688376, -0.641135, -0.339241,
		34.391720, 28.178511, 43.812531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622890, 28.971462, 44.158020>,  <33.909859, 28.627306, 44.049999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622890, 28.971462, 44.158020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.643497, 28.676289, 43.888859>,  <34.655861, 28.499184, 43.727364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.643497, 28.676289, 43.888859>,  <34.622890, 28.971462, 44.158020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.643497, 28.676289, 43.888859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245078, 0.662536, -0.707801,
		0.968133, -0.128447, 0.214986,
		0.051521, -0.737934, -0.672903,
		34.658955, 28.454908, 43.686989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177761, 29.171110, 43.771030>,  <34.622890, 28.971462, 44.158020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177761, 29.171110, 43.771030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.000610, 28.892271, 43.545494>,  <34.894321, 28.724968, 43.410172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.000610, 28.892271, 43.545494>,  <35.177761, 29.171110, 43.771030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.000610, 28.892271, 43.545494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143043, 0.565887, -0.811979,
		0.885100, -0.440258, -0.150901,
		-0.442873, -0.697097, -0.563843,
		34.867748, 28.683142, 43.376343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645187, 29.110004, 43.306717>,  <35.177761, 29.171110, 43.771030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645187, 29.110004, 43.306717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296719, 28.978554, 43.160809>,  <35.087635, 28.899683, 43.073261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296719, 28.978554, 43.160809>,  <35.645187, 29.110004, 43.306717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296719, 28.978554, 43.160809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134255, 0.555197, -0.820812,
		0.472258, -0.764044, -0.439555,
		-0.871176, -0.328623, -0.364773,
		35.035366, 28.879967, 43.051376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653820, 29.148048, 42.556240>,  <35.645187, 29.110004, 43.306717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653820, 29.148048, 42.556240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.258129, 29.127146, 42.610939>,  <35.020714, 29.114605, 42.643757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.258129, 29.127146, 42.610939>,  <35.653820, 29.148048, 42.556240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258129, 29.127146, 42.610939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143614, 0.527412, -0.837383,
		-0.028362, -0.848001, -0.529235,
		-0.989227, -0.052255, 0.136743,
		34.961361, 29.111469, 42.651962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413864, 29.100266, 41.872883>,  <35.653820, 29.148048, 42.556240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413864, 29.100266, 41.872883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.074581, 29.167400, 42.073830>,  <34.871010, 29.207682, 42.194397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.074581, 29.167400, 42.073830>,  <35.413864, 29.100266, 41.872883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.074581, 29.167400, 42.073830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369126, 0.492891, -0.787912,
		-0.379852, -0.853751, -0.356122,
		-0.848209, 0.167835, 0.502367,
		34.820118, 29.217751, 42.224541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.889523, 28.873505, 41.507561>,  <35.413864, 29.100266, 41.872883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.889523, 28.873505, 41.507561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.765827, 29.163511, 41.753723>,  <34.691612, 29.337515, 41.901421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.765827, 29.163511, 41.753723>,  <34.889523, 28.873505, 41.507561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765827, 29.163511, 41.753723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343886, 0.518080, -0.783157,
		-0.886632, -0.453808, 0.089115,
		-0.309234, 0.725018, 0.615405,
		34.673058, 29.381016, 41.938343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.160599, 28.932817, 41.543461>,  <34.889523, 28.873505, 41.507561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.160599, 28.932817, 41.543461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.250721, 29.289289, 41.700958>,  <34.304794, 29.503174, 41.795456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.250721, 29.289289, 41.700958>,  <34.160599, 28.932817, 41.543461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.250721, 29.289289, 41.700958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577631, 0.447630, -0.682620,
		-0.784590, -0.073641, 0.615627,
		0.225304, 0.891181, 0.393743,
		34.318314, 29.556644, 41.819080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523350, 29.330755, 41.419292>,  <34.160599, 28.932817, 41.543461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523350, 29.330755, 41.419292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823349, 29.587416, 41.483524>,  <34.003349, 29.741411, 41.522064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823349, 29.587416, 41.483524>,  <33.523350, 29.330755, 41.419292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823349, 29.587416, 41.483524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383859, 0.619944, -0.684340,
		-0.538661, 0.451612, 0.711260,
		0.749998, 0.641651, 0.160584,
		34.048347, 29.779911, 41.531700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.240517, 30.001047, 41.648083>,  <33.523350, 29.330755, 41.419292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.240517, 30.001047, 41.648083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.602245, 30.100601, 41.509369>,  <33.819283, 30.160334, 41.426140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.602245, 30.100601, 41.509369>,  <33.240517, 30.001047, 41.648083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.602245, 30.100601, 41.509369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423431, 0.625751, -0.655090,
		0.053963, 0.739252, 0.671264,
		0.904320, 0.248883, -0.346789,
		33.873543, 30.175266, 41.405331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.184700, 30.673027, 41.390556>,  <33.240517, 30.001047, 41.648083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.184700, 30.673027, 41.390556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.530098, 30.578178, 41.212502>,  <33.737335, 30.521269, 41.105667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.530098, 30.578178, 41.212502>,  <33.184700, 30.673027, 41.390556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.530098, 30.578178, 41.212502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252330, 0.561086, -0.788360,
		0.436698, 0.793067, 0.424663,
		0.863495, -0.237120, -0.445141,
		33.789146, 30.507042, 41.078960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497345, 31.361292, 41.215660>,  <33.184700, 30.673027, 41.390556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497345, 31.361292, 41.215660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626583, 31.070484, 40.973320>,  <33.704124, 30.896000, 40.827915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626583, 31.070484, 40.973320>,  <33.497345, 31.361292, 41.215660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626583, 31.070484, 40.973320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244984, 0.554107, -0.795580,
		0.914107, 0.405472, 0.000921,
		0.323096, -0.727020, -0.605848,
		33.723511, 30.852379, 40.791565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.908092, 31.786369, 40.743893>,  <33.497345, 31.361292, 41.215660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.908092, 31.786369, 40.743893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.843071, 31.433779, 40.566544>,  <33.804058, 31.222225, 40.460133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.843071, 31.433779, 40.566544>,  <33.908092, 31.786369, 40.743893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843071, 31.433779, 40.566544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166685, 0.467423, -0.868178,
		0.972518, -0.067224, -0.222910,
		-0.162556, -0.881474, -0.443372,
		33.794304, 31.169336, 40.433533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095440, 31.929838, 40.035313>,  <33.908092, 31.786369, 40.743893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095440, 31.929838, 40.035313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908821, 31.576040, 40.034821>,  <33.796848, 31.363762, 40.034523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908821, 31.576040, 40.034821>,  <34.095440, 31.929838, 40.035313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908821, 31.576040, 40.034821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272834, 0.145241, -0.951034,
		0.841364, -0.443368, -0.309082,
		-0.466550, -0.884494, -0.001235,
		33.768856, 31.310692, 40.034451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305252, 31.540234, 39.371517>,  <34.095440, 31.929838, 40.035313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.305252, 31.540234, 39.371517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.947651, 31.427229, 39.510624>,  <33.733089, 31.359426, 39.594086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.947651, 31.427229, 39.510624>,  <34.305252, 31.540234, 39.371517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.947651, 31.427229, 39.510624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380221, 0.067753, -0.922410,
		0.237032, -0.956867, -0.167990,
		-0.894006, -0.282514, 0.347762,
		33.679447, 31.342476, 39.614952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167908, 31.049713, 38.963909>,  <34.305252, 31.540234, 39.371517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167908, 31.049713, 38.963909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823631, 31.148905, 39.141769>,  <33.617065, 31.208420, 39.248486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823631, 31.148905, 39.141769>,  <34.167908, 31.049713, 38.963909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823631, 31.148905, 39.141769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468831, -0.045503, -0.882115,
		-0.198514, -0.967696, 0.155425,
		-0.860692, 0.247980, 0.444653,
		33.565422, 31.223299, 39.275166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644768, 30.574446, 38.661465>,  <34.167908, 31.049713, 38.963909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644768, 30.574446, 38.661465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.457390, 30.884596, 38.830864>,  <33.344963, 31.070686, 38.932503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.457390, 30.884596, 38.830864>,  <33.644768, 30.574446, 38.661465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.457390, 30.884596, 38.830864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453333, 0.200483, -0.868502,
		-0.758319, -0.598834, 0.257587,
		-0.468446, 0.775374, 0.423501,
		33.316856, 31.117208, 38.957912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890945, 30.415697, 38.632317>,  <33.644768, 30.574446, 38.661465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.890945, 30.415697, 38.632317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946411, 30.809921, 38.671192>,  <32.979691, 31.046455, 38.694515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946411, 30.809921, 38.671192>,  <32.890945, 30.415697, 38.632317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.946411, 30.809921, 38.671192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558056, 0.158830, -0.814461,
		-0.818136, 0.058700, 0.572021,
		0.138663, 0.985559, 0.097187,
		32.988010, 31.105589, 38.700348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.262199, 30.749611, 38.491146>,  <32.890945, 30.415697, 38.632317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.262199, 30.749611, 38.491146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.508961, 31.064360, 38.484566>,  <32.657017, 31.253208, 38.480618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.508961, 31.064360, 38.484566>,  <32.262199, 30.749611, 38.491146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.508961, 31.064360, 38.484566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484451, 0.363166, -0.795875,
		-0.620276, 0.498945, 0.605237,
		0.616900, 0.786870, -0.016451,
		32.694031, 31.300421, 38.479630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.831781, 31.271547, 38.243382>,  <32.262199, 30.749611, 38.491146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.831781, 31.271547, 38.243382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.189587, 31.444113, 38.196522>,  <32.404270, 31.547653, 38.168407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.189587, 31.444113, 38.196522>,  <31.831781, 31.271547, 38.243382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.189587, 31.444113, 38.196522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339908, 0.486168, -0.805049,
		-0.290355, 0.759948, 0.581526,
		0.894515, 0.431415, -0.117151,
		32.457939, 31.573538, 38.161377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.671850, 31.964672, 38.132717>,  <31.831781, 31.271547, 38.243382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.671850, 31.964672, 38.132717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.036942, 31.904009, 37.980965>,  <32.255997, 31.867611, 37.889915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.036942, 31.904009, 37.980965>,  <31.671850, 31.964672, 38.132717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.036942, 31.904009, 37.980965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212341, 0.617217, -0.757598,
		0.349055, 0.772038, 0.531148,
		0.912728, -0.151659, -0.379378,
		32.310760, 31.858511, 37.867149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.962328, 32.603012, 38.106319>,  <31.671850, 31.964672, 38.132717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.962328, 32.603012, 38.106319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182148, 32.391373, 37.847694>,  <32.314041, 32.264389, 37.692520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182148, 32.391373, 37.847694>,  <31.962328, 32.603012, 38.106319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.182148, 32.391373, 37.847694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066120, 0.743933, -0.664976,
		0.832839, 0.408190, 0.373845,
		0.549552, -0.529099, -0.646566,
		32.347015, 32.232643, 37.653725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.479263, 33.063801, 37.823280>,  <31.962328, 32.603012, 38.106319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.479263, 33.063801, 37.823280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.431133, 32.751965, 37.577431>,  <32.402256, 32.564861, 37.429920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.431133, 32.751965, 37.577431>,  <32.479263, 33.063801, 37.823280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.431133, 32.751965, 37.577431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019810, 0.620882, -0.783654,
		0.992537, -0.082118, -0.090151,
		-0.120325, -0.779591, -0.614621,
		32.395035, 32.518085, 37.393044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.953651, 33.095062, 37.212952>,  <32.479263, 33.063801, 37.823280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.953651, 33.095062, 37.212952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623253, 32.890373, 37.118404>,  <32.425014, 32.767559, 37.061676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623253, 32.890373, 37.118404>,  <32.953651, 33.095062, 37.212952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.623253, 32.890373, 37.118404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051680, 0.486315, -0.872254,
		0.561303, -0.708262, -0.428140,
		-0.825996, -0.511725, -0.236367,
		32.375454, 32.736855, 37.047493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.090469, 32.791588, 36.530323>,  <32.953651, 33.095062, 37.212952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.090469, 32.791588, 36.530323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702164, 32.854549, 36.602810>,  <32.469181, 32.892326, 36.646301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702164, 32.854549, 36.602810>,  <33.090469, 32.791588, 36.530323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.702164, 32.854549, 36.602810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082248, 0.491151, -0.867183,
		-0.225504, -0.856735, -0.463845,
		-0.970764, 0.157403, 0.181222,
		32.410934, 32.901772, 36.657177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648373, 32.258060, 36.185169>,  <33.090469, 32.791588, 36.530323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648373, 32.258060, 36.185169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.684517, 32.237347, 35.787346>,  <33.706203, 32.224918, 35.548653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.684517, 32.237347, 35.787346>,  <33.648373, 32.258060, 36.185169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.684517, 32.237347, 35.787346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891851, -0.448637, -0.057673,
		-0.443211, 0.892213, -0.086721,
		0.090363, -0.051781, -0.994562,
		33.711624, 32.221813, 35.488976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.632874, 31.674616, 36.221573>,  <33.648373, 32.258060, 36.185169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.632874, 31.674616, 36.221573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910973, 31.652649, 35.934906>,  <34.077831, 31.639469, 35.762905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910973, 31.652649, 35.934906>,  <33.632874, 31.674616, 36.221573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910973, 31.652649, 35.934906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631652, -0.429119, 0.645657,
		-0.342994, -0.901577, -0.263654,
		0.695248, -0.054919, -0.716668,
		34.119549, 31.636173, 35.719906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.866268, 31.029778, 36.210545>,  <33.632874, 31.674616, 36.221573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.866268, 31.029778, 36.210545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166626, 31.216766, 36.023941>,  <34.346840, 31.328960, 35.911980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166626, 31.216766, 36.023941>,  <33.866268, 31.029778, 36.210545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166626, 31.216766, 36.023941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644683, -0.365534, 0.671393,
		0.143335, -0.804893, -0.575849,
		0.750892, 0.467474, -0.466507,
		34.391895, 31.357008, 35.883987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407181, 30.541538, 36.184673>,  <33.866268, 31.029778, 36.210545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407181, 30.541538, 36.184673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.572216, 30.905867, 36.179401>,  <34.671238, 31.124464, 36.176239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.572216, 30.905867, 36.179401>,  <34.407181, 30.541538, 36.184673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.572216, 30.905867, 36.179401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750611, -0.331749, 0.571424,
		0.516093, -0.245657, -0.820549,
		0.412591, 0.910821, -0.013180,
		34.695992, 31.179113, 36.175446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128536, 30.377363, 35.953365>,  <34.407181, 30.541538, 36.184673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128536, 30.377363, 35.953365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.089840, 30.718449, 36.158703>,  <35.066620, 30.923100, 36.281906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.089840, 30.718449, 36.158703>,  <35.128536, 30.377363, 35.953365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089840, 30.718449, 36.158703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785737, -0.251156, 0.565277,
		0.610949, 0.458037, -0.645711,
		-0.096743, 0.852715, 0.513340,
		35.060818, 30.974262, 36.312706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802868, 30.598686, 35.997208>,  <35.128536, 30.377363, 35.953365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.802868, 30.598686, 35.997208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.612953, 30.810223, 36.278606>,  <35.499004, 30.937145, 36.447445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.612953, 30.810223, 36.278606>,  <35.802868, 30.598686, 35.997208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.612953, 30.810223, 36.278606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717366, -0.230531, 0.657451,
		0.509864, 0.816813, -0.269918,
		-0.474790, 0.528841, 0.703493,
		35.470516, 30.968874, 36.489655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332829, 30.843885, 36.346870>,  <35.802868, 30.598686, 35.997208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332829, 30.843885, 36.346870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.027180, 30.900957, 36.598507>,  <35.843792, 30.935200, 36.749489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.027180, 30.900957, 36.598507>,  <36.332829, 30.843885, 36.346870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027180, 30.900957, 36.598507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552379, -0.358949, 0.752352,
		0.333159, 0.922387, 0.195466,
		-0.764122, 0.142681, 0.629094,
		35.797943, 30.943762, 36.787235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551403, 31.191393, 36.993984>,  <36.332829, 30.843885, 36.346870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.551403, 31.191393, 36.993984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.190559, 31.071020, 37.117691>,  <35.974052, 30.998796, 37.191914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.190559, 31.071020, 37.117691>,  <36.551403, 31.191393, 36.993984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190559, 31.071020, 37.117691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364674, -0.148526, 0.919213,
		-0.230688, 0.942008, 0.243728,
		-0.902106, -0.300933, 0.309263,
		35.919926, 30.980740, 37.210468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.427155, 31.603827, 37.633041>,  <36.551403, 31.191393, 36.993984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.427155, 31.603827, 37.633041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.197250, 31.276590, 37.640915>,  <36.059307, 31.080250, 37.645638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.197250, 31.276590, 37.640915>,  <36.427155, 31.603827, 37.633041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.197250, 31.276590, 37.640915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468103, -0.308955, 0.827904,
		-0.671219, 0.485055, 0.560524,
		-0.574756, -0.818088, 0.019679,
		36.024822, 31.031164, 37.646820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992180, 31.547518, 38.234318>,  <36.427155, 31.603827, 37.633041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992180, 31.547518, 38.234318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.028786, 31.173502, 38.097309>,  <36.050747, 30.949093, 38.015102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.028786, 31.173502, 38.097309>,  <35.992180, 31.547518, 38.234318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.028786, 31.173502, 38.097309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399607, -0.280574, 0.872692,
		-0.912107, -0.216738, 0.347973,
		0.091513, -0.935042, -0.342524,
		36.056240, 30.892990, 37.994553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687115, 31.182047, 38.825336>,  <35.992180, 31.547518, 38.234318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687115, 31.182047, 38.825336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882984, 30.913673, 38.602600>,  <36.000507, 30.752649, 38.468960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882984, 30.913673, 38.602600>,  <35.687115, 31.182047, 38.825336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882984, 30.913673, 38.602600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134883, -0.572667, 0.808615,
		-0.861410, -0.471065, -0.189922,
		0.489672, -0.670932, -0.556840,
		36.029884, 30.712393, 38.435547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388779, 30.492949, 38.938438>,  <35.687115, 31.182047, 38.825336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.388779, 30.492949, 38.938438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.749542, 30.431723, 38.776878>,  <35.966000, 30.394987, 38.679943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.749542, 30.431723, 38.776878>,  <35.388779, 30.492949, 38.938438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.749542, 30.431723, 38.776878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154834, -0.758383, 0.633152,
		-0.403221, -0.633582, -0.660292,
		0.901908, -0.153064, -0.403896,
		36.020115, 30.385803, 38.655708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331154, 29.791565, 38.782722>,  <35.388779, 30.492949, 38.938438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.331154, 29.791565, 38.782722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724552, 29.863726, 38.788345>,  <35.960590, 29.907022, 38.791718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724552, 29.863726, 38.788345>,  <35.331154, 29.791565, 38.782722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.724552, 29.863726, 38.788345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151957, -0.865587, 0.477147,
		0.098245, -0.467134, -0.878711,
		0.983492, 0.180404, 0.014055,
		36.019600, 29.917847, 38.792561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752922, 29.245510, 38.491573>,  <35.331154, 29.791565, 38.782722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752922, 29.245510, 38.491573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.022182, 29.407598, 38.739010>,  <36.183739, 29.504852, 38.887474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.022182, 29.407598, 38.739010>,  <35.752922, 29.245510, 38.491573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022182, 29.407598, 38.739010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205468, -0.906052, 0.369936,
		0.710384, -0.121923, -0.693174,
		0.673155, 0.405221, 0.618593,
		36.224129, 29.529165, 38.924587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.252632, 28.727228, 38.639011>,  <35.752922, 29.245510, 38.491573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.252632, 28.727228, 38.639011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.325783, 28.990187, 38.931419>,  <36.369671, 29.147963, 39.106865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.325783, 28.990187, 38.931419>,  <36.252632, 28.727228, 38.639011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325783, 28.990187, 38.931419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216778, -0.752219, 0.622232,
		0.958939, 0.044678, -0.280071,
		0.182875, 0.657396, 0.731018,
		36.380646, 29.187405, 39.150726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862503, 28.555819, 38.884087>,  <36.252632, 28.727228, 38.639011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862503, 28.555819, 38.884087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.679985, 28.749464, 39.182732>,  <36.570473, 28.865652, 39.361916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.679985, 28.749464, 39.182732>,  <36.862503, 28.555819, 38.884087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679985, 28.749464, 39.182732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487569, -0.565854, 0.664895,
		0.744357, 0.667414, 0.022160,
		-0.456299, 0.484115, 0.746608,
		36.543095, 28.894699, 39.406715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329544, 28.714430, 39.444481>,  <36.862503, 28.555819, 38.884087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329544, 28.714430, 39.444481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.990765, 28.767654, 39.650383>,  <36.787498, 28.799589, 39.773926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.990765, 28.767654, 39.650383>,  <37.329544, 28.714430, 39.444481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.990765, 28.767654, 39.650383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409739, -0.453619, 0.791419,
		0.338808, 0.881207, 0.329673,
		-0.846949, 0.133059, 0.514755,
		36.736679, 28.807571, 39.804810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550186, 28.989317, 40.181709>,  <37.329544, 28.714430, 39.444481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550186, 28.989317, 40.181709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.190376, 28.816288, 40.206161>,  <36.974491, 28.712471, 40.220833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.190376, 28.816288, 40.206161>,  <37.550186, 28.989317, 40.181709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.190376, 28.816288, 40.206161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345564, -0.618904, 0.705368,
		-0.267286, 0.655622, 0.706200,
		-0.899524, -0.432572, 0.061135,
		36.920521, 28.686516, 40.224503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314320, 28.927530, 40.933449>,  <37.550186, 28.989317, 40.181709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314320, 28.927530, 40.933449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.046093, 28.676142, 40.775784>,  <36.885159, 28.525309, 40.681183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.046093, 28.676142, 40.775784>,  <37.314320, 28.927530, 40.933449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.046093, 28.676142, 40.775784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125413, -0.619716, 0.774741,
		-0.731170, 0.470083, 0.494380,
		-0.670568, -0.628469, -0.394163,
		36.844921, 28.487600, 40.657536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793816, 28.801104, 41.462883>,  <37.314320, 28.927530, 40.933449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793816, 28.801104, 41.462883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.764492, 28.482454, 41.222878>,  <36.746899, 28.291265, 41.078873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.764492, 28.482454, 41.222878>,  <36.793816, 28.801104, 41.462883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.764492, 28.482454, 41.222878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015034, -0.602450, 0.798015,
		-0.997196, 0.049483, 0.056143,
		-0.073312, -0.796621, -0.600017,
		36.742500, 28.243467, 41.042873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168491, 28.353312, 41.733486>,  <36.793816, 28.801104, 41.462883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.168491, 28.353312, 41.733486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.406322, 28.119093, 41.513081>,  <36.549019, 27.978561, 41.380836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.406322, 28.119093, 41.513081>,  <36.168491, 28.353312, 41.733486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406322, 28.119093, 41.513081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133302, -0.604035, 0.785730,
		-0.792912, -0.540628, -0.281090,
		0.594576, -0.585545, -0.551014,
		36.584694, 27.943430, 41.347778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905037, 27.706387, 41.812172>,  <36.168491, 28.353312, 41.733486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905037, 27.706387, 41.812172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.286636, 27.673347, 41.696892>,  <36.515594, 27.653524, 41.627724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.286636, 27.673347, 41.696892>,  <35.905037, 27.706387, 41.812172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286636, 27.673347, 41.696892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173984, -0.630341, 0.756572,
		-0.244158, -0.771912, -0.586974,
		0.954000, -0.082599, -0.288203,
		36.572838, 27.648567, 41.610432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990292, 26.984932, 41.674057>,  <35.905037, 27.706387, 41.812172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.990292, 26.984932, 41.674057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.314877, 27.192234, 41.782085>,  <36.509628, 27.316614, 41.846905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.314877, 27.192234, 41.782085>,  <35.990292, 26.984932, 41.674057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314877, 27.192234, 41.782085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065773, -0.378209, 0.923380,
		0.580690, -0.767053, -0.272816,
		0.811464, 0.518254, 0.270074,
		36.558315, 27.347710, 41.863106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.207405, 26.710604, 42.377983>,  <35.990292, 26.984932, 41.674057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.207405, 26.710604, 42.377983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.463818, 27.017139, 42.360981>,  <36.617664, 27.201061, 42.350780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.463818, 27.017139, 42.360981>,  <36.207405, 26.710604, 42.377983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.463818, 27.017139, 42.360981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352136, -0.244450, 0.903462,
		0.681969, -0.594112, -0.426555,
		0.641029, 0.766339, -0.042501,
		36.656128, 27.247042, 42.348232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795296, 26.453615, 42.525578>,  <36.207405, 26.710604, 42.377983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795296, 26.453615, 42.525578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.794445, 26.841658, 42.622646>,  <36.793934, 27.074484, 42.680889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.794445, 26.841658, 42.622646>,  <36.795296, 26.453615, 42.525578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.794445, 26.841658, 42.622646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074467, -0.241845, 0.967453,
		0.997221, 0.020129, -0.071726,
		-0.002127, 0.970106, 0.242672,
		36.793808, 27.132690, 42.695450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310349, 26.554586, 42.901817>,  <36.795296, 26.453615, 42.525578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310349, 26.554586, 42.901817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.120567, 26.891748, 43.003326>,  <37.006699, 27.094046, 43.064232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.120567, 26.891748, 43.003326>,  <37.310349, 26.554586, 42.901817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120567, 26.891748, 43.003326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317513, -0.105010, 0.942421,
		0.821021, 0.527715, -0.217811,
		-0.474457, 0.842906, 0.253772,
		36.978230, 27.144621, 43.079456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745190, 26.934349, 43.354023>,  <37.310349, 26.554586, 42.901817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745190, 26.934349, 43.354023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.369957, 27.046335, 43.435638>,  <37.144817, 27.113527, 43.484608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.369957, 27.046335, 43.435638>,  <37.745190, 26.934349, 43.354023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369957, 27.046335, 43.435638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172330, -0.133817, 0.975907,
		0.300523, 0.950638, 0.077285,
		-0.938077, 0.279964, 0.204039,
		37.088535, 27.130323, 43.496849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781342, 27.408796, 43.921440>,  <37.745190, 26.934349, 43.354023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.781342, 27.408796, 43.921440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.408512, 27.264376, 43.909618>,  <37.184814, 27.177723, 43.902523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.408512, 27.264376, 43.909618>,  <37.781342, 27.408796, 43.921440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408512, 27.264376, 43.909618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069881, -0.259262, 0.963276,
		-0.355456, 0.895782, 0.266882,
		-0.932077, -0.361052, -0.029558,
		37.128887, 27.156059, 43.900749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355438, 27.688408, 44.482708>,  <37.781342, 27.408796, 43.921440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355438, 27.688408, 44.482708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.187866, 27.341486, 44.375168>,  <37.087322, 27.133333, 44.310642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.187866, 27.341486, 44.375168>,  <37.355438, 27.688408, 44.482708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187866, 27.341486, 44.375168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039399, -0.278447, 0.959643,
		-0.907165, 0.412612, 0.082478,
		-0.418926, -0.867305, -0.268854,
		37.062187, 27.081295, 44.294510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008240, 27.553125, 45.029415>,  <37.355438, 27.688408, 44.482708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008240, 27.553125, 45.029415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.989910, 27.192713, 44.856884>,  <36.978912, 26.976465, 44.753365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.989910, 27.192713, 44.856884>,  <37.008240, 27.553125, 45.029415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989910, 27.192713, 44.856884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079174, -0.427147, 0.900709,
		-0.995807, 0.075427, -0.051764,
		-0.045827, -0.901030, -0.431328,
		36.976162, 26.922403, 44.727486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354095, 27.248672, 45.389622>,  <37.008240, 27.553125, 45.029415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.354095, 27.248672, 45.389622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.538952, 26.940878, 45.213295>,  <36.649864, 26.756201, 45.107498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.538952, 26.940878, 45.213295>,  <36.354095, 27.248672, 45.389622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538952, 26.940878, 45.213295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038978, -0.514229, 0.856766,
		-0.885951, -0.378763, -0.267638,
		0.462139, -0.769485, -0.440819,
		36.677593, 26.710032, 45.081051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891529, 26.684626, 45.353683>,  <36.354095, 27.248672, 45.389622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891529, 26.684626, 45.353683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.263351, 26.537161, 45.352810>,  <36.486446, 26.448681, 45.352283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.263351, 26.537161, 45.352810>,  <35.891529, 26.684626, 45.353683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263351, 26.537161, 45.352810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250820, -0.636751, 0.729135,
		-0.270198, -0.677226, -0.684367,
		0.929560, -0.368663, -0.002188,
		36.542221, 26.426561, 45.352154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854122, 25.926386, 45.521271>,  <35.891529, 26.684626, 45.353683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854122, 25.926386, 45.521271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.239506, 26.001255, 45.597912>,  <36.470737, 26.046177, 45.643894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.239506, 26.001255, 45.597912>,  <35.854122, 25.926386, 45.521271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.239506, 26.001255, 45.597912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020477, -0.764692, 0.644071,
		0.267068, -0.616613, -0.740583,
		0.963460, 0.187175, 0.191598,
		36.528545, 26.057407, 45.655392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223011, 25.245462, 45.484917>,  <35.854122, 25.926386, 45.521271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223011, 25.245462, 45.484917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.460342, 25.493441, 45.690296>,  <36.602741, 25.642227, 45.813522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.460342, 25.493441, 45.690296>,  <36.223011, 25.245462, 45.484917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.460342, 25.493441, 45.690296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017265, -0.627904, 0.778099,
		0.804774, -0.470534, -0.361851,
		0.593330, 0.619947, 0.513445,
		36.638340, 25.679424, 45.844330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.798683, 24.835951, 45.794262>,  <36.223011, 25.245462, 45.484917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.798683, 24.835951, 45.794262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.746403, 25.171156, 46.006168>,  <36.715034, 25.372278, 46.133312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.746403, 25.171156, 46.006168>,  <36.798683, 24.835951, 45.794262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.746403, 25.171156, 46.006168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040443, -0.538413, 0.841710,
		0.990596, 0.088589, 0.104264,
		-0.130703, 0.838011, 0.529768,
		36.707191, 25.422560, 46.165100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362999, 24.925222, 46.219433>,  <36.798683, 24.835951, 45.794262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362999, 24.925222, 46.219433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.077290, 25.149918, 46.386410>,  <36.905865, 25.284735, 46.486595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.077290, 25.149918, 46.386410>,  <37.362999, 24.925222, 46.219433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077290, 25.149918, 46.386410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006760, -0.590901, 0.806715,
		0.699830, 0.579041, 0.418270,
		-0.714277, 0.561736, 0.417445,
		36.863007, 25.318438, 46.511642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496178, 24.856693, 46.913250>,  <37.362999, 24.925222, 46.219433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496178, 24.856693, 46.913250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.120419, 24.992701, 46.930786>,  <36.894962, 25.074305, 46.941307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.120419, 24.992701, 46.930786>,  <37.496178, 24.856693, 46.913250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120419, 24.992701, 46.930786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082994, -0.349613, 0.933211,
		0.332633, 0.873017, 0.356645,
		-0.939397, 0.340017, 0.043838,
		36.838600, 25.094706, 46.943939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422153, 25.193043, 47.593742>,  <37.496178, 24.856693, 46.913250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422153, 25.193043, 47.593742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.060490, 25.097513, 47.452057>,  <36.843491, 25.040195, 47.367046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.060490, 25.097513, 47.452057>,  <37.422153, 25.193043, 47.593742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.060490, 25.097513, 47.452057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263288, -0.341442, 0.902273,
		-0.336426, 0.909055, 0.245838,
		-0.904155, -0.238823, -0.354213,
		36.789242, 25.025866, 47.345795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896873, 25.732676, 47.798271>,  <37.422153, 25.193043, 47.593742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.896873, 25.732676, 47.798271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.772026, 25.354586, 47.760044>,  <36.697117, 25.127731, 47.737110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.772026, 25.354586, 47.760044>,  <36.896873, 25.732676, 47.798271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.772026, 25.354586, 47.760044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079878, -0.126341, 0.988766,
		-0.946681, 0.300974, 0.114935,
		-0.312114, -0.945226, -0.095564,
		36.678391, 25.071018, 47.731377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418625, 25.639893, 48.332989>,  <36.896873, 25.732676, 47.798271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418625, 25.639893, 48.332989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.734379, 25.846733, 48.465336>,  <37.923832, 25.970837, 48.544743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.734379, 25.846733, 48.465336>,  <37.418625, 25.639893, 48.332989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734379, 25.846733, 48.465336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177220, 0.324066, -0.929287,
		-0.587756, 0.792205, 0.164174,
		0.789389, 0.517099, 0.330867,
		37.971195, 26.001863, 48.564594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359402, 26.274321, 47.910751>,  <37.418625, 25.639893, 48.332989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.359402, 26.274321, 47.910751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.734703, 26.282206, 48.048904>,  <37.959885, 26.286936, 48.131798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.734703, 26.282206, 48.048904>,  <37.359402, 26.274321, 47.910751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734703, 26.282206, 48.048904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252504, 0.643436, -0.722656,
		-0.236479, 0.765246, 0.598729,
		0.938253, 0.019712, 0.345387,
		38.016178, 26.288118, 48.152519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521835, 26.958839, 47.788532>,  <37.359402, 26.274321, 47.910751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.521835, 26.958839, 47.788532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.881653, 26.801304, 47.864117>,  <38.097546, 26.706783, 47.909466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.881653, 26.801304, 47.864117>,  <37.521835, 26.958839, 47.788532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881653, 26.801304, 47.864117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421909, 0.671280, -0.609406,
		0.113165, 0.627913, 0.770012,
		0.899548, -0.393839, 0.188957,
		38.151516, 26.683153, 47.920803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917473, 27.499195, 48.108566>,  <37.521835, 26.958839, 47.788532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.917473, 27.499195, 48.108566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.156891, 27.225698, 47.941597>,  <38.300541, 27.061600, 47.841415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.156891, 27.225698, 47.941597>,  <37.917473, 27.499195, 48.108566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156891, 27.225698, 47.941597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473586, 0.722274, -0.504021,
		0.646112, 0.103995, 0.756124,
		0.598545, -0.683744, -0.417419,
		38.336452, 27.020575, 47.816372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620655, 27.696251, 48.218098>,  <37.917473, 27.499195, 48.108566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620655, 27.696251, 48.218098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.642139, 27.453684, 47.900764>,  <38.655029, 27.308144, 47.710365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.642139, 27.453684, 47.900764>,  <38.620655, 27.696251, 48.218098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.642139, 27.453684, 47.900764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662714, 0.615936, -0.425950,
		0.746944, -0.502873, 0.434964,
		0.053711, -0.606418, -0.793330,
		38.658253, 27.271759, 47.662766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340523, 27.703140, 47.873165>,  <38.620655, 27.696251, 48.218098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.340523, 27.703140, 47.873165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.101208, 27.580961, 47.576855>,  <38.957619, 27.507654, 47.399067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.101208, 27.580961, 47.576855>,  <39.340523, 27.703140, 47.873165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.101208, 27.580961, 47.576855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576716, 0.477672, -0.662743,
		0.556282, -0.823731, -0.109630,
		-0.598289, -0.305447, -0.740778,
		38.921722, 27.489328, 47.354622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.750702, 27.641243, 47.289169>,  <39.340523, 27.703140, 47.873165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.750702, 27.641243, 47.289169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.383904, 27.632858, 47.129833>,  <39.163826, 27.627829, 47.034229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.383904, 27.632858, 47.129833>,  <39.750702, 27.641243, 47.289169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.383904, 27.632858, 47.129833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324827, 0.540381, -0.776193,
		0.231527, -0.841159, -0.488719,
		-0.916997, -0.020960, -0.398344,
		39.108803, 27.626570, 47.010330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866932, 27.570066, 46.608658>,  <39.750702, 27.641243, 47.289169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.866932, 27.570066, 46.608658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.484638, 27.687477, 46.616882>,  <39.255264, 27.757923, 46.621819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.484638, 27.687477, 46.616882>,  <39.866932, 27.570066, 46.608658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.484638, 27.687477, 46.616882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166996, 0.598636, -0.783420,
		-0.242265, -0.745304, -0.621152,
		-0.955730, 0.293525, 0.020565,
		39.197918, 27.775534, 46.623051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626442, 27.585968, 45.874001>,  <39.866932, 27.570066, 46.608658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626442, 27.585968, 45.874001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.363010, 27.817919, 46.065842>,  <39.204952, 27.957088, 46.180946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.363010, 27.817919, 46.065842>,  <39.626442, 27.585968, 45.874001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363010, 27.817919, 46.065842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077760, 0.686364, -0.723089,
		-0.748486, -0.438915, -0.497114,
		-0.658575, 0.579878, 0.479605,
		39.165440, 27.991882, 46.209724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237671, 27.724541, 45.409561>,  <39.626442, 27.585968, 45.874001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237671, 27.724541, 45.409561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.162216, 28.006172, 45.683407>,  <39.116943, 28.175152, 45.847713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.162216, 28.006172, 45.683407>,  <39.237671, 27.724541, 45.409561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.162216, 28.006172, 45.683407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087090, 0.682385, -0.725787,
		-0.978178, -0.196529, -0.067402,
		-0.188632, 0.704079, 0.684610,
		39.105625, 28.217396, 45.888790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716820, 28.057709, 45.203945>,  <39.237671, 27.724541, 45.409561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716820, 28.057709, 45.203945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.867447, 28.325832, 45.459721>,  <38.957821, 28.486708, 45.613186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.867447, 28.325832, 45.459721>,  <38.716820, 28.057709, 45.203945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.867447, 28.325832, 45.459721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021957, 0.696512, -0.717209,
		-0.926130, 0.256035, 0.277000,
		0.376565, 0.670311, 0.639439,
		38.980415, 28.526926, 45.651554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233913, 28.621649, 45.202633>,  <38.716820, 28.057709, 45.203945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.233913, 28.621649, 45.202633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.591927, 28.757366, 45.318420>,  <38.806736, 28.838797, 45.387894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.591927, 28.757366, 45.318420>,  <38.233913, 28.621649, 45.202633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.591927, 28.757366, 45.318420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061683, 0.736971, -0.673104,
		-0.441707, 0.584598, 0.680544,
		0.895037, 0.339293, 0.289465,
		38.860439, 28.859154, 45.405258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117584, 29.291267, 45.496250>,  <38.233913, 28.621649, 45.202633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.117584, 29.291267, 45.496250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.492489, 29.306307, 45.357613>,  <38.717430, 29.315331, 45.274429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.492489, 29.306307, 45.357613>,  <38.117584, 29.291267, 45.496250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.492489, 29.306307, 45.357613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220015, 0.834972, -0.504397,
		0.270431, 0.549007, 0.790859,
		0.937262, 0.037596, -0.346592,
		38.773666, 29.317585, 45.253635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296131, 29.986422, 45.296906>,  <38.117584, 29.291267, 45.496250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.296131, 29.986422, 45.296906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.568825, 29.785660, 45.083988>,  <38.732441, 29.665203, 44.956238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.568825, 29.785660, 45.083988>,  <38.296131, 29.986422, 45.296906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568825, 29.785660, 45.083988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209256, 0.563405, -0.799241,
		0.701038, 0.656254, 0.279064,
		0.681731, -0.501903, -0.532293,
		38.773346, 29.635090, 44.924301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643913, 30.467268, 44.912273>,  <38.296131, 29.986422, 45.296906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.643913, 30.467268, 44.912273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.714569, 30.127583, 44.713223>,  <38.756962, 29.923771, 44.593792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.714569, 30.127583, 44.713223>,  <38.643913, 30.467268, 44.912273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714569, 30.127583, 44.713223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192221, 0.466079, -0.863610,
		0.965323, 0.248204, -0.080908,
		0.176642, -0.849214, -0.497626,
		38.767563, 29.872818, 44.563934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.956203, 30.717642, 44.201309>,  <38.643913, 30.467268, 44.912273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.956203, 30.717642, 44.201309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.867725, 30.330381, 44.154396>,  <38.814640, 30.098024, 44.126247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.867725, 30.330381, 44.154396>,  <38.956203, 30.717642, 44.201309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.867725, 30.330381, 44.154396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017717, 0.124234, -0.992095,
		0.975069, -0.217369, -0.044633,
		-0.221195, -0.968151, -0.117286,
		38.801365, 30.039936, 44.119209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506470, 30.466934, 43.759827>,  <38.956203, 30.717642, 44.201309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506470, 30.466934, 43.759827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.159496, 30.269039, 43.738701>,  <38.951313, 30.150301, 43.726025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.159496, 30.269039, 43.738701>,  <39.506470, 30.466934, 43.759827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.159496, 30.269039, 43.738701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022191, 0.144511, -0.989254,
		0.497056, -0.856941, -0.136333,
		-0.867435, -0.494740, -0.052813,
		38.899265, 30.120617, 43.722858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595463, 30.035574, 43.190189>,  <39.506470, 30.466934, 43.759827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.595463, 30.035574, 43.190189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.197903, 30.023291, 43.232567>,  <38.959366, 30.015921, 43.257996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.197903, 30.023291, 43.232567>,  <39.595463, 30.035574, 43.190189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197903, 30.023291, 43.232567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103597, -0.070039, -0.992150,
		0.037892, -0.997071, 0.066430,
		-0.993897, -0.030712, 0.105948,
		38.899734, 30.014078, 43.264351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.356224, 29.628092, 42.622192>,  <39.595463, 30.035574, 43.190189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.356224, 29.628092, 42.622192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.020756, 29.819263, 42.726669>,  <38.819477, 29.933966, 42.789356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.020756, 29.819263, 42.726669>,  <39.356224, 29.628092, 42.622192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.020756, 29.819263, 42.726669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275989, 0.040515, -0.960306,
		-0.469540, -0.877464, 0.097924,
		-0.838667, 0.477928, 0.261194,
		38.769157, 29.962641, 42.805027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.871315, 29.291552, 42.136257>,  <39.356224, 29.628092, 42.622192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.871315, 29.291552, 42.136257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.701233, 29.626997, 42.272449>,  <38.599182, 29.828264, 42.354164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.701233, 29.626997, 42.272449>,  <38.871315, 29.291552, 42.136257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701233, 29.626997, 42.272449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400768, 0.162846, -0.901591,
		-0.811531, -0.519817, 0.266846,
		-0.425207, 0.838613, 0.340481,
		38.573669, 29.878580, 42.374596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219177, 29.252741, 42.015205>,  <38.871315, 29.291552, 42.136257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219177, 29.252741, 42.015205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.321514, 29.637842, 42.050190>,  <38.382915, 29.868904, 42.071178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.321514, 29.637842, 42.050190>,  <38.219177, 29.252741, 42.015205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.321514, 29.637842, 42.050190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359588, 0.178751, -0.915830,
		-0.897353, 0.202858, 0.391926,
		0.255840, 0.962755, 0.087457,
		38.398266, 29.926668, 42.076427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651398, 29.641188, 41.776184>,  <38.219177, 29.252741, 42.015205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.651398, 29.641188, 41.776184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.963497, 29.884398, 41.717503>,  <38.150757, 30.030323, 41.682293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.963497, 29.884398, 41.717503>,  <37.651398, 29.641188, 41.776184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.963497, 29.884398, 41.717503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359681, 0.244280, -0.900531,
		-0.511706, 0.755404, 0.409293,
		0.780247, 0.608023, -0.146705,
		38.197571, 30.066805, 41.673492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292267, 30.194483, 41.432049>,  <37.651398, 29.641188, 41.776184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292267, 30.194483, 41.432049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.682289, 30.253933, 41.366112>,  <37.916302, 30.289604, 41.326550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.682289, 30.253933, 41.366112>,  <37.292267, 30.194483, 41.432049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.682289, 30.253933, 41.366112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208690, 0.361012, -0.908911,
		-0.075579, 0.920641, 0.383024,
		0.975057, 0.148628, -0.164844,
		37.974808, 30.298521, 41.316658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416828, 30.962057, 41.150723>,  <37.292267, 30.194483, 41.432049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.416828, 30.962057, 41.150723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.747501, 30.756475, 41.059113>,  <37.945904, 30.633127, 41.004147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.747501, 30.756475, 41.059113>,  <37.416828, 30.962057, 41.150723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.747501, 30.756475, 41.059113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037305, 0.356067, -0.933715,
		0.561433, 0.780428, 0.275181,
		0.826680, -0.513954, -0.229022,
		37.995506, 30.602289, 40.990406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777973, 31.437658, 40.737492>,  <37.416828, 30.962057, 41.150723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.777973, 31.437658, 40.737492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.939243, 31.080112, 40.659050>,  <38.036007, 30.865585, 40.611984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.939243, 31.080112, 40.659050>,  <37.777973, 31.437658, 40.737492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939243, 31.080112, 40.659050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185087, 0.289511, -0.939109,
		0.896209, 0.342333, 0.282167,
		0.403178, -0.893863, -0.196101,
		38.060196, 30.811953, 40.600220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445534, 31.706556, 40.425709>,  <37.777973, 31.437658, 40.737492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445534, 31.706556, 40.425709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.350292, 31.331549, 40.324230>,  <38.293148, 31.106544, 40.263344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.350292, 31.331549, 40.324230>,  <38.445534, 31.706556, 40.425709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350292, 31.331549, 40.324230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231510, 0.198898, -0.952283,
		0.943243, -0.285479, 0.169686,
		-0.238107, -0.937519, -0.253701,
		38.278862, 31.050293, 40.248119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047432, 31.293497, 40.223549>,  <38.445534, 31.706556, 40.425709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047432, 31.293497, 40.223549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.695694, 31.199118, 40.058102>,  <38.484650, 31.142490, 39.958832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.695694, 31.199118, 40.058102>,  <39.047432, 31.293497, 40.223549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.695694, 31.199118, 40.058102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360667, 0.237135, -0.902046,
		0.310921, -0.942388, -0.123424,
		-0.879345, -0.235950, -0.413618,
		38.431889, 31.128334, 39.934017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180164, 30.778563, 39.652702>,  <39.047432, 31.293497, 40.223549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.180164, 30.778563, 39.652702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.820728, 30.930771, 39.565308>,  <38.605064, 31.022097, 39.512871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.820728, 30.930771, 39.565308>,  <39.180164, 30.778563, 39.652702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.820728, 30.930771, 39.565308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305010, 0.183721, -0.934460,
		-0.315440, -0.906339, -0.281153,
		-0.898592, 0.380520, -0.218489,
		38.551151, 31.044928, 39.499760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.095345, 30.611019, 39.018322>,  <39.180164, 30.778563, 39.652702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.095345, 30.611019, 39.018322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.820187, 30.899839, 39.047852>,  <38.655094, 31.073132, 39.065571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.820187, 30.899839, 39.047852>,  <39.095345, 30.611019, 39.018322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.820187, 30.899839, 39.047852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218265, 0.302793, -0.927727,
		-0.692219, -0.622061, -0.365887,
		-0.687890, 0.722050, 0.073825,
		38.613819, 31.116455, 39.070000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745636, 30.605995, 38.459106>,  <39.095345, 30.611019, 39.018322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745636, 30.605995, 38.459106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.676296, 30.980545, 38.581192>,  <38.634693, 31.205275, 38.654446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.676296, 30.980545, 38.581192>,  <38.745636, 30.605995, 38.459106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.676296, 30.980545, 38.581192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308499, 0.345938, -0.886090,
		-0.935296, -0.059443, -0.348837,
		-0.173348, 0.936372, 0.305217,
		38.624290, 31.261457, 38.672756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415375, 30.941887, 37.917625>,  <38.745636, 30.605995, 38.459106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415375, 30.941887, 37.917625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.578636, 31.231554, 38.139973>,  <38.676594, 31.405354, 38.273380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.578636, 31.231554, 38.139973>,  <38.415375, 30.941887, 37.917625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578636, 31.231554, 38.139973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373880, 0.422895, -0.825454,
		-0.832842, 0.544740, -0.098147,
		0.408152, 0.724167, 0.555872,
		38.701080, 31.448805, 38.306736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266659, 31.589104, 37.473064>,  <38.415375, 30.941887, 37.917625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266659, 31.589104, 37.473064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.546204, 31.739357, 37.716537>,  <38.713928, 31.829508, 37.862621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.546204, 31.739357, 37.716537>,  <38.266659, 31.589104, 37.473064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.546204, 31.739357, 37.716537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325683, 0.590545, -0.738368,
		-0.636811, 0.714253, 0.290371,
		0.698858, 0.375632, 0.608685,
		38.755859, 31.852047, 37.899143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341328, 32.331417, 37.361206>,  <38.266659, 31.589104, 37.473064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341328, 32.331417, 37.361206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.688969, 32.260021, 37.545731>,  <38.897552, 32.217186, 37.656445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.688969, 32.260021, 37.545731>,  <38.341328, 32.331417, 37.361206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.688969, 32.260021, 37.545731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439387, 0.706893, -0.554293,
		-0.227161, 0.684430, 0.692787,
		0.869101, -0.178488, 0.461308,
		38.949699, 32.206474, 37.684124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622833, 33.005013, 37.577156>,  <38.341328, 32.331417, 37.361206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622833, 33.005013, 37.577156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.924007, 32.743790, 37.609676>,  <39.104713, 32.587055, 37.629189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.924007, 32.743790, 37.609676>,  <38.622833, 33.005013, 37.577156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.924007, 32.743790, 37.609676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652698, 0.725250, -0.219084,
		0.084110, 0.218021, 0.972313,
		0.752935, -0.653054, 0.081301,
		39.149887, 32.547874, 37.634068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.130875, 33.385895, 37.908920>,  <38.622833, 33.005013, 37.577156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.130875, 33.385895, 37.908920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.284546, 33.083450, 37.696995>,  <39.376747, 32.901985, 37.569839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.284546, 33.083450, 37.696995>,  <39.130875, 33.385895, 37.908920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.284546, 33.083450, 37.696995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665823, 0.624440, -0.408356,
		0.639601, -0.195886, 0.743330,
		0.384174, -0.756111, -0.529818,
		39.399799, 32.856617, 37.538048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.870533, 33.531696, 37.945637>,  <39.130875, 33.385895, 37.908920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.870533, 33.531696, 37.945637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.806889, 33.294361, 37.630009>,  <39.768703, 33.151958, 37.440632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.806889, 33.294361, 37.630009>,  <39.870533, 33.531696, 37.945637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.806889, 33.294361, 37.630009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614073, 0.566350, -0.549692,
		0.773045, -0.572008, 0.274242,
		-0.159112, -0.593341, -0.789069,
		39.759155, 33.116360, 37.393288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.481640, 33.508530, 37.576149>,  <39.870533, 33.531696, 37.945637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.481640, 33.508530, 37.576149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.232811, 33.379200, 37.290913>,  <40.083515, 33.301601, 37.119770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.232811, 33.379200, 37.290913>,  <40.481640, 33.508530, 37.576149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.232811, 33.379200, 37.290913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573442, 0.431970, -0.696108,
		0.533099, -0.841941, -0.083309,
		-0.622069, -0.323322, -0.713087,
		40.046192, 33.282204, 37.076988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.881966, 33.215012, 37.088882>,  <40.481640, 33.508530, 37.576149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.881966, 33.215012, 37.088882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.558655, 33.307991, 36.872494>,  <40.364666, 33.363777, 36.742661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.558655, 33.307991, 36.872494>,  <40.881966, 33.215012, 37.088882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.558655, 33.307991, 36.872494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587584, 0.377429, -0.715746,
		0.037809, -0.896391, -0.441649,
		-0.808279, 0.232444, -0.540975,
		40.316170, 33.377724, 36.710201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.992611, 33.031048, 36.384373>,  <40.881966, 33.215012, 37.088882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.992611, 33.031048, 36.384373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.711693, 33.315441, 36.370022>,  <40.543140, 33.486076, 36.361412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.711693, 33.315441, 36.370022>,  <40.992611, 33.031048, 36.384373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.711693, 33.315441, 36.370022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501584, 0.458431, -0.733658,
		-0.505170, -0.533240, -0.678571,
		-0.702294, 0.710982, -0.035879,
		40.501003, 33.528736, 36.359257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.908489, 33.087265, 35.647499>,  <40.992611, 33.031048, 36.384373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.908489, 33.087265, 35.647499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.750229, 33.416943, 35.809566>,  <40.655273, 33.614750, 35.906807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.750229, 33.416943, 35.809566>,  <40.908489, 33.087265, 35.647499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.750229, 33.416943, 35.809566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403685, 0.552335, -0.729359,
		-0.824923, -0.125013, -0.551248,
		-0.395654, 0.824195, 0.405168,
		40.631535, 33.664200, 35.931118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.303749, 33.480293, 35.193024>,  <40.908489, 33.087265, 35.647499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.303749, 33.480293, 35.193024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.552765, 33.697479, 35.418461>,  <40.702175, 33.827789, 35.553722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.552765, 33.697479, 35.418461>,  <40.303749, 33.480293, 35.193024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.552765, 33.697479, 35.418461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417596, 0.378587, -0.826006,
		-0.661861, 0.749573, 0.008944,
		0.622538, 0.542966, 0.563591,
		40.739525, 33.860371, 35.587540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.382313, 34.260582, 35.108372>,  <40.303749, 33.480293, 35.193024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.382313, 34.260582, 35.108372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.722103, 34.071873, 35.202877>,  <40.925976, 33.958645, 35.259579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.722103, 34.071873, 35.202877>,  <40.382313, 34.260582, 35.108372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.722103, 34.071873, 35.202877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390472, 0.260961, -0.882854,
		0.354854, 0.842216, 0.405895,
		0.849477, -0.471775, 0.236259,
		40.976948, 33.930340, 35.273754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.964329, 34.733261, 34.998508>,  <40.382313, 34.260582, 35.108372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.964329, 34.733261, 34.998508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.070366, 34.351700, 34.942226>,  <41.133987, 34.122765, 34.908459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.070366, 34.351700, 34.942226>,  <40.964329, 34.733261, 34.998508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.070366, 34.351700, 34.942226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427724, 0.247114, -0.869475,
		0.864163, 0.170309, 0.473515,
		0.265092, -0.953902, -0.140701,
		41.149895, 34.065529, 34.900017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.514244, 34.896931, 34.639580>,  <40.964329, 34.733261, 34.998508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.514244, 34.896931, 34.639580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.405972, 34.515282, 34.588379>,  <41.341007, 34.286293, 34.557659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.405972, 34.515282, 34.588379>,  <41.514244, 34.896931, 34.639580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.405972, 34.515282, 34.588379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326068, 0.034237, -0.944726,
		0.905767, -0.297452, 0.301842,
		-0.270677, -0.954123, -0.128000,
		41.324768, 34.229046, 34.549980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.032635, 34.546124, 34.331837>,  <41.514244, 34.896931, 34.639580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.032635, 34.546124, 34.331837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.696453, 34.350201, 34.239124>,  <41.494743, 34.232647, 34.183498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.696453, 34.350201, 34.239124>,  <42.032635, 34.546124, 34.331837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.696453, 34.350201, 34.239124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295257, -0.055283, -0.953817,
		0.454376, -0.870075, 0.191083,
		-0.840456, -0.489810, -0.231777,
		41.444317, 34.203259, 34.169590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.282051, 33.902237, 34.043522>,  <42.032635, 34.546124, 34.331837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.282051, 33.902237, 34.043522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.938698, 34.068062, 33.922649>,  <41.732685, 34.167557, 33.850124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.938698, 34.068062, 33.922649>,  <42.282051, 33.902237, 34.043522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.938698, 34.068062, 33.922649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357678, 0.061370, -0.931826,
		-0.367755, -0.907949, -0.200959,
		-0.858384, 0.414562, -0.302184,
		41.681183, 34.192429, 33.831993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.880230, 33.511806, 33.551231>,  <42.282051, 33.902237, 34.043522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.880230, 33.511806, 33.551231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.823391, 33.905640, 33.510437>,  <41.789288, 34.141941, 33.485958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.823391, 33.905640, 33.510437>,  <41.880230, 33.511806, 33.551231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.823391, 33.905640, 33.510437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412669, -0.034726, -0.910219,
		-0.899728, -0.171432, -0.401372,
		-0.142102, 0.984584, -0.101989,
		41.780762, 34.201015, 33.479839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.390354, 33.614166, 33.044468>,  <41.880230, 33.511806, 33.551231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.390354, 33.614166, 33.044468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.666290, 33.903698, 33.038837>,  <41.831852, 34.077415, 33.035461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.666290, 33.903698, 33.038837>,  <41.390354, 33.614166, 33.044468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.666290, 33.903698, 33.038837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158997, -0.170439, -0.972456,
		-0.706290, 0.668598, -0.232662,
		0.689836, 0.723829, -0.014074,
		41.873241, 34.120846, 33.034615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.209881, 34.140873, 32.494396>,  <41.390354, 33.614166, 33.044468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.209881, 34.140873, 32.494396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.602562, 34.197121, 32.545757>,  <41.838169, 34.230869, 32.576572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.602562, 34.197121, 32.545757>,  <41.209881, 34.140873, 32.494396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.602562, 34.197121, 32.545757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162461, -0.266775, -0.949967,
		-0.099329, 0.953445, -0.284739,
		0.981703, 0.140618, 0.128399,
		41.897072, 34.239307, 32.584278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.497341, 34.416279, 31.873568>,  <41.209881, 34.140873, 32.494396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.497341, 34.416279, 31.873568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.835865, 34.276672, 32.034538>,  <42.038979, 34.192909, 32.131123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.835865, 34.276672, 32.034538>,  <41.497341, 34.416279, 31.873568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.835865, 34.276672, 32.034538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351902, -0.200838, -0.914237,
		0.399904, 0.915343, -0.047153,
		0.846310, -0.349014, 0.402427,
		42.089760, 34.171967, 32.155266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.042446, 34.698303, 31.465414>,  <41.497341, 34.416279, 31.873568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.042446, 34.698303, 31.465414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.184303, 34.370964, 31.646318>,  <42.269417, 34.174561, 31.754862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.184303, 34.370964, 31.646318>,  <42.042446, 34.698303, 31.465414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.184303, 34.370964, 31.646318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336961, -0.339336, -0.878241,
		0.872173, 0.463857, 0.155407,
		0.354643, -0.818345, 0.452262,
		42.290695, 34.125462, 31.781998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.778584, 34.710602, 31.398565>,  <42.042446, 34.698303, 31.465414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.778584, 34.710602, 31.398565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.681973, 34.331867, 31.483572>,  <42.624004, 34.104626, 31.534576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.681973, 34.331867, 31.483572>,  <42.778584, 34.710602, 31.398565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.681973, 34.331867, 31.483572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379366, -0.293703, -0.877394,
		0.893166, -0.131295, 0.430136,
		-0.241530, -0.946837, 0.212516,
		42.609512, 34.047817, 31.547327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.398510, 34.240387, 31.340172>,  <42.778584, 34.710602, 31.398565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.398510, 34.240387, 31.340172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.081818, 33.998737, 31.303944>,  <42.891804, 33.853748, 31.282207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.081818, 33.998737, 31.303944>,  <43.398510, 34.240387, 31.340172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.081818, 33.998737, 31.303944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332602, -0.301947, -0.893423,
		0.512388, -0.737472, 0.439992,
		-0.791728, -0.604121, -0.090571,
		42.844299, 33.817501, 31.276772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.701584, 33.665733, 31.110167>,  <43.398510, 34.240387, 31.340172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.701584, 33.665733, 31.110167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.314747, 33.646896, 31.010157>,  <43.082645, 33.635593, 30.950151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.314747, 33.646896, 31.010157>,  <43.701584, 33.665733, 31.110167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.314747, 33.646896, 31.010157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252954, -0.072686, -0.964744,
		0.027262, -0.996242, 0.082207,
		-0.967094, -0.047096, -0.250022,
		43.024620, 33.632767, 30.935150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.673565, 33.066540, 30.754322>,  <43.701584, 33.665733, 31.110167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.673565, 33.066540, 30.754322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.359028, 33.286335, 30.641378>,  <43.170307, 33.418213, 30.573612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.359028, 33.286335, 30.641378>,  <43.673565, 33.066540, 30.754322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.359028, 33.286335, 30.641378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129775, -0.299929, -0.945093,
		-0.604005, -0.779811, 0.164537,
		-0.786344, 0.549489, -0.282359,
		43.123123, 33.451183, 30.556671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.121956, 32.619488, 30.440584>,  <43.673565, 33.066540, 30.754322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.121956, 32.619488, 30.440584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.031059, 32.982037, 30.298117>,  <42.976521, 33.199566, 30.212637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.031059, 32.982037, 30.298117>,  <43.121956, 32.619488, 30.440584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.031059, 32.982037, 30.298117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130668, -0.334050, -0.933454,
		-0.965033, -0.258656, -0.042525,
		-0.227238, 0.906370, -0.356168,
		42.962887, 33.253948, 30.191267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.603092, 32.617210, 29.849678>,  <43.121956, 32.619488, 30.440584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.603092, 32.617210, 29.849678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.795052, 32.960999, 29.779253>,  <42.910229, 33.167271, 29.736998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.795052, 32.960999, 29.779253>,  <42.603092, 32.617210, 29.849678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.795052, 32.960999, 29.779253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030157, -0.216725, -0.975767,
		-0.876804, 0.462963, -0.129926,
		0.479902, 0.859474, -0.176064,
		42.939022, 33.218842, 29.726435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.260109, 32.899857, 29.207750>,  <42.603092, 32.617210, 29.849678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.260109, 32.899857, 29.207750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.607300, 33.095787, 29.240479>,  <42.815613, 33.213345, 29.260115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.607300, 33.095787, 29.240479>,  <42.260109, 32.899857, 29.207750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.607300, 33.095787, 29.240479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087070, 0.012100, -0.996129,
		-0.488917, 0.871738, -0.032147,
		0.867974, 0.489823, 0.081818,
		42.867691, 33.242733, 29.265024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.222012, 33.196827, 28.585766>,  <42.260109, 32.899857, 29.207750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.222012, 33.196827, 28.585766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.603226, 33.210789, 28.706104>,  <42.831955, 33.219166, 28.778307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.603226, 33.210789, 28.706104>,  <42.222012, 33.196827, 28.585766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.603226, 33.210789, 28.706104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302841, -0.097138, -0.948078,
		-0.003866, 0.994659, -0.103145,
		0.953033, 0.034902, 0.300848,
		42.889137, 33.221260, 28.796358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.582207, 33.800385, 28.229015>,  <42.222012, 33.196827, 28.585766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.582207, 33.800385, 28.229015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.863827, 33.531780, 28.321438>,  <43.032799, 33.370617, 28.376892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.863827, 33.531780, 28.321438>,  <42.582207, 33.800385, 28.229015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.863827, 33.531780, 28.321438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416610, 0.127068, -0.900161,
		0.575106, 0.730021, 0.369220,
		0.704052, -0.671508, 0.231056,
		43.075043, 33.330326, 28.390755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.216812, 34.106110, 27.961510>,  <42.582207, 33.800385, 28.229015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.216812, 34.106110, 27.961510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.341290, 33.733139, 28.034985>,  <43.415977, 33.509357, 28.079069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.341290, 33.733139, 28.034985>,  <43.216812, 34.106110, 27.961510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.341290, 33.733139, 28.034985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478660, -0.013195, -0.877901,
		0.821002, 0.361121, 0.442208,
		0.311193, -0.932426, 0.183687,
		43.434647, 33.453411, 28.090090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.871799, 34.029049, 27.707045>,  <43.216812, 34.106110, 27.961510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.871799, 34.029049, 27.707045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.725628, 33.656761, 27.712936>,  <43.637924, 33.433388, 27.716471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.725628, 33.656761, 27.712936>,  <43.871799, 34.029049, 27.707045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.725628, 33.656761, 27.712936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432339, -0.183720, -0.882797,
		0.824346, -0.316229, 0.469525,
		-0.365427, -0.930723, 0.014730,
		43.616001, 33.377544, 27.717356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.476345, 33.605549, 27.645088>,  <43.871799, 34.029049, 27.707045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.476345, 33.605549, 27.645088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.160748, 33.387516, 27.531687>,  <43.971390, 33.256699, 27.463646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.160748, 33.387516, 27.531687>,  <44.476345, 33.605549, 27.645088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.160748, 33.387516, 27.531687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484145, -0.267494, -0.833097,
		0.378268, -0.794567, 0.474949,
		-0.788998, -0.545078, -0.283501,
		43.924049, 33.223991, 27.446636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.771732, 32.939526, 27.440540>,  <44.476345, 33.605549, 27.645088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.771732, 32.939526, 27.440540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.403816, 32.944092, 27.283642>,  <44.183067, 32.946831, 27.189503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.403816, 32.944092, 27.283642>,  <44.771732, 32.939526, 27.440540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.403816, 32.944092, 27.283642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362822, -0.356045, -0.861158,
		-0.149488, -0.934399, 0.323344,
		-0.919790, 0.011416, -0.392245,
		44.127880, 32.947517, 27.165968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.639904, 32.276527, 27.223774>,  <44.771732, 32.939526, 27.440540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.639904, 32.276527, 27.223774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.418964, 32.527729, 27.004494>,  <44.286400, 32.678448, 26.872925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.418964, 32.527729, 27.004494>,  <44.639904, 32.276527, 27.223774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.418964, 32.527729, 27.004494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457268, -0.321603, -0.829143,
		-0.697006, -0.708652, -0.109527,
		-0.552349, 0.628000, -0.548203,
		44.253258, 32.716129, 26.840033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.350273, 31.850410, 26.734274>,  <44.639904, 32.276527, 27.223774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.350273, 31.850410, 26.734274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.303524, 32.220589, 26.590111>,  <44.275475, 32.442696, 26.503613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.303524, 32.220589, 26.590111>,  <44.350273, 31.850410, 26.734274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.303524, 32.220589, 26.590111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356263, -0.299676, -0.885026,
		-0.927048, -0.231836, -0.294677,
		-0.116874, 0.925444, -0.360408,
		44.268463, 32.498222, 26.481989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.159920, 31.744217, 26.028749>,  <44.350273, 31.850410, 26.734274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.159920, 31.744217, 26.028749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.291576, 32.121719, 26.041294>,  <44.370571, 32.348221, 26.048820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.291576, 32.121719, 26.041294>,  <44.159920, 31.744217, 26.028749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.291576, 32.121719, 26.041294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511224, -0.150174, -0.846226,
		-0.793922, 0.294565, -0.531901,
		0.329146, 0.943758, 0.031362,
		44.390320, 32.404846, 26.050703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.911560, 31.971258, 25.474630>,  <44.159920, 31.744217, 26.028749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.911560, 31.971258, 25.474630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.215221, 32.216320, 25.562584>,  <44.397415, 32.363358, 25.615356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.215221, 32.216320, 25.562584>,  <43.911560, 31.971258, 25.474630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.215221, 32.216320, 25.562584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433252, -0.223484, -0.873125,
		-0.485784, 0.758096, -0.435091,
		0.759149, 0.612654, 0.219882,
		44.442966, 32.400116, 25.628548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.081966, 32.454498, 24.923256>,  <43.911560, 31.971258, 25.474630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.081966, 32.454498, 24.923256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.420273, 32.409061, 25.131784>,  <44.623257, 32.381802, 25.256903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.420273, 32.409061, 25.131784>,  <44.081966, 32.454498, 24.923256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.420273, 32.409061, 25.131784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487688, -0.231759, -0.841694,
		0.216429, 0.966119, -0.140617,
		0.845766, -0.113590, 0.521323,
		44.674004, 32.374985, 25.288181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.603943, 32.208382, 24.500328>,  <44.081966, 32.454498, 24.923256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.603943, 32.208382, 24.500328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.867001, 32.079319, 24.228035>,  <45.024834, 32.001881, 24.064659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.867001, 32.079319, 24.228035>,  <44.603943, 32.208382, 24.500328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.867001, 32.079319, 24.228035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709697, -0.037707, 0.703497,
		-0.252656, -0.945765, 0.204190,
		0.657643, -0.322655, -0.680733,
		45.064293, 31.982523, 24.023815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.078659, 31.609751, 24.676752>,  <44.603943, 32.208382, 24.500328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.078659, 31.609751, 24.676752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.242390, 31.878201, 24.429512>,  <45.340630, 32.039268, 24.281168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.242390, 31.878201, 24.429512>,  <45.078659, 31.609751, 24.676752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.242390, 31.878201, 24.429512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707906, 0.193781, 0.679205,
		0.575605, -0.715572, -0.395772,
		0.409327, 0.671123, -0.618098,
		45.365189, 32.079536, 24.244081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.725361, 31.499401, 24.760777>,  <45.078659, 31.609751, 24.676752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.725361, 31.499401, 24.760777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.670982, 31.879198, 24.647652>,  <45.638355, 32.107075, 24.579777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.670982, 31.879198, 24.647652>,  <45.725361, 31.499401, 24.760777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.670982, 31.879198, 24.647652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717727, 0.291165, 0.632528,
		0.682925, -0.116993, -0.721058,
		-0.135946, 0.949492, -0.282813,
		45.630199, 32.164047, 24.562807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.337063, 31.849068, 24.619541>,  <45.725361, 31.499401, 24.760777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.337063, 31.849068, 24.619541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.104935, 32.150509, 24.743029>,  <45.965656, 32.331375, 24.817122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.104935, 32.150509, 24.743029>,  <46.337063, 31.849068, 24.619541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.104935, 32.150509, 24.743029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797701, 0.449666, 0.401838,
		0.164004, 0.479463, -0.862101,
		-0.580324, 0.753601, 0.308721,
		45.930836, 32.376591, 24.835646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.727203, 32.551109, 24.518211>,  <46.337063, 31.849068, 24.619541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.727203, 32.551109, 24.518211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.456886, 32.542858, 24.812933>,  <46.294697, 32.537907, 24.989767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.456886, 32.542858, 24.812933>,  <46.727203, 32.551109, 24.518211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.456886, 32.542858, 24.812933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688260, 0.340133, 0.640787,
		-0.263828, 0.940151, -0.215663,
		-0.675790, -0.020625, 0.736805,
		46.254150, 32.536671, 25.033974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.862816, 32.272396, 25.294170>,  <46.727203, 32.551109, 24.518211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.862816, 32.272396, 25.294170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.797825, 31.894663, 25.179737>,  <46.758831, 31.668024, 25.111076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.797825, 31.894663, 25.179737>,  <46.862816, 32.272396, 25.294170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.797825, 31.894663, 25.179737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966622, 0.210540, -0.145998,
		0.198102, 0.252813, -0.947017,
		-0.162474, -0.944330, -0.286083,
		46.749084, 31.611364, 25.093912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.278530, 32.836296, 25.174616>,  <46.862816, 32.272396, 25.294170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.278530, 32.836296, 25.174616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.497311, 33.166866, 25.228077>,  <47.628578, 33.365208, 25.260155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.497311, 33.166866, 25.228077>,  <47.278530, 32.836296, 25.174616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.497311, 33.166866, 25.228077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371369, 0.096435, 0.923464,
		0.750286, -0.554725, 0.359655,
		0.546951, 0.826427, 0.133654,
		47.661396, 33.414795, 25.268173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.584969, 32.776226, 25.813444>,  <47.278530, 32.836296, 25.174616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.584969, 32.776226, 25.813444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.542999, 33.167351, 25.740913>,  <47.517818, 33.402023, 25.697395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.542999, 33.167351, 25.740913>,  <47.584969, 32.776226, 25.813444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.542999, 33.167351, 25.740913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339370, 0.136184, 0.930743,
		0.934783, 0.159193, 0.317550,
		-0.104922, 0.977810, -0.181327,
		47.511524, 33.460693, 25.686516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.854614, 33.146656, 26.416279>,  <47.584969, 32.776226, 25.813444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.854614, 33.146656, 26.416279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.569168, 33.380459, 26.261822>,  <47.397900, 33.520741, 26.169147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.569168, 33.380459, 26.261822>,  <47.854614, 33.146656, 26.416279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.569168, 33.380459, 26.261822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299973, 0.243156, 0.922438,
		0.633061, 0.774100, 0.001815,
		-0.713618, 0.584503, -0.386141,
		47.355083, 33.555809, 26.145979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.913849, 33.789639, 26.732458>,  <47.854614, 33.146656, 26.416279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.913849, 33.789639, 26.732458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.540138, 33.695263, 26.625528>,  <47.315910, 33.638638, 26.561371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.540138, 33.695263, 26.625528>,  <47.913849, 33.789639, 26.732458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.540138, 33.695263, 26.625528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297310, 0.101650, 0.949355,
		-0.196816, 0.966437, -0.165116,
		-0.934275, -0.235939, -0.267325,
		47.259857, 33.624481, 26.545330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.534935, 34.338631, 26.952986>,  <47.913849, 33.789639, 26.732458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.534935, 34.338631, 26.952986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.286045, 34.030556, 26.896927>,  <47.136711, 33.845711, 26.863291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.286045, 34.030556, 26.896927>,  <47.534935, 34.338631, 26.952986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.286045, 34.030556, 26.896927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419343, 0.176750, 0.890456,
		-0.661047, 0.612838, -0.432951,
		-0.622229, -0.770188, -0.140149,
		47.099377, 33.799500, 26.854881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.926868, 34.623596, 27.111572>,  <47.534935, 34.338631, 26.952986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.926868, 34.623596, 27.111572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.858639, 34.229794, 27.127789>,  <46.817699, 33.993511, 27.137518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.858639, 34.229794, 27.127789>,  <46.926868, 34.623596, 27.111572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.858639, 34.229794, 27.127789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446764, 0.113947, 0.887366,
		-0.878241, 0.133250, -0.459280,
		-0.170575, -0.984510, 0.040542,
		46.807465, 33.934441, 27.139952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.227451, 34.581135, 27.136719>,  <46.926868, 34.623596, 27.111572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.227451, 34.581135, 27.136719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.362331, 34.240318, 27.296877>,  <46.443260, 34.035828, 27.392973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.362331, 34.240318, 27.296877>,  <46.227451, 34.581135, 27.136719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.362331, 34.240318, 27.296877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471207, 0.215447, 0.855305,
		-0.815021, -0.477080, -0.328840,
		0.337202, -0.852043, 0.400397,
		46.463493, 33.984707, 27.416996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.683701, 34.309811, 27.384192>,  <46.227451, 34.581135, 27.136719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.683701, 34.309811, 27.384192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.972622, 34.129967, 27.594383>,  <46.145973, 34.022060, 27.720499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.972622, 34.129967, 27.594383>,  <45.683701, 34.309811, 27.384192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.972622, 34.129967, 27.594383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449411, 0.272374, 0.850789,
		-0.525652, -0.850683, -0.005324,
		0.722301, -0.449612, 0.525480,
		46.189312, 33.995083, 27.752028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.390213, 33.831310, 27.906092>,  <45.683701, 34.309811, 27.384192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.390213, 33.831310, 27.906092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.760910, 33.892353, 28.043413>,  <45.983330, 33.928978, 28.125807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.760910, 33.892353, 28.043413>,  <45.390213, 33.831310, 27.906092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.760910, 33.892353, 28.043413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360641, 0.105282, 0.926744,
		0.105282, -0.982664, 0.152605,
		-0.926744, -0.152605, -0.343305,
		46.038933, 33.938133, 28.146404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.285069, 33.408283, 28.420189>,  <45.390213, 33.831310, 27.906092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.285069, 33.408283, 28.420189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.610493, 33.623726, 28.507847>,  <45.805748, 33.752991, 28.560442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.610493, 33.623726, 28.507847>,  <45.285069, 33.408283, 28.420189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.610493, 33.623726, 28.507847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282415, 0.036557, 0.958596,
		0.508292, -0.841766, 0.181851,
		0.813561, 0.538604, 0.219146,
		45.854561, 33.785309, 28.573591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.508438, 33.222477, 29.067833>,  <45.285069, 33.408283, 28.420189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.508438, 33.222477, 29.067833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.717758, 33.561573, 29.033209>,  <45.843349, 33.765030, 29.012434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.717758, 33.561573, 29.033209>,  <45.508438, 33.222477, 29.067833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.717758, 33.561573, 29.033209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164806, 0.200342, 0.965765,
		0.836060, -0.491120, 0.244552,
		0.523301, 0.847740, -0.086559,
		45.874748, 33.815895, 29.007240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.835667, 33.264889, 29.635338>,  <45.508438, 33.222477, 29.067833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.835667, 33.264889, 29.635338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.822159, 33.646389, 29.515860>,  <45.814056, 33.875290, 29.444172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.822159, 33.646389, 29.515860>,  <45.835667, 33.264889, 29.635338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.822159, 33.646389, 29.515860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236408, 0.282764, 0.929600,
		0.971067, 0.102004, 0.215927,
		-0.033766, 0.953750, -0.298698,
		45.812031, 33.932514, 29.426250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.280338, 33.583099, 30.081366>,  <45.835667, 33.264889, 29.635338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.280338, 33.583099, 30.081366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.039230, 33.860596, 29.923685>,  <45.894566, 34.027092, 29.829077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.039230, 33.860596, 29.923685>,  <46.280338, 33.583099, 30.081366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.039230, 33.860596, 29.923685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335231, 0.228143, 0.914096,
		0.724081, 0.683134, 0.095047,
		-0.602766, 0.693742, -0.394202,
		45.858402, 34.068718, 29.805424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.418514, 34.094177, 30.454624>,  <46.280338, 33.583099, 30.081366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.418514, 34.094177, 30.454624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.051735, 34.156006, 30.307480>,  <45.831669, 34.193104, 30.219194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.051735, 34.156006, 30.307480>,  <46.418514, 34.094177, 30.454624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.051735, 34.156006, 30.307480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317906, 0.274151, 0.907622,
		0.241139, 0.949184, -0.202243,
		-0.916945, 0.154569, -0.367860,
		45.776653, 34.202377, 30.197123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.326950, 34.749802, 30.715620>,  <46.418514, 34.094177, 30.454624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.326950, 34.749802, 30.715620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.996010, 34.552547, 30.608053>,  <45.797447, 34.434196, 30.543512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.996010, 34.552547, 30.608053>,  <46.326950, 34.749802, 30.715620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.996010, 34.552547, 30.608053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411383, 0.206014, 0.887875,
		-0.382439, 0.845209, -0.373312,
		-0.827347, -0.493133, -0.268917,
		45.747807, 34.404606, 30.527378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.783478, 35.269360, 30.916868>,  <46.326950, 34.749802, 30.715620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.783478, 35.269360, 30.916868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.577419, 34.928658, 30.878607>,  <45.453785, 34.724236, 30.855650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.577419, 34.928658, 30.878607>,  <45.783478, 35.269360, 30.916868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.577419, 34.928658, 30.878607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525706, 0.225846, 0.820138,
		-0.676950, 0.472773, -0.564113,
		-0.515142, -0.851751, -0.095653,
		45.422878, 34.673134, 30.849911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.056847, 35.464035, 31.015184>,  <45.783478, 35.269360, 30.916868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.056847, 35.464035, 31.015184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.081287, 35.072849, 31.095045>,  <45.095951, 34.838139, 31.142962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.081287, 35.072849, 31.095045>,  <45.056847, 35.464035, 31.015184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.081287, 35.072849, 31.095045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603171, 0.123193, 0.788041,
		-0.795268, -0.168576, -0.582350,
		0.061104, -0.977960, 0.199652,
		45.099617, 34.779461, 31.154942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.447845, 35.367004, 31.239534>,  <45.056847, 35.464035, 31.015184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.447845, 35.367004, 31.239534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.626720, 35.027245, 31.351633>,  <44.734047, 34.823387, 31.418892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.626720, 35.027245, 31.351633>,  <44.447845, 35.367004, 31.239534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.626720, 35.027245, 31.351633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494419, 0.026357, 0.868824,
		-0.745367, -0.527088, -0.408174,
		0.447189, -0.849402, 0.280248,
		44.760876, 34.772423, 31.435707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.915123, 34.876686, 31.372869>,  <44.447845, 35.367004, 31.239534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.915123, 34.876686, 31.372869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.257423, 34.809696, 31.568682>,  <44.462803, 34.769501, 31.686169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.257423, 34.809696, 31.568682>,  <43.915123, 34.876686, 31.372869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.257423, 34.809696, 31.568682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501141, -0.033067, 0.864734,
		-0.128641, -0.985320, -0.112230,
		0.855750, -0.167483, 0.489531,
		44.514149, 34.759453, 31.715542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.735661, 34.694675, 31.974070>,  <43.915123, 34.876686, 31.372869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.735661, 34.694675, 31.974070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.123917, 34.722870, 32.066059>,  <44.356869, 34.739784, 32.121254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.123917, 34.722870, 32.066059>,  <43.735661, 34.694675, 31.974070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.123917, 34.722870, 32.066059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232973, 0.037698, 0.971752,
		0.059837, -0.996799, 0.053015,
		0.970641, 0.070498, 0.229972,
		44.415108, 34.744015, 32.135052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.968021, 34.158669, 32.519638>,  <43.735661, 34.694675, 31.974070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.968021, 34.158669, 32.519638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.225258, 34.464504, 32.536789>,  <44.379601, 34.648006, 32.547077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.225258, 34.464504, 32.536789>,  <43.968021, 34.158669, 32.519638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.225258, 34.464504, 32.536789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242147, 0.149914, 0.958588,
		0.726498, -0.626840, 0.281552,
		0.643090, 0.764589, 0.042875,
		44.418186, 34.693882, 32.549652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.358143, 34.088219, 33.031609>,  <43.968021, 34.158669, 32.519638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.358143, 34.088219, 33.031609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.393230, 34.481693, 32.968784>,  <44.414284, 34.717777, 32.931091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.393230, 34.481693, 32.968784>,  <44.358143, 34.088219, 33.031609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.393230, 34.481693, 32.968784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163941, 0.169774, 0.971751,
		0.982563, -0.059490, 0.176158,
		0.087717, 0.983686, -0.157060,
		44.419544, 34.776798, 32.921665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.530937, 34.243618, 33.651356>,  <44.358143, 34.088219, 33.031609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.530937, 34.243618, 33.651356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.448441, 34.601833, 33.493637>,  <44.398945, 34.816765, 33.399006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.448441, 34.601833, 33.493637>,  <44.530937, 34.243618, 33.651356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.448441, 34.601833, 33.493637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230632, 0.347116, 0.909021,
		0.950934, 0.278412, 0.134953,
		-0.206238, 0.895543, -0.394295,
		44.386570, 34.870495, 33.375347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.957909, 34.751862, 34.033909>,  <44.530937, 34.243618, 33.651356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.957909, 34.751862, 34.033909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.645679, 34.946140, 33.876530>,  <44.458340, 35.062706, 33.782101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.645679, 34.946140, 33.876530>,  <44.957909, 34.751862, 34.033909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.645679, 34.946140, 33.876530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083219, 0.543104, 0.835531,
		0.619496, 0.684939, -0.383515,
		-0.780577, 0.485692, -0.393451,
		44.411507, 35.091846, 33.758495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.245811, 35.261452, 34.376305>,  <44.957909, 34.751862, 34.033909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.245811, 35.261452, 34.376305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.582943, 35.308434, 34.166222>,  <45.785221, 35.336624, 34.040173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.582943, 35.308434, 34.166222>,  <45.245811, 35.261452, 34.376305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.582943, 35.308434, 34.166222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514694, 0.109212, 0.850390,
		0.157243, -0.987055, 0.031593,
		0.842831, 0.117457, -0.525204,
		45.835793, 35.343670, 34.008659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.754715, 34.900887, 34.820400>,  <45.245811, 35.261452, 34.376305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.754715, 34.900887, 34.820400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.946835, 35.176559, 34.603386>,  <46.062107, 35.341961, 34.473175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.946835, 35.176559, 34.603386>,  <45.754715, 34.900887, 34.820400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.946835, 35.176559, 34.603386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563438, 0.231623, 0.793025,
		0.672201, -0.686572, -0.277063,
		0.480295, 0.689181, -0.542538,
		46.090923, 35.383312, 34.440624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.487263, 34.784443, 34.848206>,  <45.754715, 34.900887, 34.820400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.487263, 34.784443, 34.848206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.384960, 35.166454, 34.788185>,  <46.323578, 35.395660, 34.752171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.384960, 35.166454, 34.788185>,  <46.487263, 34.784443, 34.848206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.384960, 35.166454, 34.788185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626312, 0.281926, 0.726809,
		0.736424, 0.091907, -0.670248,
		-0.255759, 0.955024, -0.150055,
		46.308231, 35.452961, 34.743168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.153542, 34.940155, 34.986069>,  <46.487263, 34.784443, 34.848206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.153542, 34.940155, 34.986069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.538116, 34.830212, 34.989807>,  <47.768864, 34.764244, 34.992050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.538116, 34.830212, 34.989807>,  <47.153542, 34.940155, 34.986069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.538116, 34.830212, 34.989807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274073, 0.954776, -0.115266,
		0.022761, 0.113382, 0.993291,
		0.961440, -0.274858, 0.009343,
		47.826550, 34.747753, 34.992611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.704044, 32.504608, 44.933529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.347000, 32.658127, 44.838921>,  <36.132774, 32.750237, 44.782158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.347000, 32.658127, 44.838921>,  <36.704044, 32.504608, 44.933529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347000, 32.658127, 44.838921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341829, 0.234131, -0.910129,
		-0.293929, -0.893243, -0.340181,
		-0.892614, 0.383797, -0.236519,
		36.079216, 32.773266, 44.767963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541245, 32.187016, 44.228439>,  <36.704044, 32.504608, 44.933529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541245, 32.187016, 44.228439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.297318, 32.500717, 44.274147>,  <36.150959, 32.688938, 44.301571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.297318, 32.500717, 44.274147>,  <36.541245, 32.187016, 44.228439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297318, 32.500717, 44.274147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194422, 0.287813, -0.937744,
		-0.768321, -0.549640, -0.327992,
		-0.609821, 0.784258, 0.114270,
		36.114372, 32.735996, 44.308430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293674, 32.285896, 43.525238>,  <36.541245, 32.187016, 44.228439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293674, 32.285896, 43.525238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.182735, 32.631618, 43.693073>,  <36.116173, 32.839050, 43.793774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.182735, 32.631618, 43.693073>,  <36.293674, 32.285896, 43.525238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.182735, 32.631618, 43.693073> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107030, 0.461800, -0.880503,
		-0.954790, -0.199294, -0.220585,
		-0.277345, 0.864305, 0.419591,
		36.099533, 32.890911, 43.818951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719383, 32.600883, 43.088287>,  <36.293674, 32.285896, 43.525238>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719383, 32.600883, 43.088287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.874504, 32.915787, 43.280052>,  <35.967575, 33.104729, 43.395111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.874504, 32.915787, 43.280052>,  <35.719383, 32.600883, 43.088287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874504, 32.915787, 43.280052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037752, 0.533250, -0.845115,
		-0.920969, 0.309640, 0.236516,
		0.387804, 0.787253, 0.479417,
		35.990845, 33.151962, 43.423878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308601, 33.058594, 42.900860>,  <35.719383, 32.600883, 43.088287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308601, 33.058594, 42.900860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.602684, 33.294201, 43.035038>,  <35.779133, 33.435566, 43.115543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.602684, 33.294201, 43.035038>,  <35.308601, 33.058594, 42.900860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.602684, 33.294201, 43.035038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178746, 0.645826, -0.742266,
		-0.653850, 0.485760, 0.580101,
		0.735207, 0.589021, 0.335446,
		35.823246, 33.470909, 43.135674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.093361, 33.856255, 42.849529>,  <35.308601, 33.058594, 42.900860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.093361, 33.856255, 42.849529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.492321, 33.844185, 42.875679>,  <35.731697, 33.836945, 42.891369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.492321, 33.844185, 42.875679>,  <35.093361, 33.856255, 42.849529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492321, 33.844185, 42.875679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069811, 0.627338, -0.775611,
		-0.017609, 0.778162, 0.627817,
		0.997405, -0.030171, 0.065372,
		35.791542, 33.835133, 42.895290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331333, 34.540310, 42.797226>,  <35.093361, 33.856255, 42.849529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.331333, 34.540310, 42.797226> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.640533, 34.306000, 42.699787>,  <35.826054, 34.165413, 42.641323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.640533, 34.306000, 42.699787>,  <35.331333, 34.540310, 42.797226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640533, 34.306000, 42.699787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061017, 0.450840, -0.890517,
		0.631461, 0.673509, 0.384242,
		0.773003, -0.585772, -0.243592,
		35.872433, 34.130268, 42.626709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946037, 35.004742, 42.725998>,  <35.331333, 34.540310, 42.797226>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946037, 35.004742, 42.725998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.002380, 34.666645, 42.519806>,  <36.036186, 34.463787, 42.396091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.002380, 34.666645, 42.519806>,  <35.946037, 35.004742, 42.725998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002380, 34.666645, 42.519806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143821, 0.532620, -0.834045,
		0.979528, 0.043344, 0.196587,
		0.140857, -0.845244, -0.515482,
		36.044636, 34.413071, 42.365162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.550552, 35.119358, 42.227043>,  <35.946037, 35.004742, 42.725998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.550552, 35.119358, 42.227043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.327805, 34.826637, 42.069885>,  <36.194157, 34.651005, 41.975590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.327805, 34.826637, 42.069885>,  <36.550552, 35.119358, 42.227043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.327805, 34.826637, 42.069885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037933, 0.450124, -0.892160,
		0.829736, -0.511716, -0.222899,
		-0.556865, -0.731802, -0.392895,
		36.160744, 34.607098, 41.952015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780231, 35.114666, 41.601158>,  <36.550552, 35.119358, 42.227043>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.780231, 35.114666, 41.601158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.468555, 34.868317, 41.554562>,  <36.281551, 34.720509, 41.526604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.468555, 34.868317, 41.554562>,  <36.780231, 35.114666, 41.601158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468555, 34.868317, 41.554562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083913, 0.286676, -0.954346,
		0.621149, -0.733839, -0.275054,
		-0.779187, -0.615871, -0.116489,
		36.234798, 34.683556, 41.519615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995110, 34.639870, 41.096172>,  <36.780231, 35.114666, 41.601158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995110, 34.639870, 41.096172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.598923, 34.692577, 41.112225>,  <36.361210, 34.724201, 41.121857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.598923, 34.692577, 41.112225>,  <36.995110, 34.639870, 41.096172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598923, 34.692577, 41.112225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026026, 0.107059, -0.993912,
		-0.135263, -0.985482, -0.102609,
		-0.990468, 0.131768, 0.040130,
		36.301781, 34.732109, 41.124264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782894, 34.200058, 40.604397>,  <36.995110, 34.639870, 41.096172>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782894, 34.200058, 40.604397> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.501442, 34.478249, 40.662647>,  <36.332569, 34.645164, 40.697598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.501442, 34.478249, 40.662647>,  <36.782894, 34.200058, 40.604397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501442, 34.478249, 40.662647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023856, 0.181711, -0.983062,
		-0.710163, -0.695189, -0.111267,
		-0.703633, 0.695480, 0.145629,
		36.290352, 34.686893, 40.706337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291168, 34.018929, 40.103611>,  <36.782894, 34.200058, 40.604397>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291168, 34.018929, 40.103611> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.187222, 34.398243, 40.176517>,  <36.124855, 34.625832, 40.220261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.187222, 34.398243, 40.176517>,  <36.291168, 34.018929, 40.103611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.187222, 34.398243, 40.176517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061169, 0.204534, -0.976946,
		-0.963706, -0.242724, -0.111156,
		-0.259864, 0.948288, 0.182263,
		36.109261, 34.682728, 40.231197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814178, 34.240189, 39.555294>,  <36.291168, 34.018929, 40.103611>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814178, 34.240189, 39.555294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.962250, 34.589027, 39.683300>,  <36.051090, 34.798332, 39.760105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.962250, 34.589027, 39.683300>,  <35.814178, 34.240189, 39.555294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.962250, 34.589027, 39.683300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349453, 0.188458, -0.917805,
		-0.860728, 0.451579, -0.234996,
		0.370175, 0.872101, 0.320017,
		36.073303, 34.850658, 39.779305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632355, 34.707371, 39.013424>,  <35.814178, 34.240189, 39.555294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.632355, 34.707371, 39.013424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.912571, 34.896156, 39.227524>,  <36.080700, 35.009430, 39.355984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.912571, 34.896156, 39.227524>,  <35.632355, 34.707371, 39.013424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912571, 34.896156, 39.227524> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258321, 0.531465, -0.806731,
		-0.665215, 0.703414, 0.250394,
		0.700542, 0.471967, 0.535245,
		36.122734, 35.037746, 39.388096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.726322, 35.460770, 38.738964>,  <35.632355, 34.707371, 39.013424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.726322, 35.460770, 38.738964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.044106, 35.458866, 38.981884>,  <36.234776, 35.457726, 39.127636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.044106, 35.458866, 38.981884>,  <35.726322, 35.460770, 38.738964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044106, 35.458866, 38.981884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576172, 0.322005, -0.751225,
		-0.191980, 0.946726, 0.258560,
		0.794462, -0.004755, 0.607295,
		36.282444, 35.457439, 39.164074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917965, 36.080517, 38.661076>,  <35.726322, 35.460770, 38.738964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917965, 36.080517, 38.661076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.225426, 35.845509, 38.762253>,  <36.409904, 35.704502, 38.822960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.225426, 35.845509, 38.762253>,  <35.917965, 36.080517, 38.661076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.225426, 35.845509, 38.762253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535966, 0.375707, -0.756032,
		0.349154, 0.716700, 0.603683,
		0.768656, -0.587525, 0.252947,
		36.456024, 35.669250, 38.838139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431519, 36.556889, 38.766308>,  <35.917965, 36.080517, 38.661076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431519, 36.556889, 38.766308> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.587765, 36.200150, 38.675072>,  <36.681511, 35.986107, 38.620331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.587765, 36.200150, 38.675072>,  <36.431519, 36.556889, 38.766308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587765, 36.200150, 38.675072> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516343, 0.417388, -0.747781,
		0.762110, 0.174322, 0.623539,
		0.390612, -0.891852, -0.228086,
		36.704948, 35.932594, 38.606647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144974, 36.699486, 38.586594>,  <36.431519, 36.556889, 38.766308>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144974, 36.699486, 38.586594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.051159, 36.356060, 38.404224>,  <36.994869, 36.150005, 38.294804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.051159, 36.356060, 38.404224>,  <37.144974, 36.699486, 38.586594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051159, 36.356060, 38.404224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276004, 0.390891, -0.878081,
		0.932102, -0.331777, 0.145289,
		-0.234535, -0.858562, -0.455922,
		36.980797, 36.098492, 38.267448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607151, 36.695217, 37.985779>,  <37.144974, 36.699486, 38.586594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.607151, 36.695217, 37.985779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.326283, 36.422352, 37.904190>,  <37.157761, 36.258633, 37.855236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.326283, 36.422352, 37.904190>,  <37.607151, 36.695217, 37.985779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.326283, 36.422352, 37.904190> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005166, 0.281590, -0.959521,
		0.711987, -0.674804, -0.194201,
		-0.702174, -0.682162, -0.203975,
		37.115631, 36.217705, 37.842999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900150, 36.294907, 37.453262>,  <37.607151, 36.695217, 37.985779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900150, 36.294907, 37.453262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.513439, 36.207554, 37.400127>,  <37.281410, 36.155144, 37.368244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.513439, 36.207554, 37.400127>,  <37.900150, 36.294907, 37.453262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513439, 36.207554, 37.400127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098698, 0.160467, -0.982094,
		0.235788, -0.962580, -0.133582,
		-0.966780, -0.218382, -0.132841,
		37.223404, 36.142040, 37.360275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.869434, 35.731480, 37.071709>,  <37.900150, 36.294907, 37.453262>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.869434, 35.731480, 37.071709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.531830, 35.939976, 37.021175>,  <37.329269, 36.065075, 36.990856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.531830, 35.939976, 37.021175>,  <37.869434, 35.731480, 37.071709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.531830, 35.939976, 37.021175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118792, -0.048014, -0.991758,
		-0.523012, -0.852057, -0.021396,
		-0.844006, 0.521243, -0.126329,
		37.278629, 36.096348, 36.983276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591908, 35.561222, 37.433052>,  <37.869434, 35.731480, 37.071709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591908, 35.561222, 37.433052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.975082, 35.665405, 37.384846>,  <39.204987, 35.727913, 37.355923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.975082, 35.665405, 37.384846>,  <38.591908, 35.561222, 37.433052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.975082, 35.665405, 37.384846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166693, -0.163118, 0.972423,
		0.233615, -0.951607, -0.199672,
		0.957934, 0.260457, -0.120519,
		39.262463, 35.743542, 37.348690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.856400, 35.073372, 37.704338>,  <38.591908, 35.561222, 37.433052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.856400, 35.073372, 37.704338> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.135471, 35.359894, 37.709164>,  <39.302914, 35.531807, 37.712059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.135471, 35.359894, 37.709164>,  <38.856400, 35.073372, 37.704338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.135471, 35.359894, 37.709164> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202629, -0.213454, 0.955709,
		0.687154, -0.664337, -0.294068,
		0.697682, 0.716306, 0.012062,
		39.344776, 35.574787, 37.712784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.460640, 34.729023, 38.008045>,  <38.856400, 35.073372, 37.704338>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.460640, 34.729023, 38.008045> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.465862, 35.122513, 38.079731>,  <39.468994, 35.358604, 38.122742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.465862, 35.122513, 38.079731>,  <39.460640, 34.729023, 38.008045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.465862, 35.122513, 38.079731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360652, -0.171802, 0.916741,
		0.932609, 0.052668, -0.357024,
		0.013055, 0.983723, 0.179219,
		39.469780, 35.417629, 38.133495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.042278, 34.892685, 38.403282>,  <39.460640, 34.729023, 38.008045>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.042278, 34.892685, 38.403282> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.818253, 35.218575, 38.463345>,  <39.683838, 35.414108, 38.499382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.818253, 35.218575, 38.463345>,  <40.042278, 34.892685, 38.403282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818253, 35.218575, 38.463345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190357, -0.049842, 0.980449,
		0.806280, 0.577702, -0.127174,
		-0.560069, 0.814724, 0.150156,
		39.650230, 35.462994, 38.508392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.361591, 35.310501, 38.871468>,  <40.042278, 34.892685, 38.403282>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.361591, 35.310501, 38.871468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.979855, 35.424301, 38.907906>,  <39.750813, 35.492580, 38.929768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.979855, 35.424301, 38.907906>,  <40.361591, 35.310501, 38.871468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.979855, 35.424301, 38.907906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058869, -0.119838, 0.991047,
		0.292871, 0.951156, 0.097618,
		-0.954338, 0.284502, 0.091090,
		39.693554, 35.509651, 38.935234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.339359, 35.467094, 39.528294>,  <40.361591, 35.310501, 38.871468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.339359, 35.467094, 39.528294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.951534, 35.500134, 39.436096>,  <39.718838, 35.519958, 39.380775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.951534, 35.500134, 39.436096>,  <40.339359, 35.467094, 39.528294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.951534, 35.500134, 39.436096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226940, 0.050267, 0.972611,
		0.091922, 0.995315, -0.029992,
		-0.969561, 0.082598, -0.230497,
		39.660667, 35.524914, 39.366947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.038349, 36.042034, 39.906033>,  <40.339359, 35.467094, 39.528294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.038349, 36.042034, 39.906033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.734295, 35.798531, 39.815163>,  <39.551865, 35.652428, 39.760639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.734295, 35.798531, 39.815163>,  <40.038349, 36.042034, 39.906033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.734295, 35.798531, 39.815163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279499, -0.009287, 0.960101,
		-0.586583, 0.793298, -0.163089,
		-0.760132, -0.608762, -0.227173,
		39.506256, 35.615902, 39.747009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518059, 36.262127, 40.336555>,  <40.038349, 36.042034, 39.906033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.518059, 36.262127, 40.336555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.399139, 35.894699, 40.232368>,  <39.327789, 35.674244, 40.169857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.399139, 35.894699, 40.232368>,  <39.518059, 36.262127, 40.336555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399139, 35.894699, 40.232368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302997, -0.167936, 0.938078,
		-0.905433, 0.357806, -0.228398,
		-0.297294, -0.918571, -0.260469,
		39.309952, 35.619129, 40.154228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.900818, 36.191917, 40.617989>,  <39.518059, 36.262127, 40.336555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.900818, 36.191917, 40.617989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.033272, 35.818386, 40.563858>,  <39.112743, 35.594269, 40.531380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.033272, 35.818386, 40.563858>,  <38.900818, 36.191917, 40.617989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.033272, 35.818386, 40.563858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157548, -0.196120, 0.967841,
		-0.930337, -0.299169, -0.212065,
		0.331138, -0.933828, -0.135324,
		39.132614, 35.538239, 40.523262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391525, 35.783623, 40.897877>,  <38.900818, 36.191917, 40.617989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.391525, 35.783623, 40.897877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.722450, 35.559128, 40.888355>,  <38.921005, 35.424431, 40.882641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.722450, 35.559128, 40.888355>,  <38.391525, 35.783623, 40.897877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722450, 35.559128, 40.888355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268053, -0.431663, 0.861287,
		-0.493662, -0.706173, -0.507561,
		0.827312, -0.561238, -0.023804,
		38.970646, 35.390759, 40.881214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159149, 35.147655, 41.162312>,  <38.391525, 35.783623, 40.897877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.159149, 35.147655, 41.162312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.558170, 35.128742, 41.182941>,  <38.797581, 35.117393, 41.195320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.558170, 35.128742, 41.182941>,  <38.159149, 35.147655, 41.162312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558170, 35.128742, 41.182941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069716, -0.608780, 0.790270,
		-0.005969, -0.791928, -0.610585,
		0.997549, -0.047285, 0.051576,
		38.857433, 35.114555, 41.198414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.322697, 34.410305, 41.230995>,  <38.159149, 35.147655, 41.162312>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.322697, 34.410305, 41.230995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.647938, 34.611736, 41.347801>,  <38.843082, 34.732597, 41.417885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.647938, 34.611736, 41.347801>,  <38.322697, 34.410305, 41.230995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.647938, 34.611736, 41.347801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127378, -0.643391, 0.754866,
		0.568015, -0.576587, -0.587288,
		0.813102, 0.503583, 0.292011,
		38.891869, 34.762810, 41.435406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946251, 33.928398, 41.344803>,  <38.322697, 34.410305, 41.230995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946251, 33.928398, 41.344803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.026825, 34.254158, 41.562489>,  <39.075169, 34.449615, 41.693100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.026825, 34.254158, 41.562489>,  <38.946251, 33.928398, 41.344803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026825, 34.254158, 41.562489> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000668, -0.555492, 0.831522,
		0.979502, -0.167859, -0.111350,
		0.201432, 0.814403, 0.544217,
		39.087254, 34.498478, 41.725754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516514, 33.692417, 41.763363>,  <38.946251, 33.928398, 41.344803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516514, 33.692417, 41.763363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.366764, 34.024075, 41.929432>,  <39.276913, 34.223068, 42.029076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.366764, 34.024075, 41.929432>,  <39.516514, 33.692417, 41.763363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.366764, 34.024075, 41.929432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104048, -0.482470, 0.869711,
		0.921422, 0.282398, 0.266894,
		-0.374373, 0.829140, 0.415176,
		39.254452, 34.272816, 42.053986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.828236, 33.619621, 42.425556>,  <39.516514, 33.692417, 41.763363>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.828236, 33.619621, 42.425556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.500660, 33.849094, 42.431484>,  <39.304115, 33.986778, 42.435040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.500660, 33.849094, 42.431484>,  <39.828236, 33.619621, 42.425556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.500660, 33.849094, 42.431484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175635, -0.275137, 0.945226,
		0.546341, 0.771481, 0.326080,
		-0.818941, 0.573686, 0.014820,
		39.254978, 34.021202, 42.435928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883343, 33.988495, 42.985310>,  <39.828236, 33.619621, 42.425556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.883343, 33.988495, 42.985310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.496689, 33.975105, 42.883717>,  <39.264698, 33.967072, 42.822762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.496689, 33.975105, 42.883717>,  <39.883343, 33.988495, 42.985310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.496689, 33.975105, 42.883717> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236895, -0.260526, 0.935952,
		-0.097501, 0.964886, 0.243902,
		-0.966630, -0.033477, -0.253978,
		39.206699, 33.965061, 42.807522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627151, 34.089050, 43.554676>,  <39.883343, 33.988495, 42.985310>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.627151, 34.089050, 43.554676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.307865, 33.961418, 43.350311>,  <39.116291, 33.884838, 43.227692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.307865, 33.961418, 43.350311>,  <39.627151, 34.089050, 43.554676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.307865, 33.961418, 43.350311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454643, -0.237278, 0.858487,
		-0.395155, 0.917544, 0.044332,
		-0.798218, -0.319080, -0.510916,
		39.068401, 33.865696, 43.197037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142731, 34.279396, 44.080154>,  <39.627151, 34.089050, 43.554676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142731, 34.279396, 44.080154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.948582, 34.018585, 43.847164>,  <38.832092, 33.862099, 43.707371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.948582, 34.018585, 43.847164>,  <39.142731, 34.279396, 44.080154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.948582, 34.018585, 43.847164> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532602, -0.307828, 0.788402,
		-0.693360, 0.692895, -0.197859,
		-0.485372, -0.652027, -0.582473,
		38.802971, 33.822979, 43.672421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.088371, 34.183781, 44.284489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.240170, 33.870819, 44.086975>,  <38.331249, 33.683041, 43.968468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.240170, 33.870819, 44.086975>,  <38.088371, 34.183781, 44.284489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240170, 33.870819, 44.086975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543162, -0.620462, 0.565687,
		-0.748971, 0.053527, -0.660437,
		0.379497, -0.782407, -0.493782,
		38.354019, 33.636097, 43.938839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.509903, 33.711254, 44.256298>,  <38.088371, 34.183781, 44.284489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.509903, 33.711254, 44.256298> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.847771, 33.505756, 44.196163>,  <38.050491, 33.382458, 44.160080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.847771, 33.505756, 44.196163>,  <37.509903, 33.711254, 44.256298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.847771, 33.505756, 44.196163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314774, -0.703879, 0.636767,
		-0.432954, -0.490535, -0.756258,
		0.844670, -0.513741, -0.150340,
		38.101173, 33.351635, 44.151062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228622, 33.002769, 44.085144>,  <37.509903, 33.711254, 44.256298>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.228622, 33.002769, 44.085144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.605923, 32.946003, 44.205235>,  <37.832302, 32.911942, 44.277290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.605923, 32.946003, 44.205235>,  <37.228622, 33.002769, 44.085144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.605923, 32.946003, 44.205235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302431, -0.740526, 0.600131,
		0.137160, -0.656873, -0.741421,
		0.943251, -0.141915, 0.300229,
		37.888897, 32.903427, 44.295303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535576, 32.277016, 43.959362>,  <37.228622, 33.002769, 44.085144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.535576, 32.277016, 43.959362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.718311, 32.426273, 44.282364>,  <37.827953, 32.515827, 44.476166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.718311, 32.426273, 44.282364>,  <37.535576, 32.277016, 43.959362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.718311, 32.426273, 44.282364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361750, -0.751387, 0.551864,
		0.812673, -0.544227, -0.208278,
		0.456837, 0.373140, 0.807506,
		37.855362, 32.538216, 44.524616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983116, 31.752432, 44.202408>,  <37.535576, 32.277016, 43.959362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983116, 31.752432, 44.202408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.953640, 32.023281, 44.495277>,  <37.935955, 32.185791, 44.670998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.953640, 32.023281, 44.495277>,  <37.983116, 31.752432, 44.202408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953640, 32.023281, 44.495277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193222, -0.729949, 0.655622,
		0.978384, -0.093160, 0.184624,
		-0.073688, 0.677124, 0.732171,
		37.931534, 32.226418, 44.714928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082695, 31.323269, 44.712433>,  <37.983116, 31.752432, 44.202408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082695, 31.323269, 44.712433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.003304, 31.660120, 44.913002>,  <37.955669, 31.862230, 45.033344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.003304, 31.660120, 44.913002>,  <38.082695, 31.323269, 44.712433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003304, 31.660120, 44.913002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187282, -0.534763, 0.823987,
		0.962045, 0.069637, 0.263855,
		-0.198480, 0.842128, 0.501424,
		37.943760, 31.912758, 45.063431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410000, 31.254314, 45.334900>,  <38.082695, 31.323269, 44.712433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.410000, 31.254314, 45.334900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.123947, 31.523556, 45.410278>,  <37.952316, 31.685101, 45.455505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.123947, 31.523556, 45.410278>,  <38.410000, 31.254314, 45.334900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.123947, 31.523556, 45.410278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144196, -0.405862, 0.902487,
		0.683950, 0.618229, 0.387306,
		-0.715136, 0.673104, 0.188443,
		37.909405, 31.725487, 45.466812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666042, 31.497314, 45.945534>,  <38.410000, 31.254314, 45.334900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.666042, 31.497314, 45.945534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.272469, 31.565361, 45.923882>,  <38.036324, 31.606190, 45.910892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.272469, 31.565361, 45.923882>,  <38.666042, 31.497314, 45.945534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272469, 31.565361, 45.923882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115430, -0.374967, 0.919824,
		0.136181, 0.911296, 0.388581,
		-0.983936, 0.170116, -0.054128,
		37.977287, 31.616396, 45.907642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557724, 31.717850, 46.546757>,  <38.666042, 31.497314, 45.945534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557724, 31.717850, 46.546757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.201466, 31.608671, 46.401295>,  <37.987709, 31.543165, 46.314018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.201466, 31.608671, 46.401295>,  <38.557724, 31.717850, 46.546757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201466, 31.608671, 46.401295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200058, -0.482981, 0.852471,
		-0.408317, 0.832004, 0.375561,
		-0.890648, -0.272945, -0.363658,
		37.934273, 31.526787, 46.292198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239109, 31.606390, 47.213718>,  <38.557724, 31.717850, 46.546757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239109, 31.606390, 47.213718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.004562, 31.455347, 46.927059>,  <37.863834, 31.364721, 46.755062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.004562, 31.455347, 46.927059>,  <38.239109, 31.606390, 47.213718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004562, 31.455347, 46.927059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379171, -0.653848, 0.654761,
		-0.715820, 0.655665, 0.240221,
		-0.586371, -0.377606, -0.716647,
		37.828651, 31.342066, 46.712067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486607, 31.699404, 47.387051>,  <38.239109, 31.606390, 47.213718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.486607, 31.699404, 47.387051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.515846, 31.390875, 47.134159>,  <37.533390, 31.205757, 46.982422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.515846, 31.390875, 47.134159>,  <37.486607, 31.699404, 47.387051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.515846, 31.390875, 47.134159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326463, -0.617508, 0.715615,
		-0.942379, 0.154092, -0.296945,
		0.073095, -0.771323, -0.632233,
		37.537773, 31.159477, 46.944489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.911205, 31.306133, 47.519855>,  <37.486607, 31.699404, 47.387051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.911205, 31.306133, 47.519855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.166515, 31.058237, 47.337196>,  <37.319702, 30.909498, 47.227600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.166515, 31.058237, 47.337196>,  <36.911205, 31.306133, 47.519855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166515, 31.058237, 47.337196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074807, -0.640318, 0.764459,
		-0.766165, -0.453775, -0.455060,
		0.638275, -0.619743, -0.456644,
		37.357998, 30.872314, 47.200203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524502, 30.645723, 47.583218>,  <36.911205, 31.306133, 47.519855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524502, 30.645723, 47.583218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.898975, 30.556267, 47.474743>,  <37.123661, 30.502592, 47.409657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.898975, 30.556267, 47.474743>,  <36.524502, 30.645723, 47.583218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898975, 30.556267, 47.474743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021519, -0.733588, 0.679254,
		-0.350853, -0.641742, -0.681960,
		0.936183, -0.223643, -0.271191,
		37.179829, 30.489174, 47.393387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524467, 30.003622, 47.528408>,  <36.524502, 30.645723, 47.583218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524467, 30.003622, 47.528408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.909111, 30.076820, 47.610214>,  <37.139896, 30.120739, 47.659298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.909111, 30.076820, 47.610214>,  <36.524467, 30.003622, 47.528408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.909111, 30.076820, 47.610214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000156, -0.745592, 0.666402,
		0.274433, -0.640785, -0.716995,
		0.961606, 0.182994, 0.204515,
		37.197594, 30.131720, 47.671570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.871395, 29.373175, 47.534145>,  <36.524467, 30.003622, 47.528408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.871395, 29.373175, 47.534145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.114742, 29.605408, 47.750595>,  <37.260750, 29.744747, 47.880463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.114742, 29.605408, 47.750595>,  <36.871395, 29.373175, 47.534145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114742, 29.605408, 47.750595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044483, -0.705679, 0.707133,
		0.792408, -0.406126, -0.455138,
		0.608368, 0.580584, 0.541120,
		37.297253, 29.779583, 47.912930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396240, 28.951061, 47.739937>,  <36.871395, 29.373175, 47.534145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396240, 28.951061, 47.739937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.399185, 29.265640, 47.986984>,  <37.400951, 29.454388, 48.135212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.399185, 29.265640, 47.986984>,  <37.396240, 28.951061, 47.739937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.399185, 29.265640, 47.986984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407839, -0.566291, 0.716228,
		0.913024, 0.246614, -0.324913,
		0.007364, 0.786445, 0.617616,
		37.401394, 29.501574, 48.172268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.038399, 28.978077, 48.123341>,  <37.396240, 28.951061, 47.739937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.038399, 28.978077, 48.123341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.780003, 29.191364, 48.341835>,  <37.624966, 29.319336, 48.472931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.780003, 29.191364, 48.341835>,  <38.038399, 28.978077, 48.123341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780003, 29.191364, 48.341835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256543, -0.522305, 0.813255,
		0.718943, 0.665489, 0.200612,
		-0.645992, 0.533219, 0.546234,
		37.586205, 29.351330, 48.505707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440823, 29.229807, 48.779152>,  <38.038399, 28.978077, 48.123341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.440823, 29.229807, 48.779152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.044643, 29.195272, 48.822170>,  <37.806938, 29.174553, 48.847980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.044643, 29.195272, 48.822170>,  <38.440823, 29.229807, 48.779152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044643, 29.195272, 48.822170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135575, -0.466660, 0.873984,
		-0.025270, 0.880213, 0.473906,
		-0.990445, -0.086335, 0.107542,
		37.747509, 29.169373, 48.854431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416088, 29.051510, 49.524117>,  <38.440823, 29.229807, 48.779152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.416088, 29.051510, 49.524117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.027374, 29.011786, 49.438541>,  <37.794144, 28.987951, 49.387196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.027374, 29.011786, 49.438541>,  <38.416088, 29.051510, 49.524117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027374, 29.011786, 49.438541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123523, -0.558412, 0.820316,
		-0.200929, 0.823598, 0.530390,
		-0.971787, -0.099310, -0.213935,
		37.735840, 28.981993, 49.374359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085442, 29.118000, 50.152992>,  <38.416088, 29.051510, 49.524117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085442, 29.118000, 50.152992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.809620, 28.943430, 49.921803>,  <37.644127, 28.838688, 49.783089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.809620, 28.943430, 49.921803>,  <38.085442, 29.118000, 50.152992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.809620, 28.943430, 49.921803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413260, -0.418266, 0.808869,
		-0.594757, 0.796610, 0.108060,
		-0.689551, -0.436424, -0.577974,
		37.602757, 28.812502, 49.748409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415710, 29.159912, 50.525375>,  <38.085442, 29.118000, 50.152992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.415710, 29.159912, 50.525375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.371052, 28.875906, 50.247261>,  <37.344257, 28.705503, 50.080395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.371052, 28.875906, 50.247261>,  <37.415710, 29.159912, 50.525375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371052, 28.875906, 50.247261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476912, -0.575536, 0.664314,
		-0.871831, 0.405757, -0.274356,
		-0.111648, -0.710013, -0.695281,
		37.337559, 28.662903, 50.038677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766392, 29.000841, 50.627781>,  <37.415710, 29.159912, 50.525375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766392, 29.000841, 50.627781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.990944, 28.708052, 50.473343>,  <37.125675, 28.532377, 50.380680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.990944, 28.708052, 50.473343>,  <36.766392, 29.000841, 50.627781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.990944, 28.708052, 50.473343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227829, -0.585214, 0.778215,
		-0.795580, -0.348910, -0.495292,
		0.561379, -0.731974, -0.386093,
		37.159359, 28.488461, 50.357513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.437077, 28.327583, 50.717781>,  <36.766392, 29.000841, 50.627781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.437077, 28.327583, 50.717781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.834362, 28.300575, 50.679890>,  <37.072731, 28.284370, 50.657154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.834362, 28.300575, 50.679890>,  <36.437077, 28.327583, 50.717781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.834362, 28.300575, 50.679890> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029687, -0.640237, 0.767603,
		-0.112477, -0.765204, -0.633886,
		0.993211, -0.067520, -0.094729,
		37.132324, 28.280319, 50.651470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732464, 28.466917, 51.186264>,  <36.437077, 28.327583, 50.717781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.732464, 28.466917, 51.186264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.364288, 28.316090, 51.227486>,  <35.143383, 28.225594, 51.252216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.364288, 28.316090, 51.227486>,  <35.732464, 28.466917, 51.186264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.364288, 28.316090, 51.227486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247384, 0.357785, -0.900440,
		0.302660, -0.854288, -0.422598,
		-0.920434, -0.377071, 0.103050,
		35.088158, 28.202969, 51.258400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627419, 28.010805, 50.652882>,  <35.732464, 28.466917, 51.186264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.627419, 28.010805, 50.652882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.311214, 28.204353, 50.803066>,  <35.121494, 28.320482, 50.893177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.311214, 28.204353, 50.803066>,  <35.627419, 28.010805, 50.652882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.311214, 28.204353, 50.803066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040786, 0.570092, -0.820568,
		-0.611094, -0.663978, -0.430926,
		-0.790506, 0.483869, 0.375461,
		35.074062, 28.349514, 50.915703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.125893, 28.032434, 50.032536>,  <35.627419, 28.010805, 50.652882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.125893, 28.032434, 50.032536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.986622, 28.302658, 50.292503>,  <34.903061, 28.464792, 50.448483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.986622, 28.302658, 50.292503>,  <35.125893, 28.032434, 50.032536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.986622, 28.302658, 50.292503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331538, 0.559752, -0.759447,
		-0.876844, -0.479896, 0.029080,
		-0.348178, 0.675557, 0.649919,
		34.882168, 28.505325, 50.487480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508793, 28.127302, 49.819111>,  <35.125893, 28.032434, 50.032536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508793, 28.127302, 49.819111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.571796, 28.455227, 50.039330>,  <34.609596, 28.651981, 50.171459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.571796, 28.455227, 50.039330>,  <34.508793, 28.127302, 49.819111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571796, 28.455227, 50.039330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268442, 0.572053, -0.775045,
		-0.950332, -0.025714, 0.310175,
		0.157507, 0.819814, 0.550543,
		34.619049, 28.701172, 50.204491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969582, 28.572636, 49.755466>,  <34.508793, 28.127302, 49.819111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969582, 28.572636, 49.755466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.258842, 28.819189, 49.880131>,  <34.432400, 28.967121, 49.954929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.258842, 28.819189, 49.880131>,  <33.969582, 28.572636, 49.755466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.258842, 28.819189, 49.880131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255503, 0.657943, -0.708399,
		-0.641696, 0.432649, 0.633278,
		0.723149, 0.616381, 0.311656,
		34.475788, 29.004103, 49.973629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.694305, 29.135574, 49.841187>,  <33.969582, 28.572636, 49.755466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.694305, 29.135574, 49.841187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.077557, 29.246824, 49.813969>,  <34.307507, 29.313574, 49.797638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.077557, 29.246824, 49.813969>,  <33.694305, 29.135574, 49.841187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077557, 29.246824, 49.813969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210172, 0.521739, -0.826811,
		-0.194453, 0.806495, 0.558349,
		0.958131, 0.278125, -0.068049,
		34.364998, 29.330261, 49.793552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.643860, 29.783346, 49.725655>,  <33.694305, 29.135574, 49.841187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.643860, 29.783346, 49.725655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.990654, 29.654585, 49.573490>,  <34.198730, 29.577328, 49.482193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.990654, 29.654585, 49.573490>,  <33.643860, 29.783346, 49.725655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.990654, 29.654585, 49.573490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225186, 0.427912, -0.875319,
		0.444550, 0.844553, 0.298506,
		0.866987, -0.321903, -0.380409,
		34.250751, 29.558014, 49.459366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996193, 30.425879, 49.362141>,  <33.643860, 29.783346, 49.725655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.996193, 30.425879, 49.362141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.162342, 30.096983, 49.206505>,  <34.262032, 29.899647, 49.113125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.162342, 30.096983, 49.206505>,  <33.996193, 30.425879, 49.362141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.162342, 30.096983, 49.206505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182531, 0.494374, -0.849869,
		0.891148, 0.281994, 0.355435,
		0.415376, -0.822237, -0.389088,
		34.286953, 29.850311, 49.089779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.619698, 30.586859, 49.045437>,  <33.996193, 30.425879, 49.362141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.619698, 30.586859, 49.045437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.559952, 30.247261, 48.842693>,  <34.524105, 30.043503, 48.721046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.559952, 30.247261, 48.842693>,  <34.619698, 30.586859, 49.045437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.559952, 30.247261, 48.842693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334564, 0.438976, -0.833887,
		0.930460, -0.294128, 0.218476,
		-0.149364, -0.848993, -0.506854,
		34.515144, 29.992563, 48.690636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171444, 30.534348, 48.664719>,  <34.619698, 30.586859, 49.045437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171444, 30.534348, 48.664719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.910217, 30.294085, 48.480236>,  <34.753483, 30.149927, 48.369545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.910217, 30.294085, 48.480236>,  <35.171444, 30.534348, 48.664719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.910217, 30.294085, 48.480236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382509, 0.263990, -0.885436,
		0.653598, -0.754665, 0.057354,
		-0.653067, -0.600658, -0.461210,
		34.714298, 30.113888, 48.341873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.585411, 30.195755, 48.246105>,  <35.171444, 30.534348, 48.664719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.585411, 30.195755, 48.246105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.209045, 30.182611, 48.111286>,  <34.983227, 30.174726, 48.030396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.209045, 30.182611, 48.111286>,  <35.585411, 30.195755, 48.246105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209045, 30.182611, 48.111286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304374, 0.354235, -0.884237,
		0.148446, -0.934579, -0.323304,
		-0.940915, -0.032856, -0.337046,
		34.926769, 30.172754, 48.010174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739712, 30.226677, 47.636215>,  <35.585411, 30.195755, 48.246105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739712, 30.226677, 47.636215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.342876, 30.259350, 47.598087>,  <35.104774, 30.278954, 47.575211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.342876, 30.259350, 47.598087>,  <35.739712, 30.226677, 47.636215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.342876, 30.259350, 47.598087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119541, 0.383003, -0.915980,
		-0.038314, -0.920129, -0.389738,
		-0.992090, 0.081685, -0.095319,
		35.045250, 30.283855, 47.569492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582035, 29.951874, 46.949329>,  <35.739712, 30.226677, 47.636215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582035, 29.951874, 46.949329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.281761, 30.195843, 47.050888>,  <35.101597, 30.342224, 47.111824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.281761, 30.195843, 47.050888>,  <35.582035, 29.951874, 46.949329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.281761, 30.195843, 47.050888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112555, 0.496766, -0.860555,
		-0.651003, -0.617427, -0.441565,
		-0.750684, 0.609924, 0.253901,
		35.056557, 30.378820, 47.127060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113308, 30.039673, 46.364067>,  <35.582035, 29.951874, 46.949329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.113308, 30.039673, 46.364067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.053978, 30.355844, 46.601799>,  <35.018379, 30.545547, 46.744438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.053978, 30.355844, 46.601799>,  <35.113308, 30.039673, 46.364067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.053978, 30.355844, 46.601799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066532, 0.607587, -0.791462,
		-0.986698, -0.077853, -0.142709,
		-0.148325, 0.790428, 0.594325,
		35.009480, 30.592974, 46.780098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683601, 30.537525, 45.996925>,  <35.113308, 30.039673, 46.364067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683601, 30.537525, 45.996925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.842258, 30.753889, 46.293598>,  <34.937450, 30.883707, 46.471603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.842258, 30.753889, 46.293598>,  <34.683601, 30.537525, 45.996925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.842258, 30.753889, 46.293598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144510, 0.761090, -0.632344,
		-0.906529, 0.357993, 0.223710,
		0.396638, 0.540909, 0.741684,
		34.961250, 30.916162, 46.516102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316845, 31.241129, 46.007328>,  <34.683601, 30.537525, 45.996925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316845, 31.241129, 46.007328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.673935, 31.289286, 46.181015>,  <34.888187, 31.318180, 46.285229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.673935, 31.289286, 46.181015>,  <34.316845, 31.241129, 46.007328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673935, 31.289286, 46.181015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132343, 0.851090, -0.508065,
		-0.430728, 0.511029, 0.743857,
		0.892726, 0.120394, 0.434219,
		34.941753, 31.325403, 46.311279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278034, 31.956963, 46.174526>,  <34.316845, 31.241129, 46.007328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278034, 31.956963, 46.174526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.662636, 31.850019, 46.199947>,  <34.893394, 31.785854, 46.215199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.662636, 31.850019, 46.199947>,  <34.278034, 31.956963, 46.174526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.662636, 31.850019, 46.199947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273191, 0.904888, -0.326413,
		0.029764, 0.331207, 0.943089,
		0.961499, -0.267358, 0.063550,
		34.951084, 31.769812, 46.219013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.747238, 32.579006, 46.452404>,  <34.278034, 31.956963, 46.174526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.747238, 32.579006, 46.452404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.004688, 32.344173, 46.256004>,  <35.159157, 32.203274, 46.138165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.004688, 32.344173, 46.256004>,  <34.747238, 32.579006, 46.452404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004688, 32.344173, 46.256004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468526, 0.809522, -0.353775,
		0.605168, -0.002345, 0.796095,
		0.643627, -0.587085, -0.490995,
		35.197777, 32.168049, 46.108707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367821, 32.998924, 46.441792>,  <34.747238, 32.579006, 46.452404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367821, 32.998924, 46.441792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.407494, 32.727757, 46.150429>,  <35.431297, 32.565056, 45.975609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.407494, 32.727757, 46.150429>,  <35.367821, 32.998924, 46.441792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.407494, 32.727757, 46.150429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481750, 0.673225, -0.560968,
		0.870678, -0.295276, 0.393359,
		0.099179, -0.677924, -0.728411,
		35.437248, 32.524380, 45.931904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.969078, 33.111565, 46.053585>,  <35.367821, 32.998924, 46.441792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.969078, 33.111565, 46.053585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.778492, 32.884850, 45.784740>,  <35.664139, 32.748821, 45.623436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.778492, 32.884850, 45.784740>,  <35.969078, 33.111565, 46.053585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778492, 32.884850, 45.784740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483864, 0.469227, -0.738716,
		0.734066, -0.677184, 0.050677,
		-0.476468, -0.566787, -0.672109,
		35.635551, 32.714813, 45.583107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472012, 33.007145, 45.475975>,  <35.969078, 33.111565, 46.053585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472012, 33.007145, 45.475975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.137936, 32.903572, 45.281898>,  <35.937489, 32.841427, 45.165451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.137936, 32.903572, 45.281898>,  <36.472012, 33.007145, 45.475975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137936, 32.903572, 45.281898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451307, 0.181484, -0.873719,
		0.314293, -0.948691, -0.034713,
		-0.835190, -0.258937, -0.485190,
		35.887379, 32.825890, 45.136341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.341331, 33.202488, 25.998840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.045975, 32.999767, 25.820883>,  <44.868763, 32.878136, 25.714108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.045975, 32.999767, 25.820883>,  <45.341331, 33.202488, 25.998840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.045975, 32.999767, 25.820883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593953, 0.176304, 0.784944,
		-0.319376, 0.843840, -0.431198,
		-0.738389, -0.506804, -0.444894,
		44.824459, 32.847725, 25.687414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.743797, 33.647144, 26.003149>,  <45.341331, 33.202488, 25.998840>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.743797, 33.647144, 26.003149> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.628872, 33.264042, 26.008221>,  <44.559917, 33.034180, 26.011263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.628872, 33.264042, 26.008221>,  <44.743797, 33.647144, 26.003149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.628872, 33.264042, 26.008221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398525, 0.131567, 0.907672,
		-0.870994, 0.255731, -0.419489,
		-0.287311, -0.957754, 0.012679,
		44.542679, 32.976715, 26.012024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.087555, 33.723312, 26.017729>,  <44.743797, 33.647144, 26.003149>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.087555, 33.723312, 26.017729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.129574, 33.340008, 26.124090>,  <44.154785, 33.110027, 26.187906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.129574, 33.340008, 26.124090>,  <44.087555, 33.723312, 26.017729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.129574, 33.340008, 26.124090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646648, 0.137315, 0.750327,
		-0.755520, -0.250768, -0.605231,
		0.105051, -0.958259, 0.265903,
		44.161091, 33.052528, 26.203861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.446281, 33.473228, 26.135298>,  <44.087555, 33.723312, 26.017729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.446281, 33.473228, 26.135298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.685478, 33.234371, 26.349148>,  <43.828995, 33.091057, 26.477457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.685478, 33.234371, 26.349148>,  <43.446281, 33.473228, 26.135298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.685478, 33.234371, 26.349148> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631655, 0.059488, 0.772964,
		-0.493377, -0.799922, -0.341618,
		0.597989, -0.597148, 0.534625,
		43.864876, 33.055225, 26.509535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.991562, 33.068478, 26.527887>,  <43.446281, 33.473228, 26.135298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.991562, 33.068478, 26.527887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.335243, 33.044788, 26.731163>,  <43.541454, 33.030575, 26.853128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.335243, 33.044788, 26.731163>,  <42.991562, 33.068478, 26.527887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.335243, 33.044788, 26.731163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511124, -0.055179, 0.857734,
		-0.022760, -0.996718, -0.077683,
		0.859206, -0.059228, 0.508191,
		43.593006, 33.027023, 26.883621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.922405, 32.483898, 27.032843>,  <42.991562, 33.068478, 26.527887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.922405, 32.483898, 27.032843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.220280, 32.717190, 27.162636>,  <43.399006, 32.857162, 27.240513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.220280, 32.717190, 27.162636>,  <42.922405, 32.483898, 27.032843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.220280, 32.717190, 27.162636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376991, -0.033615, 0.925607,
		0.550745, -0.811615, 0.194838,
		0.744687, 0.583225, 0.324485,
		43.443687, 32.892159, 27.259981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.207428, 32.127514, 27.702829>,  <42.922405, 32.483898, 27.032843>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.207428, 32.127514, 27.702829> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.302341, 32.515724, 27.685999>,  <43.359291, 32.748650, 27.675901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.302341, 32.515724, 27.685999>,  <43.207428, 32.127514, 27.702829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.302341, 32.515724, 27.685999> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377387, 0.132004, 0.916599,
		0.895140, -0.201616, 0.397587,
		0.237284, 0.970529, -0.042075,
		43.373528, 32.806881, 27.673376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.640778, 32.139206, 28.306833>,  <43.207428, 32.127514, 27.702829>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.640778, 32.139206, 28.306833> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.581890, 32.528320, 28.235273>,  <43.546558, 32.761791, 28.192337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.581890, 32.528320, 28.235273>,  <43.640778, 32.139206, 28.306833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.581890, 32.528320, 28.235273> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161802, 0.154747, 0.974615,
		0.975779, 0.172432, 0.134617,
		-0.147223, 0.972790, -0.178899,
		43.537724, 32.820156, 28.181604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.033390, 32.556915, 28.788315>,  <43.640778, 32.139206, 28.306833>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.033390, 32.556915, 28.788315> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.737431, 32.796261, 28.665346>,  <43.559856, 32.939869, 28.591566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.737431, 32.796261, 28.665346>,  <44.033390, 32.556915, 28.788315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.737431, 32.796261, 28.665346> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074542, 0.381244, 0.921464,
		0.668574, 0.704707, -0.237479,
		-0.739900, 0.598365, -0.307420,
		43.515461, 32.975769, 28.573120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.144894, 33.227005, 29.047806>,  <44.033390, 32.556915, 28.788315>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.144894, 33.227005, 29.047806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.750980, 33.219460, 28.978712>,  <43.514633, 33.214931, 28.937256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.750980, 33.219460, 28.978712>,  <44.144894, 33.227005, 29.047806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.750980, 33.219460, 28.978712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154556, 0.549404, 0.821138,
		0.079411, 0.835343, -0.543962,
		-0.984787, -0.018865, -0.172736,
		43.455544, 33.213799, 28.926891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.934128, 33.922028, 29.326944>,  <44.144894, 33.227005, 29.047806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.934128, 33.922028, 29.326944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.604561, 33.695724, 29.313833>,  <43.406818, 33.559944, 29.305965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.604561, 33.695724, 29.313833>,  <43.934128, 33.922028, 29.326944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.604561, 33.695724, 29.313833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269668, 0.340533, 0.900731,
		-0.498433, 0.750970, -0.433138,
		-0.823920, -0.565757, -0.032780,
		43.357384, 33.525997, 29.303999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.448532, 34.396614, 29.591778>,  <43.934128, 33.922028, 29.326944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.448532, 34.396614, 29.591778> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.301514, 34.026306, 29.627218>,  <43.213303, 33.804119, 29.648481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.301514, 34.026306, 29.627218>,  <43.448532, 34.396614, 29.591778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.301514, 34.026306, 29.627218> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320701, 0.215592, 0.922318,
		-0.872959, 0.310584, -0.376138,
		-0.367550, -0.925774, 0.088599,
		43.191250, 33.748573, 29.653797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.749653, 34.492107, 29.904741>,  <43.448532, 34.396614, 29.591778>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.749653, 34.492107, 29.904741> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.854271, 34.112499, 29.975115>,  <42.917042, 33.884735, 30.017338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.854271, 34.112499, 29.975115>,  <42.749653, 34.492107, 29.904741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.854271, 34.112499, 29.975115> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273823, 0.101832, 0.956374,
		-0.925536, -0.298305, -0.233231,
		0.261541, -0.949023, 0.175932,
		42.932732, 33.827793, 30.027895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.130096, 34.198215, 30.205971>,  <42.749653, 34.492107, 29.904741>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.130096, 34.198215, 30.205971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.407104, 33.936363, 30.327211>,  <42.573311, 33.779251, 30.399956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.407104, 33.936363, 30.327211>,  <42.130096, 34.198215, 30.205971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.407104, 33.936363, 30.327211> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387617, 0.016692, 0.921669,
		-0.608412, -0.755765, -0.242187,
		0.692523, -0.654631, 0.303103,
		42.614861, 33.739975, 30.418142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.782253, 33.584457, 30.667362>,  <42.130096, 34.198215, 30.205971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.782253, 33.584457, 30.667362> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.174152, 33.607864, 30.743958>,  <42.409290, 33.621906, 30.789915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.174152, 33.607864, 30.743958>,  <41.782253, 33.584457, 30.667362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.174152, 33.607864, 30.743958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190711, -0.018618, 0.981470,
		0.061001, -0.998113, -0.007081,
		0.979749, 0.058520, 0.191487,
		42.468079, 33.625420, 30.801403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.885944, 32.982422, 31.148520>,  <41.782253, 33.584457, 30.667362>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.885944, 32.982422, 31.148520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.175400, 33.256523, 31.181444>,  <42.349072, 33.420982, 31.201199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.175400, 33.256523, 31.181444>,  <41.885944, 32.982422, 31.148520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.175400, 33.256523, 31.181444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207075, 0.101800, 0.973014,
		0.658381, -0.721156, 0.215565,
		0.723639, 0.685253, 0.082310,
		42.392490, 33.462097, 31.206137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.163029, 32.868313, 31.863190>,  <41.885944, 32.982422, 31.148520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.163029, 32.868313, 31.863190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.332893, 33.216507, 31.763660>,  <42.434811, 33.425423, 31.703943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.332893, 33.216507, 31.763660>,  <42.163029, 32.868313, 31.863190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.332893, 33.216507, 31.763660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132100, 0.331470, 0.934172,
		0.895665, -0.363833, 0.255753,
		0.424658, 0.870490, -0.248824,
		42.460289, 33.477654, 31.689013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.612072, 33.033413, 32.401222>,  <42.163029, 32.868313, 31.863190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.612072, 33.033413, 32.401222> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.506947, 33.370762, 32.213753>,  <42.443871, 33.573170, 32.101273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.506947, 33.370762, 32.213753>,  <42.612072, 33.033413, 32.401222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.506947, 33.370762, 32.213753> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280720, 0.397894, 0.873428,
		0.923106, 0.361116, 0.132179,
		-0.262815, 0.843372, -0.468670,
		42.428101, 33.623772, 32.073151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.046471, 33.582256, 32.763687>,  <42.612072, 33.033413, 32.401222>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.046471, 33.582256, 32.763687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.737568, 33.753487, 32.575916>,  <42.552227, 33.856224, 32.463253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.737568, 33.753487, 32.575916>,  <43.046471, 33.582256, 32.763687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.737568, 33.753487, 32.575916> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209422, 0.526068, 0.824254,
		0.599798, 0.734847, -0.316612,
		-0.772260, 0.428080, -0.469427,
		42.505890, 33.881912, 32.435089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.164043, 34.339195, 32.897606>,  <43.046471, 33.582256, 32.763687>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.164043, 34.339195, 32.897606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.779785, 34.288433, 32.798771>,  <42.549229, 34.257977, 32.739471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.779785, 34.288433, 32.798771>,  <43.164043, 34.339195, 32.897606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.779785, 34.288433, 32.798771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272390, 0.604649, 0.748467,
		0.054414, 0.786317, -0.615423,
		-0.960647, -0.126908, -0.247086,
		42.491592, 34.250362, 32.724644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.894058, 34.949066, 32.959209>,  <43.164043, 34.339195, 32.897606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.894058, 34.949066, 32.959209> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.585735, 34.696381, 32.992165>,  <42.400742, 34.544769, 33.011936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.585735, 34.696381, 32.992165>,  <42.894058, 34.949066, 32.959209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.585735, 34.696381, 32.992165> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264911, 0.435443, 0.860355,
		-0.579377, 0.641343, -0.502992,
		-0.770808, -0.631718, 0.082387,
		42.354492, 34.506866, 33.016880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.339996, 35.588806, 33.044758>,  <42.894058, 34.949066, 32.959209>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.339996, 35.588806, 33.044758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.663254, 35.494022, 33.260448>,  <43.857208, 35.437153, 33.389862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.663254, 35.494022, 33.260448>,  <43.339996, 35.588806, 33.044758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.663254, 35.494022, 33.260448> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512734, -0.167504, -0.842049,
		0.289850, 0.956971, -0.013872,
		0.808140, -0.236956, 0.539223,
		43.905697, 35.422935, 33.422215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.882519, 35.976120, 32.756317>,  <43.339996, 35.588806, 33.044758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.882519, 35.976120, 32.756317> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.038570, 35.665836, 32.954739>,  <44.132202, 35.479668, 33.073792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.038570, 35.665836, 32.954739>,  <43.882519, 35.976120, 32.756317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.038570, 35.665836, 32.954739> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422470, -0.327889, -0.844990,
		0.818119, 0.539225, 0.199795,
		0.390130, -0.775709, 0.496058,
		44.155609, 35.433125, 33.103558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.578552, 36.009525, 32.614883>,  <43.882519, 35.976120, 32.756317>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.578552, 36.009525, 32.614883> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.535278, 35.625217, 32.717030>,  <44.509315, 35.394630, 32.778316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.535278, 35.625217, 32.717030>,  <44.578552, 36.009525, 32.614883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.535278, 35.625217, 32.717030> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475324, -0.275597, -0.835532,
		0.873134, 0.030988, 0.486494,
		-0.108185, -0.960774, 0.255362,
		44.502823, 35.336987, 32.793636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.274624, 35.694645, 32.590786>,  <44.578552, 36.009525, 32.614883>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.274624, 35.694645, 32.590786> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.005062, 35.399479, 32.576149>,  <44.843327, 35.222378, 32.567368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.005062, 35.399479, 32.576149>,  <45.274624, 35.694645, 32.590786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.005062, 35.399479, 32.576149> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471427, -0.391344, -0.790321,
		0.568871, -0.549847, 0.611600,
		-0.673901, -0.737915, -0.036589,
		44.802891, 35.178104, 32.565174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.568687, 35.017002, 32.546288>,  <45.274624, 35.694645, 32.590786>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.568687, 35.017002, 32.546288> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.203011, 34.934578, 32.406696>,  <44.983604, 34.885124, 32.322941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.203011, 34.934578, 32.406696>,  <45.568687, 35.017002, 32.546288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.203011, 34.934578, 32.406696> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403216, -0.375794, -0.834383,
		0.040785, -0.903504, 0.426634,
		-0.914195, -0.206056, -0.348981,
		44.928753, 34.872761, 32.302002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.630680, 34.368427, 32.289143>,  <45.568687, 35.017002, 32.546288>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.630680, 34.368427, 32.289143> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.290401, 34.496471, 32.122364>,  <45.086235, 34.573296, 32.022297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.290401, 34.496471, 32.122364>,  <45.630680, 34.368427, 32.289143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.290401, 34.496471, 32.122364> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184585, -0.560766, -0.807137,
		-0.492180, -0.763591, 0.417955,
		-0.850698, 0.320109, -0.416946,
		45.035191, 34.592503, 31.997280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.410366, 33.738426, 31.873077>,  <45.630680, 34.368427, 32.289143>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.410366, 33.738426, 31.873077> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.202911, 34.046116, 31.723782>,  <45.078438, 34.230732, 31.634205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.202911, 34.046116, 31.723782>,  <45.410366, 33.738426, 31.873077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.202911, 34.046116, 31.723782> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226312, -0.297459, -0.927524,
		-0.824500, -0.565515, -0.019812,
		-0.518636, 0.769227, -0.373238,
		45.047321, 34.276882, 31.611811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.900688, 33.522060, 31.430048>,  <45.410366, 33.738426, 31.873077>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.900688, 33.522060, 31.430048> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.965660, 33.905121, 31.334953>,  <45.004642, 34.134956, 31.277897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.965660, 33.905121, 31.334953>,  <44.900688, 33.522060, 31.430048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.965660, 33.905121, 31.334953> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387015, -0.283466, -0.877421,
		-0.907653, 0.050514, -0.416670,
		0.162434, 0.957651, -0.237739,
		45.014389, 34.192417, 31.263632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.986607, 33.493694, 30.681410>,  <44.900688, 33.522060, 31.430048>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.986607, 33.493694, 30.681410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.086796, 33.879177, 30.718340>,  <45.146908, 34.110466, 30.740498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.086796, 33.879177, 30.718340>,  <44.986607, 33.493694, 30.681410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.086796, 33.879177, 30.718340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387729, -0.012471, -0.921689,
		-0.887090, 0.266657, -0.376782,
		0.250473, 0.963711, 0.092328,
		45.161938, 34.168289, 30.746038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.646114, 33.898506, 30.068848>,  <44.986607, 33.493694, 30.681410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.646114, 33.898506, 30.068848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.976131, 34.060467, 30.226505>,  <45.174141, 34.157642, 30.321100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.976131, 34.060467, 30.226505>,  <44.646114, 33.898506, 30.068848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.976131, 34.060467, 30.226505> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425797, 0.013059, -0.904724,
		-0.371475, 0.914265, -0.161633,
		0.825047, 0.404906, 0.394143,
		45.223644, 34.181938, 30.344748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.614056, 34.464897, 29.685280>,  <44.646114, 33.898506, 30.068848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.614056, 34.464897, 29.685280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.979401, 34.408077, 29.837908>,  <45.198608, 34.373985, 29.929485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.979401, 34.408077, 29.837908>,  <44.614056, 34.464897, 29.685280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.979401, 34.408077, 29.837908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397858, 0.112252, -0.910554,
		0.086512, 0.983474, 0.159042,
		0.913359, -0.142050, 0.381572,
		45.253407, 34.365463, 29.952379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.077831, 34.989349, 29.295704>,  <44.614056, 34.464897, 29.685280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.077831, 34.989349, 29.295704> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.303112, 34.690159, 29.436180>,  <45.438278, 34.510643, 29.520466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.303112, 34.690159, 29.436180>,  <45.077831, 34.989349, 29.295704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.303112, 34.690159, 29.436180> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553497, 0.025912, -0.832448,
		0.613553, 0.663217, 0.428597,
		0.563200, -0.747978, 0.351190,
		45.472073, 34.465767, 29.541536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.710579, 35.159531, 29.009947>,  <45.077831, 34.989349, 29.295704>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.710579, 35.159531, 29.009947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.771915, 34.785339, 29.137295>,  <45.808716, 34.560825, 29.213703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.771915, 34.785339, 29.137295>,  <45.710579, 35.159531, 29.009947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.771915, 34.785339, 29.137295> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646702, -0.148602, -0.748127,
		0.747170, 0.320610, 0.582191,
		0.153343, -0.935482, 0.318370,
		45.817917, 34.504696, 29.232805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.387867, 35.041546, 28.904417>,  <45.710579, 35.159531, 29.009947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.387867, 35.041546, 28.904417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.208797, 34.683994, 28.913912>,  <46.101357, 34.469463, 28.919609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.208797, 34.683994, 28.913912>,  <46.387867, 35.041546, 28.904417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.208797, 34.683994, 28.913912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553846, -0.298025, -0.777455,
		0.702026, -0.334902, 0.628491,
		-0.447677, -0.893880, 0.023737,
		46.074493, 34.415829, 28.921032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.924347, 34.581341, 28.902550>,  <46.387867, 35.041546, 28.904417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.924347, 34.581341, 28.902550> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.604820, 34.375065, 28.778648>,  <46.413105, 34.251297, 28.704308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.604820, 34.375065, 28.778648>,  <46.924347, 34.581341, 28.902550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.604820, 34.375065, 28.778648> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509856, -0.307103, -0.803576,
		0.319272, -0.799843, 0.508248,
		-0.798820, -0.515693, -0.309755,
		46.365173, 34.220356, 28.685722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.205788, 33.975418, 28.671152>,  <46.924347, 34.581341, 28.902550>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.205788, 33.975418, 28.671152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.853062, 33.951260, 28.484070>,  <46.641426, 33.936764, 28.371820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.853062, 33.951260, 28.484070>,  <47.205788, 33.975418, 28.671152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.853062, 33.951260, 28.484070> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436080, -0.481993, -0.759945,
		-0.179532, -0.874091, 0.451369,
		-0.881818, -0.060398, -0.467707,
		46.588516, 33.933140, 28.343758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.197765, 33.359112, 28.258535>,  <47.205788, 33.975418, 28.671152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.197765, 33.359112, 28.258535> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.876751, 33.542103, 28.105358>,  <46.684143, 33.651897, 28.013453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.876751, 33.542103, 28.105358>,  <47.197765, 33.359112, 28.258535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.876751, 33.542103, 28.105358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175577, -0.432338, -0.884453,
		-0.570181, -0.777042, 0.266645,
		-0.802537, 0.457482, -0.382942,
		46.635990, 33.679348, 27.990477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.886803, 32.886501, 27.923512>,  <47.197765, 33.359112, 28.258535>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.886803, 32.886501, 27.923512> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.744793, 33.220787, 27.755926>,  <46.659588, 33.421360, 27.655375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.744793, 33.220787, 27.755926>,  <46.886803, 32.886501, 27.923512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.744793, 33.220787, 27.755926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489032, -0.215926, -0.845118,
		-0.796746, -0.504926, -0.332033,
		-0.355027, 0.835719, -0.418963,
		46.638287, 33.471504, 27.630238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.613388, 32.666775, 27.315491>,  <46.886803, 32.886501, 27.923512>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.613388, 32.666775, 27.315491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.662476, 33.060116, 27.261892>,  <46.691929, 33.296120, 27.229733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.662476, 33.060116, 27.261892>,  <46.613388, 32.666775, 27.315491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.662476, 33.060116, 27.261892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259905, -0.162150, -0.951923,
		-0.957804, 0.081993, -0.275478,
		0.122720, 0.983354, -0.133998,
		46.699291, 33.355122, 27.221693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.285362, 32.763298, 26.725601>,  <46.613388, 32.666775, 27.315491>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.285362, 32.763298, 26.725601> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.538239, 33.070770, 26.764511>,  <46.689964, 33.255253, 26.787857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.538239, 33.070770, 26.764511>,  <46.285362, 32.763298, 26.725601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.538239, 33.070770, 26.764511> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229275, -0.065666, -0.971144,
		-0.740115, 0.636249, -0.217753,
		0.632189, 0.768684, 0.097276,
		46.727894, 33.301376, 26.793694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.078053, 33.276249, 26.268063>,  <46.285362, 32.763298, 26.725601>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.078053, 33.276249, 26.268063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.464783, 33.335449, 26.351345>,  <46.696819, 33.370968, 26.401314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.464783, 33.335449, 26.351345>,  <46.078053, 33.276249, 26.268063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.464783, 33.335449, 26.351345> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215187, -0.032658, -0.976027,
		-0.137652, 0.988448, -0.063422,
		0.966823, 0.148000, 0.208206,
		46.754829, 33.379848, 26.413807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.911171, 35.443882, 41.845592> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601254, 35.221001, 41.726116>,  <39.415302, 35.087273, 41.654430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601254, 35.221001, 41.726116>,  <39.911171, 35.443882, 41.845592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.601254, 35.221001, 41.726116> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121575, 0.332319, -0.935298,
		0.620414, -0.760978, -0.189737,
		-0.774795, -0.557204, -0.298692,
		39.368816, 35.053841, 41.636509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.150970, 34.968002, 41.236774>,  <39.911171, 35.443882, 41.845592>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.150970, 34.968002, 41.236774> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753941, 35.016647, 41.236389>,  <39.515720, 35.045834, 41.236160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753941, 35.016647, 41.236389>,  <40.150970, 34.968002, 41.236774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.753941, 35.016647, 41.236389> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015619, 0.119653, -0.992693,
		-0.120607, -0.985340, -0.120664,
		-0.992578, 0.121610, -0.000959,
		39.456169, 35.053131, 41.236103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.922375, 34.494888, 40.769157>,  <40.150970, 34.968002, 41.236774>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.922375, 34.494888, 40.769157> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607563, 34.740131, 40.796513>,  <39.418674, 34.887280, 40.812927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607563, 34.740131, 40.796513>,  <39.922375, 34.494888, 40.769157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.607563, 34.740131, 40.796513> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071058, 0.020021, -0.997271,
		-0.612806, -0.789744, 0.027809,
		-0.787032, 0.613110, 0.068387,
		39.371452, 34.924065, 40.817028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610477, 34.366524, 40.178127>,  <39.922375, 34.494888, 40.769157>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.610477, 34.366524, 40.178127> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431507, 34.706593, 40.289135>,  <39.324127, 34.910633, 40.355740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431507, 34.706593, 40.289135>,  <39.610477, 34.366524, 40.178127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431507, 34.706593, 40.289135> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091756, 0.265035, -0.959863,
		-0.889603, -0.454929, -0.040574,
		-0.447424, 0.850174, 0.277518,
		39.297279, 34.961643, 40.372391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989239, 34.428410, 39.767551>,  <39.610477, 34.366524, 40.178127>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989239, 34.428410, 39.767551> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079010, 34.796825, 39.894878>,  <39.132874, 35.017876, 39.971275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079010, 34.796825, 39.894878>,  <38.989239, 34.428410, 39.767551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079010, 34.796825, 39.894878> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059002, 0.313206, -0.947851,
		-0.972702, 0.231510, 0.015951,
		0.224433, 0.921035, 0.318315,
		39.146339, 35.073135, 39.990372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392841, 34.886848, 39.606533>,  <38.989239, 34.428410, 39.767551>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.392841, 34.886848, 39.606533> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745739, 35.074207, 39.625504>,  <38.957478, 35.186623, 39.636887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745739, 35.074207, 39.625504>,  <38.392841, 34.886848, 39.606533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.745739, 35.074207, 39.625504> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074124, 0.237678, -0.968512,
		-0.464923, 0.850947, 0.244410,
		0.882243, 0.468400, 0.047426,
		39.010410, 35.214725, 39.639732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370590, 35.496456, 39.160686>,  <38.392841, 34.886848, 39.606533>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370590, 35.496456, 39.160686> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765697, 35.513813, 39.220585>,  <39.002762, 35.524227, 39.256523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765697, 35.513813, 39.220585>,  <38.370590, 35.496456, 39.160686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765697, 35.513813, 39.220585> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119363, 0.407376, -0.905427,
		-0.100291, 0.912229, 0.397215,
		0.987772, 0.043393, 0.149742,
		39.062031, 35.526833, 39.265507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618515, 36.178558, 39.083725>,  <38.370590, 35.496456, 39.160686>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.618515, 36.178558, 39.083725> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949829, 35.961250, 39.028873>,  <39.148617, 35.830868, 38.995960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949829, 35.961250, 39.028873>,  <38.618515, 36.178558, 39.083725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.949829, 35.961250, 39.028873> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185474, 0.496790, -0.847820,
		0.528719, 0.676802, 0.512245,
		0.828285, -0.543267, -0.137133,
		39.198315, 35.798271, 38.987732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989132, 36.554516, 38.590607>,  <38.618515, 36.178558, 39.083725>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989132, 36.554516, 38.590607> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.193905, 36.210934, 38.586132>,  <39.316769, 36.004784, 38.583447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.193905, 36.210934, 38.586132>,  <38.989132, 36.554516, 38.590607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.193905, 36.210934, 38.586132> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263750, 0.169565, -0.949570,
		0.817535, 0.483162, 0.313355,
		0.511930, -0.858954, -0.011191,
		39.347485, 35.953247, 38.582775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508949, 36.796574, 38.202766>,  <38.989132, 36.554516, 38.590607>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.508949, 36.796574, 38.202766> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563873, 36.401321, 38.175198>,  <39.596828, 36.164169, 38.158657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563873, 36.401321, 38.175198>,  <39.508949, 36.796574, 38.202766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.563873, 36.401321, 38.175198> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165477, 0.091488, -0.981961,
		0.976609, 0.123424, 0.176074,
		0.137307, -0.988128, -0.068925,
		39.605064, 36.104881, 38.154522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.057751, 36.645638, 37.773899>,  <39.508949, 36.796574, 38.202766>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.057751, 36.645638, 37.773899> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816566, 36.326656, 37.764889>,  <39.671856, 36.135269, 37.759483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816566, 36.326656, 37.764889>,  <40.057751, 36.645638, 37.773899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.816566, 36.326656, 37.764889> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043934, -0.004997, -0.999022,
		0.796559, -0.603362, 0.038048,
		-0.602962, -0.797452, -0.022528,
		39.635677, 36.087421, 37.758129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.464603, 36.262028, 37.303467>,  <40.057751, 36.645638, 37.773899>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.464603, 36.262028, 37.303467> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086842, 36.130882, 37.313271>,  <39.860184, 36.052197, 37.319153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086842, 36.130882, 37.313271>,  <40.464603, 36.262028, 37.303467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.086842, 36.130882, 37.313271> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058580, 0.094464, -0.993803,
		0.323514, -0.939992, -0.108418,
		-0.944408, -0.327861, 0.024505,
		39.803520, 36.032524, 37.320621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298378, 35.698025, 36.832767>,  <40.464603, 36.262028, 37.303467>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.298378, 35.698025, 36.832767> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.984386, 35.940937, 36.881798>,  <39.795994, 36.086685, 36.911217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.984386, 35.940937, 36.881798>,  <40.298378, 35.698025, 36.832767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.984386, 35.940937, 36.881798> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005819, 0.205078, -0.978728,
		-0.619498, -0.767565, -0.164515,
		-0.784977, 0.607278, 0.122579,
		39.748894, 36.123119, 36.918571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.912033, 35.306641, 36.340168>,  <40.298378, 35.698025, 36.832767>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.912033, 35.306641, 36.340168> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.191154, 35.040394, 36.234322>,  <40.358627, 34.880646, 36.170815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.191154, 35.040394, 36.234322>,  <39.912033, 35.306641, 36.340168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.191154, 35.040394, 36.234322> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579715, 0.307811, 0.754442,
		-0.420720, -0.679854, 0.600661,
		0.697800, -0.665621, -0.264619,
		40.400494, 34.840706, 36.154934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.040371, 34.638306, 36.758430>,  <39.912033, 35.306641, 36.340168>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.040371, 34.638306, 36.758430> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.174530, 34.401665, 36.465172>,  <40.255028, 34.259678, 36.289215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.174530, 34.401665, 36.465172>,  <40.040371, 34.638306, 36.758430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.174530, 34.401665, 36.465172> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688843, -0.684889, 0.237533,
		-0.642652, 0.425356, -0.637237,
		0.335401, -0.591607, -0.733149,
		40.275150, 34.224182, 36.245228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462982, 34.295990, 36.421329>,  <40.040371, 34.638306, 36.758430>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.462982, 34.295990, 36.421329> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785545, 34.064236, 36.373978>,  <39.979084, 33.925182, 36.345566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785545, 34.064236, 36.373978>,  <39.462982, 34.295990, 36.421329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.785545, 34.064236, 36.373978> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514905, -0.786391, 0.341264,
		-0.290817, -0.214245, -0.932483,
		0.806411, -0.579386, -0.118380,
		40.027470, 33.890419, 36.338463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204380, 33.688675, 36.166256>,  <39.462982, 34.295990, 36.421329>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.204380, 33.688675, 36.166256> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.552017, 33.587906, 36.336529>,  <39.760601, 33.527443, 36.438694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.552017, 33.587906, 36.336529>,  <39.204380, 33.688675, 36.166256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.552017, 33.587906, 36.336529> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451220, -0.756374, 0.473603,
		0.202666, -0.603684, -0.771034,
		0.869096, -0.251923, 0.425685,
		39.812744, 33.512329, 36.464233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286865, 32.904865, 36.082161>,  <39.204380, 33.688675, 36.166256>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.286865, 32.904865, 36.082161> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497673, 33.045872, 36.391479>,  <39.624157, 33.130478, 36.577068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497673, 33.045872, 36.391479>,  <39.286865, 32.904865, 36.082161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.497673, 33.045872, 36.391479> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429872, -0.674351, 0.600384,
		0.733119, -0.648830, -0.203856,
		0.527017, 0.352520, 0.773293,
		39.655777, 33.151627, 36.623466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619560, 32.308357, 36.325916>,  <39.286865, 32.904865, 36.082161>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.619560, 32.308357, 36.325916> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.651047, 32.545715, 36.646339>,  <39.669937, 32.688129, 36.838593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.651047, 32.545715, 36.646339>,  <39.619560, 32.308357, 36.325916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.651047, 32.545715, 36.646339> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361482, -0.731869, 0.577666,
		0.929050, -0.335037, 0.156893,
		0.078714, 0.593395, 0.801054,
		39.674660, 32.723732, 36.886654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960732, 31.873533, 36.772366>,  <39.619560, 32.308357, 36.325916>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.960732, 31.873533, 36.772366> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.780323, 32.139439, 37.010582>,  <39.672077, 32.298981, 37.153511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.780323, 32.139439, 37.010582>,  <39.960732, 31.873533, 36.772366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.780323, 32.139439, 37.010582> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186139, -0.722650, 0.665680,
		0.872886, 0.189383, 0.449670,
		-0.451023, 0.664764, 0.595540,
		39.645016, 32.338867, 37.189243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.011852, 31.540751, 37.449238>,  <39.960732, 31.873533, 36.772366>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.011852, 31.540751, 37.449238> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757004, 31.844217, 37.503635>,  <39.604095, 32.026299, 37.536274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757004, 31.844217, 37.503635>,  <40.011852, 31.540751, 37.449238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757004, 31.844217, 37.503635> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415615, -0.486752, 0.768333,
		0.649104, 0.433005, 0.625436,
		-0.637125, 0.758669, 0.135989,
		39.565865, 32.071819, 37.544434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074402, 31.685354, 38.149044>,  <40.011852, 31.540751, 37.449238>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074402, 31.685354, 38.149044> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.747284, 31.872581, 38.015106>,  <39.551014, 31.984919, 37.934746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.747284, 31.872581, 38.015106>,  <40.074402, 31.685354, 38.149044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.747284, 31.872581, 38.015106> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534955, -0.403728, 0.742177,
		0.212205, 0.786075, 0.580564,
		-0.817797, 0.468069, -0.334841,
		39.501945, 32.013000, 37.914654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708916, 32.218735, 38.705814>,  <40.074402, 31.685354, 38.149044>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.708916, 32.218735, 38.705814> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.419468, 32.105339, 38.454098>,  <39.245800, 32.037300, 38.303066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.419468, 32.105339, 38.454098>,  <39.708916, 32.218735, 38.705814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.419468, 32.105339, 38.454098> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548043, -0.318233, 0.773548,
		-0.419557, 0.904633, 0.074913,
		-0.723617, -0.283492, -0.629294,
		39.202381, 32.020290, 38.265308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.072155, 32.372822, 39.149025>,  <39.708916, 32.218735, 38.705814>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.072155, 32.372822, 39.149025> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951561, 32.124542, 38.859516>,  <38.879204, 31.975574, 38.685814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951561, 32.124542, 38.859516>,  <39.072155, 32.372822, 39.149025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.951561, 32.124542, 38.859516> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683678, -0.388378, 0.617857,
		-0.664598, 0.681099, -0.307268,
		-0.301486, -0.620699, -0.723767,
		38.861115, 31.938332, 38.642387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324203, 32.440319, 39.096733>,  <39.072155, 32.372822, 39.149025>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324203, 32.440319, 39.096733> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426388, 32.079575, 38.957367>,  <38.487698, 31.863129, 38.873749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426388, 32.079575, 38.957367>,  <38.324203, 32.440319, 39.096733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.426388, 32.079575, 38.957367> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547212, -0.431966, 0.716913,
		-0.797058, 0.007517, -0.603856,
		0.255456, -0.901859, -0.348415,
		38.503025, 31.809017, 38.852844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783009, 32.098461, 39.109585>,  <38.324203, 32.440319, 39.096733>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.783009, 32.098461, 39.109585> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048286, 31.799196, 39.101276>,  <38.207451, 31.619638, 39.096291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048286, 31.799196, 39.101276>,  <37.783009, 32.098461, 39.109585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048286, 31.799196, 39.101276> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498455, -0.462202, 0.733425,
		-0.558320, -0.476049, -0.679453,
		0.663191, -0.748163, -0.020768,
		38.247246, 31.574747, 39.095047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373920, 31.591349, 39.235077>,  <37.783009, 32.098461, 39.109585>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.373920, 31.591349, 39.235077> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732693, 31.429605, 39.306633>,  <37.947956, 31.332560, 39.349567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732693, 31.429605, 39.306633>,  <37.373920, 31.591349, 39.235077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732693, 31.429605, 39.306633> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367779, -0.457666, 0.809494,
		-0.245450, -0.791857, -0.559210,
		0.896935, -0.404356, 0.178895,
		38.001774, 31.308298, 39.360302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279198, 30.851267, 39.364178>,  <37.373920, 31.591349, 39.235077>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279198, 30.851267, 39.364178> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616879, 30.973902, 39.540051>,  <37.819489, 31.047482, 39.645576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616879, 30.973902, 39.540051>,  <37.279198, 30.851267, 39.364178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616879, 30.973902, 39.540051> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340556, -0.326666, 0.881652,
		0.413933, -0.894032, -0.171363,
		0.844204, 0.306587, 0.439686,
		37.870140, 31.065878, 39.671955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.300598, 30.258213, 38.865204>,  <37.279198, 30.851267, 39.364178>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.300598, 30.258213, 38.865204> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916077, 30.148726, 38.852669>,  <36.685364, 30.083033, 38.845150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916077, 30.148726, 38.852669>,  <37.300598, 30.258213, 38.865204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916077, 30.148726, 38.852669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161543, 0.652133, -0.740693,
		0.223174, -0.706966, -0.671112,
		-0.961300, -0.273717, -0.031333,
		36.627686, 30.066610, 38.843269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209976, 30.066763, 38.165443>,  <37.300598, 30.258213, 38.865204>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209976, 30.066763, 38.165443> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853050, 30.173573, 38.311031>,  <36.638893, 30.237658, 38.398384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853050, 30.173573, 38.311031>,  <37.209976, 30.066763, 38.165443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853050, 30.173573, 38.311031> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212151, 0.463631, -0.860255,
		-0.398456, -0.844834, -0.357055,
		-0.892314, 0.267024, 0.363969,
		36.585358, 30.253679, 38.420223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701851, 29.899073, 37.658386>,  <37.209976, 30.066763, 38.165443>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701851, 29.899073, 37.658386> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474354, 30.116188, 37.905582>,  <36.337856, 30.246456, 38.053902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474354, 30.116188, 37.905582>,  <36.701851, 29.899073, 37.658386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474354, 30.116188, 37.905582> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591144, 0.252676, -0.765966,
		-0.571907, -0.800961, 0.177157,
		-0.568745, 0.542786, 0.617990,
		36.303730, 30.279024, 38.090981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.068840, 29.690823, 37.517799>,  <36.701851, 29.899073, 37.658386>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.068840, 29.690823, 37.517799> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050499, 30.052805, 37.687008>,  <36.039494, 30.269995, 37.788532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050499, 30.052805, 37.687008>,  <36.068840, 29.690823, 37.517799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050499, 30.052805, 37.687008> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717675, 0.264721, -0.644101,
		-0.694867, -0.333127, 0.637327,
		-0.045854, 0.904958, 0.423023,
		36.036743, 30.324293, 37.813915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.364243, 29.906992, 37.601780>,  <36.068840, 29.690823, 37.517799>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.364243, 29.906992, 37.601780> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555832, 30.258121, 37.602638>,  <35.670788, 30.468800, 37.603153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555832, 30.258121, 37.602638>,  <35.364243, 29.906992, 37.601780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555832, 30.258121, 37.602638> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709617, 0.388630, -0.587716,
		-0.516744, 0.279981, 0.809065,
		0.478976, 0.877825, 0.002143,
		35.699524, 30.521469, 37.603279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806622, 30.491747, 37.709225>,  <35.364243, 29.906992, 37.601780>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806622, 30.491747, 37.709225> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.131432, 30.629230, 37.520550>,  <35.326317, 30.711721, 37.407345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.131432, 30.629230, 37.520550>,  <34.806622, 30.491747, 37.709225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.131432, 30.629230, 37.520550> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580747, 0.556053, -0.594591,
		0.057914, 0.756749, 0.651135,
		0.812022, 0.343709, -0.471683,
		35.375038, 30.732344, 37.379044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768589, 31.177298, 37.570251>,  <34.806622, 30.491747, 37.709225>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768589, 31.177298, 37.570251> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.087147, 31.105328, 37.339294>,  <35.278282, 31.062145, 37.200722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.087147, 31.105328, 37.339294>,  <34.768589, 31.177298, 37.570251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087147, 31.105328, 37.339294> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351996, 0.638449, -0.684457,
		0.491787, 0.748338, 0.445124,
		0.796394, -0.179925, -0.577394,
		35.326065, 31.051350, 37.166077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035786, 31.785833, 37.403976>,  <34.768589, 31.177298, 37.570251>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035786, 31.785833, 37.403976> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164497, 31.529125, 37.125526>,  <35.241726, 31.375101, 36.958458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164497, 31.529125, 37.125526>,  <35.035786, 31.785833, 37.403976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.164497, 31.529125, 37.125526> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414719, 0.565410, -0.712965,
		0.851155, 0.518115, -0.084216,
		0.321781, -0.641770, -0.696124,
		35.261032, 31.336594, 36.916691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113468, 32.200329, 36.754372>,  <35.035786, 31.785833, 37.403976>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.113468, 32.200329, 36.754372> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108700, 31.821148, 36.627094>,  <35.105839, 31.593639, 36.550728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108700, 31.821148, 36.627094>,  <35.113468, 32.200329, 36.754372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108700, 31.821148, 36.627094> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280523, 0.308608, -0.908883,
		0.959773, 0.078427, -0.269601,
		-0.011920, -0.947950, -0.318194,
		35.105125, 31.536762, 36.531635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371052, 32.271526, 36.036892>,  <35.113468, 32.200329, 36.754372>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371052, 32.271526, 36.036892> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158512, 31.933151, 36.055027>,  <35.030987, 31.730127, 36.065907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158512, 31.933151, 36.055027>,  <35.371052, 32.271526, 36.036892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.158512, 31.933151, 36.055027> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455613, 0.240244, -0.857146,
		0.714199, -0.476104, -0.513074,
		-0.531353, -0.845936, 0.045337,
		34.999107, 31.679371, 36.068626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.357143, 32.015602, 35.391598>,  <35.371052, 32.271526, 36.036892>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.357143, 32.015602, 35.391598> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053635, 31.787357, 35.517242>,  <34.871529, 31.650410, 35.592628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053635, 31.787357, 35.517242>,  <35.357143, 32.015602, 35.391598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.053635, 31.787357, 35.517242> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547162, 0.296762, -0.782653,
		0.353379, -0.765723, -0.537394,
		-0.758773, -0.570615, 0.314105,
		34.826004, 31.616173, 35.611473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.024277, 31.635416, 34.777229>,  <35.357143, 32.015602, 35.391598>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.024277, 31.635416, 34.777229> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.747639, 31.642906, 35.066044>,  <34.581654, 31.647400, 35.239334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.747639, 31.642906, 35.066044>,  <35.024277, 31.635416, 34.777229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.747639, 31.642906, 35.066044> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642137, 0.441735, -0.626523,
		-0.330683, -0.896950, -0.293479,
		-0.691600, 0.018727, 0.722039,
		34.540157, 31.648523, 35.282654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.851582, 27.555639, 41.230152> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.470779, 27.593767, 41.346500>,  <37.242298, 27.616644, 41.416309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.470779, 27.593767, 41.346500>,  <37.851582, 27.555639, 41.230152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470779, 27.593767, 41.346500> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251143, 0.299999, -0.920287,
		-0.174981, -0.949165, -0.261661,
		-0.952003, 0.095318, 0.290870,
		37.185177, 27.622362, 41.433762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440422, 27.284317, 40.563663>,  <37.851582, 27.555639, 41.230152>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.440422, 27.284317, 40.563663> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.193859, 27.474220, 40.814949>,  <37.045921, 27.588161, 40.965721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.193859, 27.474220, 40.814949>,  <37.440422, 27.284317, 40.563663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.193859, 27.474220, 40.814949> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486944, 0.397140, -0.777924,
		-0.618812, -0.785421, -0.013619,
		-0.616407, 0.474757, 0.628211,
		37.008938, 27.616648, 41.003410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832485, 27.244160, 40.227066>,  <37.440422, 27.284317, 40.563663>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.832485, 27.244160, 40.227066> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.806744, 27.537888, 40.497364>,  <36.791298, 27.714125, 40.659542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.806744, 27.537888, 40.497364>,  <36.832485, 27.244160, 40.227066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806744, 27.537888, 40.497364> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433461, 0.589365, -0.681733,
		-0.898872, -0.336779, 0.280373,
		-0.064351, 0.734322, 0.675744,
		36.787437, 27.758184, 40.700089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124294, 27.533091, 40.299923>,  <36.832485, 27.244160, 40.227066>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124294, 27.533091, 40.299923> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.344044, 27.850891, 40.403427>,  <36.475895, 28.041571, 40.465530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.344044, 27.850891, 40.403427>,  <36.124294, 27.533091, 40.299923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344044, 27.850891, 40.403427> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476266, 0.552189, -0.684294,
		-0.686557, 0.252694, 0.681752,
		0.549373, 0.794502, 0.258759,
		36.508854, 28.089241, 40.481056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.715286, 28.237226, 40.414127>,  <36.124294, 27.533091, 40.299923>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.715286, 28.237226, 40.414127> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.086296, 28.377216, 40.361652>,  <36.308903, 28.461210, 40.330166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.086296, 28.377216, 40.361652>,  <35.715286, 28.237226, 40.414127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086296, 28.377216, 40.361652> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354452, 0.712315, -0.605781,
		-0.118560, 0.608379, 0.784741,
		0.927527, 0.349975, -0.131189,
		36.364555, 28.482208, 40.322296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.669811, 29.004812, 40.458141>,  <35.715286, 28.237226, 40.414127>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.669811, 29.004812, 40.458141> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.017719, 28.958452, 40.266281>,  <36.226463, 28.930635, 40.151165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.017719, 28.958452, 40.266281>,  <35.669811, 29.004812, 40.458141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.017719, 28.958452, 40.266281> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291510, 0.663592, -0.688961,
		0.398140, 0.739062, 0.543389,
		0.869774, -0.115900, -0.479647,
		36.278652, 28.923683, 40.122387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037022, 29.616125, 40.346786>,  <35.669811, 29.004812, 40.458141>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037022, 29.616125, 40.346786> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.196815, 29.397522, 40.052376>,  <36.292694, 29.266361, 39.875729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.196815, 29.397522, 40.052376>,  <36.037022, 29.616125, 40.346786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196815, 29.397522, 40.052376> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083990, 0.777684, -0.623020,
		0.912883, 0.310708, 0.264774,
		0.399488, -0.546506, -0.736031,
		36.316662, 29.233570, 39.831566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580345, 30.079191, 40.032345>,  <36.037022, 29.616125, 40.346786>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.580345, 30.079191, 40.032345> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.517059, 29.786068, 39.767632>,  <36.479088, 29.610193, 39.608803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.517059, 29.786068, 39.767632>,  <36.580345, 30.079191, 40.032345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.517059, 29.786068, 39.767632> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001486, 0.670404, -0.741995,
		0.987404, -0.116409, -0.107154,
		-0.158211, -0.732808, -0.661787,
		36.469597, 29.566225, 39.569096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.149155, 29.931087, 39.597858>,  <36.580345, 30.079191, 40.032345>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.149155, 29.931087, 39.597858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.803722, 29.874456, 39.404285>,  <36.596462, 29.840477, 39.288143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.803722, 29.874456, 39.404285>,  <37.149155, 29.931087, 39.597858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803722, 29.874456, 39.404285> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230927, 0.742139, -0.629208,
		0.448226, -0.655123, -0.608200,
		-0.863578, -0.141578, -0.483931,
		36.544651, 29.831984, 39.259106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878159, 29.845209, 39.820232>,  <37.149155, 29.931087, 39.597858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.878159, 29.845209, 39.820232> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.028244, 30.195677, 39.941257>,  <38.118294, 30.405956, 40.013874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.028244, 30.195677, 39.941257>,  <37.878159, 29.845209, 39.820232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.028244, 30.195677, 39.941257> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177213, -0.388196, 0.904378,
		0.909841, -0.285715, -0.300925,
		0.375212, 0.876168, 0.302564,
		38.140808, 30.458527, 40.032028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531620, 29.708490, 40.148632>,  <37.878159, 29.845209, 39.820232>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531620, 29.708490, 40.148632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.406193, 30.054482, 40.305344>,  <38.330936, 30.262075, 40.399368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.406193, 30.054482, 40.305344>,  <38.531620, 29.708490, 40.148632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.406193, 30.054482, 40.305344> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168456, -0.355367, 0.919422,
		0.934504, 0.354297, -0.034280,
		-0.313567, 0.864979, 0.391775,
		38.312122, 30.313974, 40.422874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103668, 29.940434, 40.642673>,  <38.531620, 29.708490, 40.148632>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103668, 29.940434, 40.642673> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.769146, 30.135332, 40.743214>,  <38.568432, 30.252272, 40.803535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.769146, 30.135332, 40.743214>,  <39.103668, 29.940434, 40.642673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.769146, 30.135332, 40.743214> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104793, -0.307935, 0.945619,
		0.538150, 0.817169, 0.206469,
		-0.836309, 0.487248, 0.251348,
		38.518253, 30.281507, 40.818619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.267376, 30.466673, 41.134579>,  <39.103668, 29.940434, 40.642673>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.267376, 30.466673, 41.134579> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.873806, 30.421177, 41.189636>,  <38.637665, 30.393879, 41.222672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.873806, 30.421177, 41.189636>,  <39.267376, 30.466673, 41.134579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873806, 30.421177, 41.189636> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144444, -0.053830, 0.988048,
		-0.104973, 0.992051, 0.069394,
		-0.983929, -0.113742, 0.137645,
		38.578629, 30.387054, 41.230930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107525, 30.945698, 41.656361>,  <39.267376, 30.466673, 41.134579>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107525, 30.945698, 41.656361> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.820137, 30.667616, 41.665203>,  <38.647705, 30.500767, 41.670509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.820137, 30.667616, 41.665203>,  <39.107525, 30.945698, 41.656361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.820137, 30.667616, 41.665203> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089363, -0.060749, 0.994145,
		-0.689792, 0.716240, 0.105772,
		-0.718472, -0.695205, 0.022101,
		38.604595, 30.459055, 41.671833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466774, 31.195211, 41.980991>,  <39.107525, 30.945698, 41.656361>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.466774, 31.195211, 41.980991> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.498039, 30.797611, 42.011585>,  <38.516800, 30.559052, 42.029942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.498039, 30.797611, 42.011585>,  <38.466774, 31.195211, 41.980991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498039, 30.797611, 42.011585> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108093, 0.084720, 0.990524,
		-0.991063, -0.069157, 0.114067,
		0.078166, -0.994002, 0.076487,
		38.521488, 30.499411, 42.034531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.038597, 31.044928, 42.666985>,  <38.466774, 31.195211, 41.980991>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.038597, 31.044928, 42.666985> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.235390, 30.703943, 42.596256>,  <38.353466, 30.499353, 42.553818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.235390, 30.703943, 42.596256>,  <38.038597, 31.044928, 42.666985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235390, 30.703943, 42.596256> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020910, -0.191477, 0.981274,
		-0.870356, -0.486463, -0.076377,
		0.491978, -0.852461, -0.176825,
		38.382984, 30.448204, 42.543209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677876, 30.569386, 43.033375>,  <38.038597, 31.044928, 42.666985>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.677876, 30.569386, 43.033375> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.039433, 30.409111, 42.973465>,  <38.256367, 30.312946, 42.937519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.039433, 30.409111, 42.973465>,  <37.677876, 30.569386, 43.033375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.039433, 30.409111, 42.973465> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001575, -0.353248, 0.935528,
		-0.427763, -0.845379, -0.319928,
		0.903890, -0.400688, -0.149775,
		38.310600, 30.288906, 42.928532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622978, 30.039694, 43.464226>,  <37.677876, 30.569386, 43.033375>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.622978, 30.039694, 43.464226> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.016808, 30.031752, 43.394680>,  <38.253105, 30.026987, 43.352951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.016808, 30.031752, 43.394680>,  <37.622978, 30.039694, 43.464226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016808, 30.031752, 43.394680> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157114, -0.337211, 0.928226,
		-0.077056, -0.941220, -0.328889,
		0.984570, -0.019853, -0.173863,
		38.312180, 30.025795, 43.342522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779823, 29.381880, 43.525803>,  <37.622978, 30.039694, 43.464226>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779823, 29.381880, 43.525803> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.109768, 29.595869, 43.598923>,  <38.307735, 29.724262, 43.642796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.109768, 29.595869, 43.598923>,  <37.779823, 29.381880, 43.525803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.109768, 29.595869, 43.598923> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018226, -0.348337, 0.937192,
		0.565047, -0.769718, -0.297079,
		0.824858, 0.534972, 0.182798,
		38.357224, 29.756361, 43.653763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283432, 28.900667, 43.846592>,  <37.779823, 29.381880, 43.525803>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283432, 28.900667, 43.846592> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.454758, 29.249237, 43.942230>,  <38.557552, 29.458378, 43.999615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.454758, 29.249237, 43.942230>,  <38.283432, 28.900667, 43.846592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454758, 29.249237, 43.942230> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370007, -0.410529, 0.833403,
		0.824405, -0.268489, -0.498268,
		0.428313, 0.871424, 0.239100,
		38.583252, 29.510664, 44.013962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940952, 28.749653, 43.998405>,  <38.283432, 28.900667, 43.846592>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940952, 28.749653, 43.998405> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.919228, 29.102797, 44.184998>,  <38.906193, 29.314684, 44.296955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.919228, 29.102797, 44.184998>,  <38.940952, 28.749653, 43.998405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.919228, 29.102797, 44.184998> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552200, -0.362676, 0.750693,
		0.831940, 0.298364, -0.467818,
		-0.054313, 0.882862, 0.466482,
		38.902935, 29.367655, 44.324944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600388, 28.858347, 44.302200>,  <38.940952, 28.749653, 43.998405>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.600388, 28.858347, 44.302200> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.376186, 29.121904, 44.502876>,  <39.241665, 29.280039, 44.623283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.376186, 29.121904, 44.502876>,  <39.600388, 28.858347, 44.302200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.376186, 29.121904, 44.502876> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397076, -0.317803, 0.861006,
		0.726750, 0.681808, -0.083500,
		-0.560504, 0.658893, 0.501693,
		39.208035, 29.319572, 44.653385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.987118, 29.229809, 44.875717>,  <39.600388, 28.858347, 44.302200>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.987118, 29.229809, 44.875717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.611019, 29.279591, 45.002487>,  <39.385361, 29.309460, 45.078548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.611019, 29.279591, 45.002487>,  <39.987118, 29.229809, 44.875717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.611019, 29.279591, 45.002487> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252657, -0.368928, 0.894459,
		0.228244, 0.921088, 0.315439,
		-0.940250, 0.124457, 0.316925,
		39.328945, 29.316927, 45.097565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.122818, 32.569565, 46.109356> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.338333, 32.291237, 45.919392>,  <32.467640, 32.124241, 45.805412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.338333, 32.291237, 45.919392>,  <32.122818, 32.569565, 46.109356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.338333, 32.291237, 45.919392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004912, 0.566314, -0.824175,
		0.842429, 0.441720, 0.308540,
		0.538785, -0.695824, -0.474910,
		32.499969, 32.082489, 45.776920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797306, 32.939247, 45.858055>,  <32.122818, 32.569565, 46.109356>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797306, 32.939247, 45.858055> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.778900, 32.600857, 45.645561>,  <32.767857, 32.397823, 45.518063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.778900, 32.600857, 45.645561>,  <32.797306, 32.939247, 45.858055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.778900, 32.600857, 45.645561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285726, 0.498439, -0.818486,
		0.957206, -0.189448, 0.218783,
		-0.046011, -0.845972, -0.531239,
		32.765099, 32.347065, 45.486191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.422062, 32.963943, 45.463051>,  <32.797306, 32.939247, 45.858055>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.422062, 32.963943, 45.463051> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.169006, 32.707706, 45.288960>,  <33.017174, 32.553967, 45.184505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.169006, 32.707706, 45.288960>,  <33.422062, 32.963943, 45.463051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.169006, 32.707706, 45.288960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218234, 0.391746, -0.893817,
		0.743067, -0.660440, -0.108033,
		-0.632634, -0.640589, -0.435224,
		32.979218, 32.515530, 45.158394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791794, 32.645191, 44.865009>,  <33.422062, 32.963943, 45.463051>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791794, 32.645191, 44.865009> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.400074, 32.601681, 44.796738>,  <33.165043, 32.575573, 44.755775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.400074, 32.601681, 44.796738>,  <33.791794, 32.645191, 44.865009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.400074, 32.601681, 44.796738> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119046, 0.372422, -0.920397,
		0.163681, -0.921667, -0.351765,
		-0.979304, -0.108775, -0.170679,
		33.106281, 32.569050, 44.745533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709991, 32.460945, 44.179241>,  <33.791794, 32.645191, 44.865009>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709991, 32.460945, 44.179241> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.333130, 32.574104, 44.251141>,  <33.107014, 32.641998, 44.294281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.333130, 32.574104, 44.251141>,  <33.709991, 32.460945, 44.179241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.333130, 32.574104, 44.251141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062305, 0.379126, -0.923245,
		-0.329333, -0.881040, -0.339569,
		-0.942156, 0.282899, 0.179752,
		33.050484, 32.658974, 44.305065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300255, 32.303902, 43.576542>,  <33.709991, 32.460945, 44.179241>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300255, 32.303902, 43.576542> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.084839, 32.573387, 43.778965>,  <32.955589, 32.735077, 43.900417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.084839, 32.573387, 43.778965>,  <33.300255, 32.303902, 43.576542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084839, 32.573387, 43.778965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206323, 0.476867, -0.854417,
		-0.816951, -0.564546, -0.117808,
		-0.538536, 0.673711, 0.506056,
		32.923279, 32.775501, 43.930782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.604794, 32.348793, 43.160912>,  <33.300255, 32.303902, 43.576542>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.604794, 32.348793, 43.160912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.659687, 32.668644, 43.394753>,  <32.692623, 32.860554, 43.535057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.659687, 32.668644, 43.394753>,  <32.604794, 32.348793, 43.160912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659687, 32.668644, 43.394753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048963, 0.594944, -0.802274,
		-0.989329, 0.081471, 0.120796,
		0.137229, 0.799627, 0.584606,
		32.700855, 32.908531, 43.570133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.147091, 32.729908, 42.926888>,  <32.604794, 32.348793, 43.160912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.147091, 32.729908, 42.926888> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.401909, 32.959728, 43.132439>,  <32.554798, 33.097622, 43.255768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.401909, 32.959728, 43.132439>,  <32.147091, 32.729908, 42.926888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.401909, 32.959728, 43.132439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245698, 0.480531, -0.841857,
		-0.730624, 0.662556, 0.164951,
		0.637041, 0.574552, 0.513876,
		32.593021, 33.132095, 43.286602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.033737, 33.502396, 42.693871>,  <32.147091, 32.729908, 42.926888>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.033737, 33.502396, 42.693871> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.390057, 33.545952, 42.870331>,  <32.603848, 33.572086, 42.976208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.390057, 33.545952, 42.870331>,  <32.033737, 33.502396, 42.693871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.390057, 33.545952, 42.870331> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294984, 0.599877, -0.743728,
		-0.345623, 0.792647, 0.502250,
		0.890803, 0.108894, 0.441150,
		32.657299, 33.578621, 43.002674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.251945, 34.289341, 42.676125>,  <32.033737, 33.502396, 42.693871>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.251945, 34.289341, 42.676125> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.600880, 34.110714, 42.755737>,  <32.810238, 34.003536, 42.803505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.600880, 34.110714, 42.755737>,  <32.251945, 34.289341, 42.676125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.600880, 34.110714, 42.755737> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400441, 0.419041, -0.814893,
		0.280507, 0.790556, 0.544368,
		0.872332, -0.446571, 0.199027,
		32.862579, 33.976742, 42.815445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881050, 34.774414, 42.580711>,  <32.251945, 34.289341, 42.676125>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881050, 34.774414, 42.580711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.027515, 34.414349, 42.486374>,  <33.115395, 34.198307, 42.429771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.027515, 34.414349, 42.486374>,  <32.881050, 34.774414, 42.580711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.027515, 34.414349, 42.486374> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470579, 0.397775, -0.787611,
		0.802796, 0.177407, 0.569249,
		0.366160, -0.900168, -0.235848,
		33.137363, 34.144299, 42.415619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.507797, 34.917950, 42.446926>,  <32.881050, 34.774414, 42.580711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.507797, 34.917950, 42.446926> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.448151, 34.565609, 42.267208>,  <33.412365, 34.354206, 42.159378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.448151, 34.565609, 42.267208>,  <33.507797, 34.917950, 42.446926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.448151, 34.565609, 42.267208> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507151, 0.321937, -0.799471,
		0.848860, -0.347075, 0.398718,
		-0.149114, -0.880849, -0.449299,
		33.403416, 34.301353, 42.132420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.048824, 34.891232, 41.916698>,  <33.507797, 34.917950, 42.446926>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.048824, 34.891232, 41.916698> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.861355, 34.566013, 41.778542>,  <33.748875, 34.370880, 41.695648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.861355, 34.566013, 41.778542>,  <34.048824, 34.891232, 41.916698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.861355, 34.566013, 41.778542> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452517, 0.114828, -0.884331,
		0.758665, -0.570760, 0.314101,
		-0.468674, -0.813048, -0.345395,
		33.720753, 34.322098, 41.674923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544605, 34.526459, 41.451302>,  <34.048824, 34.891232, 41.916698>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.544605, 34.526459, 41.451302> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.165730, 34.436970, 41.359413>,  <33.938404, 34.383278, 41.304279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.165730, 34.436970, 41.359413>,  <34.544605, 34.526459, 41.451302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.165730, 34.436970, 41.359413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160254, 0.290250, -0.943437,
		0.277740, -0.930433, -0.239072,
		-0.947195, -0.223718, -0.229719,
		33.881573, 34.369854, 41.290497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168526, 33.982635, 41.449898>,  <34.544605, 34.526459, 41.451302>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168526, 33.982635, 41.449898> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.518993, 34.175385, 41.445358>,  <35.729275, 34.291035, 41.442635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.518993, 34.175385, 41.445358>,  <35.168526, 33.982635, 41.449898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518993, 34.175385, 41.445358> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247657, -0.429854, 0.868269,
		0.413516, -0.763561, -0.495964,
		0.876168, 0.481872, -0.011350,
		35.781845, 34.319946, 41.441952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717373, 33.464302, 41.551640>,  <35.168526, 33.982635, 41.449898>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717373, 33.464302, 41.551640> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.870968, 33.819160, 41.654034>,  <35.963123, 34.032074, 41.715469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.870968, 33.819160, 41.654034>,  <35.717373, 33.464302, 41.551640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.870968, 33.819160, 41.654034> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393067, -0.407920, 0.824075,
		0.835497, -0.215810, -0.505342,
		0.383983, 0.887145, 0.255988,
		35.986164, 34.085304, 41.730831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322212, 33.286716, 41.817646>,  <35.717373, 33.464302, 41.551640>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.322212, 33.286716, 41.817646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.269302, 33.651054, 41.974037>,  <36.237556, 33.869656, 42.067871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.269302, 33.651054, 41.974037>,  <36.322212, 33.286716, 41.817646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269302, 33.651054, 41.974037> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204935, -0.360795, 0.909851,
		0.969797, 0.200472, -0.138941,
		-0.132270, 0.910845, 0.390982,
		36.229622, 33.924309, 42.091331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.932125, 33.460487, 42.271820>,  <36.322212, 33.286716, 41.817646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.932125, 33.460487, 42.271820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.605232, 33.656639, 42.392921>,  <36.409096, 33.774330, 42.465584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.605232, 33.656639, 42.392921>,  <36.932125, 33.460487, 42.271820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605232, 33.656639, 42.392921> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077879, -0.426547, 0.901106,
		0.571021, 0.759992, 0.310399,
		-0.817233, 0.490377, 0.302755,
		36.360062, 33.803753, 42.483749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099232, 33.764935, 42.942039>,  <36.932125, 33.460487, 42.271820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.099232, 33.764935, 42.942039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.699974, 33.781483, 42.924133>,  <36.460419, 33.791412, 42.913391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.699974, 33.781483, 42.924133>,  <37.099232, 33.764935, 42.942039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699974, 33.781483, 42.924133> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057644, -0.401844, 0.913892,
		0.019823, 0.914773, 0.403482,
		-0.998140, 0.041374, -0.044765,
		36.400532, 33.793896, 42.910706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.888863, 34.011097, 43.573868>,  <37.099232, 33.764935, 42.942039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.888863, 34.011097, 43.573868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.568081, 33.826607, 43.422001>,  <36.375614, 33.715912, 43.330879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.568081, 33.826607, 43.422001>,  <36.888863, 34.011097, 43.573868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568081, 33.826607, 43.422001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194375, -0.399501, 0.895889,
		-0.564882, 0.792257, 0.230731,
		-0.801952, -0.461223, -0.379666,
		36.327496, 33.688240, 43.308102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489140, 34.026920, 44.150200>,  <36.888863, 34.011097, 43.573868>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489140, 34.026920, 44.150200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.331314, 33.752281, 43.905937>,  <36.236618, 33.587498, 43.759380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.331314, 33.752281, 43.905937>,  <36.489140, 34.026920, 44.150200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.331314, 33.752281, 43.905937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307222, -0.527758, 0.791887,
		-0.865987, 0.500059, -0.002702,
		-0.394564, -0.686594, -0.610661,
		36.212944, 33.546303, 43.722740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861340, 34.037716, 44.417786>,  <36.489140, 34.026920, 44.150200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861340, 34.037716, 44.417786> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.910179, 33.683910, 44.237682>,  <35.939484, 33.471626, 44.129620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.910179, 33.683910, 44.237682>,  <35.861340, 34.037716, 44.417786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910179, 33.683910, 44.237682> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347349, -0.463043, 0.815438,
		-0.929752, 0.056828, -0.363774,
		0.122103, -0.884512, -0.450255,
		35.946812, 33.418556, 44.102608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290791, 33.729156, 44.506630>,  <35.861340, 34.037716, 44.417786>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290791, 33.729156, 44.506630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.548473, 33.432564, 44.431576>,  <35.703083, 33.254608, 44.386543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.548473, 33.432564, 44.431576>,  <35.290791, 33.729156, 44.506630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548473, 33.432564, 44.431576> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435369, -0.557183, 0.707107,
		-0.628854, -0.373831, -0.681758,
		0.644202, -0.741483, -0.187632,
		35.741734, 33.210117, 44.375286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.941334, 33.195366, 44.288784>,  <35.290791, 33.729156, 44.506630>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.941334, 33.195366, 44.288784> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.285103, 33.056347, 44.438774>,  <35.491364, 32.972935, 44.528767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.285103, 33.056347, 44.438774>,  <34.941334, 33.195366, 44.288784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.285103, 33.056347, 44.438774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509518, -0.642869, 0.571936,
		0.042283, -0.682589, -0.729578,
		0.859420, -0.347550, 0.374974,
		35.542931, 32.952080, 44.551266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723202, 32.486801, 44.617634>,  <34.941334, 33.195366, 44.288784>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723202, 32.486801, 44.617634> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.082291, 32.574867, 44.770271>,  <35.297745, 32.627708, 44.861855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.082291, 32.574867, 44.770271>,  <34.723202, 32.486801, 44.617634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.082291, 32.574867, 44.770271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148579, -0.664115, 0.732718,
		0.414744, -0.714477, -0.563481,
		0.897726, 0.220169, 0.381594,
		35.351608, 32.640919, 44.884750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.074200, 31.905050, 44.763783>,  <34.723202, 32.486801, 44.617634>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.074200, 31.905050, 44.763783> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.244354, 32.172955, 45.007248>,  <35.346447, 32.333698, 45.153328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.244354, 32.172955, 45.007248>,  <35.074200, 31.905050, 44.763783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244354, 32.172955, 45.007248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088086, -0.638709, 0.764390,
		0.900716, -0.378774, -0.212700,
		0.425385, 0.669762, 0.608660,
		35.371971, 32.373882, 45.189846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.573090, 31.527233, 45.022923>,  <35.074200, 31.905050, 44.763783>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.573090, 31.527233, 45.022923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.505047, 31.825069, 45.281116>,  <35.464222, 32.003773, 45.436031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.505047, 31.825069, 45.281116>,  <35.573090, 31.527233, 45.022923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.505047, 31.825069, 45.281116> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066640, -0.662220, 0.746340,
		0.983169, 0.083944, 0.162269,
		-0.170109, 0.744593, 0.645480,
		35.454014, 32.048447, 45.474762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.079651, 31.438631, 45.528015>,  <35.573090, 31.527233, 45.022923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.079651, 31.438631, 45.528015> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.807339, 31.675604, 45.700325>,  <35.643951, 31.817787, 45.803711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.807339, 31.675604, 45.700325>,  <36.079651, 31.438631, 45.528015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.807339, 31.675604, 45.700325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082609, -0.646440, 0.758479,
		0.727818, 0.480769, 0.489021,
		-0.680776, 0.592432, 0.430775,
		35.603107, 31.853334, 45.829559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.658691, 31.830780, 45.826759>,  <36.079651, 31.438631, 45.528015>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.658691, 31.830780, 45.826759> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.054661, 31.779085, 45.849899>,  <37.292244, 31.748068, 45.863785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.054661, 31.779085, 45.849899>,  <36.658691, 31.830780, 45.826759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.054661, 31.779085, 45.849899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133828, 0.720544, -0.680373,
		0.046247, 0.681260, 0.730580,
		0.989925, -0.129237, 0.057848,
		37.351639, 31.740314, 45.867252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968979, 32.523964, 45.767776>,  <36.658691, 31.830780, 45.826759>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968979, 32.523964, 45.767776> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.277370, 32.286869, 45.674606>,  <37.462406, 32.144611, 45.618706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.277370, 32.286869, 45.674606>,  <36.968979, 32.523964, 45.767776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277370, 32.286869, 45.674606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344819, 0.696003, -0.629825,
		0.535439, 0.405264, 0.740990,
		0.770977, -0.592740, -0.232924,
		37.508663, 32.109047, 45.604729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446865, 32.960636, 45.729000>,  <36.968979, 32.523964, 45.767776>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446865, 32.960636, 45.729000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.587132, 32.649715, 45.520065>,  <37.671291, 32.463161, 45.394703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.587132, 32.649715, 45.520065>,  <37.446865, 32.960636, 45.729000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587132, 32.649715, 45.520065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441710, 0.629096, -0.639633,
		0.825789, -0.006427, 0.563942,
		0.350663, -0.777301, -0.522340,
		37.692329, 32.416527, 45.363365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105583, 33.154015, 45.632694>,  <37.446865, 32.960636, 45.729000>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.105583, 33.154015, 45.632694> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.013897, 32.883297, 45.352863>,  <37.958885, 32.720867, 45.184963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.013897, 32.883297, 45.352863>,  <38.105583, 33.154015, 45.632694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.013897, 32.883297, 45.352863> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510296, 0.528479, -0.678460,
		0.828891, -0.512504, 0.224230,
		-0.229212, -0.676793, -0.699580,
		37.945133, 32.680260, 45.142990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721962, 33.089046, 45.225517>,  <38.105583, 33.154015, 45.632694>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.721962, 33.089046, 45.225517> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.439320, 32.914742, 45.002510>,  <38.269733, 32.810158, 44.868706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.439320, 32.914742, 45.002510>,  <38.721962, 33.089046, 45.225517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439320, 32.914742, 45.002510> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493945, 0.260413, -0.829580,
		0.506682, -0.861568, 0.031232,
		-0.706606, -0.435760, -0.557513,
		38.227337, 32.784012, 44.835255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135475, 32.792194, 44.678734>,  <38.721962, 33.089046, 45.225517>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.135475, 32.792194, 44.678734> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.752419, 32.843204, 44.575459>,  <38.522583, 32.873810, 44.513493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.752419, 32.843204, 44.575459>,  <39.135475, 32.792194, 44.678734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752419, 32.843204, 44.575459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287747, 0.388770, -0.875248,
		-0.011235, -0.912467, -0.408996,
		-0.957640, 0.127521, -0.258192,
		38.465126, 32.881462, 44.498001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142200, 32.692619, 43.864983>,  <39.135475, 32.792194, 44.678734>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142200, 32.692619, 43.864983> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.802998, 32.887779, 43.947765>,  <38.599476, 33.004875, 43.997437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.802998, 32.887779, 43.947765>,  <39.142200, 32.692619, 43.864983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.802998, 32.887779, 43.947765> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022985, 0.423990, -0.905375,
		-0.529483, -0.763010, -0.370762,
		-0.848009, 0.487903, 0.206957,
		38.548595, 33.034149, 44.009853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796982, 32.594456, 43.287865>,  <39.142200, 32.692619, 43.864983>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.796982, 32.594456, 43.287865> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.665474, 32.915668, 43.486683>,  <38.586567, 33.108395, 43.605972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.665474, 32.915668, 43.486683>,  <38.796982, 32.594456, 43.287865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.665474, 32.915668, 43.486683> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029313, 0.534726, -0.844517,
		-0.943954, -0.263084, -0.199342,
		-0.328773, 0.803028, 0.497045,
		38.566841, 33.156578, 43.635796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.213711, 32.885292, 42.896152>,  <38.796982, 32.594456, 43.287865>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.213711, 32.885292, 42.896152> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.376770, 33.177254, 43.115631>,  <38.474606, 33.352428, 43.247318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.376770, 33.177254, 43.115631>,  <38.213711, 32.885292, 42.896152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.376770, 33.177254, 43.115631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169555, 0.529936, -0.830915,
		-0.897258, 0.431756, 0.092270,
		0.407650, 0.729900, 0.548696,
		38.499065, 33.396225, 43.280239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936905, 33.550461, 42.630047>,  <38.213711, 32.885292, 42.896152>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936905, 33.550461, 42.630047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.284679, 33.628391, 42.811649>,  <38.493343, 33.675148, 42.920609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.284679, 33.628391, 42.811649>,  <37.936905, 33.550461, 42.630047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284679, 33.628391, 42.811649> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250371, 0.618452, -0.744870,
		-0.425899, 0.761288, 0.488928,
		0.869439, 0.194826, 0.454003,
		38.545509, 33.686840, 42.947849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971527, 34.183853, 42.525826>,  <37.936905, 33.550461, 42.630047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.971527, 34.183853, 42.525826> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.353146, 34.099552, 42.611034>,  <38.582115, 34.048969, 42.662159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.353146, 34.099552, 42.611034>,  <37.971527, 34.183853, 42.525826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.353146, 34.099552, 42.611034> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298576, 0.729017, -0.615944,
		-0.025486, 0.651243, 0.758441,
		0.954045, -0.210754, 0.213026,
		38.639359, 34.036327, 42.674942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300285, 34.846668, 42.694080>,  <37.971527, 34.183853, 42.525826>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300285, 34.846668, 42.694080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.583847, 34.580231, 42.601322>,  <38.753983, 34.420368, 42.545666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.583847, 34.580231, 42.601322>,  <38.300285, 34.846668, 42.694080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.583847, 34.580231, 42.601322> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306066, 0.586741, -0.749706,
		0.635436, 0.460494, 0.619812,
		0.708904, -0.666093, -0.231894,
		38.796516, 34.380402, 42.531754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709660, 35.354477, 42.478500>,  <38.300285, 34.846668, 42.694080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.709660, 35.354477, 42.478500> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.881546, 35.011517, 42.365219>,  <38.984676, 34.805740, 42.297249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.881546, 35.011517, 42.365219>,  <38.709660, 35.354477, 42.478500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881546, 35.011517, 42.365219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389870, 0.459074, -0.798280,
		0.814460, 0.232619, 0.531547,
		0.429715, -0.857402, -0.283207,
		39.010460, 34.754295, 42.280258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.421642, 35.585228, 42.403542>,  <38.709660, 35.354477, 42.478500>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.421642, 35.585228, 42.403542> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.309021, 35.258751, 42.201725>,  <39.241447, 35.062866, 42.080635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.309021, 35.258751, 42.201725>,  <39.421642, 35.585228, 42.403542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.309021, 35.258751, 42.201725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005271, 0.524492, -0.851399,
		0.959531, -0.242373, -0.143371,
		-0.281553, -0.816188, -0.504544,
		39.224556, 35.013893, 42.050362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.180614, 29.034586, 39.941280> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.936972, 29.171625, 40.227390>,  <25.790787, 29.253849, 40.399055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.936972, 29.171625, 40.227390>,  <26.180614, 29.034586, 39.941280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.936972, 29.171625, 40.227390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369320, 0.675601, -0.638096,
		-0.701850, -0.652833, -0.284984,
		-0.609106, 0.342597, 0.715275,
		25.754240, 29.274405, 40.441975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.530853, 29.009352, 39.657467>,  <26.180614, 29.034586, 39.941280>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.530853, 29.009352, 39.657467> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.567394, 29.301668, 39.928051>,  <25.589319, 29.477058, 40.090401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.567394, 29.301668, 39.928051>,  <25.530853, 29.009352, 39.657467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.567394, 29.301668, 39.928051> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205636, 0.678502, -0.705230,
		-0.974355, -0.074680, 0.212260,
		0.091352, 0.730793, 0.676459,
		25.594799, 29.520906, 40.130989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.941967, 29.510975, 39.601795>,  <25.530853, 29.009352, 39.657467>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.941967, 29.510975, 39.601795> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.204042, 29.720968, 39.819096>,  <25.361288, 29.846964, 39.949474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.204042, 29.720968, 39.819096>,  <24.941967, 29.510975, 39.601795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.204042, 29.720968, 39.819096> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075578, 0.761032, -0.644297,
		-0.751674, 0.381079, 0.538298,
		0.655190, 0.524984, 0.543247,
		25.400600, 29.878464, 39.982071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.581945, 30.151159, 39.807667>,  <24.941967, 29.510975, 39.601795>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.581945, 30.151159, 39.807667> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.979517, 30.191277, 39.789570>,  <25.218060, 30.215347, 39.778713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.979517, 30.191277, 39.789570>,  <24.581945, 30.151159, 39.807667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.979517, 30.191277, 39.789570> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103259, 0.708355, -0.698262,
		-0.037984, 0.698694, 0.714411,
		0.993929, 0.100292, -0.045241,
		25.277695, 30.221365, 39.775997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.555334, 30.823832, 39.661770>,  <24.581945, 30.151159, 39.807667>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.555334, 30.823832, 39.661770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.935167, 30.719368, 39.592392>,  <25.163067, 30.656689, 39.550766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.935167, 30.719368, 39.592392>,  <24.555334, 30.823832, 39.661770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.935167, 30.719368, 39.592392> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107963, 0.791808, -0.601152,
		0.294335, 0.552119, 0.780084,
		0.949584, -0.261160, -0.173449,
		25.220043, 30.641020, 39.540356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.943054, 31.393099, 39.742294>,  <24.555334, 30.823832, 39.661770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.943054, 31.393099, 39.742294> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.171583, 31.171171, 39.500378>,  <25.308701, 31.038015, 39.355228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.171583, 31.171171, 39.500378>,  <24.943054, 31.393099, 39.742294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.171583, 31.171171, 39.500378> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239849, 0.817593, -0.523464,
		0.784897, 0.154010, 0.600182,
		0.571323, -0.554818, -0.604787,
		25.342979, 31.004726, 39.318943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.481724, 31.955284, 39.488029>,  <24.943054, 31.393099, 39.742294>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.481724, 31.955284, 39.488029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.534910, 31.636913, 39.251785>,  <25.566822, 31.445890, 39.110039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.534910, 31.636913, 39.251785>,  <25.481724, 31.955284, 39.488029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.534910, 31.636913, 39.251785> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329650, 0.597490, -0.730984,
		0.934693, -0.097497, 0.341824,
		0.132967, -0.795927, -0.590610,
		25.574800, 31.398134, 39.074604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.155270, 32.064655, 39.161316>,  <25.481724, 31.955284, 39.488029>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.155270, 32.064655, 39.161316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.947866, 31.816936, 38.925480>,  <25.823425, 31.668304, 38.783978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.947866, 31.816936, 38.925480>,  <26.155270, 32.064655, 39.161316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.947866, 31.816936, 38.925480> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417654, 0.418250, -0.806618,
		0.746134, -0.664482, 0.041787,
		-0.518506, -0.619298, -0.589594,
		25.792315, 31.631147, 38.748600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.647545, 31.638466, 38.645050>,  <26.155270, 32.064655, 39.161316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.647545, 31.638466, 38.645050> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.277615, 31.650993, 38.493412>,  <26.055656, 31.658510, 38.402428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.277615, 31.650993, 38.493412>,  <26.647545, 31.638466, 38.645050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.277615, 31.650993, 38.493412> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369224, 0.313603, -0.874830,
		0.091488, -0.949037, -0.301592,
		-0.924826, 0.031319, -0.379098,
		26.000166, 31.660389, 38.379681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.620911, 31.338890, 37.963074>,  <26.647545, 31.638466, 38.645050>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.620911, 31.338890, 37.963074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.291924, 31.566347, 37.957577>,  <26.094530, 31.702822, 37.954277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.291924, 31.566347, 37.957577>,  <26.620911, 31.338890, 37.963074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.291924, 31.566347, 37.957577> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159567, 0.207461, -0.965142,
		-0.545969, -0.795993, -0.261368,
		-0.822470, 0.568643, -0.013747,
		26.045183, 31.736940, 37.953453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.544147, 31.380774, 37.320854>,  <26.620911, 31.338890, 37.963074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.544147, 31.380774, 37.320854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.282187, 31.659540, 37.437756>,  <26.125010, 31.826799, 37.507896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.282187, 31.659540, 37.437756>,  <26.544147, 31.380774, 37.320854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.282187, 31.659540, 37.437756> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220425, 0.546071, -0.808220,
		-0.722854, -0.464882, -0.511240,
		-0.654900, 0.696915, 0.292258,
		26.085716, 31.868614, 37.525433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.096025, 31.488169, 36.802677>,  <26.544147, 31.380774, 37.320854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.096025, 31.488169, 36.802677> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.130686, 31.807430, 37.041153>,  <26.151482, 31.998987, 37.184238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.130686, 31.807430, 37.041153>,  <26.096025, 31.488169, 36.802677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.130686, 31.807430, 37.041153> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636114, 0.416238, -0.649696,
		-0.766714, 0.435543, -0.471648,
		0.086653, 0.798153, 0.596191,
		26.156681, 32.046875, 37.220009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.862276, 32.065727, 36.392105>,  <26.096025, 31.488169, 36.802677>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.862276, 32.065727, 36.392105> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.099413, 32.202618, 36.683701>,  <26.241695, 32.284752, 36.858658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.099413, 32.202618, 36.683701>,  <25.862276, 32.065727, 36.392105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.099413, 32.202618, 36.683701> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456697, 0.602706, -0.654350,
		-0.663298, 0.720852, 0.201017,
		0.592844, 0.342225, 0.728984,
		26.277266, 32.305286, 36.902397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.760349, 32.758224, 36.324905>,  <25.862276, 32.065727, 36.392105>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.760349, 32.758224, 36.324905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.103928, 32.696030, 36.520058>,  <26.310076, 32.658710, 36.637150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.103928, 32.696030, 36.520058>,  <25.760349, 32.758224, 36.324905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.103928, 32.696030, 36.520058> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479230, 0.579783, -0.658931,
		-0.180410, 0.799797, 0.572519,
		0.858948, -0.155490, 0.487885,
		26.361612, 32.649384, 36.666424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.020807, 33.328693, 36.225735>,  <25.760349, 32.758224, 36.324905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.020807, 33.328693, 36.225735> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.359432, 33.139751, 36.323887>,  <26.562607, 33.026386, 36.382778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.359432, 33.139751, 36.323887>,  <26.020807, 33.328693, 36.225735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.359432, 33.139751, 36.323887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504285, 0.564158, -0.653775,
		0.170380, 0.677204, 0.715797,
		0.846562, -0.472356, 0.245382,
		26.613401, 32.998043, 36.397503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.498976, 33.875568, 36.367847>,  <26.020807, 33.328693, 36.225735>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.498976, 33.875568, 36.367847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.678171, 33.531555, 36.270153>,  <26.785688, 33.325146, 36.211536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.678171, 33.531555, 36.270153>,  <26.498976, 33.875568, 36.367847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.678171, 33.531555, 36.270153> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656476, 0.501887, -0.563159,
		0.606915, 0.091950, 0.789430,
		0.447987, -0.860032, -0.244240,
		26.812567, 33.273544, 36.196880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.186312, 33.970161, 36.415092>,  <26.498976, 33.875568, 36.367847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.186312, 33.970161, 36.415092> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.144106, 33.650135, 36.178867>,  <27.118782, 33.458118, 36.037132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.144106, 33.650135, 36.178867>,  <27.186312, 33.970161, 36.415092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.144106, 33.650135, 36.178867> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376968, 0.517372, -0.768259,
		0.920197, -0.303688, 0.247006,
		-0.105516, -0.800062, -0.590565,
		27.112452, 33.410118, 36.001698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.481220, 34.284409, 35.784946>,  <27.186312, 33.970161, 36.415092>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.481220, 34.284409, 35.784946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.348915, 33.943760, 35.622299>,  <27.269533, 33.739372, 35.524712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.348915, 33.943760, 35.622299>,  <27.481220, 34.284409, 35.784946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.348915, 33.943760, 35.622299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334871, 0.296918, -0.894260,
		0.882303, -0.431951, 0.186974,
		-0.330760, -0.851621, -0.406619,
		27.249687, 33.688274, 35.500313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.888487, 34.149578, 35.191578>,  <27.481220, 34.284409, 35.784946>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.888487, 34.149578, 35.191578> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.571623, 33.922501, 35.101952>,  <27.381504, 33.786255, 35.048176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.571623, 33.922501, 35.101952>,  <27.888487, 34.149578, 35.191578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.571623, 33.922501, 35.101952> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012705, 0.382394, -0.923912,
		0.610181, -0.729040, -0.310130,
		-0.792160, -0.567694, -0.224067,
		27.333975, 33.752193, 35.034733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.058598, 33.614639, 34.700405>,  <27.888487, 34.149578, 35.191578>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.058598, 33.614639, 34.700405> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.706997, 33.800358, 34.656982>,  <27.496037, 33.911789, 34.630928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.706997, 33.800358, 34.656982>,  <28.058598, 33.614639, 34.700405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.706997, 33.800358, 34.656982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313889, 0.392064, -0.864731,
		-0.358930, -0.794175, -0.490363,
		-0.879001, 0.464297, -0.108559,
		27.443296, 33.939648, 34.624416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.216616, 34.126572, 34.107826>,  <28.058598, 33.614639, 34.700405>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.216616, 34.126572, 34.107826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.567436, 34.292892, 34.204071>,  <28.777929, 34.392685, 34.261818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.567436, 34.292892, 34.204071>,  <28.216616, 34.126572, 34.107826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.567436, 34.292892, 34.204071> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275813, -0.845917, 0.456456,
		0.393329, -0.333973, -0.856595,
		0.877052, 0.415798, 0.240610,
		28.830551, 34.417633, 34.276253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.763290, 33.606358, 34.005512>,  <28.216616, 34.126572, 34.107826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.763290, 33.606358, 34.005512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.903008, 33.861347, 34.280212>,  <28.986837, 34.014339, 34.445030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.903008, 33.861347, 34.280212>,  <28.763290, 33.606358, 34.005512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.903008, 33.861347, 34.280212> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293272, -0.770463, 0.566019,
		0.889936, 0.003699, -0.456069,
		0.349291, 0.637473, 0.686748,
		29.007795, 34.052589, 34.486237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.320896, 33.309978, 34.234921>,  <28.763290, 33.606358, 34.005512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.320896, 33.309978, 34.234921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.260551, 33.567028, 34.535393>,  <29.224344, 33.721256, 34.715675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.260551, 33.567028, 34.535393>,  <29.320896, 33.309978, 34.234921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.260551, 33.567028, 34.535393> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360435, -0.671814, 0.647111,
		0.920504, 0.368376, -0.130274,
		-0.150860, 0.642623, 0.751183,
		29.215294, 33.759815, 34.760746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.847126, 33.221207, 34.654552>,  <29.320896, 33.309978, 34.234921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.847126, 33.221207, 34.654552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.597752, 33.406876, 34.906227>,  <29.448128, 33.518276, 35.057232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.597752, 33.406876, 34.906227>,  <29.847126, 33.221207, 34.654552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.597752, 33.406876, 34.906227> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243954, -0.649062, 0.720559,
		0.742842, 0.602714, 0.291412,
		-0.623436, 0.464171, 0.629185,
		29.410721, 33.546127, 35.094982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.244579, 33.314922, 35.295475>,  <29.847126, 33.221207, 34.654552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.244579, 33.314922, 35.295475> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.850674, 33.318527, 35.364944>,  <29.614330, 33.320690, 35.406624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.850674, 33.318527, 35.364944>,  <30.244579, 33.314922, 35.295475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.850674, 33.318527, 35.364944> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114651, -0.717254, 0.687315,
		0.130758, 0.696754, 0.705292,
		-0.984763, 0.009009, 0.173670,
		29.555244, 33.321232, 35.417046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.192680, 33.181648, 36.015316>,  <30.244579, 33.314922, 35.295475>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.192680, 33.181648, 36.015316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.822878, 33.106701, 35.882545>,  <29.600996, 33.061733, 35.802883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.822878, 33.106701, 35.882545>,  <30.192680, 33.181648, 36.015316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.822878, 33.106701, 35.882545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139375, -0.644350, 0.751922,
		-0.354768, 0.741421, 0.569592,
		-0.924508, -0.187371, -0.331930,
		29.545527, 33.050491, 35.782967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.696583, 33.324139, 36.588024>,  <30.192680, 33.181648, 36.015316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.696583, 33.324139, 36.588024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.519238, 33.066051, 36.339149>,  <29.412830, 32.911198, 36.189823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.519238, 33.066051, 36.339149>,  <29.696583, 33.324139, 36.588024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.519238, 33.066051, 36.339149> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346504, -0.516804, 0.782846,
		-0.826658, 0.562677, 0.005561,
		-0.443364, -0.645219, -0.622190,
		29.386229, 32.872486, 36.152493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.189442, 33.246914, 37.027927>,  <29.696583, 33.324139, 36.588024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.189442, 33.246914, 37.027927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.156298, 32.969761, 36.741417>,  <29.136412, 32.803471, 36.569511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.156298, 32.969761, 36.741417>,  <29.189442, 33.246914, 37.027927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.156298, 32.969761, 36.741417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480642, -0.601842, 0.637785,
		-0.872994, 0.397118, -0.283160,
		-0.082858, -0.692880, -0.716276,
		29.131441, 32.761898, 36.526535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.511478, 32.935024, 37.083256>,  <29.189442, 33.246914, 37.027927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.511478, 32.935024, 37.083256> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.764341, 32.678871, 36.908768>,  <28.916059, 32.525181, 36.804073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.764341, 32.678871, 36.908768>,  <28.511478, 32.935024, 37.083256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.764341, 32.678871, 36.908768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208230, -0.682675, 0.700425,
		-0.746336, -0.351945, -0.564904,
		0.632157, -0.640383, -0.436220,
		28.953989, 32.486755, 36.777901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.270212, 32.328686, 37.219070>,  <28.511478, 32.935024, 37.083256>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.270212, 32.328686, 37.219070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.629927, 32.210194, 37.090363>,  <28.845755, 32.139099, 37.013138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.629927, 32.210194, 37.090363>,  <28.270212, 32.328686, 37.219070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.629927, 32.210194, 37.090363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007835, -0.746495, 0.665345,
		-0.437293, -0.595813, -0.673633,
		0.899285, -0.296228, -0.321769,
		28.899712, 32.121326, 36.993832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.208120, 31.593376, 37.084820>,  <28.270212, 32.328686, 37.219070>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.208120, 31.593376, 37.084820> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.595072, 31.647669, 37.170380>,  <28.827244, 31.680244, 37.221714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.595072, 31.647669, 37.170380>,  <28.208120, 31.593376, 37.084820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.595072, 31.647669, 37.170380> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088975, -0.608506, 0.788545,
		0.237190, -0.781854, -0.576580,
		0.967380, 0.135734, 0.213897,
		28.885286, 31.688389, 37.234550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.423861, 30.958559, 37.151482>,  <28.208120, 31.593376, 37.084820>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.423861, 30.958559, 37.151482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.705923, 31.181833, 37.326382>,  <28.875160, 31.315798, 37.431320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.705923, 31.181833, 37.326382>,  <28.423861, 30.958559, 37.151482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.705923, 31.181833, 37.326382> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052819, -0.573596, 0.817434,
		0.707083, -0.599512, -0.374991,
		0.705155, 0.558187, 0.437246,
		28.917469, 31.349289, 37.457554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.947220, 30.503809, 37.480236>,  <28.423861, 30.958559, 37.151482>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.947220, 30.503809, 37.480236> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.953218, 30.851269, 37.678314>,  <28.956818, 31.059746, 37.797161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.953218, 30.851269, 37.678314>,  <28.947220, 30.503809, 37.480236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.953218, 30.851269, 37.678314> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144860, -0.491916, 0.858507,
		0.989338, 0.058862, -0.133209,
		0.014994, 0.868650, 0.495199,
		28.957716, 31.111864, 37.826874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.242056, 30.209629, 38.011192>,  <28.947220, 30.503809, 37.480236>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.242056, 30.209629, 38.011192> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.159630, 30.581779, 38.132477>,  <29.110174, 30.805069, 38.205246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.159630, 30.581779, 38.132477>,  <29.242056, 30.209629, 38.011192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.159630, 30.581779, 38.132477> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005108, -0.308835, 0.951102,
		0.978525, 0.197538, 0.058887,
		-0.206066, 0.930376, 0.303212,
		29.097811, 30.860893, 38.223442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.677074, 30.354031, 38.585312>,  <29.242056, 30.209629, 38.011192>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.677074, 30.354031, 38.585312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.367231, 30.600740, 38.641266>,  <29.181326, 30.748766, 38.674839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.367231, 30.600740, 38.641266>,  <29.677074, 30.354031, 38.585312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.367231, 30.600740, 38.641266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068489, -0.301695, 0.950941,
		0.628721, 0.727027, 0.275938,
		-0.774609, 0.616776, 0.139889,
		29.134850, 30.785772, 38.683231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.709030, 30.600599, 39.267250>,  <29.677074, 30.354031, 38.585312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.709030, 30.600599, 39.267250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.331512, 30.662447, 39.150398>,  <29.105001, 30.699556, 39.080288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.331512, 30.662447, 39.150398>,  <29.709030, 30.600599, 39.267250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.331512, 30.662447, 39.150398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327767, -0.323824, 0.887529,
		0.042630, 0.933398, 0.356303,
		-0.943796, 0.154619, -0.292132,
		29.048374, 30.708834, 39.062759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.521561, 31.015453, 39.723843>,  <29.709030, 30.600599, 39.267250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.521561, 31.015453, 39.723843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.188301, 30.854147, 39.572456>,  <28.988344, 30.757362, 39.481625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.188301, 30.854147, 39.572456>,  <29.521561, 31.015453, 39.723843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.188301, 30.854147, 39.572456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294668, -0.255418, 0.920833,
		-0.468009, 0.878713, 0.093971,
		-0.833150, -0.403268, -0.378466,
		28.938356, 30.733166, 39.458916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.997807, 31.141558, 40.289780>,  <29.521561, 31.015453, 39.723843>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.997807, 31.141558, 40.289780> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.790104, 30.885738, 40.063030>,  <28.665482, 30.732246, 39.926979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.790104, 30.885738, 40.063030>,  <28.997807, 31.141558, 40.289780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.790104, 30.885738, 40.063030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464323, -0.345748, 0.815391,
		-0.717478, 0.686613, -0.117424,
		-0.519259, -0.639547, -0.566877,
		28.634327, 30.693874, 39.892967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.270521, 31.205065, 40.448040>,  <28.997807, 31.141558, 40.289780>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.270521, 31.205065, 40.448040> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.332573, 30.836845, 40.304642>,  <28.369804, 30.615913, 40.218601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.332573, 30.836845, 40.304642>,  <28.270521, 31.205065, 40.448040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.332573, 30.836845, 40.304642> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524536, -0.384267, 0.759738,
		-0.837136, 0.070188, -0.542473,
		0.155130, -0.920550, -0.358500,
		28.379112, 30.560680, 40.197090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.558304, 30.899132, 40.413322>,  <28.270521, 31.205065, 40.448040>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.558304, 30.899132, 40.413322> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.823383, 30.599865, 40.426441>,  <27.982431, 30.420305, 40.434311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.823383, 30.599865, 40.426441>,  <27.558304, 30.899132, 40.413322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.823383, 30.599865, 40.426441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610622, -0.514474, 0.602044,
		-0.433557, -0.419000, -0.797789,
		0.662698, -0.748168, 0.032797,
		28.022192, 30.375414, 40.436279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.131920, 30.201561, 40.323406>,  <27.558304, 30.899132, 40.413322>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.131920, 30.201561, 40.323406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.471994, 30.113651, 40.514774>,  <27.676039, 30.060905, 40.629597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.471994, 30.113651, 40.514774>,  <27.131920, 30.201561, 40.323406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.471994, 30.113651, 40.514774> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445362, -0.784843, 0.430900,
		0.280783, -0.579414, -0.765141,
		0.850184, -0.219776, 0.478420,
		27.727049, 30.047718, 40.658298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.115011, 29.570005, 40.447090>,  <27.131920, 30.201561, 40.323406>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.115011, 29.570005, 40.447090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.374653, 29.669722, 40.734566>,  <27.530437, 29.729551, 40.907051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.374653, 29.669722, 40.734566>,  <27.115011, 29.570005, 40.447090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.374653, 29.669722, 40.734566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610530, -0.392860, 0.687687,
		0.453778, -0.885164, -0.102810,
		0.649106, 0.249289, 0.718691,
		27.569386, 29.744509, 40.950172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.932140, 29.373678, 45.881653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.591015, 29.227695, 45.732250>,  <39.386337, 29.140106, 45.642609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.591015, 29.227695, 45.732250>,  <39.932140, 29.373678, 45.881653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591015, 29.227695, 45.732250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146142, -0.519866, 0.841654,
		-0.501341, 0.772363, 0.390016,
		-0.852818, -0.364958, -0.373505,
		39.335171, 29.118208, 45.620197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.523052, 29.351051, 46.480000>,  <39.932140, 29.373678, 45.881653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.523052, 29.351051, 46.480000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.365513, 29.079336, 46.232304>,  <39.270988, 28.916307, 46.083687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.365513, 29.079336, 46.232304>,  <39.523052, 29.351051, 46.480000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365513, 29.079336, 46.232304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211825, -0.588477, 0.780272,
		-0.894435, 0.438478, 0.087880,
		-0.393847, -0.679288, -0.619235,
		39.247360, 28.875549, 46.046532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.913780, 29.149681, 46.830677>,  <39.523052, 29.351051, 46.480000>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.913780, 29.149681, 46.830677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.974701, 28.867638, 46.553658>,  <39.011253, 28.698412, 46.387444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.974701, 28.867638, 46.553658>,  <38.913780, 29.149681, 46.830677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.974701, 28.867638, 46.553658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375410, -0.689479, 0.619423,
		-0.914261, 0.165655, -0.369711,
		0.152297, -0.705108, -0.692552,
		39.020390, 28.656105, 46.345890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325752, 28.780724, 46.784321>,  <38.913780, 29.149681, 46.830677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.325752, 28.780724, 46.784321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.586357, 28.526321, 46.618900>,  <38.742722, 28.373680, 46.519646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.586357, 28.526321, 46.618900>,  <38.325752, 28.780724, 46.784321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.586357, 28.526321, 46.618900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365470, -0.740831, 0.563562,
		-0.664801, -0.216028, -0.715103,
		0.651515, -0.636005, -0.413553,
		38.781811, 28.335520, 46.494835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962902, 28.233122, 46.624630>,  <38.325752, 28.780724, 46.784321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.962902, 28.233122, 46.624630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.339031, 28.097137, 46.630512>,  <38.564709, 28.015547, 46.634041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.339031, 28.097137, 46.630512>,  <37.962902, 28.233122, 46.624630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.339031, 28.097137, 46.630512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279071, -0.745728, 0.604987,
		-0.194703, -0.572990, -0.796099,
		0.940325, -0.339961, 0.014710,
		38.621128, 27.995150, 46.634926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.958000, 27.539179, 46.326519>,  <37.962902, 28.233122, 46.624630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.958000, 27.539179, 46.326519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.301266, 27.552580, 46.531433>,  <38.507225, 27.560621, 46.654381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.301266, 27.552580, 46.531433>,  <37.958000, 27.539179, 46.326519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.301266, 27.552580, 46.531433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254428, -0.838948, 0.481075,
		0.445897, -0.543180, -0.711429,
		0.858162, 0.033503, 0.512284,
		38.558716, 27.562632, 46.685120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261646, 26.894979, 46.330959>,  <37.958000, 27.539179, 46.326519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.261646, 26.894979, 46.330959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.445488, 27.059675, 46.645725>,  <38.555794, 27.158493, 46.834583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.445488, 27.059675, 46.645725>,  <38.261646, 26.894979, 46.330959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445488, 27.059675, 46.645725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333898, -0.740931, 0.582695,
		0.822970, -0.530556, -0.203053,
		0.459601, 0.411742, 0.786916,
		38.583366, 27.183197, 46.881802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751991, 26.389948, 46.695698>,  <38.261646, 26.894979, 46.330959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.751991, 26.389948, 46.695698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.670147, 26.665071, 46.974281>,  <38.621040, 26.830145, 47.141430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.670147, 26.665071, 46.974281>,  <38.751991, 26.389948, 46.695698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670147, 26.665071, 46.974281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288173, -0.722306, 0.628674,
		0.935463, -0.072067, 0.346000,
		-0.204611, 0.687809, 0.696458,
		38.608765, 26.871414, 47.183220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073082, 26.030857, 47.239437>,  <38.751991, 26.389948, 46.695698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.073082, 26.030857, 47.239437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.841785, 26.323551, 47.383774>,  <38.703007, 26.499166, 47.470375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.841785, 26.323551, 47.383774>,  <39.073082, 26.030857, 47.239437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.841785, 26.323551, 47.383774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281787, -0.594179, 0.753358,
		0.765660, 0.333942, 0.549771,
		-0.578240, 0.731734, 0.360839,
		38.668312, 26.543072, 47.492027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170513, 25.889040, 47.889347>,  <39.073082, 26.030857, 47.239437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.170513, 25.889040, 47.889347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.873428, 26.156502, 47.903675>,  <38.695179, 26.316978, 47.912273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.873428, 26.156502, 47.903675>,  <39.170513, 25.889040, 47.889347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873428, 26.156502, 47.903675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304424, -0.384822, 0.871342,
		0.596412, 0.636249, 0.489366,
		-0.742710, 0.668654, 0.035823,
		38.650616, 26.357098, 47.914421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207848, 26.266565, 48.540035>,  <39.170513, 25.889040, 47.889347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.207848, 26.266565, 48.540035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.829315, 26.239647, 48.413582>,  <38.602196, 26.223495, 48.337711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.829315, 26.239647, 48.413582>,  <39.207848, 26.266565, 48.540035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.829315, 26.239647, 48.413582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292278, -0.239383, 0.925888,
		-0.137985, 0.968590, 0.206865,
		-0.946326, -0.067297, -0.316129,
		38.545418, 26.219458, 48.318745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942879, 26.662455, 49.125759>,  <39.207848, 26.266565, 48.540035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942879, 26.662455, 49.125759> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.656559, 26.450583, 48.943741>,  <38.484768, 26.323460, 48.834530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.656559, 26.450583, 48.943741>,  <38.942879, 26.662455, 49.125759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656559, 26.450583, 48.943741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474121, -0.109777, 0.873589,
		-0.512677, 0.841063, -0.172554,
		-0.715801, -0.529681, -0.455046,
		38.441818, 26.291677, 48.807228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.176556, 27.061308, 49.081417>,  <38.942879, 26.662455, 49.125759>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.176556, 27.061308, 49.081417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.170536, 26.661791, 49.100124>,  <38.166924, 26.422081, 49.111351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.170536, 26.661791, 49.100124>,  <38.176556, 27.061308, 49.081417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.170536, 26.661791, 49.100124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516428, 0.047820, 0.854995,
		-0.856198, -0.011283, -0.516524,
		-0.015053, -0.998793, 0.046771,
		38.166019, 26.362154, 49.114155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.228252, 26.974657, 49.821297>,  <38.176556, 27.061308, 49.081417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.228252, 26.974657, 49.821297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.396835, 27.022327, 50.180889>,  <38.497986, 27.050930, 50.396645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.396835, 27.022327, 50.180889>,  <38.228252, 26.974657, 49.821297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396835, 27.022327, 50.180889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556834, 0.748425, -0.360272,
		-0.715757, 0.652424, 0.249068,
		0.421459, 0.119178, 0.898982,
		38.523273, 27.058081, 50.450584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854492, 27.531088, 49.800671>,  <38.228252, 26.974657, 49.821297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.854492, 27.531088, 49.800671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.631336, 27.817633, 49.968281>,  <37.497444, 27.989559, 50.068848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.631336, 27.817633, 49.968281>,  <37.854492, 27.531088, 49.800671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631336, 27.817633, 49.968281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151152, 0.408753, -0.900041,
		-0.816034, -0.565461, -0.119760,
		-0.557891, 0.716362, 0.419027,
		37.463970, 28.032541, 50.093990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297150, 27.571079, 49.367527>,  <37.854492, 27.531088, 49.800671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.297150, 27.571079, 49.367527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.325340, 27.914619, 49.570469>,  <37.342255, 28.120743, 49.692234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.325340, 27.914619, 49.570469>,  <37.297150, 27.571079, 49.367527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325340, 27.914619, 49.570469> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026936, 0.506798, -0.861644,
		-0.997149, 0.074395, 0.012586,
		0.070480, 0.858848, 0.507358,
		37.346485, 28.172274, 49.722675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.837456, 28.041895, 49.033596>,  <37.297150, 27.571079, 49.367527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.837456, 28.041895, 49.033596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.083008, 28.280405, 49.240520>,  <37.230339, 28.423512, 49.364674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.083008, 28.280405, 49.240520>,  <36.837456, 28.041895, 49.033596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.083008, 28.280405, 49.240520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043529, 0.679894, -0.732017,
		-0.788200, 0.426851, 0.443327,
		0.613878, 0.596273, 0.517312,
		37.267170, 28.459288, 49.395714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479637, 28.702351, 48.985741>,  <36.837456, 28.041895, 49.033596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479637, 28.702351, 48.985741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.854927, 28.782646, 49.098476>,  <37.080101, 28.830824, 49.166119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.854927, 28.782646, 49.098476>,  <36.479637, 28.702351, 48.985741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.854927, 28.782646, 49.098476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032426, 0.861941, -0.505971,
		-0.344495, 0.465577, 0.815206,
		0.938228, 0.200738, 0.281837,
		37.136395, 28.842867, 49.183029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542454, 29.409662, 49.185253>,  <36.479637, 28.702351, 48.985741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542454, 29.409662, 49.185253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.912083, 29.300446, 49.078270>,  <37.133862, 29.234915, 49.014080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.912083, 29.300446, 49.078270>,  <36.542454, 29.409662, 49.185253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.912083, 29.300446, 49.078270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084550, 0.828458, -0.553632,
		0.372745, 0.488983, 0.788642,
		0.924074, -0.273043, -0.267460,
		37.189304, 29.218533, 48.998032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.932735, 29.991217, 49.341122>,  <36.542454, 29.409662, 49.185253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.932735, 29.991217, 49.341122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.128929, 29.789291, 49.056984>,  <37.246647, 29.668137, 48.886501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.128929, 29.789291, 49.056984>,  <36.932735, 29.991217, 49.341122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.128929, 29.789291, 49.056984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227884, 0.861064, -0.454575,
		0.841126, 0.061086, 0.537378,
		0.490485, -0.504815, -0.710343,
		37.276073, 29.637846, 48.843880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436832, 30.443886, 49.061405>,  <36.932735, 29.991217, 49.341122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.436832, 30.443886, 49.061405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.419632, 30.149055, 48.791630>,  <37.409313, 29.972157, 48.629765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.419632, 30.149055, 48.791630>,  <37.436832, 30.443886, 49.061405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419632, 30.149055, 48.791630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351251, 0.620817, -0.700864,
		0.935294, -0.267034, 0.232205,
		-0.042998, -0.737075, -0.674442,
		37.406734, 29.927933, 48.589298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873310, 30.674528, 48.592468>,  <37.436832, 30.443886, 49.061405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.873310, 30.674528, 48.592468> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.728119, 30.366085, 48.383228>,  <37.641003, 30.181019, 48.257683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.728119, 30.366085, 48.383228>,  <37.873310, 30.674528, 48.592468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728119, 30.366085, 48.383228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293794, 0.438047, -0.849588,
		0.884269, -0.462067, 0.067545,
		-0.362979, -0.771109, -0.523104,
		37.619225, 30.134752, 48.226295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.369801, 30.423849, 48.110592>,  <37.873310, 30.674528, 48.592468>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.369801, 30.423849, 48.110592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.001480, 30.350323, 47.972992>,  <37.780487, 30.306208, 47.890430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.001480, 30.350323, 47.972992>,  <38.369801, 30.423849, 48.110592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001480, 30.350323, 47.972992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198656, 0.537981, -0.819214,
		0.335650, -0.822672, -0.458858,
		-0.920801, -0.183814, -0.344002,
		37.725239, 30.295177, 47.869793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486759, 30.137104, 47.367359>,  <38.369801, 30.423849, 48.110592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486759, 30.137104, 47.367359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.104542, 30.254993, 47.363823>,  <37.875210, 30.325727, 47.361702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.104542, 30.254993, 47.363823>,  <38.486759, 30.137104, 47.367359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.104542, 30.254993, 47.363823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141040, 0.430534, -0.891487,
		-0.258934, -0.853100, -0.452961,
		-0.955542, 0.294722, -0.008841,
		37.817879, 30.343410, 47.361172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.243778, 30.111368, 46.685299>,  <38.486759, 30.137104, 47.367359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.243778, 30.111368, 46.685299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.951813, 30.336845, 46.839951>,  <37.776634, 30.472132, 46.932739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.951813, 30.336845, 46.839951>,  <38.243778, 30.111368, 46.685299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.951813, 30.336845, 46.839951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060447, 0.510173, -0.857945,
		-0.680864, -0.649594, -0.338307,
		-0.729911, 0.563694, 0.386625,
		37.732838, 30.505953, 46.955936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.871838, 30.247551, 46.141663>,  <38.243778, 30.111368, 46.685299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.871838, 30.247551, 46.141663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.762581, 30.523207, 46.410133>,  <37.697029, 30.688601, 46.571217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.762581, 30.523207, 46.410133>,  <37.871838, 30.247551, 46.141663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762581, 30.523207, 46.410133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142780, 0.660942, -0.736729,
		-0.951320, -0.297059, -0.082133,
		-0.273137, 0.689138, 0.671181,
		37.680641, 30.729948, 46.611488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.230145, 30.567255, 45.898312>,  <37.871838, 30.247551, 46.141663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.230145, 30.567255, 45.898312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.391975, 30.843496, 46.138107>,  <37.489075, 31.009241, 46.281982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.391975, 30.843496, 46.138107>,  <37.230145, 30.567255, 45.898312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.391975, 30.843496, 46.138107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050111, 0.671287, -0.739502,
		-0.913130, 0.269145, 0.306194,
		0.404577, 0.690605, 0.599485,
		37.513348, 31.050678, 46.317951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791206, 31.053675, 45.861973>,  <37.230145, 30.567255, 45.898312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791206, 31.053675, 45.861973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.140713, 31.201527, 45.988407>,  <37.350418, 31.290237, 46.064266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.140713, 31.201527, 45.988407>,  <36.791206, 31.053675, 45.861973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140713, 31.201527, 45.988407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037562, 0.699257, -0.713883,
		-0.484894, 0.611894, 0.624871,
		0.873766, 0.369629, 0.316081,
		37.402843, 31.312416, 46.083233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235241, 31.419842, 46.334946>,  <36.791206, 31.053675, 45.861973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235241, 31.419842, 46.334946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.847599, 31.510090, 46.295074>,  <35.615013, 31.564240, 46.271152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.847599, 31.510090, 46.295074>,  <36.235241, 31.419842, 46.334946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.847599, 31.510090, 46.295074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217105, -0.588437, 0.778850,
		0.117072, 0.776426, 0.619240,
		-0.969103, 0.225622, -0.099676,
		35.556870, 31.577776, 46.265171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000900, 31.610355, 46.944698>,  <36.235241, 31.419842, 46.334946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000900, 31.610355, 46.944698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.669441, 31.498417, 46.750782>,  <35.470566, 31.431253, 46.634430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.669441, 31.498417, 46.750782>,  <36.000900, 31.610355, 46.944698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.669441, 31.498417, 46.750782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264242, -0.567936, 0.779503,
		-0.493473, 0.774038, 0.396673,
		-0.828650, -0.279847, -0.484795,
		35.420845, 31.414463, 46.605343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.427994, 31.701218, 47.391071>,  <36.000900, 31.610355, 46.944698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.427994, 31.701218, 47.391071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.289879, 31.440884, 47.120609>,  <35.207008, 31.284683, 46.958332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.289879, 31.440884, 47.120609>,  <35.427994, 31.701218, 47.391071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.289879, 31.440884, 47.120609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465058, -0.507132, 0.725630,
		-0.815167, 0.565004, -0.127569,
		-0.345289, -0.650836, -0.676157,
		35.186291, 31.245632, 46.917763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724892, 31.633772, 47.516121>,  <35.427994, 31.701218, 47.391071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724892, 31.633772, 47.516121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.815655, 31.312426, 47.295895>,  <34.870113, 31.119617, 47.163761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.815655, 31.312426, 47.295895>,  <34.724892, 31.633772, 47.516121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815655, 31.312426, 47.295895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367163, -0.594158, 0.715659,
		-0.902056, 0.039758, -0.429785,
		0.226907, -0.803365, -0.550561,
		34.883728, 31.071417, 47.130726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.124187, 31.252148, 47.456203>,  <34.724892, 31.633772, 47.516121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.124187, 31.252148, 47.456203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.398972, 30.976143, 47.365013>,  <34.563843, 30.810541, 47.310299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.398972, 30.976143, 47.365013>,  <34.124187, 31.252148, 47.456203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.398972, 30.976143, 47.365013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361573, -0.596673, 0.716412,
		-0.630363, -0.409711, -0.659378,
		0.686955, -0.690013, -0.227980,
		34.605061, 30.769140, 47.296619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827278, 30.521820, 47.273178>,  <34.124187, 31.252148, 47.456203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.827278, 30.521820, 47.273178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.204006, 30.459681, 47.392406>,  <34.430042, 30.422398, 47.463943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.204006, 30.459681, 47.392406>,  <33.827278, 30.521820, 47.273178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.204006, 30.459681, 47.392406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325044, -0.646716, 0.690004,
		0.085575, -0.746744, -0.659584,
		0.941819, -0.155347, 0.298067,
		34.486553, 30.413076, 47.481827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891155, 29.798386, 47.323277>,  <33.827278, 30.521820, 47.273178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.891155, 29.798386, 47.323277> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.180313, 29.941425, 47.559765>,  <34.353809, 30.027248, 47.701656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.180313, 29.941425, 47.559765>,  <33.891155, 29.798386, 47.323277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.180313, 29.941425, 47.559765> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244723, -0.667680, 0.703074,
		0.646165, -0.652936, -0.395152,
		0.722898, 0.357599, 0.591220,
		34.397182, 30.048704, 47.737129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.327301, 29.539261, 47.349312>,  <33.891155, 29.798386, 47.323277>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.327301, 29.539261, 47.349312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.929455, 29.571608, 47.375229>,  <32.690746, 29.591015, 47.390781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.929455, 29.571608, 47.375229>,  <33.327301, 29.539261, 47.349312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.929455, 29.571608, 47.375229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012478, 0.714213, -0.699818,
		-0.102872, -0.695242, -0.711377,
		-0.994617, 0.080868, 0.064797,
		32.631069, 29.595867, 47.394669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.068153, 29.667786, 46.648354>,  <33.327301, 29.539261, 47.349312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.068153, 29.667786, 46.648354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.781475, 29.812494, 46.886837>,  <32.609467, 29.899319, 47.029930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.781475, 29.812494, 46.886837>,  <33.068153, 29.667786, 46.648354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781475, 29.812494, 46.886837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038558, 0.833061, -0.551835,
		-0.696320, -0.418486, -0.583102,
		-0.716695, 0.361771, 0.596214,
		32.566467, 29.921026, 47.065701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418037, 29.621067, 46.176937>,  <33.068153, 29.667786, 46.648354>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.418037, 29.621067, 46.176937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.395817, 29.901003, 46.461792>,  <32.382484, 30.068964, 46.632706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.395817, 29.901003, 46.461792>,  <32.418037, 29.621067, 46.176937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395817, 29.901003, 46.461792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065008, 0.709188, -0.702016,
		-0.996337, -0.085292, 0.006099,
		-0.055551, 0.699841, 0.712135,
		32.379150, 30.110956, 46.675434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.866381, 30.052704, 46.047230>,  <32.418037, 29.621067, 46.176937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.866381, 30.052704, 46.047230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.084625, 30.277618, 46.295792>,  <32.215572, 30.412567, 46.444927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.084625, 30.277618, 46.295792>,  <31.866381, 30.052704, 46.047230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.084625, 30.277618, 46.295792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135823, 0.791027, -0.596513,
		-0.826959, 0.241063, 0.507964,
		0.545611, 0.562285, 0.621405,
		32.248310, 30.446304, 46.482212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.741995, 30.724873, 45.849430>,  <31.866381, 30.052704, 46.047230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.741995, 30.724873, 45.849430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.022114, 30.863586, 46.099014>,  <32.190186, 30.946815, 46.248764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.022114, 30.863586, 46.099014>,  <31.741995, 30.724873, 45.849430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.022114, 30.863586, 46.099014> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000309, 0.874219, -0.485531,
		-0.713852, 0.339823, 0.612320,
		0.700297, 0.346787, 0.623958,
		32.232204, 30.967623, 46.286201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.518291, 31.370911, 46.186050>,  <31.741995, 30.724873, 45.849430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.518291, 31.370911, 46.186050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.917690, 31.371452, 46.207962>,  <32.157330, 31.371777, 46.221107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.917690, 31.371452, 46.207962>,  <31.518291, 31.370911, 46.186050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.917690, 31.371452, 46.207962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028605, 0.839787, -0.542162,
		-0.046738, 0.542914, 0.838486,
		0.998498, 0.001354, 0.054780,
		32.217239, 31.371859, 46.224396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.614876, 32.071171, 45.960590>,  <31.518291, 31.370911, 46.186050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.614876, 32.071171, 45.960590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.975220, 31.898193, 45.945400>,  <32.191425, 31.794407, 45.936287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.975220, 31.898193, 45.945400>,  <31.614876, 32.071171, 45.960590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.975220, 31.898193, 45.945400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314804, 0.711003, -0.628787,
		0.298915, 0.554495, 0.776650,
		0.900860, -0.432446, -0.037972,
		32.245476, 31.768459, 45.934010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.144436, 24.137733, 47.256214> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.206001, 24.484003, 47.446758>,  <36.242939, 24.691765, 47.561085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.206001, 24.484003, 47.446758>,  <36.144436, 24.137733, 47.256214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.206001, 24.484003, 47.446758> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079497, 0.469696, -0.879242,
		-0.984881, 0.173196, 0.003473,
		0.153913, 0.865673, 0.476363,
		36.252174, 24.743706, 47.589668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.660339, 24.731567, 46.909439>,  <36.144436, 24.137733, 47.256214>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.660339, 24.731567, 46.909439> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.986191, 24.886698, 47.081936>,  <36.181702, 24.979776, 47.185436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.986191, 24.886698, 47.081936>,  <35.660339, 24.731567, 46.909439>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.986191, 24.886698, 47.081936> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090241, 0.649737, -0.754784,
		-0.572922, 0.653783, 0.494295,
		0.814627, 0.387827, 0.431246,
		36.230579, 25.003046, 47.211311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607441, 25.522182, 46.911228>,  <35.660339, 24.731567, 46.909439>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607441, 25.522182, 46.911228> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.988594, 25.401772, 46.926128>,  <36.217285, 25.329525, 46.935070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.988594, 25.401772, 46.926128>,  <35.607441, 25.522182, 46.911228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.988594, 25.401772, 46.926128> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241898, 0.680064, -0.692097,
		0.183007, 0.668501, 0.720843,
		0.952887, -0.301029, 0.037253,
		36.274460, 25.311462, 46.937305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985180, 26.081673, 46.999596>,  <35.607441, 25.522182, 46.911228>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985180, 26.081673, 46.999596> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.259144, 25.836609, 46.841839>,  <36.423523, 25.689571, 46.747185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.259144, 25.836609, 46.841839>,  <35.985180, 26.081673, 46.999596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.259144, 25.836609, 46.841839> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240024, 0.700784, -0.671781,
		0.687957, 0.365447, 0.627028,
		0.684912, -0.612658, -0.394393,
		36.464619, 25.652811, 46.723522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647869, 26.461843, 46.954269>,  <35.985180, 26.081673, 46.999596>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647869, 26.461843, 46.954269> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.644329, 26.165417, 46.685719>,  <36.642204, 25.987560, 46.524590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.644329, 26.165417, 46.685719>,  <36.647869, 26.461843, 46.954269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644329, 26.165417, 46.685719> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325063, 0.632802, -0.702777,
		0.945651, -0.224460, 0.235291,
		-0.008853, -0.741066, -0.671373,
		36.641674, 25.943096, 46.484306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294914, 26.566147, 46.530399>,  <36.647869, 26.461843, 46.954269>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294914, 26.566147, 46.530399> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.097252, 26.285416, 46.325169>,  <36.978653, 26.116978, 46.202030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.097252, 26.285416, 46.325169>,  <37.294914, 26.566147, 46.530399>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.097252, 26.285416, 46.325169> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270890, 0.436483, -0.857963,
		0.826091, -0.562957, -0.025574,
		-0.494159, -0.701828, -0.513074,
		36.949005, 26.074867, 46.171246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751080, 26.312536, 45.896755>,  <37.294914, 26.566147, 46.530399>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.751080, 26.312536, 45.896755> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.372604, 26.209558, 45.818325>,  <37.145519, 26.147772, 45.771267>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.372604, 26.209558, 45.818325>,  <37.751080, 26.312536, 45.896755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372604, 26.209558, 45.818325> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152208, 0.180657, -0.971697,
		0.285581, -0.949255, -0.131751,
		-0.946190, -0.257445, -0.196076,
		37.088749, 26.132326, 45.759502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.711163, 25.933786, 45.214920>,  <37.751080, 26.312536, 45.896755>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.711163, 25.933786, 45.214920> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.345196, 26.086813, 45.266422>,  <37.125618, 26.178629, 45.297321>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.345196, 26.086813, 45.266422>,  <37.711163, 25.933786, 45.214920>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345196, 26.086813, 45.266422> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083311, 0.133133, -0.987590,
		-0.394960, -0.914286, -0.089933,
		-0.914913, 0.382566, 0.128752,
		37.070721, 26.201582, 45.305046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415993, 25.759075, 44.612984>,  <37.711163, 25.933786, 45.214920>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.415993, 25.759075, 44.612984> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.192688, 26.052794, 44.767464>,  <37.058704, 26.229025, 44.860153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.192688, 26.052794, 44.767464>,  <37.415993, 25.759075, 44.612984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192688, 26.052794, 44.767464> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098823, 0.403328, -0.909703,
		-0.823760, -0.546017, -0.152596,
		-0.558259, 0.734297, 0.386204,
		37.025211, 26.273083, 44.883324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.866577, 25.803194, 44.095203>,  <37.415993, 25.759075, 44.612984>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.866577, 25.803194, 44.095203> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.884655, 26.136604, 44.315453>,  <36.895504, 26.336651, 44.447601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.884655, 26.136604, 44.315453>,  <36.866577, 25.803194, 44.095203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884655, 26.136604, 44.315453> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241357, 0.543972, -0.803643,
		-0.969383, -0.096574, 0.225764,
		0.045198, 0.833528, 0.550626,
		36.898216, 26.386663, 44.480640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176880, 26.213318, 44.009274>,  <36.866577, 25.803194, 44.095203>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.176880, 26.213318, 44.009274> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.470497, 26.474159, 44.085102>,  <36.646667, 26.630663, 44.130600>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.470497, 26.474159, 44.085102>,  <36.176880, 26.213318, 44.009274>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470497, 26.474159, 44.085102> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210356, 0.483758, -0.849546,
		-0.645697, 0.583730, 0.492275,
		0.734047, 0.652102, 0.189570,
		36.690712, 26.669790, 44.141972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.886276, 26.878151, 43.823456>,  <36.176880, 26.213318, 44.009274>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.886276, 26.878151, 43.823456> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.282692, 26.927006, 43.845100>,  <36.520542, 26.956318, 43.858086>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.282692, 26.927006, 43.845100>,  <35.886276, 26.878151, 43.823456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282692, 26.927006, 43.845100> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010716, 0.476441, -0.879141,
		-0.133154, 0.870682, 0.473479,
		0.991037, 0.122136, 0.054110,
		36.580002, 26.963646, 43.861332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285755, 27.253708, 44.234634>,  <35.886276, 26.878151, 43.823456>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.285755, 27.253708, 44.234634> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.951443, 27.453835, 44.144161>,  <34.750854, 27.573910, 44.089878>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.951443, 27.453835, 44.144161>,  <35.285755, 27.253708, 44.234634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951443, 27.453835, 44.144161> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395561, -0.262955, 0.879992,
		0.380798, 0.824948, 0.417677,
		-0.835778, 0.500316, -0.226184,
		34.700710, 27.603930, 44.076305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178089, 27.616585, 44.767693>,  <35.285755, 27.253708, 44.234634>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178089, 27.616585, 44.767693> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.819656, 27.588005, 44.592453>,  <34.604595, 27.570856, 44.487309>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.819656, 27.588005, 44.592453>,  <35.178089, 27.616585, 44.767693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819656, 27.588005, 44.592453> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406485, -0.264459, 0.874546,
		-0.178347, 0.961746, 0.207932,
		-0.896081, -0.071452, -0.438101,
		34.550831, 27.566570, 44.461021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711334, 27.885933, 45.279099>,  <35.178089, 27.616585, 44.767693>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711334, 27.885933, 45.279099> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.523331, 27.644285, 45.021687>,  <34.410526, 27.499296, 44.867241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.523331, 27.644285, 45.021687>,  <34.711334, 27.885933, 45.279099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.523331, 27.644285, 45.021687> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511651, -0.407616, 0.756349,
		-0.719238, 0.684753, -0.117515,
		-0.470011, -0.604121, -0.643527,
		34.382328, 27.463049, 44.828629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053875, 27.875164, 45.513386>,  <34.711334, 27.885933, 45.279099>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053875, 27.875164, 45.513386> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.064354, 27.549946, 45.280743>,  <34.070641, 27.354815, 45.141155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.064354, 27.549946, 45.280743>,  <34.053875, 27.875164, 45.513386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.064354, 27.549946, 45.280743> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506838, -0.512286, 0.693310,
		-0.861643, 0.276621, -0.425501,
		0.026194, -0.813046, -0.581610,
		34.072212, 27.306032, 45.106258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.388721, 27.643675, 45.479847>,  <34.053875, 27.875164, 45.513386>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.388721, 27.643675, 45.479847> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.631165, 27.336645, 45.396454>,  <33.776630, 27.152428, 45.346416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.631165, 27.336645, 45.396454>,  <33.388721, 27.643675, 45.479847>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.631165, 27.336645, 45.396454> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448790, -0.546438, 0.707102,
		-0.656679, -0.335010, -0.675678,
		0.606103, -0.767577, -0.208485,
		33.812996, 27.106373, 45.333908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.924454, 27.123774, 45.415680>,  <33.388721, 27.643675, 45.479847>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.924454, 27.123774, 45.415680> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.273819, 26.932894, 45.454521>,  <33.483437, 26.818365, 45.477825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.273819, 26.932894, 45.454521>,  <32.924454, 27.123774, 45.415680>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.273819, 26.932894, 45.454521> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434250, -0.672948, 0.598806,
		-0.220404, -0.565173, -0.794986,
		0.873412, -0.477202, 0.097105,
		33.535843, 26.789734, 45.483654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.838825, 26.425209, 45.247814>,  <32.924454, 27.123774, 45.415680>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.838825, 26.425209, 45.247814> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.159866, 26.429132, 45.486385>,  <33.352493, 26.431486, 45.629528>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.159866, 26.429132, 45.486385>,  <32.838825, 26.425209, 45.247814>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.159866, 26.429132, 45.486385> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437750, -0.669534, 0.600083,
		0.405216, -0.742717, -0.533078,
		0.802605, 0.009808, 0.596429,
		33.400646, 26.432076, 45.665314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.956413, 25.605282, 45.433197>,  <32.838825, 26.425209, 45.247814>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.956413, 25.605282, 45.433197> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.167568, 25.834709, 45.683746>,  <33.294262, 25.972366, 45.834076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.167568, 25.834709, 45.683746>,  <32.956413, 25.605282, 45.433197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167568, 25.834709, 45.683746> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366301, -0.511635, 0.777209,
		0.766259, -0.639725, -0.059989,
		0.527892, 0.573570, 0.626377,
		33.325935, 26.006781, 45.871658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253712, 25.103968, 45.951172>,  <32.956413, 25.605282, 45.433197>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253712, 25.103968, 45.951172> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.274315, 25.467274, 46.117256>,  <33.286678, 25.685257, 46.216908>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.274315, 25.467274, 46.117256>,  <33.253712, 25.103968, 45.951172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.274315, 25.467274, 46.117256> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468143, -0.345296, 0.813396,
		0.882150, -0.236276, 0.407413,
		0.051508, 0.908265, 0.415214,
		33.289768, 25.739754, 46.241821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.541626, 25.016436, 46.648708>,  <33.253712, 25.103968, 45.951172>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.541626, 25.016436, 46.648708> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.355793, 25.370441, 46.660816>,  <33.244293, 25.582844, 46.668079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.355793, 25.370441, 46.660816>,  <33.541626, 25.016436, 46.648708>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.355793, 25.370441, 46.660816> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221704, -0.149339, 0.963611,
		0.857329, 0.440964, 0.265591,
		-0.464580, 0.885014, 0.030269,
		33.216419, 25.635946, 46.669895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576622, 25.239931, 47.324020>,  <33.541626, 25.016436, 46.648708>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576622, 25.239931, 47.324020> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.262901, 25.448013, 47.188812>,  <33.074669, 25.572863, 47.107689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.262901, 25.448013, 47.188812>,  <33.576622, 25.239931, 47.324020>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262901, 25.448013, 47.188812> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421839, -0.047684, 0.905416,
		0.454883, 0.852710, 0.256841,
		-0.784304, 0.520204, -0.338016,
		33.027611, 25.604074, 47.087406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459209, 25.858545, 47.782188>,  <33.576622, 25.239931, 47.324020>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459209, 25.858545, 47.782188> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.113968, 25.773537, 47.598934>,  <32.906822, 25.722530, 47.488983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.113968, 25.773537, 47.598934>,  <33.459209, 25.858545, 47.782188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.113968, 25.773537, 47.598934> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466669, -0.011154, 0.884362,
		-0.193058, 0.977092, -0.089551,
		-0.863104, -0.212524, -0.458132,
		32.855038, 25.709780, 47.461494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.893471, 26.192505, 48.137604>,  <33.459209, 25.858545, 47.782188>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.893471, 26.192505, 48.137604> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.695786, 25.920122, 47.921436>,  <32.577175, 25.756693, 47.791737>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.695786, 25.920122, 47.921436>,  <32.893471, 26.192505, 48.137604>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.695786, 25.920122, 47.921436> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629798, -0.148068, 0.762516,
		-0.599259, 0.717199, -0.355688,
		-0.494210, -0.680956, -0.540421,
		32.547523, 25.715836, 47.759312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.197166, 26.389868, 48.274685>,  <32.893471, 26.192505, 48.137604>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.197166, 26.389868, 48.274685> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.210495, 26.005703, 48.164047>,  <32.218491, 25.775204, 48.097664>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.210495, 26.005703, 48.164047>,  <32.197166, 26.389868, 48.274685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.210495, 26.005703, 48.164047> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772723, -0.200274, 0.602320,
		-0.633868, 0.193658, -0.748805,
		0.033322, -0.960410, -0.276591,
		32.220493, 25.717581, 48.081070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.667791, 26.910069, 48.445446>,  <32.197166, 26.389868, 48.274685>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.667791, 26.910069, 48.445446> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.818014, 27.160229, 48.719040>,  <31.908148, 27.310326, 48.883194>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.818014, 27.160229, 48.719040>,  <31.667791, 26.910069, 48.445446>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.818014, 27.160229, 48.719040> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072037, 0.755469, -0.651212,
		-0.923994, 0.195297, 0.328775,
		0.375559, 0.625400, 0.683981,
		31.930681, 27.347849, 48.924232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.251566, 27.513416, 48.422134>,  <31.667791, 26.910069, 48.445446>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.251566, 27.513416, 48.422134> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.586048, 27.622404, 48.612511>,  <31.786737, 27.687796, 48.726738>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.586048, 27.622404, 48.612511>,  <31.251566, 27.513416, 48.422134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.586048, 27.622404, 48.612511> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050660, 0.902516, -0.427667,
		-0.546071, 0.333506, 0.768492,
		0.836206, 0.272468, 0.475942,
		31.836910, 27.704145, 48.755295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.143774, 28.247778, 48.660500>,  <31.251566, 27.513416, 48.422134>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.143774, 28.247778, 48.660500> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.537169, 28.176989, 48.645329>,  <31.773205, 28.134516, 48.636227>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.537169, 28.176989, 48.645329>,  <31.143774, 28.247778, 48.660500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.537169, 28.176989, 48.645329> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145117, 0.896272, -0.419091,
		0.108165, 0.406665, 0.907152,
		0.983484, -0.176974, -0.037931,
		31.832214, 28.123896, 48.633949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.502050, 28.812616, 48.872021>,  <31.143774, 28.247778, 48.660500>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.502050, 28.812616, 48.872021> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.801256, 28.646643, 48.664829>,  <31.980780, 28.547058, 48.540516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.801256, 28.646643, 48.664829>,  <31.502050, 28.812616, 48.872021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.801256, 28.646643, 48.664829> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299669, 0.907535, -0.294243,
		0.592175, 0.064876, 0.803194,
		0.748016, -0.414935, -0.517978,
		32.025661, 28.522161, 48.509438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.194210, 29.263187, 48.987686>,  <31.502050, 28.812616, 48.872021>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.194210, 29.263187, 48.987686> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.215168, 29.064140, 48.641361>,  <32.227745, 28.944712, 48.433567>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.215168, 29.064140, 48.641361>,  <32.194210, 29.263187, 48.987686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.215168, 29.064140, 48.641361> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248236, 0.846281, -0.471368,
		0.967282, -0.190227, 0.167869,
		0.052397, -0.497616, -0.865813,
		32.230888, 28.914856, 48.381618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.830059, 29.462337, 48.731022>,  <32.194210, 29.263187, 48.987686>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.830059, 29.462337, 48.731022> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.623287, 29.324200, 48.417709>,  <32.499226, 29.241318, 48.229721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.623287, 29.324200, 48.417709>,  <32.830059, 29.462337, 48.731022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.623287, 29.324200, 48.417709> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407497, 0.705416, -0.579943,
		0.752817, -0.618972, -0.223921,
		-0.516926, -0.345344, -0.783278,
		32.468208, 29.220596, 48.182724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.165863, 29.656483, 48.128941>,  <32.830059, 29.462337, 48.731022>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.165863, 29.656483, 48.128941> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.814781, 29.549942, 47.969601>,  <32.604130, 29.486017, 47.873997>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.814781, 29.549942, 47.969601>,  <33.165863, 29.656483, 48.128941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.814781, 29.549942, 47.969601> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145347, 0.644159, -0.750955,
		0.456619, -0.717020, -0.526672,
		-0.877709, -0.266350, -0.398351,
		32.551468, 29.470037, 47.850094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.778732, 29.291182, 47.920486>,  <33.165863, 29.656483, 48.128941>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.778732, 29.291182, 47.920486> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.084229, 29.527283, 48.025021>,  <34.267529, 29.668943, 48.087742>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.084229, 29.527283, 48.025021>,  <33.778732, 29.291182, 47.920486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084229, 29.527283, 48.025021> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192941, -0.595078, 0.780164,
		0.616010, -0.545423, -0.568372,
		0.763745, 0.590251, 0.261339,
		34.313351, 29.704357, 48.103424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.295242, 28.824886, 48.216877>,  <33.778732, 29.291182, 47.920486>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.295242, 28.824886, 48.216877> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.374538, 29.192726, 48.352547>,  <34.422115, 29.413429, 48.433949>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.374538, 29.192726, 48.352547>,  <34.295242, 28.824886, 48.216877>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.374538, 29.192726, 48.352547> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075102, -0.359274, 0.930205,
		0.977271, -0.158935, -0.140288,
		0.198244, 0.919599, 0.339172,
		34.434013, 29.468605, 48.454300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810028, 28.711571, 48.673447>,  <34.295242, 28.824886, 48.216877>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810028, 28.711571, 48.673447> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.673252, 29.067591, 48.794033>,  <34.591187, 29.281202, 48.866386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.673252, 29.067591, 48.794033>,  <34.810028, 28.711571, 48.673447>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673252, 29.067591, 48.794033> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364553, -0.170043, 0.915525,
		0.866126, 0.422961, -0.266325,
		-0.341944, 0.890050, 0.301471,
		34.570667, 29.334606, 48.884476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431969, 29.091150, 49.121216>,  <34.810028, 28.711571, 48.673447>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.431969, 29.091150, 49.121216> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.064014, 29.222738, 49.206631>,  <34.843243, 29.301691, 49.257877>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.064014, 29.222738, 49.206631>,  <35.431969, 29.091150, 49.121216>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064014, 29.222738, 49.206631> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138214, -0.237614, 0.961476,
		0.367034, 0.913958, 0.173109,
		-0.919882, 0.328968, 0.213534,
		34.788052, 29.321428, 49.270691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652969, 29.558826, 49.605408>,  <35.431969, 29.091150, 49.121216>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652969, 29.558826, 49.605408> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.263447, 29.480593, 49.651802>,  <35.029736, 29.433653, 49.679638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.263447, 29.480593, 49.651802>,  <35.652969, 29.558826, 49.605408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263447, 29.480593, 49.651802> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185692, -0.389578, 0.902080,
		-0.131245, 0.899987, 0.415690,
		-0.973804, -0.195583, 0.115990,
		34.971306, 29.421917, 49.686600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400780, 29.872471, 50.224911>,  <35.652969, 29.558826, 49.605408>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400780, 29.872471, 50.224911> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.128502, 29.588945, 50.150894>,  <34.965137, 29.418829, 50.106483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.128502, 29.588945, 50.150894>,  <35.400780, 29.872471, 50.224911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128502, 29.588945, 50.150894> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000950, -0.251737, 0.967795,
		-0.732569, 0.658946, 0.170682,
		-0.680692, -0.708815, -0.185040,
		34.924294, 29.376301, 50.095383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000896, 29.783665, 50.846348>,  <35.400780, 29.872471, 50.224911>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.000896, 29.783665, 50.846348> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.875000, 29.470797, 50.631260>,  <34.799461, 29.283075, 50.502205>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.875000, 29.470797, 50.631260>,  <35.000896, 29.783665, 50.846348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875000, 29.470797, 50.631260> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090229, -0.539294, 0.837270,
		-0.944879, 0.312041, 0.099164,
		-0.314741, -0.782171, -0.537723,
		34.780579, 29.236145, 50.469944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577919, 29.496065, 51.307743>,  <35.000896, 29.783665, 50.846348>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577919, 29.496065, 51.307743> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.658848, 29.196684, 51.055115>,  <34.707405, 29.017056, 50.903538>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.658848, 29.196684, 51.055115>,  <34.577919, 29.496065, 51.307743>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.658848, 29.196684, 51.055115> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158648, -0.661439, 0.733027,
		-0.966384, -0.048108, -0.252563,
		0.202319, -0.748454, -0.631572,
		34.719543, 28.972147, 50.865643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.045441, 29.018785, 51.476734>,  <34.577919, 29.496065, 51.307743>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.045441, 29.018785, 51.476734> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.357986, 28.840105, 51.302410>,  <34.545513, 28.732897, 51.197815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.357986, 28.840105, 51.302410>,  <34.045441, 29.018785, 51.476734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.357986, 28.840105, 51.302410> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056891, -0.746406, 0.663054,
		-0.621480, -0.493292, -0.608627,
		0.781362, -0.446700, -0.435812,
		34.592396, 28.706095, 51.171665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.089367, 36.647427, 37.013535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430561, 36.444859, 36.963009>,  <36.635277, 36.323318, 36.932693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430561, 36.444859, 36.963009>,  <36.089367, 36.647427, 37.013535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430561, 36.444859, 36.963009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060602, -0.336461, 0.939745,
		-0.518409, -0.793932, -0.317686,
		0.852983, -0.506425, -0.126310,
		36.686455, 36.292931, 36.925117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963139, 35.899406, 37.211929>,  <36.089367, 36.647427, 37.013535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963139, 35.899406, 37.211929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.350338, 35.981243, 37.270069>,  <36.582657, 36.030346, 37.304955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.350338, 35.981243, 37.270069>,  <35.963139, 35.899406, 37.211929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350338, 35.981243, 37.270069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022327, -0.647072, 0.762102,
		0.249974, -0.734466, -0.630930,
		0.967995, 0.204592, 0.145353,
		36.640736, 36.042622, 37.313675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297184, 35.288517, 37.427567>,  <35.963139, 35.899406, 37.211929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297184, 35.288517, 37.427567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.550655, 35.573372, 37.548443>,  <36.702736, 35.744286, 37.620968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.550655, 35.573372, 37.548443>,  <36.297184, 35.288517, 37.427567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.550655, 35.573372, 37.548443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136701, -0.487558, 0.862323,
		0.761424, -0.505124, -0.406304,
		0.633677, 0.712135, 0.302187,
		36.740757, 35.787014, 37.639099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751823, 34.870773, 37.862549>,  <36.297184, 35.288517, 37.427567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751823, 34.870773, 37.862549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829891, 35.246853, 37.974216>,  <36.876732, 35.472500, 38.041218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829891, 35.246853, 37.974216>,  <36.751823, 34.870773, 37.862549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829891, 35.246853, 37.974216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168935, -0.248157, 0.953876,
		0.966111, -0.233328, 0.110400,
		0.195170, 0.940200, 0.279164,
		36.888443, 35.528912, 38.057964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219692, 34.723793, 38.287075>,  <36.751823, 34.870773, 37.862549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219692, 34.723793, 38.287075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.083099, 35.085243, 38.390495>,  <37.001144, 35.302113, 38.452549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.083099, 35.085243, 38.390495>,  <37.219692, 34.723793, 38.287075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.083099, 35.085243, 38.390495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293005, -0.363724, 0.884225,
		0.893050, 0.226189, 0.388972,
		-0.341480, 0.903628, 0.258549,
		36.980656, 35.356331, 38.468060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.443748, 34.873569, 39.010223>,  <37.219692, 34.723793, 38.287075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.443748, 34.873569, 39.010223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.129536, 35.115196, 38.956486>,  <36.941010, 35.260174, 38.924244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.129536, 35.115196, 38.956486>,  <37.443748, 34.873569, 39.010223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.129536, 35.115196, 38.956486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434521, -0.383850, 0.814770,
		0.440609, 0.698400, 0.564005,
		-0.785529, 0.604067, -0.134342,
		36.893879, 35.296417, 38.916183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.438141, 35.194016, 39.646919>,  <37.443748, 34.873569, 39.010223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.438141, 35.194016, 39.646919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.083851, 35.249481, 39.469715>,  <36.871277, 35.282761, 39.363392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.083851, 35.249481, 39.469715>,  <37.438141, 35.194016, 39.646919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.083851, 35.249481, 39.469715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462800, -0.189639, 0.865940,
		0.036064, 0.972013, 0.232143,
		-0.885729, 0.138665, -0.443009,
		36.818130, 35.291080, 39.336811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082500, 35.689171, 40.006725>,  <37.438141, 35.194016, 39.646919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082500, 35.689171, 40.006725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795132, 35.499577, 39.803074>,  <36.622711, 35.385818, 39.680885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795132, 35.499577, 39.803074>,  <37.082500, 35.689171, 40.006725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795132, 35.499577, 39.803074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519277, -0.121564, 0.845916,
		-0.462845, 0.872099, -0.158797,
		-0.718419, -0.473988, -0.509127,
		36.579605, 35.357380, 39.650337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.536800, 35.957920, 40.305489>,  <37.082500, 35.689171, 40.006725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.536800, 35.957920, 40.305489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401402, 35.618702, 40.142403>,  <36.320164, 35.415169, 40.044552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401402, 35.618702, 40.142403>,  <36.536800, 35.957920, 40.305489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401402, 35.618702, 40.142403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511787, -0.197675, 0.836061,
		-0.789617, 0.491667, -0.367109,
		-0.338495, -0.848050, -0.407716,
		36.299854, 35.364288, 40.020088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904182, 35.949795, 40.480049>,  <36.536800, 35.957920, 40.305489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904182, 35.949795, 40.480049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.976871, 35.562691, 40.410290>,  <36.020485, 35.330429, 40.368435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.976871, 35.562691, 40.410290>,  <35.904182, 35.949795, 40.480049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976871, 35.562691, 40.410290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406324, -0.235404, 0.882885,
		-0.895477, -0.089574, -0.436003,
		0.181720, -0.967761, -0.174403,
		36.031387, 35.272362, 40.357967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261417, 35.541111, 40.625423>,  <35.904182, 35.949795, 40.480049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261417, 35.541111, 40.625423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.574409, 35.294392, 40.659565>,  <35.762203, 35.146358, 40.680050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.574409, 35.294392, 40.659565>,  <35.261417, 35.541111, 40.625423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574409, 35.294392, 40.659565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329110, -0.293302, 0.897586,
		-0.528596, -0.730433, -0.432498,
		0.782479, -0.616800, 0.085354,
		35.809155, 35.109352, 40.685173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.074280, 34.944054, 40.995735>,  <35.261417, 35.541111, 40.625423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.074280, 34.944054, 40.995735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472557, 34.922798, 41.026134>,  <35.711521, 34.910046, 41.044376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.472557, 34.922798, 41.026134>,  <35.074280, 34.944054, 40.995735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472557, 34.922798, 41.026134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085877, -0.219032, 0.971931,
		-0.035002, -0.974270, -0.222651,
		0.995691, -0.053140, 0.076001,
		35.771263, 34.906857, 41.048935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612812, 34.360081, 40.617504>,  <35.074280, 34.944054, 40.995735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612812, 34.360081, 40.617504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.233429, 34.416985, 40.730774>,  <34.005798, 34.451126, 40.798737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.233429, 34.416985, 40.730774>,  <34.612812, 34.360081, 40.617504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.233429, 34.416985, 40.730774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264724, 0.135551, -0.954750,
		-0.174211, -0.980503, -0.090903,
		-0.948457, 0.142264, 0.283177,
		33.948891, 34.459663, 40.815727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154316, 33.877213, 40.302193>,  <34.612812, 34.360081, 40.617504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.154316, 33.877213, 40.302193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.918976, 34.186581, 40.396561>,  <33.777771, 34.372204, 40.453182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.918976, 34.186581, 40.396561>,  <34.154316, 33.877213, 40.302193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.918976, 34.186581, 40.396561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251513, 0.102245, -0.962438,
		-0.768493, -0.625590, 0.134369,
		-0.588353, 0.773423, 0.235919,
		33.742470, 34.418606, 40.467335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.485237, 33.760246, 40.027603>,  <34.154316, 33.877213, 40.302193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.485237, 33.760246, 40.027603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.500935, 34.155773, 40.085163>,  <33.510353, 34.393089, 40.119698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.500935, 34.155773, 40.085163>,  <33.485237, 33.760246, 40.027603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.500935, 34.155773, 40.085163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371311, 0.148129, -0.916616,
		-0.927678, -0.017455, 0.372971,
		0.039248, 0.988814, 0.143898,
		33.512711, 34.452415, 40.128334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.816536, 34.057899, 39.752983>,  <33.485237, 33.760246, 40.027603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.816536, 34.057899, 39.752983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.040092, 34.384659, 39.809998>,  <33.174225, 34.580715, 39.844208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.040092, 34.384659, 39.809998>,  <32.816536, 34.057899, 39.752983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.040092, 34.384659, 39.809998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412060, 0.422752, -0.807148,
		-0.719616, 0.392374, 0.572884,
		0.558892, 0.816898, 0.142538,
		33.207760, 34.629730, 39.852760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.392994, 34.696354, 39.773037>,  <32.816536, 34.057899, 39.752983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.392994, 34.696354, 39.773037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.744419, 34.858109, 39.671371>,  <32.955276, 34.955162, 39.610374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.744419, 34.858109, 39.671371>,  <32.392994, 34.696354, 39.773037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.744419, 34.858109, 39.671371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422592, 0.410160, -0.808199,
		-0.222578, 0.817461, 0.531241,
		0.878565, 0.404385, -0.254160,
		33.007988, 34.979424, 39.595123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.207981, 35.339378, 39.616295>,  <32.392994, 34.696354, 39.773037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.207981, 35.339378, 39.616295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.553661, 35.265709, 39.429005>,  <32.761070, 35.221508, 39.316631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.553661, 35.265709, 39.429005>,  <32.207981, 35.339378, 39.616295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.553661, 35.265709, 39.429005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283977, 0.589658, -0.756082,
		0.415342, 0.786373, 0.457283,
		0.864204, -0.184175, -0.468222,
		32.812923, 35.210457, 39.288540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.404427, 36.022572, 39.199867>,  <32.207981, 35.339378, 39.616295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.404427, 36.022572, 39.199867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.607075, 35.724689, 39.026085>,  <32.728664, 35.545959, 38.921814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.607075, 35.724689, 39.026085>,  <32.404427, 36.022572, 39.199867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.607075, 35.724689, 39.026085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251887, 0.354078, -0.900656,
		0.824552, 0.565726, -0.008197,
		0.506623, -0.744703, -0.434455,
		32.759060, 35.501278, 38.895748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.717361, 36.373577, 38.694054>,  <32.404427, 36.022572, 39.199867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.717361, 36.373577, 38.694054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702168, 35.985336, 38.598984>,  <32.693050, 35.752392, 38.541943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702168, 35.985336, 38.598984>,  <32.717361, 36.373577, 38.694054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.702168, 35.985336, 38.598984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379829, 0.234018, -0.894967,
		0.924277, 0.056285, -0.377551,
		-0.037980, -0.970602, -0.237676,
		32.690773, 35.694157, 38.527679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.983212, 36.361523, 37.978794>,  <32.717361, 36.373577, 38.694054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.983212, 36.361523, 37.978794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766247, 36.030106, 38.034382>,  <32.636066, 35.831257, 38.067734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766247, 36.030106, 38.034382>,  <32.983212, 36.361523, 37.978794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.766247, 36.030106, 38.034382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498607, 0.184356, -0.846997,
		0.676152, -0.528710, -0.513113,
		-0.542411, -0.828540, 0.138966,
		32.603523, 35.781544, 38.076073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.009796, 36.030014, 37.358913>,  <32.983212, 36.361523, 37.978794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.009796, 36.030014, 37.358913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.689548, 35.847481, 37.514229>,  <32.497402, 35.737961, 37.607418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.689548, 35.847481, 37.514229>,  <33.009796, 36.030014, 37.358913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689548, 35.847481, 37.514229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406686, -0.062046, -0.911459,
		0.440023, -0.887642, -0.135911,
		-0.800616, -0.456336, 0.388293,
		32.449364, 35.710579, 37.630718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.938900, 35.538929, 36.854347>,  <33.009796, 36.030014, 37.358913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.938900, 35.538929, 36.854347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.588844, 35.598770, 37.038414>,  <32.378811, 35.634674, 37.148853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.588844, 35.598770, 37.038414>,  <32.938900, 35.538929, 36.854347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.588844, 35.598770, 37.038414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414308, 0.259601, -0.872328,
		-0.249959, -0.954058, -0.165207,
		-0.875139, 0.149600, 0.460164,
		32.326302, 35.643650, 37.176464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.314972, 35.191719, 36.436626>,  <32.938900, 35.538929, 36.854347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.314972, 35.191719, 36.436626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.096161, 35.445843, 36.654671>,  <31.964874, 35.598316, 36.785496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.096161, 35.445843, 36.654671>,  <32.314972, 35.191719, 36.436626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.096161, 35.445843, 36.654671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562445, 0.203360, -0.801437,
		-0.620012, -0.745003, 0.246082,
		-0.547030, 0.635308, 0.545108,
		31.932053, 35.636436, 36.818203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.623638, 34.993252, 36.249928>,  <32.314972, 35.191719, 36.436626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.623638, 34.993252, 36.249928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.620199, 35.367676, 36.390625>,  <31.618135, 35.592331, 36.475044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.620199, 35.367676, 36.390625>,  <31.623638, 34.993252, 36.249928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.620199, 35.367676, 36.390625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593265, 0.278382, -0.755341,
		-0.804961, -0.215170, 0.552937,
		-0.008599, 0.936058, 0.351740,
		31.617619, 35.648495, 36.496147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.839840, 35.178204, 36.208202>,  <31.623638, 34.993252, 36.249928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.839840, 35.178204, 36.208202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.102104, 35.479919, 36.221828>,  <31.259462, 35.660950, 36.230003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.102104, 35.479919, 36.221828>,  <30.839840, 35.178204, 36.208202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.102104, 35.479919, 36.221828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435247, 0.414428, -0.799255,
		-0.616985, 0.509214, 0.600025,
		0.655659, 0.754288, 0.034061,
		31.298801, 35.706207, 36.232048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.831810, 34.449444, 36.221489>,  <30.839840, 35.178204, 36.208202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.831810, 34.449444, 36.221489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.669157, 34.480434, 36.585609>,  <30.571566, 34.499031, 36.804081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.669157, 34.480434, 36.585609>,  <30.831810, 34.449444, 36.221489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.669157, 34.480434, 36.585609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749164, -0.541992, 0.380786,
		0.522879, 0.836804, 0.162347,
		-0.406635, 0.077480, 0.910299,
		30.547167, 34.503677, 36.858700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.895327, 33.780315, 36.707184>,  <30.831810, 34.449444, 36.221489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.895327, 33.780315, 36.707184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.142515, 34.058834, 36.561153>,  <31.290829, 34.225945, 36.473534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.142515, 34.058834, 36.561153>,  <30.895327, 33.780315, 36.707184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.142515, 34.058834, 36.561153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290062, 0.229670, 0.929040,
		0.730735, -0.680016, -0.060040,
		0.617972, 0.696298, -0.365075,
		31.327908, 34.267723, 36.451630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.406282, 33.305702, 36.960590>,  <30.895327, 33.780315, 36.707184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.406282, 33.305702, 36.960590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.512239, 33.059853, 36.663387>,  <31.575813, 32.912342, 36.485065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.512239, 33.059853, 36.663387>,  <31.406282, 33.305702, 36.960590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.512239, 33.059853, 36.663387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651589, -0.453909, 0.607782,
		-0.710819, -0.645134, 0.280247,
		0.264894, -0.614629, -0.743009,
		31.591707, 32.875465, 36.440483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.416231, 32.503620, 37.254028>,  <31.406282, 33.305702, 36.960590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.416231, 32.503620, 37.254028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.641922, 32.543030, 36.926140>,  <31.777336, 32.566677, 36.729408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.641922, 32.543030, 36.926140>,  <31.416231, 32.503620, 37.254028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.641922, 32.543030, 36.926140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765143, -0.435394, 0.474329,
		-0.310168, -0.894832, -0.321047,
		0.564227, 0.098525, -0.819720,
		31.811190, 32.572586, 36.680225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.532084, 31.862122, 36.884377>,  <31.416231, 32.503620, 37.254028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.532084, 31.862122, 36.884377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.845846, 32.106770, 36.843136>,  <32.034103, 32.253559, 36.818390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.845846, 32.106770, 36.843136>,  <31.532084, 31.862122, 36.884377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.845846, 32.106770, 36.843136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524240, -0.564923, 0.637208,
		0.331483, -0.553880, -0.763764,
		0.784405, 0.611619, -0.103103,
		32.081169, 32.290257, 36.812206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.124367, 31.385324, 36.717712>,  <31.532084, 31.862122, 36.884377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.124367, 31.385324, 36.717712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.219177, 31.731030, 36.895191>,  <32.276062, 31.938452, 37.001678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.219177, 31.731030, 36.895191>,  <32.124367, 31.385324, 36.717712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.219177, 31.731030, 36.895191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557259, -0.495059, 0.666617,
		0.795791, 0.089253, -0.598958,
		0.237022, 0.864263, 0.443701,
		32.290283, 31.990309, 37.028301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.833416, 31.330362, 36.885155>,  <32.124367, 31.385324, 36.717712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.833416, 31.330362, 36.885155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.686192, 31.630329, 37.105030>,  <32.597858, 31.810308, 37.236954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.686192, 31.630329, 37.105030>,  <32.833416, 31.330362, 36.885155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.686192, 31.630329, 37.105030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404099, -0.403423, 0.820947,
		0.837398, 0.524287, -0.154556,
		-0.368061, 0.749915, 0.549689,
		32.575775, 31.855305, 37.269936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.463039, 31.668629, 37.300182>,  <32.833416, 31.330362, 36.885155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.463039, 31.668629, 37.300182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.110546, 31.717764, 37.482758>,  <32.899048, 31.747244, 37.592304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.110546, 31.717764, 37.482758>,  <33.463039, 31.668629, 37.300182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.110546, 31.717764, 37.482758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442276, -0.126445, 0.887921,
		0.166783, 0.984339, 0.057100,
		-0.881235, 0.122836, 0.456439,
		32.846176, 31.754614, 37.619690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.650661, 31.987501, 37.854736>,  <33.463039, 31.668629, 37.300182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.650661, 31.987501, 37.854736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.281971, 31.864645, 37.949463>,  <33.060757, 31.790932, 38.006298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.281971, 31.864645, 37.949463>,  <33.650661, 31.987501, 37.854736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.281971, 31.864645, 37.949463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318003, -0.248963, 0.914818,
		-0.222017, 0.918522, 0.327147,
		-0.921728, -0.307139, 0.236818,
		33.005451, 31.772503, 38.020508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436935, 32.375618, 38.385109>,  <33.650661, 31.987501, 37.854736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436935, 32.375618, 38.385109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233044, 32.031631, 38.395218>,  <33.110710, 31.825239, 38.401283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233044, 32.031631, 38.395218>,  <33.436935, 32.375618, 38.385109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.233044, 32.031631, 38.395218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334548, -0.171065, 0.926722,
		-0.792626, 0.480830, 0.374897,
		-0.509727, -0.859965, 0.025270,
		33.080124, 31.773642, 38.402798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.180779, 32.377876, 38.969963>,  <33.436935, 32.375618, 38.385109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.180779, 32.377876, 38.969963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.116249, 31.994678, 38.875126>,  <33.077534, 31.764759, 38.818222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.116249, 31.994678, 38.875126>,  <33.180779, 32.377876, 38.969963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116249, 31.994678, 38.875126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170120, -0.263641, 0.949501,
		-0.972129, 0.112840, 0.205506,
		-0.161322, -0.957998, -0.237096,
		33.067852, 31.707279, 38.803997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785671, 32.145973, 39.580471>,  <33.180779, 32.377876, 38.969963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785671, 32.145973, 39.580471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898403, 31.813433, 39.388878>,  <32.966042, 31.613909, 39.273922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898403, 31.813433, 39.388878>,  <32.785671, 32.145973, 39.580471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.898403, 31.813433, 39.388878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194354, -0.439407, 0.877011,
		-0.939573, -0.340264, 0.037736,
		0.281833, -0.831349, -0.478986,
		32.982952, 31.564028, 39.245182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.494808, 31.539837, 39.884930>,  <32.785671, 32.145973, 39.580471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.494808, 31.539837, 39.884930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.820175, 31.406315, 39.694382>,  <33.015396, 31.326202, 39.580055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.820175, 31.406315, 39.694382>,  <32.494808, 31.539837, 39.884930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.820175, 31.406315, 39.694382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274400, -0.501897, 0.820246,
		-0.512903, -0.797912, -0.316648,
		0.813410, -0.333819, -0.476372,
		33.064201, 31.306173, 39.551472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555222, 30.908777, 40.127621>,  <32.494808, 31.539837, 39.884930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.555222, 30.908777, 40.127621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.906216, 31.001278, 39.959557>,  <33.116814, 31.056778, 39.858719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.906216, 31.001278, 39.959557>,  <32.555222, 30.908777, 40.127621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906216, 31.001278, 39.959557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477184, -0.333245, 0.813169,
		0.048031, -0.914040, -0.402769,
		0.877490, 0.231252, -0.420159,
		33.169464, 31.070654, 39.833508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918587, 30.345118, 40.005005>,  <32.555222, 30.908777, 40.127621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918587, 30.345118, 40.005005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198135, 30.631203, 40.007809>,  <33.365864, 30.802853, 40.009491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198135, 30.631203, 40.007809>,  <32.918587, 30.345118, 40.005005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.198135, 30.631203, 40.007809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518116, -0.512987, 0.684398,
		0.493084, -0.474676, -0.729075,
		0.698873, 0.715211, 0.007009,
		33.407799, 30.845766, 40.009911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.509987, 30.021870, 39.902958>,  <32.918587, 30.345118, 40.005005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.509987, 30.021870, 39.902958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.607193, 30.375216, 40.063259>,  <33.665516, 30.587223, 40.159439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.607193, 30.375216, 40.063259>,  <33.509987, 30.021870, 39.902958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.607193, 30.375216, 40.063259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547091, -0.465980, 0.695380,
		0.801020, 0.050262, -0.596523,
		0.243017, 0.883366, 0.400757,
		33.680099, 30.640226, 40.183487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269657, 29.929279, 40.025925>,  <33.509987, 30.021870, 39.902958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269657, 29.929279, 40.025925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115540, 30.220242, 40.253059>,  <34.023067, 30.394819, 40.389339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115540, 30.220242, 40.253059>,  <34.269657, 29.929279, 40.025925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115540, 30.220242, 40.253059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396946, -0.424858, 0.813591,
		0.833057, 0.538869, -0.125045,
		-0.385292, 0.727404, 0.567832,
		33.999950, 30.438463, 40.423409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.797874, 30.144836, 40.383572>,  <34.269657, 29.929279, 40.025925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.797874, 30.144836, 40.383572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.476635, 30.244028, 40.600288>,  <34.283890, 30.303543, 40.730316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.476635, 30.244028, 40.600288>,  <34.797874, 30.144836, 40.383572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476635, 30.244028, 40.600288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498621, -0.218095, 0.838935,
		0.326200, 0.943897, 0.051504,
		-0.803101, 0.247980, 0.541789,
		34.235706, 30.318422, 40.762825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081463, 30.377481, 40.983967>,  <34.797874, 30.144836, 40.383572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081463, 30.377481, 40.983967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.704166, 30.297009, 41.089657>,  <34.477787, 30.248724, 41.153072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.704166, 30.297009, 41.089657>,  <35.081463, 30.377481, 40.983967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704166, 30.297009, 41.089657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325184, -0.397992, 0.857822,
		-0.067420, 0.895058, 0.440825,
		-0.943244, -0.201183, 0.264226,
		34.421192, 30.236654, 41.168926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006390, 30.639839, 41.668747>,  <35.081463, 30.377481, 40.983967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006390, 30.639839, 41.668747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.706722, 30.379765, 41.618153>,  <34.526920, 30.223719, 41.587795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.706722, 30.379765, 41.618153>,  <35.006390, 30.639839, 41.668747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706722, 30.379765, 41.618153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187607, -0.391421, 0.900885,
		-0.635252, 0.651188, 0.415222,
		-0.749172, -0.650187, -0.126484,
		34.481972, 30.184708, 41.580208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.631542, 30.708044, 42.276985>,  <35.006390, 30.639839, 41.668747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.631542, 30.708044, 42.276985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.550961, 30.348373, 42.121601>,  <34.502613, 30.132570, 42.028370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.550961, 30.348373, 42.121601>,  <34.631542, 30.708044, 42.276985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550961, 30.348373, 42.121601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027359, -0.401600, 0.915406,
		-0.979116, 0.173782, 0.105504,
		-0.201452, -0.899176, -0.388458,
		34.490524, 30.078621, 42.005062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029129, 30.241486, 42.614937>,  <34.631542, 30.708044, 42.276985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029129, 30.241486, 42.614937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.267376, 29.988544, 42.416794>,  <34.410324, 29.836781, 42.297909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.267376, 29.988544, 42.416794>,  <34.029129, 30.241486, 42.614937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.267376, 29.988544, 42.416794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014619, -0.625102, 0.780406,
		-0.803139, -0.457578, -0.381563,
		0.595613, -0.632352, -0.495354,
		34.446060, 29.798840, 42.268188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782455, 29.631025, 42.815983>,  <34.029129, 30.241486, 42.614937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782455, 29.631025, 42.815983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.118114, 29.500408, 42.641998>,  <34.319511, 29.422037, 42.537609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.118114, 29.500408, 42.641998>,  <33.782455, 29.631025, 42.815983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118114, 29.500408, 42.641998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044077, -0.837913, 0.544021,
		-0.542108, -0.437345, -0.717529,
		0.839152, -0.326545, -0.434963,
		34.369862, 29.402445, 42.511509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710598, 28.896843, 42.784519>,  <33.782455, 29.631025, 42.815983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710598, 28.896843, 42.784519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097832, 28.972628, 42.718899>,  <34.330173, 29.018099, 42.679527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097832, 28.972628, 42.718899>,  <33.710598, 28.896843, 42.784519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.097832, 28.972628, 42.718899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246370, -0.839430, 0.484417,
		-0.045928, -0.509374, -0.859319,
		0.968087, 0.189462, -0.164047,
		34.388256, 29.029467, 42.669685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036995, 28.231812, 42.483490>,  <33.710598, 28.896843, 42.784519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.036995, 28.231812, 42.483490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.326149, 28.447535, 42.656269>,  <34.499641, 28.576969, 42.759937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.326149, 28.447535, 42.656269>,  <34.036995, 28.231812, 42.483490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.326149, 28.447535, 42.656269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239902, -0.782148, 0.575057,
		0.647981, -0.312077, -0.694787,
		0.722889, 0.539307, 0.431949,
		34.543015, 28.609327, 42.785854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.529774, 27.848583, 42.497833>,  <34.036995, 28.231812, 42.483490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.529774, 27.848583, 42.497833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.622002, 28.098236, 42.796444>,  <34.677338, 28.248028, 42.975609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.622002, 28.098236, 42.796444>,  <34.529774, 27.848583, 42.497833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622002, 28.098236, 42.796444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213504, -0.780950, 0.586969,
		0.949344, 0.024050, -0.313316,
		0.230568, 0.624130, 0.746525,
		34.691174, 28.285475, 43.020401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094269, 27.493328, 42.884186>,  <34.529774, 27.848583, 42.497833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094269, 27.493328, 42.884186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928596, 27.771858, 43.118652>,  <34.829193, 27.938976, 43.259331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928596, 27.771858, 43.118652>,  <35.094269, 27.493328, 42.884186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928596, 27.771858, 43.118652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081496, -0.669780, 0.738073,
		0.906539, 0.257925, 0.334157,
		-0.414180, 0.696325, 0.586162,
		34.804344, 27.980755, 43.294502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313015, 27.289474, 43.488087>,  <35.094269, 27.493328, 42.884186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313015, 27.289474, 43.488087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.039101, 27.562923, 43.589069>,  <34.874752, 27.726994, 43.649658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.039101, 27.562923, 43.589069>,  <35.313015, 27.289474, 43.488087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039101, 27.562923, 43.589069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157786, -0.477291, 0.864463,
		0.711461, 0.552135, 0.434707,
		-0.684782, 0.683622, 0.252455,
		34.833668, 27.768011, 43.664806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904217, 27.622250, 43.744083>,  <35.313015, 27.289474, 43.488087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904217, 27.622250, 43.744083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.256496, 27.446127, 43.674232>,  <36.467865, 27.340454, 43.632320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.256496, 27.446127, 43.674232>,  <35.904217, 27.622250, 43.744083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256496, 27.446127, 43.674232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046700, 0.447583, -0.893022,
		0.471363, 0.778331, 0.414750,
		0.880702, -0.440307, -0.174626,
		36.520706, 27.314035, 43.621845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.189461, 28.127378, 43.374592>,  <35.904217, 27.622250, 43.744083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.189461, 28.127378, 43.374592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.457901, 27.839804, 43.302200>,  <36.618965, 27.667259, 43.258766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.457901, 27.839804, 43.302200>,  <36.189461, 28.127378, 43.374592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457901, 27.839804, 43.302200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094330, 0.324941, -0.941018,
		0.735342, 0.614445, 0.285885,
		0.671099, -0.718938, -0.180982,
		36.659229, 27.624123, 43.247906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743515, 28.394384, 42.987686>,  <36.189461, 28.127378, 43.374592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743515, 28.394384, 42.987686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.755871, 28.002207, 42.909939>,  <36.763283, 27.766901, 42.863289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.755871, 28.002207, 42.909939>,  <36.743515, 28.394384, 42.987686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.755871, 28.002207, 42.909939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121744, 0.196705, -0.972875,
		0.992081, 0.006384, 0.125438,
		0.030886, -0.980442, -0.194370,
		36.765137, 27.708075, 42.851627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331131, 28.311756, 42.497837>,  <36.743515, 28.394384, 42.987686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331131, 28.311756, 42.497837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.097507, 27.990843, 42.448498>,  <36.957333, 27.798296, 42.418896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.097507, 27.990843, 42.448498>,  <37.331131, 28.311756, 42.497837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.097507, 27.990843, 42.448498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116827, 0.067292, -0.990870,
		0.803258, -0.593140, 0.054425,
		-0.584062, -0.802282, -0.123348,
		36.922287, 27.750158, 42.411495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695381, 27.937315, 41.965759>,  <37.331131, 28.311756, 42.497837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695381, 27.937315, 41.965759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.328381, 27.778524, 41.955940>,  <37.108181, 27.683250, 41.950050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.328381, 27.778524, 41.955940>,  <37.695381, 27.937315, 41.965759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328381, 27.778524, 41.955940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018015, 0.103137, -0.994504,
		0.397327, -0.912015, -0.101780,
		-0.917500, -0.396977, -0.024549,
		37.053131, 27.659431, 41.948574>
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
