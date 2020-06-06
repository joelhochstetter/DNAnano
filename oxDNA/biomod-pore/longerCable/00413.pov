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
	<24.381876, 35.231407, 34.733040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.223526, 34.992401, 35.011967>,  <24.128515, 34.848995, 35.179325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.223526, 34.992401, 35.011967>,  <24.381876, 35.231407, 34.733040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.223526, 34.992401, 35.011967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299436, -0.801845, -0.517090,
		0.868114, 0.004100, 0.496348,
		-0.395874, -0.597518, 0.697321,
		24.104763, 34.813145, 35.221165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.519606, 35.529167, 34.019886>,  <24.381876, 35.231407, 34.733040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.519606, 35.529167, 34.019886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.915634, 35.476700, 34.040081>,  <25.153252, 35.445221, 34.052200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.915634, 35.476700, 34.040081>,  <24.519606, 35.529167, 34.019886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.915634, 35.476700, 34.040081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027973, -0.168150, -0.985364,
		0.137739, 0.976996, -0.162812,
		0.990073, -0.131168, 0.050490,
		25.212656, 35.437351, 34.055229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.824553, 35.924469, 33.497623>,  <24.519606, 35.529167, 34.019886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.824553, 35.924469, 33.497623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.048573, 35.600994, 33.569588>,  <25.182985, 35.406910, 33.612766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.048573, 35.600994, 33.569588>,  <24.824553, 35.924469, 33.497623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.048573, 35.600994, 33.569588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042245, -0.188998, -0.981068,
		0.827381, 0.557048, -0.071685,
		0.560050, -0.808689, 0.179906,
		25.216587, 35.358387, 33.623558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.245161, 35.908394, 32.954388>,  <24.824553, 35.924469, 33.497623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.245161, 35.908394, 32.954388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.272221, 35.538765, 33.104858>,  <25.288456, 35.316986, 33.195141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.272221, 35.538765, 33.104858>,  <25.245161, 35.908394, 32.954388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.272221, 35.538765, 33.104858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030968, -0.378803, -0.924959,
		0.997229, 0.050922, -0.054242,
		0.067648, -0.924075, 0.376176,
		25.292515, 35.261543, 33.217712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.847593, 35.818977, 32.648468>,  <25.245161, 35.908394, 32.954388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.847593, 35.818977, 32.648468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.636368, 35.495224, 32.751263>,  <25.509632, 35.300972, 32.812939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.636368, 35.495224, 32.751263>,  <25.847593, 35.818977, 32.648468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.636368, 35.495224, 32.751263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102390, -0.239732, -0.965425,
		0.843009, -0.536119, 0.043721,
		-0.528064, -0.809386, 0.256989,
		25.477949, 35.252407, 32.828358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.358343, 35.331955, 32.427486>,  <25.847593, 35.818977, 32.648468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.358343, 35.331955, 32.427486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.005281, 35.159843, 32.351830>,  <25.793444, 35.056576, 32.306435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.005281, 35.159843, 32.351830>,  <26.358343, 35.331955, 32.427486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.005281, 35.159843, 32.351830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244546, -0.076744, -0.966596,
		0.401392, -0.899427, 0.172962,
		-0.882656, -0.430281, -0.189146,
		25.740484, 35.030758, 32.295086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.433693, 34.863285, 31.823364>,  <26.358343, 35.331955, 32.427486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.433693, 34.863285, 31.823364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.041691, 34.942856, 31.824942>,  <25.806490, 34.990597, 31.825888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.041691, 34.942856, 31.824942>,  <26.433693, 34.863285, 31.823364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.041691, 34.942856, 31.824942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026603, 0.150659, -0.988228,
		-0.197177, -0.968365, -0.152939,
		-0.980007, 0.198925, 0.003946,
		25.747688, 35.002533, 31.826126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.237179, 34.484203, 31.238092>,  <26.433693, 34.863285, 31.823364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.237179, 34.484203, 31.238092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.928461, 34.721027, 31.330870>,  <25.743231, 34.863121, 31.386536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.928461, 34.721027, 31.330870>,  <26.237179, 34.484203, 31.238092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.928461, 34.721027, 31.330870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116144, 0.227368, -0.966858,
		-0.625175, -0.773155, -0.106717,
		-0.771795, 0.592061, 0.231942,
		25.696922, 34.898647, 31.400452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.704874, 34.283775, 30.796089>,  <26.237179, 34.484203, 31.238092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.704874, 34.283775, 30.796089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.629478, 34.659988, 30.909138>,  <25.584242, 34.885715, 30.976967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.629478, 34.659988, 30.909138>,  <25.704874, 34.283775, 30.796089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.629478, 34.659988, 30.909138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082619, 0.271575, -0.958864,
		-0.978594, -0.204085, 0.026516,
		-0.188489, 0.940530, 0.282623,
		25.572931, 34.942146, 30.993925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.154446, 34.527382, 30.312771>,  <25.704874, 34.283775, 30.796089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.154446, 34.527382, 30.312771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.329142, 34.858337, 30.454016>,  <25.433958, 35.056911, 30.538763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.329142, 34.858337, 30.454016>,  <25.154446, 34.527382, 30.312771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.329142, 34.858337, 30.454016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031097, 0.406175, -0.913266,
		-0.899051, 0.387877, 0.203121,
		0.436738, 0.827389, 0.353110,
		25.460163, 35.106556, 30.559948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.822578, 35.141209, 30.050209>,  <25.154446, 34.527382, 30.312771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.822578, 35.141209, 30.050209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.183289, 35.283211, 30.148817>,  <25.399714, 35.368412, 30.207983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.183289, 35.283211, 30.148817>,  <24.822578, 35.141209, 30.050209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.183289, 35.283211, 30.148817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005073, 0.561644, -0.827363,
		-0.432179, 0.747345, 0.504675,
		0.901774, 0.355009, 0.246522,
		25.453821, 35.389713, 30.222775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.746481, 35.757462, 29.830051>,  <24.822578, 35.141209, 30.050209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.746481, 35.757462, 29.830051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.141535, 35.708866, 29.869690>,  <25.378567, 35.679710, 29.893473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.141535, 35.708866, 29.869690>,  <24.746481, 35.757462, 29.830051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.141535, 35.708866, 29.869690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152412, 0.595887, -0.788473,
		0.036741, 0.793826, 0.607034,
		0.987634, -0.121489, 0.099095,
		25.437824, 35.672421, 29.899418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.001625, 36.507130, 29.936563>,  <24.746481, 35.757462, 29.830051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.001625, 36.507130, 29.936563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.297161, 36.273418, 29.802258>,  <25.474483, 36.133194, 29.721674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.297161, 36.273418, 29.802258>,  <25.001625, 36.507130, 29.936563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.297161, 36.273418, 29.802258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159497, 0.635718, -0.755264,
		0.654733, 0.504466, 0.562884,
		0.738840, -0.584275, -0.335765,
		25.518814, 36.098137, 29.701529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.685213, 36.842537, 29.958792>,  <25.001625, 36.507130, 29.936563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.685213, 36.842537, 29.958792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.678934, 36.568180, 29.667778>,  <25.675167, 36.403564, 29.493170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.678934, 36.568180, 29.667778>,  <25.685213, 36.842537, 29.958792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.678934, 36.568180, 29.667778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384503, 0.667531, -0.637620,
		0.922990, -0.289748, 0.253249,
		-0.015698, -0.685892, -0.727534,
		25.674225, 36.362411, 29.449518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.385891, 36.608734, 29.707090>,  <25.685213, 36.842537, 29.958792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.385891, 36.608734, 29.707090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.111832, 36.593552, 29.416124>,  <25.947395, 36.584442, 29.241545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.111832, 36.593552, 29.416124>,  <26.385891, 36.608734, 29.707090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.111832, 36.593552, 29.416124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466916, 0.743604, -0.478584,
		0.559070, -0.667543, -0.491760,
		-0.685150, -0.037951, -0.727413,
		25.906286, 36.582165, 29.197901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.606728, 35.866962, 29.827513>,  <26.385891, 36.608734, 29.707090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.606728, 35.866962, 29.827513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.218878, 35.836327, 29.920433>,  <25.986168, 35.817944, 29.976185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.218878, 35.836327, 29.920433>,  <26.606728, 35.866962, 29.827513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.218878, 35.836327, 29.920433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241697, -0.445941, 0.861812,
		0.037585, 0.891779, 0.450906,
		-0.969624, -0.076592, 0.232301,
		25.927990, 35.813351, 29.990124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.626055, 35.767380, 30.525713>,  <26.606728, 35.866962, 29.827513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.626055, 35.767380, 30.525713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.246655, 35.674377, 30.439650>,  <26.019014, 35.618576, 30.388012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.246655, 35.674377, 30.439650>,  <26.626055, 35.767380, 30.525713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.246655, 35.674377, 30.439650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077796, -0.487445, 0.869681,
		-0.307081, 0.841629, 0.444253,
		-0.948498, -0.232502, -0.215160,
		25.962105, 35.604626, 30.375101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.112671, 36.108730, 31.058363>,  <26.626055, 35.767380, 30.525713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.112671, 36.108730, 31.058363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.877136, 35.817455, 30.918072>,  <25.735815, 35.642689, 30.833897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.877136, 35.817455, 30.918072>,  <26.112671, 36.108730, 31.058363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.877136, 35.817455, 30.918072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305925, -0.200853, 0.930628,
		-0.748118, 0.655285, -0.104501,
		-0.588837, -0.728189, -0.350730,
		25.700485, 35.598999, 30.812853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.422913, 36.196339, 31.292088>,  <26.112671, 36.108730, 31.058363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.422913, 36.196339, 31.292088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.472082, 35.808353, 31.208126>,  <25.501585, 35.575562, 31.157749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.472082, 35.808353, 31.208126>,  <25.422913, 36.196339, 31.292088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.472082, 35.808353, 31.208126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280173, -0.236820, 0.930279,
		-0.952047, -0.055546, -0.300869,
		0.122925, -0.969965, -0.209902,
		25.508959, 35.517365, 31.145155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.811859, 35.888161, 31.513184>,  <25.422913, 36.196339, 31.292088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.811859, 35.888161, 31.513184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.097727, 35.608631, 31.501226>,  <25.269247, 35.440914, 31.494051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.097727, 35.608631, 31.501226>,  <24.811859, 35.888161, 31.513184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.097727, 35.608631, 31.501226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284853, -0.329814, 0.900045,
		-0.638832, -0.634719, -0.434770,
		0.714669, -0.698823, -0.029894,
		25.312128, 35.398983, 31.492258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.407139, 35.881226, 32.202061>,  <24.811859, 35.888161, 31.513184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.407139, 35.881226, 32.202061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.221205, 35.554947, 32.339794>,  <24.109644, 35.359180, 32.422436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.221205, 35.554947, 32.339794>,  <24.407139, 35.881226, 32.202061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.221205, 35.554947, 32.339794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688720, 0.088715, -0.719579,
		0.556412, -0.571634, -0.603026,
		-0.464834, -0.815699, 0.344334,
		24.081755, 35.310238, 32.443092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.517675, 35.291367, 31.775259>,  <24.407139, 35.881226, 32.202061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.517675, 35.291367, 31.775259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.907856, 35.207138, 31.801035>,  <25.141964, 35.156601, 31.816500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.907856, 35.207138, 31.801035>,  <24.517675, 35.291367, 31.775259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.907856, 35.207138, 31.801035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138260, -0.357863, 0.923481,
		-0.171402, -0.909721, -0.378192,
		0.975451, -0.210575, 0.064440,
		25.200491, 35.143967, 31.820368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.567726, 34.541222, 31.912338>,  <24.517675, 35.291367, 31.775259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.567726, 34.541222, 31.912338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.902372, 34.718269, 32.041435>,  <25.103159, 34.824497, 32.118893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.902372, 34.718269, 32.041435>,  <24.567726, 34.541222, 31.912338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.902372, 34.718269, 32.041435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212393, -0.280982, 0.935916,
		0.504942, -0.851548, -0.141064,
		0.836614, 0.442622, 0.322743,
		25.153357, 34.851055, 32.138260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.803492, 34.136143, 32.429806>,  <24.567726, 34.541222, 31.912338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.803492, 34.136143, 32.429806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.988985, 34.482128, 32.506535>,  <25.100281, 34.689720, 32.552570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.988985, 34.482128, 32.506535>,  <24.803492, 34.136143, 32.429806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.988985, 34.482128, 32.506535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072171, -0.178905, 0.981216,
		0.883030, -0.468867, -0.020539,
		0.463734, 0.864961, 0.191817,
		25.128105, 34.741615, 32.564079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.874311, 34.060654, 33.047997>,  <24.803492, 34.136143, 32.429806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.874311, 34.060654, 33.047997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.073311, 34.405243, 33.007275>,  <25.192711, 34.611996, 32.982841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.073311, 34.405243, 33.007275>,  <24.874311, 34.060654, 33.047997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.073311, 34.405243, 33.007275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203460, -0.001792, 0.979081,
		0.843266, -0.507807, -0.176166,
		0.497500, 0.861469, -0.101807,
		25.222561, 34.663685, 32.976734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.298910, 34.043488, 33.633621>,  <24.874311, 34.060654, 33.047997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.298910, 34.043488, 33.633621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.346857, 34.422451, 33.514927>,  <25.375626, 34.649830, 33.443710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.346857, 34.422451, 33.514927>,  <25.298910, 34.043488, 33.633621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.346857, 34.422451, 33.514927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213301, 0.267337, 0.939698,
		0.969605, -0.175936, -0.170037,
		0.119869, 0.947406, -0.296739,
		25.382818, 34.706673, 33.425903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.988466, 34.321030, 33.896885>,  <25.298910, 34.043488, 33.633621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.988466, 34.321030, 33.896885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.735485, 34.621002, 33.819317>,  <25.583696, 34.800987, 33.772774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.735485, 34.621002, 33.819317>,  <25.988466, 34.321030, 33.896885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.735485, 34.621002, 33.819317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197599, 0.398269, 0.895732,
		0.748971, 0.528190, -0.400072,
		-0.632453, 0.749932, -0.193922,
		25.545750, 34.845982, 33.761139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.318699, 34.959503, 33.995018>,  <25.988466, 34.321030, 33.896885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.318699, 34.959503, 33.995018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.926844, 34.994869, 34.067120>,  <25.691730, 35.016090, 34.110382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.926844, 34.994869, 34.067120>,  <26.318699, 34.959503, 33.995018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.926844, 34.994869, 34.067120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200678, 0.403865, 0.892537,
		0.006120, 0.910536, -0.413385,
		-0.979638, 0.088420, 0.180253,
		25.632952, 35.021397, 34.121197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.304516, 35.645966, 34.307495>,  <26.318699, 34.959503, 33.995018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.304516, 35.645966, 34.307495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.991468, 35.418522, 34.408844>,  <25.803640, 35.282055, 34.469654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.991468, 35.418522, 34.408844>,  <26.304516, 35.645966, 34.307495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.991468, 35.418522, 34.408844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027912, 0.374555, 0.926784,
		-0.621875, 0.732391, -0.277263,
		-0.782619, -0.568605, 0.253369,
		25.756683, 35.247940, 34.484856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.657814, 36.018471, 34.420292>,  <26.304516, 35.645966, 34.307495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.657814, 36.018471, 34.420292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.662308, 35.673374, 34.622501>,  <25.665005, 35.466316, 34.743828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.662308, 35.673374, 34.622501>,  <25.657814, 36.018471, 34.420292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.662308, 35.673374, 34.622501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143784, 0.501697, 0.853010,
		-0.989545, 0.063102, 0.129684,
		0.011235, -0.862738, 0.505525,
		25.665678, 35.414551, 34.774158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.143167, 36.053432, 34.913521>,  <25.657814, 36.018471, 34.420292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.143167, 36.053432, 34.913521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.462542, 35.836533, 35.018181>,  <25.654167, 35.706394, 35.080978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.462542, 35.836533, 35.018181>,  <25.143167, 36.053432, 34.913521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.462542, 35.836533, 35.018181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038762, 0.479980, 0.876423,
		-0.600829, -0.689626, 0.404253,
		0.798437, -0.542250, 0.261654,
		25.702072, 35.673859, 35.096676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.068441, 35.775749, 35.585213>,  <25.143167, 36.053432, 34.913521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.068441, 35.775749, 35.585213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.455753, 35.831501, 35.502258>,  <25.688141, 35.864952, 35.452488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.455753, 35.831501, 35.502258>,  <25.068441, 35.775749, 35.585213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.455753, 35.831501, 35.502258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091348, 0.575060, 0.812995,
		0.232570, -0.806151, 0.544088,
		0.968280, 0.139377, -0.207382,
		25.746237, 35.873314, 35.440044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.387224, 35.614132, 36.197327>,  <25.068441, 35.775749, 35.585213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.387224, 35.614132, 36.197327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.625902, 35.860889, 35.992039>,  <25.769110, 36.008945, 35.868866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.625902, 35.860889, 35.992039>,  <25.387224, 35.614132, 36.197327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.625902, 35.860889, 35.992039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279479, 0.439754, 0.853526,
		0.752227, -0.652729, 0.089990,
		0.596695, 0.616896, -0.513220,
		25.804911, 36.045959, 35.838074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.936548, 35.605621, 36.580608>,  <25.387224, 35.614132, 36.197327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.936548, 35.605621, 36.580608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.974583, 35.935432, 36.357498>,  <25.997404, 36.133320, 36.223633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.974583, 35.935432, 36.357498>,  <25.936548, 35.605621, 36.580608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.974583, 35.935432, 36.357498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021478, 0.561880, 0.826940,
		0.995237, -0.066651, 0.071136,
		0.095087, 0.824529, -0.557773,
		26.003109, 36.182793, 36.190166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.348721, 36.161682, 36.850956>,  <25.936548, 35.605621, 36.580608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.348721, 36.161682, 36.850956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.091541, 36.376392, 36.632416>,  <25.937233, 36.505219, 36.501293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.091541, 36.376392, 36.632416>,  <26.348721, 36.161682, 36.850956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.091541, 36.376392, 36.632416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044550, 0.685913, 0.726319,
		0.764613, 0.491325, -0.417093,
		-0.642948, 0.536771, -0.546346,
		25.898657, 36.537422, 36.468513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.821524, 35.963909, 36.343346>,  <26.348721, 36.161682, 36.850956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.821524, 35.963909, 36.343346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.659233, 36.261246, 36.130619>,  <26.561859, 36.439648, 36.002983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.659233, 36.261246, 36.130619>,  <26.821524, 35.963909, 36.343346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.659233, 36.261246, 36.130619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495451, 0.667827, 0.555460,
		0.768059, -0.038126, -0.639243,
		-0.405726, 0.743340, -0.531820,
		26.537516, 36.484249, 35.971073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.362408, 36.570080, 36.397354>,  <26.821524, 35.963909, 36.343346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.362408, 36.570080, 36.397354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.993450, 36.698380, 36.311279>,  <26.772076, 36.775360, 36.259636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.993450, 36.698380, 36.311279>,  <27.362408, 36.570080, 36.397354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.993450, 36.698380, 36.311279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127462, 0.778687, 0.614329,
		0.364608, 0.539227, -0.759141,
		-0.922396, 0.320751, -0.215184,
		26.716732, 36.794605, 36.246723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.345514, 37.255959, 36.064262>,  <27.362408, 36.570080, 36.397354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.345514, 37.255959, 36.064262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.987110, 37.193844, 36.230659>,  <26.772068, 37.156574, 36.330498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.987110, 37.193844, 36.230659>,  <27.345514, 37.255959, 36.064262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.987110, 37.193844, 36.230659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046154, 0.899206, 0.435083,
		-0.441626, 0.409039, -0.798532,
		-0.896011, -0.155288, 0.415992,
		26.718307, 37.147259, 36.355457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.057774, 37.949574, 35.998318>,  <27.345514, 37.255959, 36.064262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.057774, 37.949574, 35.998318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.867533, 37.751019, 36.288807>,  <26.753389, 37.631886, 36.463100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.867533, 37.751019, 36.288807>,  <27.057774, 37.949574, 35.998318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.867533, 37.751019, 36.288807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218833, 0.732857, 0.644230,
		-0.852007, 0.465318, -0.239922,
		-0.475601, -0.496386, 0.726226,
		26.724852, 37.602104, 36.506676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.765301, 38.449665, 36.436111>,  <27.057774, 37.949574, 35.998318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.765301, 38.449665, 36.436111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.761892, 38.112114, 36.650700>,  <26.759848, 37.909584, 36.779453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.761892, 38.112114, 36.650700>,  <26.765301, 38.449665, 36.436111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.761892, 38.112114, 36.650700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143901, 0.529869, 0.835782,
		-0.989555, 0.084320, 0.116920,
		-0.008521, -0.843878, 0.536468,
		26.759336, 37.858952, 36.811642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.330023, 38.449139, 36.989212>,  <26.765301, 38.449665, 36.436111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.330023, 38.449139, 36.989212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.959635, 38.480145, 37.137032>,  <26.737402, 38.498749, 37.225723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.959635, 38.480145, 37.137032>,  <27.330023, 38.449139, 36.989212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.959635, 38.480145, 37.137032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192617, -0.938754, -0.285726,
		0.324769, -0.335756, 0.884191,
		-0.925972, 0.077515, 0.369551,
		26.681843, 38.503399, 37.247898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.110895, 37.850887, 37.407955>,  <27.330023, 38.449139, 36.989212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.110895, 37.850887, 37.407955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.774466, 38.002575, 37.253658>,  <26.572609, 38.093586, 37.161079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.774466, 38.002575, 37.253658>,  <27.110895, 37.850887, 37.407955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.774466, 38.002575, 37.253658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294892, -0.919270, -0.260733,
		-0.453472, -0.105544, 0.885000,
		-0.841072, 0.379214, -0.385739,
		26.522144, 38.116341, 37.137936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.519562, 37.386673, 37.684368>,  <27.110895, 37.850887, 37.407955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.519562, 37.386673, 37.684368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.478001, 37.554035, 37.323448>,  <26.453064, 37.654453, 37.106895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.478001, 37.554035, 37.323448>,  <26.519562, 37.386673, 37.684368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.478001, 37.554035, 37.323448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060050, -0.908191, -0.414225,
		-0.992773, 0.011145, 0.119488,
		-0.103902, 0.418406, -0.902297,
		26.446831, 37.679558, 37.052757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.804178, 37.120209, 37.377762>,  <26.519562, 37.386673, 37.684368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.804178, 37.120209, 37.377762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.063238, 37.254581, 37.104206>,  <26.218674, 37.335205, 36.940075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.063238, 37.254581, 37.104206>,  <25.804178, 37.120209, 37.377762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.063238, 37.254581, 37.104206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207017, -0.786215, -0.582246,
		-0.733275, 0.518668, -0.439649,
		0.647651, 0.335932, -0.683885,
		26.257534, 37.355362, 36.899040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.490438, 37.072269, 36.714779>,  <25.804178, 37.120209, 37.377762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.490438, 37.072269, 36.714779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.871834, 37.114845, 36.601978>,  <26.100672, 37.140392, 36.534298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.871834, 37.114845, 36.601978>,  <25.490438, 37.072269, 36.714779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.871834, 37.114845, 36.601978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093156, -0.785711, -0.611539,
		-0.286668, 0.609367, -0.739252,
		0.953490, 0.106443, -0.282004,
		26.157881, 37.146778, 36.517376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.531748, 37.196930, 35.901329>,  <25.490438, 37.072269, 36.714779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.531748, 37.196930, 35.901329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.880857, 37.052444, 36.032654>,  <26.090322, 36.965752, 36.111446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.880857, 37.052444, 36.032654>,  <25.531748, 37.196930, 35.901329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.880857, 37.052444, 36.032654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047038, -0.607224, -0.793137,
		0.485852, 0.707673, -0.512979,
		0.872775, -0.361218, 0.328308,
		26.142691, 36.944080, 36.131145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.022915, 37.198647, 35.390938>,  <25.531748, 37.196930, 35.901329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.022915, 37.198647, 35.390938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.054026, 36.887104, 35.639881>,  <26.072693, 36.700176, 35.789246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.054026, 36.887104, 35.639881>,  <26.022915, 37.198647, 35.390938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.054026, 36.887104, 35.639881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043123, -0.621037, -0.782594,
		0.996038, 0.087706, -0.014716,
		0.077777, -0.778859, 0.622358,
		26.077358, 36.653446, 35.826588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.646143, 36.766930, 35.194126>,  <26.022915, 37.198647, 35.390938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.646143, 36.766930, 35.194126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.392725, 36.524155, 35.386059>,  <26.240673, 36.378490, 35.501221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.392725, 36.524155, 35.386059>,  <26.646143, 36.766930, 35.194126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.392725, 36.524155, 35.386059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048263, -0.649973, -0.758423,
		0.772198, -0.457338, 0.441081,
		-0.633547, -0.606941, 0.479835,
		26.202662, 36.342072, 35.530010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.046339, 36.100143, 35.254890>,  <26.646143, 36.766930, 35.194126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.046339, 36.100143, 35.254890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.655785, 36.022129, 35.292046>,  <26.421452, 35.975319, 35.314339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.655785, 36.022129, 35.292046>,  <27.046339, 36.100143, 35.254890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.655785, 36.022129, 35.292046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085285, -0.743064, -0.663764,
		0.198484, -0.640168, 0.742152,
		-0.976387, -0.195041, 0.092890,
		26.362869, 35.963615, 35.319912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.894014, 35.333721, 35.461697>,  <27.046339, 36.100143, 35.254890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.894014, 35.333721, 35.461697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.622187, 35.535248, 35.248398>,  <26.459091, 35.656166, 35.120419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.622187, 35.535248, 35.248398>,  <26.894014, 35.333721, 35.461697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.622187, 35.535248, 35.248398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151938, -0.807778, -0.569570,
		-0.717707, -0.306040, 0.625488,
		-0.679567, 0.503820, -0.533249,
		26.418316, 35.686394, 35.088425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.586830, 34.938862, 35.212650>,  <26.894014, 35.333721, 35.461697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.586830, 34.938862, 35.212650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.850595, 35.151371, 34.999889>,  <28.008854, 35.278877, 34.872231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.850595, 35.151371, 34.999889>,  <27.586830, 34.938862, 35.212650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.850595, 35.151371, 34.999889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745798, -0.551373, 0.373862,
		-0.094655, -0.643222, -0.759807,
		0.659413, 0.531274, -0.531904,
		28.048420, 35.310753, 34.840317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.857746, 34.516335, 34.741604>,  <27.586830, 34.938862, 35.212650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.857746, 34.516335, 34.741604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.092407, 34.803440, 34.891617>,  <28.233204, 34.975704, 34.981625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.092407, 34.803440, 34.891617>,  <27.857746, 34.516335, 34.741604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.092407, 34.803440, 34.891617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613289, -0.696195, 0.373080,
		0.528881, 0.011136, -0.848623,
		0.586653, 0.717766, 0.375034,
		28.268402, 35.018768, 35.004128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.577534, 34.370621, 34.475670>,  <27.857746, 34.516335, 34.741604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.577534, 34.370621, 34.475670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.559509, 34.525425, 34.844059>,  <28.548695, 34.618309, 35.065094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.559509, 34.525425, 34.844059>,  <28.577534, 34.370621, 34.475670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.559509, 34.525425, 34.844059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558983, -0.754306, 0.344325,
		0.827953, 0.530325, -0.182342,
		-0.045063, 0.387012, 0.920973,
		28.545990, 34.641529, 35.120350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.914474, 33.998989, 34.846554>,  <28.577534, 34.370621, 34.475670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.914474, 33.998989, 34.846554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.836123, 34.254078, 35.144531>,  <28.789112, 34.407131, 35.323318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.836123, 34.254078, 35.144531>,  <28.914474, 33.998989, 34.846554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.836123, 34.254078, 35.144531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705425, -0.436053, 0.558778,
		0.681180, 0.634955, -0.364452,
		-0.195879, 0.637723, 0.744944,
		28.777359, 34.445396, 35.368015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.529093, 34.294174, 35.001312>,  <28.914474, 33.998989, 34.846554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.529093, 34.294174, 35.001312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.265188, 34.273804, 35.301212>,  <29.106846, 34.261581, 35.481152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.265188, 34.273804, 35.301212>,  <29.529093, 34.294174, 35.001312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.265188, 34.273804, 35.301212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530869, -0.737737, 0.417040,
		0.531879, 0.673165, 0.513764,
		-0.659759, -0.050927, 0.749749,
		29.067261, 34.258526, 35.526138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.864378, 34.464813, 35.596123>,  <29.529093, 34.294174, 35.001312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.864378, 34.464813, 35.596123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.551769, 34.229046, 35.677917>,  <29.364204, 34.087585, 35.726994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.551769, 34.229046, 35.677917>,  <29.864378, 34.464813, 35.596123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.551769, 34.229046, 35.677917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620735, -0.701762, 0.349597,
		-0.062559, 0.400147, 0.914313,
		-0.781521, -0.589417, 0.204483,
		29.317312, 34.052219, 35.739262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.069527, 34.381714, 36.320728>,  <29.864378, 34.464813, 35.596123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.069527, 34.381714, 36.320728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.858477, 34.093773, 36.140320>,  <29.731846, 33.921009, 36.032074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.858477, 34.093773, 36.140320>,  <30.069527, 34.381714, 36.320728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.858477, 34.093773, 36.140320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750672, -0.643632, 0.149094,
		-0.397619, -0.259905, 0.879971,
		-0.527627, -0.719852, -0.451024,
		29.700190, 33.877819, 36.005013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.907013, 33.728878, 36.637764>,  <30.069527, 34.381714, 36.320728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.907013, 33.728878, 36.637764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.945591, 33.678337, 36.242851>,  <29.968739, 33.648014, 36.005901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.945591, 33.678337, 36.242851>,  <29.907013, 33.728878, 36.637764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.945591, 33.678337, 36.242851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754078, -0.638152, 0.155332,
		-0.649665, -0.759473, 0.033729,
		0.096446, -0.126348, -0.987287,
		29.974525, 33.640434, 35.946667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.021530, 32.999542, 36.417835>,  <29.907013, 33.728878, 36.637764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.021530, 32.999542, 36.417835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.182367, 33.243305, 36.144505>,  <30.278870, 33.389565, 35.980507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.182367, 33.243305, 36.144505>,  <30.021530, 32.999542, 36.417835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.182367, 33.243305, 36.144505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792124, -0.605835, -0.074189,
		-0.459196, -0.511450, -0.726332,
		0.402093, 0.609412, -0.683329,
		30.302996, 33.426128, 35.939507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.371279, 32.498684, 36.031967>,  <30.021530, 32.999542, 36.417835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.371279, 32.498684, 36.031967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.538225, 32.859188, 35.985439>,  <30.638393, 33.075493, 35.957523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.538225, 32.859188, 35.985439>,  <30.371279, 32.498684, 36.031967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.538225, 32.859188, 35.985439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875171, -0.433113, -0.215613,
		-0.244704, -0.011810, -0.969526,
		0.417368, 0.901262, -0.116320,
		30.663435, 33.129566, 35.950542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.787651, 32.575161, 35.503590>,  <30.371279, 32.498684, 36.031967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.787651, 32.575161, 35.503590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.991510, 32.841724, 35.721275>,  <31.113825, 33.001663, 35.851887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.991510, 32.841724, 35.721275>,  <30.787651, 32.575161, 35.503590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.991510, 32.841724, 35.721275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851994, -0.302778, -0.427121,
		-0.119861, 0.681345, -0.722082,
		0.509647, 0.666405, 0.544210,
		31.144405, 33.041645, 35.884537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.331512, 32.963428, 35.065647>,  <30.787651, 32.575161, 35.503590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.331512, 32.963428, 35.065647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.494234, 32.937721, 35.430149>,  <31.591867, 32.922295, 35.648849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.494234, 32.937721, 35.430149>,  <31.331512, 32.963428, 35.065647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.494234, 32.937721, 35.430149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854517, -0.325903, -0.404462,
		0.322974, 0.943216, -0.077658,
		0.406804, -0.064271, 0.911252,
		31.616276, 32.918442, 35.703526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.980133, 33.498878, 34.557381>,  <31.331512, 32.963428, 35.065647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.980133, 33.498878, 34.557381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.353809, 33.626907, 34.494343>,  <31.578016, 33.703724, 34.456520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.353809, 33.626907, 34.494343>,  <30.980133, 33.498878, 34.557381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.353809, 33.626907, 34.494343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010164, -0.417676, -0.908539,
		-0.356624, 0.850353, -0.386937,
		0.934193, 0.320074, -0.157596,
		31.634068, 33.722931, 34.447063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.528992, 33.560768, 33.970676>,  <30.980133, 33.498878, 34.557381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.528992, 33.560768, 33.970676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.632240, 33.262875, 34.216846>,  <31.694189, 33.084141, 34.364548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.632240, 33.262875, 34.216846>,  <31.528992, 33.560768, 33.970676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.632240, 33.262875, 34.216846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644641, -0.341702, -0.683869,
		0.719591, 0.573251, 0.391883,
		0.258122, -0.744730, 0.615427,
		31.709677, 33.039455, 34.401474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.253487, 33.494629, 34.070774>,  <31.528992, 33.560768, 33.970676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.253487, 33.494629, 34.070774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083111, 33.133736, 34.097740>,  <31.980885, 32.917198, 34.113922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083111, 33.133736, 34.097740>,  <32.253487, 33.494629, 34.070774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083111, 33.133736, 34.097740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461296, -0.280668, -0.841683,
		0.778319, -0.327406, 0.535746,
		-0.425939, -0.902236, 0.067418,
		31.955328, 32.863064, 34.117966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740925, 32.864166, 34.144226>,  <32.253487, 33.494629, 34.070774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740925, 32.864166, 34.144226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.410812, 32.798561, 33.928074>,  <32.212746, 32.759197, 33.798382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.410812, 32.798561, 33.928074>,  <32.740925, 32.864166, 34.144226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.410812, 32.798561, 33.928074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534042, -0.537774, -0.652379,
		-0.183600, -0.826981, 0.531407,
		-0.825282, -0.164017, -0.540378,
		32.163227, 32.749355, 33.765961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.680523, 32.197735, 33.967072>,  <32.740925, 32.864166, 34.144226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.680523, 32.197735, 33.967072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.453094, 32.369629, 33.686485>,  <32.316639, 32.472763, 33.518131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.453094, 32.369629, 33.686485>,  <32.680523, 32.197735, 33.967072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453094, 32.369629, 33.686485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452085, -0.549176, -0.702869,
		-0.687275, -0.716753, 0.117969,
		-0.568569, 0.429732, -0.701469,
		32.282524, 32.498550, 33.476044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.336254, 31.679907, 33.678185>,  <32.680523, 32.197735, 33.967072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.336254, 31.679907, 33.678185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.372993, 31.984997, 33.422119>,  <32.395039, 32.168053, 33.268478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.372993, 31.984997, 33.422119>,  <32.336254, 31.679907, 33.678185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.372993, 31.984997, 33.422119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458088, -0.603183, -0.652937,
		-0.884149, -0.233282, -0.404796,
		0.091848, 0.762726, -0.640167,
		32.400547, 32.213814, 33.230068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.067715, 31.446995, 33.038574>,  <32.336254, 31.679907, 33.678185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.067715, 31.446995, 33.038574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293781, 31.761908, 32.939960>,  <32.429420, 31.950855, 32.880795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293781, 31.761908, 32.939960>,  <32.067715, 31.446995, 33.038574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293781, 31.761908, 32.939960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432761, -0.537341, -0.723867,
		-0.702358, 0.302414, -0.644390,
		0.565165, 0.787280, -0.246533,
		32.463329, 31.998091, 32.866001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.057022, 31.493038, 32.261871>,  <32.067715, 31.446995, 33.038574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.057022, 31.493038, 32.261871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.375099, 31.700863, 32.386909>,  <32.565945, 31.825558, 32.461933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.375099, 31.700863, 32.386909>,  <32.057022, 31.493038, 32.261871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.375099, 31.700863, 32.386909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544211, -0.384204, -0.745802,
		-0.267390, 0.763178, -0.588270,
		0.795196, 0.519564, 0.312598,
		32.613659, 31.856731, 32.480690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.335884, 31.848270, 31.695923>,  <32.057022, 31.493038, 32.261871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.335884, 31.848270, 31.695923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654099, 31.811663, 31.935505>,  <32.845028, 31.789698, 32.079254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654099, 31.811663, 31.935505>,  <32.335884, 31.848270, 31.695923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.654099, 31.811663, 31.935505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518709, -0.408035, -0.751298,
		0.313152, 0.908368, -0.277135,
		0.795535, -0.091518, 0.598956,
		32.892757, 31.784206, 32.115192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.955292, 32.097397, 31.292273>,  <32.335884, 31.848270, 31.695923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.955292, 32.097397, 31.292273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119892, 31.884411, 31.588150>,  <33.218651, 31.756618, 31.765676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119892, 31.884411, 31.588150>,  <32.955292, 32.097397, 31.292273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119892, 31.884411, 31.588150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694732, -0.342063, -0.632724,
		0.589927, 0.774254, 0.229165,
		0.411501, -0.532469, 0.739691,
		33.243343, 31.724670, 31.810057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.738491, 32.272633, 31.323708>,  <32.955292, 32.097397, 31.292273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.738491, 32.272633, 31.323708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.700161, 31.924004, 31.516035>,  <33.677162, 31.714827, 31.631432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.700161, 31.924004, 31.516035>,  <33.738491, 32.272633, 31.323708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.700161, 31.924004, 31.516035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703155, -0.401169, -0.587057,
		0.704550, 0.281837, 0.651289,
		-0.095823, -0.871568, 0.480819,
		33.671413, 31.662533, 31.660280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342693, 32.070381, 31.439655>,  <33.738491, 32.272633, 31.323708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.342693, 32.070381, 31.439655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.111694, 31.744011, 31.450731>,  <33.973095, 31.548189, 31.457376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.111694, 31.744011, 31.450731>,  <34.342693, 32.070381, 31.439655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.111694, 31.744011, 31.450731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619756, -0.460224, -0.635686,
		0.531416, -0.349944, 0.771451,
		-0.577495, -0.815925, 0.027690,
		33.938446, 31.499233, 31.459038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792854, 31.619091, 31.464947>,  <34.342693, 32.070381, 31.439655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792854, 31.619091, 31.464947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.475487, 31.413136, 31.335102>,  <34.285065, 31.289562, 31.257195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.475487, 31.413136, 31.335102>,  <34.792854, 31.619091, 31.464947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.475487, 31.413136, 31.335102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591635, -0.527074, -0.610051,
		0.143014, -0.676078, 0.722817,
		-0.793420, -0.514890, -0.324612,
		34.237461, 31.258669, 31.237719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130634, 30.970589, 31.388830>,  <34.792854, 31.619091, 31.464947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.130634, 30.970589, 31.388830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782238, 30.966450, 31.192356>,  <34.573200, 30.963966, 31.074472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782238, 30.966450, 31.192356>,  <35.130634, 30.970589, 31.388830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.782238, 30.966450, 31.192356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453300, -0.402441, -0.795337,
		-0.189442, -0.915388, 0.355215,
		-0.870994, -0.010349, -0.491184,
		34.520939, 30.963345, 31.045000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156075, 30.406994, 31.105471>,  <35.130634, 30.970589, 31.388830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156075, 30.406994, 31.105471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.894382, 30.614304, 30.885153>,  <34.737366, 30.738689, 30.752962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.894382, 30.614304, 30.885153>,  <35.156075, 30.406994, 31.105471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.894382, 30.614304, 30.885153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421878, -0.354352, -0.834538,
		-0.627696, -0.778347, 0.013178,
		-0.654230, 0.518277, -0.550792,
		34.698112, 30.769787, 30.719915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.998077, 29.960699, 30.470974>,  <35.156075, 30.406994, 31.105471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.998077, 29.960699, 30.470974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.855522, 30.317728, 30.360481>,  <34.769989, 30.531946, 30.294186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.855522, 30.317728, 30.360481>,  <34.998077, 29.960699, 30.470974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.855522, 30.317728, 30.360481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348224, -0.147460, -0.925741,
		-0.867024, -0.426111, -0.258263,
		-0.356385, 0.892572, -0.276233,
		34.748608, 30.585499, 30.277611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.607231, 29.901243, 29.867699>,  <34.998077, 29.960699, 30.470974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.607231, 29.901243, 29.867699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713303, 30.286922, 29.867664>,  <34.776947, 30.518330, 29.867643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713303, 30.286922, 29.867664>,  <34.607231, 29.901243, 29.867699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713303, 30.286922, 29.867664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363062, -0.099932, -0.926390,
		-0.893234, 0.245627, -0.376564,
		0.265178, 0.964200, -0.000084,
		34.792854, 30.576181, 29.867640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.324070, 30.216019, 29.281448>,  <34.607231, 29.901243, 29.867699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.324070, 30.216019, 29.281448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.596451, 30.483658, 29.400518>,  <34.759880, 30.644241, 29.471960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.596451, 30.483658, 29.400518>,  <34.324070, 30.216019, 29.281448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596451, 30.483658, 29.400518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231198, 0.189276, -0.954318,
		-0.694876, 0.718666, -0.025806,
		0.680951, 0.669099, 0.297677,
		34.800735, 30.684387, 29.489822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.238605, 30.836351, 28.834877>,  <34.324070, 30.216019, 29.281448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.238605, 30.836351, 28.834877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.611214, 30.860289, 28.978371>,  <34.834778, 30.874651, 29.064466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.611214, 30.860289, 28.978371>,  <34.238605, 30.836351, 28.834877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611214, 30.860289, 28.978371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333714, 0.251508, -0.908504,
		-0.144591, 0.966004, 0.214315,
		0.931520, 0.059841, 0.358735,
		34.890671, 30.878241, 29.085991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409420, 31.512867, 28.643600>,  <34.238605, 30.836351, 28.834877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409420, 31.512867, 28.643600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.730568, 31.282101, 28.703691>,  <34.923256, 31.143641, 28.739746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.730568, 31.282101, 28.703691>,  <34.409420, 31.512867, 28.643600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.730568, 31.282101, 28.703691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254868, 0.104363, -0.961328,
		0.538929, 0.810108, 0.230828,
		0.802869, -0.576918, 0.150226,
		34.971428, 31.109026, 28.748758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.874111, 31.960068, 28.403549>,  <34.409420, 31.512867, 28.643600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.874111, 31.960068, 28.403549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.049568, 31.600611, 28.401009>,  <35.154842, 31.384937, 28.399485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.049568, 31.600611, 28.401009>,  <34.874111, 31.960068, 28.403549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.049568, 31.600611, 28.401009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343917, 0.174394, -0.922663,
		0.830251, 0.402532, 0.385554,
		0.438640, -0.898641, -0.006353,
		35.181160, 31.331018, 28.399103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571686, 32.011932, 28.306135>,  <34.874111, 31.960068, 28.403549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571686, 32.011932, 28.306135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.490803, 31.645840, 28.166731>,  <35.442272, 31.426184, 28.083088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.490803, 31.645840, 28.166731>,  <35.571686, 32.011932, 28.306135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490803, 31.645840, 28.166731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492477, 0.212569, -0.843967,
		0.846511, -0.342286, 0.407750,
		-0.202203, -0.915235, -0.348510,
		35.430141, 31.371269, 28.062178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229309, 31.754473, 27.954508>,  <35.571686, 32.011932, 28.306135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229309, 31.754473, 27.954508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.944679, 31.510611, 27.814808>,  <35.773899, 31.364294, 27.730988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.944679, 31.510611, 27.814808>,  <36.229309, 31.754473, 27.954508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944679, 31.510611, 27.814808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343096, 0.132272, -0.929940,
		0.613139, -0.781552, 0.115048,
		-0.711579, -0.609656, -0.349249,
		35.731205, 31.327713, 27.710033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610004, 31.186590, 27.506481>,  <36.229309, 31.754473, 27.954508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610004, 31.186590, 27.506481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.230774, 31.178331, 27.379534>,  <36.003235, 31.173376, 27.303366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.230774, 31.178331, 27.379534>,  <36.610004, 31.186590, 27.506481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.230774, 31.178331, 27.379534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314487, -0.209534, -0.925847,
		-0.047383, -0.977583, 0.205148,
		-0.948078, -0.020647, -0.317366,
		35.946350, 31.172138, 27.284325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587662, 30.610746, 27.137833>,  <36.610004, 31.186590, 27.506481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587662, 30.610746, 27.137833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.269424, 30.818182, 27.012545>,  <36.078484, 30.942642, 26.937372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.269424, 30.818182, 27.012545>,  <36.587662, 30.610746, 27.137833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269424, 30.818182, 27.012545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232133, -0.216607, -0.948260,
		-0.559601, -0.827132, 0.051948,
		-0.795589, 0.518588, -0.313218,
		36.030746, 30.973759, 26.918579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255207, 30.189552, 26.635702>,  <36.587662, 30.610746, 27.137833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255207, 30.189552, 26.635702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.118191, 30.560436, 26.575104>,  <36.035980, 30.782967, 26.538744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.118191, 30.560436, 26.575104>,  <36.255207, 30.189552, 26.635702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118191, 30.560436, 26.575104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265105, -0.059307, -0.962394,
		-0.901324, -0.369823, -0.225492,
		-0.342542, 0.927208, -0.151496,
		36.015427, 30.838598, 26.529655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903831, 30.157244, 26.060991>,  <36.255207, 30.189552, 26.635702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903831, 30.157244, 26.060991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.960690, 30.551733, 26.094841>,  <35.994804, 30.788425, 26.115150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.960690, 30.551733, 26.094841>,  <35.903831, 30.157244, 26.060991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.960690, 30.551733, 26.094841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207045, 0.053978, -0.976841,
		-0.967950, 0.156373, -0.196520,
		0.142144, 0.986222, 0.084624,
		36.003334, 30.847599, 26.120228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654865, 30.430717, 25.427885>,  <35.903831, 30.157244, 26.060991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.654865, 30.430717, 25.427885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902199, 30.712725, 25.566797>,  <36.050598, 30.881929, 25.650145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902199, 30.712725, 25.566797>,  <35.654865, 30.430717, 25.427885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902199, 30.712725, 25.566797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301911, 0.194890, -0.933203,
		-0.725609, 0.681883, -0.092346,
		0.618338, 0.705020, 0.347282,
		36.087700, 30.924231, 25.670982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512039, 30.949730, 24.970633>,  <35.654865, 30.430717, 25.427885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.512039, 30.949730, 24.970633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.866417, 31.048452, 25.127697>,  <36.079044, 31.107685, 25.221935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.866417, 31.048452, 25.127697>,  <35.512039, 30.949730, 24.970633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.866417, 31.048452, 25.127697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359363, 0.169885, -0.917604,
		-0.293178, 0.954057, 0.061816,
		0.885949, 0.246806, 0.392659,
		36.132202, 31.122494, 25.245495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737026, 31.501003, 24.609159>,  <35.512039, 30.949730, 24.970633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.737026, 31.501003, 24.609159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.088581, 31.414309, 24.779140>,  <36.299515, 31.362291, 24.881130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.088581, 31.414309, 24.779140>,  <35.737026, 31.501003, 24.609159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088581, 31.414309, 24.779140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456911, 0.126467, -0.880476,
		0.137088, 0.968004, 0.210179,
		0.878886, -0.216736, 0.424954,
		36.352245, 31.349287, 24.906628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288460, 31.894547, 24.278051>,  <35.737026, 31.501003, 24.609159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288460, 31.894547, 24.278051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.492222, 31.599693, 24.455654>,  <36.614479, 31.422781, 24.562216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.492222, 31.599693, 24.455654>,  <36.288460, 31.894547, 24.278051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.492222, 31.599693, 24.455654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714931, 0.075356, -0.695122,
		0.478940, 0.671531, 0.565387,
		0.509402, -0.737135, 0.444007,
		36.645042, 31.378553, 24.588856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017998, 32.093006, 24.363718>,  <36.288460, 31.894547, 24.278051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017998, 32.093006, 24.363718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002735, 31.693300, 24.362301>,  <36.993576, 31.453476, 24.361450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002735, 31.693300, 24.362301>,  <37.017998, 32.093006, 24.363718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.002735, 31.693300, 24.362301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682452, -0.023473, -0.730554,
		0.729934, -0.030295, 0.682846,
		-0.038160, -0.999265, -0.003541,
		36.991287, 31.393520, 24.361238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697876, 31.958559, 24.380913>,  <37.017998, 32.093006, 24.363718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.697876, 31.958559, 24.380913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.553028, 31.615152, 24.235683>,  <37.466122, 31.409109, 24.148546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.553028, 31.615152, 24.235683>,  <37.697876, 31.958559, 24.380913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553028, 31.615152, 24.235683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690560, 0.014544, -0.723129,
		0.626099, -0.512580, 0.587590,
		-0.362115, -0.858516, -0.363073,
		37.444393, 31.357597, 24.126762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285519, 31.436560, 24.181349>,  <37.697876, 31.958559, 24.380913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285519, 31.436560, 24.181349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.963272, 31.315065, 23.977888>,  <37.769924, 31.242168, 23.855812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.963272, 31.315065, 23.977888>,  <38.285519, 31.436560, 24.181349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.963272, 31.315065, 23.977888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558811, -0.104441, -0.822692,
		0.196756, -0.947015, 0.253870,
		-0.805616, -0.303735, -0.508653,
		37.721588, 31.223946, 23.825293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.456642, 30.852987, 23.767735>,  <38.285519, 31.436560, 24.181349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.456642, 30.852987, 23.767735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.126881, 30.965918, 23.571507>,  <37.929024, 31.033676, 23.453770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.126881, 30.965918, 23.571507>,  <38.456642, 30.852987, 23.767735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126881, 30.965918, 23.571507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464148, -0.158822, -0.871403,
		-0.323934, -0.946080, -0.000109,
		-0.824399, 0.282327, -0.490569,
		37.879562, 31.050615, 23.424335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339527, 30.294588, 23.265652>,  <38.456642, 30.852987, 23.767735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.339527, 30.294588, 23.265652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.134808, 30.610479, 23.130367>,  <38.011974, 30.800014, 23.049196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.134808, 30.610479, 23.130367>,  <38.339527, 30.294588, 23.265652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.134808, 30.610479, 23.130367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355977, -0.163350, -0.920107,
		-0.781883, -0.591307, -0.197523,
		-0.511801, 0.789729, -0.338213,
		37.981266, 30.847399, 23.028904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995724, 30.069561, 22.676296>,  <38.339527, 30.294588, 23.265652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995724, 30.069561, 22.676296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.986183, 30.467522, 22.637102>,  <37.980457, 30.706299, 22.613585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.986183, 30.467522, 22.637102>,  <37.995724, 30.069561, 22.676296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986183, 30.467522, 22.637102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325079, -0.084969, -0.941862,
		-0.945386, -0.054319, -0.321395,
		-0.023852, 0.994902, -0.097986,
		37.979027, 30.765993, 22.607706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.718292, 30.141232, 22.045311>,  <37.995724, 30.069561, 22.676296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.718292, 30.141232, 22.045311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.880890, 30.501369, 22.107464>,  <37.978447, 30.717453, 22.144756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.880890, 30.501369, 22.107464>,  <37.718292, 30.141232, 22.045311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.880890, 30.501369, 22.107464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179865, 0.087883, -0.979758,
		-0.895775, 0.426211, -0.126217,
		0.406492, 0.900345, 0.155384,
		38.002838, 30.771473, 22.154079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528912, 30.581335, 21.562490>,  <37.718292, 30.141232, 22.045311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528912, 30.581335, 21.562490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.869194, 30.749636, 21.688519>,  <38.073364, 30.850616, 21.764135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.869194, 30.749636, 21.688519>,  <37.528912, 30.581335, 21.562490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869194, 30.749636, 21.688519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238724, 0.224760, -0.944719,
		-0.468305, 0.878893, 0.090762,
		0.850706, 0.420750, 0.315069,
		38.124405, 30.875860, 21.783039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606926, 31.193789, 21.135040>,  <37.528912, 30.581335, 21.562490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.606926, 31.193789, 21.135040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.970367, 31.140871, 21.293497>,  <38.188435, 31.109121, 21.388571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.970367, 31.140871, 21.293497>,  <37.606926, 31.193789, 21.135040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970367, 31.140871, 21.293497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411031, 0.451434, -0.791998,
		-0.074058, 0.882443, 0.464553,
		0.908608, -0.132292, 0.396143,
		38.242950, 31.101183, 21.412340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.945618, 31.779154, 21.075132>,  <37.606926, 31.193789, 21.135040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.945618, 31.779154, 21.075132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.253674, 31.526228, 21.108755>,  <38.438507, 31.374474, 21.128929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.253674, 31.526228, 21.108755>,  <37.945618, 31.779154, 21.075132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.253674, 31.526228, 21.108755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409022, 0.388411, -0.825735,
		0.489475, 0.670311, 0.557760,
		0.770139, -0.632313, 0.084055,
		38.484715, 31.336535, 21.133972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583035, 32.220375, 20.812422>,  <37.945618, 31.779154, 21.075132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.583035, 32.220375, 20.812422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.690048, 31.835888, 20.785631>,  <38.754257, 31.605196, 20.769558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.690048, 31.835888, 20.785631>,  <38.583035, 32.220375, 20.812422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.690048, 31.835888, 20.785631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452607, 0.186728, -0.871940,
		0.850630, 0.202961, 0.485010,
		0.267535, -0.961217, -0.066975,
		38.770309, 31.547523, 20.765539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.212605, 32.234280, 20.618046>,  <38.583035, 32.220375, 20.812422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.212605, 32.234280, 20.618046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.118576, 31.859940, 20.513035>,  <39.062157, 31.635334, 20.450029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.118576, 31.859940, 20.513035>,  <39.212605, 32.234280, 20.618046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118576, 31.859940, 20.513035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314114, 0.182456, -0.931688,
		0.919822, -0.301479, 0.251074,
		-0.235075, -0.935853, -0.262526,
		39.048054, 31.579184, 20.434277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786674, 32.071907, 20.272768>,  <39.212605, 32.234280, 20.618046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.786674, 32.071907, 20.272768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.520977, 31.791697, 20.168432>,  <39.361557, 31.623569, 20.105831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.520977, 31.791697, 20.168432>,  <39.786674, 32.071907, 20.272768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.520977, 31.791697, 20.168432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293804, 0.076191, -0.952824,
		0.687353, -0.709546, 0.155208,
		-0.664247, -0.700528, -0.260838,
		39.321701, 31.581539, 20.090181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.194008, 31.673519, 19.903845>,  <39.786674, 32.071907, 20.272768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.194008, 31.673519, 19.903845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.819653, 31.594826, 19.786947>,  <39.595039, 31.547609, 19.716808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.819653, 31.594826, 19.786947>,  <40.194008, 31.673519, 19.903845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.819653, 31.594826, 19.786947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280549, 0.085530, -0.956021,
		0.213079, -0.976719, -0.024852,
		-0.935889, -0.196736, -0.292242,
		39.538887, 31.535805, 19.699274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.381580, 31.320400, 19.349903>,  <40.194008, 31.673519, 19.903845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.381580, 31.320400, 19.349903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.997669, 31.420156, 19.298328>,  <39.767323, 31.480011, 19.267384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.997669, 31.420156, 19.298328>,  <40.381580, 31.320400, 19.349903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.997669, 31.420156, 19.298328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151538, 0.073571, -0.985710,
		-0.236343, -0.965603, -0.108404,
		-0.959780, 0.249393, -0.128938,
		39.709736, 31.494974, 19.259647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.232388, 30.930815, 18.816124>,  <40.381580, 31.320400, 19.349903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.232388, 30.930815, 18.816124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.024292, 31.270792, 18.849461>,  <39.899433, 31.474779, 18.869463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.024292, 31.270792, 18.849461>,  <40.232388, 30.930815, 18.816124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.024292, 31.270792, 18.849461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410823, 0.334616, -0.848090,
		-0.748717, -0.406971, -0.523257,
		-0.520238, 0.849945, 0.083340,
		39.868221, 31.525776, 18.874462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690807, 31.308527, 18.242781>,  <40.232388, 30.930815, 18.816124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.690807, 31.308527, 18.242781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.863926, 31.604258, 18.449116>,  <39.967796, 31.781696, 18.572916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.863926, 31.604258, 18.449116>,  <39.690807, 31.308527, 18.242781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.863926, 31.604258, 18.449116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285858, 0.430125, -0.856316,
		-0.854971, 0.518064, -0.025187,
		0.432793, 0.739325, 0.515837,
		39.993763, 31.826056, 18.603867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442253, 32.053116, 18.134356>,  <39.690807, 31.308527, 18.242781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.442253, 32.053116, 18.134356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.833046, 31.992525, 18.194441>,  <40.067520, 31.956171, 18.230492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.833046, 31.992525, 18.194441>,  <39.442253, 32.053116, 18.134356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.833046, 31.992525, 18.194441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171603, 0.139728, -0.975207,
		0.126732, 0.978535, 0.162506,
		0.976981, -0.151476, 0.150211,
		40.126141, 31.947083, 18.239504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.683514, 32.451656, 17.675587>,  <39.442253, 32.053116, 18.134356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.683514, 32.451656, 17.675587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.989384, 32.211887, 17.770224>,  <40.172905, 32.068027, 17.827005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.989384, 32.211887, 17.770224>,  <39.683514, 32.451656, 17.675587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.989384, 32.211887, 17.770224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371178, 0.109564, -0.922075,
		0.526787, 0.792902, 0.306271,
		0.764672, -0.599418, 0.236590,
		40.218784, 32.032063, 17.841200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.323730, 32.770390, 17.521866>,  <39.683514, 32.451656, 17.675587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.323730, 32.770390, 17.521866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.363560, 32.374020, 17.485756>,  <40.387459, 32.136196, 17.464090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.363560, 32.374020, 17.485756>,  <40.323730, 32.770390, 17.521866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.363560, 32.374020, 17.485756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220634, 0.110457, -0.969082,
		0.970260, 0.076578, 0.229631,
		0.099575, -0.990926, -0.090276,
		40.393433, 32.076740, 17.458673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.993732, 32.801373, 17.278908>,  <40.323730, 32.770390, 17.521866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.993732, 32.801373, 17.278908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.735493, 32.545670, 17.111788>,  <40.580551, 32.392250, 17.011515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.735493, 32.545670, 17.111788>,  <40.993732, 32.801373, 17.278908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.735493, 32.545670, 17.111788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192574, 0.393137, -0.899087,
		0.739000, -0.660905, -0.130704,
		-0.645596, -0.639255, -0.417802,
		40.541813, 32.353893, 16.986446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.252045, 33.427868, 16.844393>,  <40.993732, 32.801373, 17.278908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.252045, 33.427868, 16.844393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.328876, 33.645752, 16.517860>,  <41.374977, 33.776482, 16.321941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.328876, 33.645752, 16.517860>,  <41.252045, 33.427868, 16.844393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.328876, 33.645752, 16.517860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903887, -0.225775, -0.363335,
		-0.382219, 0.807662, 0.448987,
		0.192082, 0.544708, -0.816332,
		41.386501, 33.809166, 16.272961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.576962, 33.742146, 16.702045>,  <41.252045, 33.427868, 16.844393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.576962, 33.742146, 16.702045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.379662, 34.044006, 16.528975>,  <40.261284, 34.225121, 16.425131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.379662, 34.044006, 16.528975>,  <40.576962, 33.742146, 16.702045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.379662, 34.044006, 16.528975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134647, -0.425167, -0.895043,
		-0.859405, -0.499737, 0.108102,
		-0.493248, 0.754649, -0.432679,
		40.231686, 34.270401, 16.399170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.190311, 34.261559, 17.094248>,  <40.576962, 33.742146, 16.702045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.190311, 34.261559, 17.094248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.098240, 34.000301, 17.382809>,  <40.042995, 33.843548, 17.555944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.098240, 34.000301, 17.382809>,  <40.190311, 34.261559, 17.094248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.098240, 34.000301, 17.382809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849671, 0.226508, 0.476186,
		-0.474421, 0.722563, 0.502820,
		-0.230182, -0.653144, 0.721401,
		40.029186, 33.804359, 17.599230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255985, 34.654896, 17.734236>,  <40.190311, 34.261559, 17.094248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.255985, 34.654896, 17.734236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.340443, 34.283928, 17.857723>,  <40.391117, 34.061348, 17.931816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.340443, 34.283928, 17.857723>,  <40.255985, 34.654896, 17.734236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.340443, 34.283928, 17.857723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818428, 0.340421, 0.462914,
		-0.534411, 0.154925, 0.830905,
		0.211140, -0.927422, 0.308720,
		40.403786, 34.005703, 17.950338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.533497, 34.332237, 18.345701>,  <40.255985, 34.654896, 17.734236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.533497, 34.332237, 18.345701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.321320, 33.993523, 18.329823>,  <40.194012, 33.790295, 18.320295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.321320, 33.993523, 18.329823>,  <40.533497, 34.332237, 18.345701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.321320, 33.993523, 18.329823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648247, 0.375010, 0.662679,
		-0.546262, 0.377249, -0.747851,
		-0.530446, -0.846788, -0.039697,
		40.162186, 33.739487, 18.317913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.864826, 34.505047, 18.389097>,  <40.533497, 34.332237, 18.345701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.864826, 34.505047, 18.389097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.855507, 34.112671, 18.466253>,  <39.849915, 33.877243, 18.512547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.855507, 34.112671, 18.466253>,  <39.864826, 34.505047, 18.389097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.855507, 34.112671, 18.466253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651416, 0.161257, 0.741386,
		-0.758363, -0.108376, -0.642760,
		-0.023301, -0.980944, 0.192889,
		39.848518, 33.818386, 18.524120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135822, 34.317398, 18.390341>,  <39.864826, 34.505047, 18.389097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.135822, 34.317398, 18.390341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.365059, 34.054924, 18.586702>,  <39.502602, 33.897438, 18.704519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.365059, 34.054924, 18.586702>,  <39.135822, 34.317398, 18.390341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365059, 34.054924, 18.586702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630272, 0.029925, 0.775797,
		-0.523758, -0.754005, -0.396427,
		0.573092, -0.656187, 0.490901,
		39.536987, 33.858067, 18.733973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668003, 33.814693, 18.694443>,  <39.135822, 34.317398, 18.390341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668003, 33.814693, 18.694443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.004616, 33.800861, 18.910086>,  <39.206581, 33.792561, 19.039471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.004616, 33.800861, 18.910086>,  <38.668003, 33.814693, 18.694443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004616, 33.800861, 18.910086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518587, 0.227823, 0.824114,
		-0.151322, -0.973088, 0.173785,
		0.841527, -0.034584, 0.539105,
		39.257072, 33.790485, 19.071817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432796, 33.471298, 19.310513>,  <38.668003, 33.814693, 18.694443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432796, 33.471298, 19.310513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.782707, 33.640968, 19.404179>,  <38.992653, 33.742771, 19.460379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.782707, 33.640968, 19.404179>,  <38.432796, 33.471298, 19.310513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.782707, 33.640968, 19.404179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361525, 0.249656, 0.898316,
		0.322584, -0.870486, 0.371745,
		0.874780, 0.424178, 0.234167,
		39.045139, 33.768223, 19.474428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484665, 33.277241, 19.941826>,  <38.432796, 33.471298, 19.310513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.484665, 33.277241, 19.941826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.757717, 33.568317, 19.915035>,  <38.921547, 33.742962, 19.898960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.757717, 33.568317, 19.915035>,  <38.484665, 33.277241, 19.941826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.757717, 33.568317, 19.915035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151940, 0.230984, 0.961020,
		0.714794, -0.645845, 0.268242,
		0.682630, 0.727689, -0.066977,
		38.962505, 33.786625, 19.894943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.883579, 33.319561, 20.569868>,  <38.484665, 33.277241, 19.941826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.883579, 33.319561, 20.569868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.912235, 33.681416, 20.401819>,  <38.929428, 33.898529, 20.300989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.912235, 33.681416, 20.401819>,  <38.883579, 33.319561, 20.569868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.912235, 33.681416, 20.401819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301754, 0.421123, 0.855336,
		0.950690, 0.065496, 0.303147,
		0.071641, 0.904636, -0.420122,
		38.933727, 33.952805, 20.275784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203400, 33.771168, 21.133928>,  <38.883579, 33.319561, 20.569868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.203400, 33.771168, 21.133928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.027115, 34.024731, 20.879704>,  <38.921345, 34.176868, 20.727169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.027115, 34.024731, 20.879704>,  <39.203400, 33.771168, 21.133928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.027115, 34.024731, 20.879704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294048, 0.567016, 0.769434,
		0.848122, 0.525983, -0.063492,
		-0.440710, 0.633904, -0.635563,
		38.894901, 34.214901, 20.689035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.530346, 34.444260, 21.270546>,  <39.203400, 33.771168, 21.133928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.530346, 34.444260, 21.270546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.175674, 34.488033, 21.090849>,  <38.962872, 34.514297, 20.983030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.175674, 34.488033, 21.090849>,  <39.530346, 34.444260, 21.270546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.175674, 34.488033, 21.090849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264925, 0.676054, 0.687579,
		0.378961, 0.728679, -0.570452,
		-0.886681, 0.109439, -0.449243,
		38.909672, 34.520866, 20.956076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349316, 35.091423, 21.409288>,  <39.530346, 34.444260, 21.270546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.349316, 35.091423, 21.409288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.986759, 34.976212, 21.285677>,  <38.769226, 34.907085, 21.211510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.986759, 34.976212, 21.285677>,  <39.349316, 35.091423, 21.409288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986759, 34.976212, 21.285677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408024, 0.407383, 0.817041,
		-0.109438, 0.866648, -0.486770,
		-0.906388, -0.288029, -0.309030,
		38.714844, 34.889801, 21.192968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841736, 35.581722, 21.502666>,  <39.349316, 35.091423, 21.409288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841736, 35.581722, 21.502666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.614288, 35.252720, 21.497551>,  <38.477821, 35.055321, 21.494482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.614288, 35.252720, 21.497551>,  <38.841736, 35.581722, 21.502666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614288, 35.252720, 21.497551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410799, 0.270459, 0.870687,
		-0.712685, 0.500339, -0.491671,
		-0.568616, -0.822504, -0.012787,
		38.443703, 35.005970, 21.493715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239243, 35.837547, 21.708111>,  <38.841736, 35.581722, 21.502666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239243, 35.837547, 21.708111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.209103, 35.443703, 21.771183>,  <38.191021, 35.207397, 21.809027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.209103, 35.443703, 21.771183>,  <38.239243, 35.837547, 21.708111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.209103, 35.443703, 21.771183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521145, 0.173697, 0.835606,
		-0.850136, -0.019214, -0.526213,
		-0.075346, -0.984612, 0.157679,
		38.186501, 35.148319, 21.818487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459641, 35.632431, 21.856764>,  <38.239243, 35.837547, 21.708111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459641, 35.632431, 21.856764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.697613, 35.345131, 22.001080>,  <37.840397, 35.172752, 22.087669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.697613, 35.345131, 22.001080>,  <37.459641, 35.632431, 21.856764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697613, 35.345131, 22.001080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609513, -0.110532, 0.785033,
		-0.523971, -0.686949, -0.503542,
		0.594935, -0.718250, 0.360789,
		37.876095, 35.129654, 22.109316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987381, 35.053158, 22.088926>,  <37.459641, 35.632431, 21.856764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.987381, 35.053158, 22.088926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.329323, 34.990097, 22.286659>,  <37.534489, 34.952259, 22.405298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.329323, 34.990097, 22.286659>,  <36.987381, 35.053158, 22.088926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329323, 34.990097, 22.286659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518750, -0.240011, 0.820544,
		-0.010715, -0.957884, -0.286957,
		0.854859, -0.157651, 0.494331,
		37.585781, 34.942802, 22.434958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855476, 34.496952, 22.465729>,  <36.987381, 35.053158, 22.088926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855476, 34.496952, 22.465729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.185677, 34.636066, 22.643532>,  <37.383797, 34.719536, 22.750214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.185677, 34.636066, 22.643532>,  <36.855476, 34.496952, 22.465729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185677, 34.636066, 22.643532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394184, -0.208389, 0.895094,
		0.403934, -0.914121, -0.034933,
		0.825504, 0.347789, 0.444507,
		37.433327, 34.740402, 22.776884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979832, 34.038548, 23.085457>,  <36.855476, 34.496952, 22.465729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979832, 34.038548, 23.085457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.144306, 34.400272, 23.131313>,  <37.242989, 34.617310, 23.158827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.144306, 34.400272, 23.131313>,  <36.979832, 34.038548, 23.085457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144306, 34.400272, 23.131313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443931, 0.088813, 0.891649,
		0.796150, -0.417524, 0.437972,
		0.411182, 0.904316, 0.114643,
		37.267662, 34.671566, 23.165707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168808, 34.053421, 23.721903>,  <36.979832, 34.038548, 23.085457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.168808, 34.053421, 23.721903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.171745, 34.447575, 23.653830>,  <37.173508, 34.684067, 23.612986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.171745, 34.447575, 23.653830>,  <37.168808, 34.053421, 23.721903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.171745, 34.447575, 23.653830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434073, 0.156459, 0.887188,
		0.900848, 0.067358, 0.428877,
		0.007342, 0.985385, -0.170184,
		37.173946, 34.743191, 23.602774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365784, 34.311436, 24.329174>,  <37.168808, 34.053421, 23.721903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365784, 34.311436, 24.329174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.188206, 34.625210, 24.155935>,  <37.081657, 34.813473, 24.051992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.188206, 34.625210, 24.155935>,  <37.365784, 34.311436, 24.329174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.188206, 34.625210, 24.155935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539116, 0.152238, 0.828359,
		0.715728, 0.601235, 0.355316,
		-0.443946, 0.784436, -0.433096,
		37.055023, 34.860542, 24.026007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373295, 34.766846, 24.804607>,  <37.365784, 34.311436, 24.329174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.373295, 34.766846, 24.804607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080612, 34.868256, 24.551519>,  <36.905003, 34.929104, 24.399668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080612, 34.868256, 24.551519>,  <37.373295, 34.766846, 24.804607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080612, 34.868256, 24.551519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588094, 0.234486, 0.774055,
		0.344608, 0.938478, -0.022476,
		-0.731704, 0.253527, -0.632719,
		36.861099, 34.944313, 24.361704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073639, 35.328030, 25.174202>,  <37.373295, 34.766846, 24.804607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073639, 35.328030, 25.174202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.797501, 35.225246, 24.903677>,  <36.631817, 35.163578, 24.741362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.797501, 35.225246, 24.903677>,  <37.073639, 35.328030, 25.174202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797501, 35.225246, 24.903677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723413, 0.257721, 0.640510,
		0.009718, 0.931426, -0.363800,
		-0.690347, -0.256953, -0.676311,
		36.590397, 35.148159, 24.700785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651382, 35.833069, 25.299938>,  <37.073639, 35.328030, 25.174202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651382, 35.833069, 25.299938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.433113, 35.551231, 25.118483>,  <36.302151, 35.382130, 25.009609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.433113, 35.551231, 25.118483>,  <36.651382, 35.833069, 25.299938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433113, 35.551231, 25.118483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786707, 0.244242, 0.566955,
		-0.288677, 0.666252, -0.687586,
		-0.545672, -0.704595, -0.453638,
		36.269413, 35.339851, 24.982391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056694, 36.151169, 25.289103>,  <36.651382, 35.833069, 25.299938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.056694, 36.151169, 25.289103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.003418, 35.755581, 25.263193>,  <35.971451, 35.518227, 25.247648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.003418, 35.755581, 25.263193>,  <36.056694, 36.151169, 25.289103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.003418, 35.755581, 25.263193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769343, 0.061966, 0.635824,
		-0.624798, 0.134518, -0.769111,
		-0.133189, -0.988972, -0.064774,
		35.963463, 35.458889, 25.243761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356689, 36.108372, 25.542725>,  <36.056694, 36.151169, 25.289103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356689, 36.108372, 25.542725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.441296, 35.717812, 25.525270>,  <35.492058, 35.483475, 25.514797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.441296, 35.717812, 25.525270>,  <35.356689, 36.108372, 25.542725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441296, 35.717812, 25.525270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523867, -0.150950, 0.838318,
		-0.825121, -0.154459, -0.543432,
		0.211517, -0.976400, -0.043636,
		35.504749, 35.424892, 25.512180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754017, 35.724766, 25.539051>,  <35.356689, 36.108372, 25.542725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.754017, 35.724766, 25.539051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.023087, 35.469017, 25.688030>,  <35.184528, 35.315567, 25.777418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.023087, 35.469017, 25.688030>,  <34.754017, 35.724766, 25.539051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023087, 35.469017, 25.688030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646844, -0.263690, 0.715583,
		-0.359311, -0.722270, -0.590950,
		0.672672, -0.639370, 0.372449,
		35.224888, 35.277206, 25.799765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.368011, 35.061405, 25.717918>,  <34.754017, 35.724766, 25.539051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.368011, 35.061405, 25.717918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.707119, 35.053463, 25.929914>,  <34.910583, 35.048698, 26.057112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.707119, 35.053463, 25.929914>,  <34.368011, 35.061405, 25.717918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.707119, 35.053463, 25.929914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496742, -0.379858, 0.780356,
		0.185824, -0.924832, -0.331898,
		0.847772, -0.019859, 0.529990,
		34.961449, 35.047504, 26.088911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425568, 34.400330, 25.990545>,  <34.368011, 35.061405, 25.717918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425568, 34.400330, 25.990545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.646721, 34.647469, 26.214180>,  <34.779415, 34.795753, 26.348360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.646721, 34.647469, 26.214180>,  <34.425568, 34.400330, 25.990545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.646721, 34.647469, 26.214180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321183, -0.461096, 0.827183,
		0.768868, -0.636908, -0.056491,
		0.552887, 0.617850, 0.559086,
		34.812588, 34.832825, 26.381907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.500828, 33.987900, 26.467981>,  <34.425568, 34.400330, 25.990545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.500828, 33.987900, 26.467981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586224, 34.349781, 26.615456>,  <34.637463, 34.566910, 26.703939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586224, 34.349781, 26.615456>,  <34.500828, 33.987900, 26.467981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586224, 34.349781, 26.615456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567456, -0.192359, 0.800620,
		0.795245, -0.380139, 0.472313,
		0.213493, 0.904706, 0.368685,
		34.650272, 34.621193, 26.726061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.647259, 33.880028, 27.208136>,  <34.500828, 33.987900, 26.467981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.647259, 33.880028, 27.208136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.582180, 34.274422, 27.193321>,  <34.543133, 34.511059, 27.184433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.582180, 34.274422, 27.193321>,  <34.647259, 33.880028, 27.208136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582180, 34.274422, 27.193321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334109, -0.019736, 0.942328,
		0.928386, 0.165689, 0.332636,
		-0.162699, 0.985981, -0.037036,
		34.533371, 34.570217, 27.182211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955566, 34.190346, 27.766121>,  <34.647259, 33.880028, 27.208136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955566, 34.190346, 27.766121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.678776, 34.457928, 27.657555>,  <34.512703, 34.618477, 27.592415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.678776, 34.457928, 27.657555>,  <34.955566, 34.190346, 27.766121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.678776, 34.457928, 27.657555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328644, 0.042848, 0.943481,
		0.642776, 0.742068, 0.190198,
		-0.691977, 0.668954, -0.271418,
		34.471184, 34.658615, 27.576130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963608, 34.692589, 28.312475>,  <34.955566, 34.190346, 27.766121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.963608, 34.692589, 28.312475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.623257, 34.740688, 28.107908>,  <34.419044, 34.769547, 27.985168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.623257, 34.740688, 28.107908>,  <34.963608, 34.692589, 28.312475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623257, 34.740688, 28.107908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503981, 0.088078, 0.859212,
		0.148361, 0.988829, -0.014342,
		-0.850877, 0.120245, -0.511419,
		34.367992, 34.776760, 27.954483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694118, 35.187313, 28.747202>,  <34.963608, 34.692589, 28.312475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694118, 35.187313, 28.747202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.405746, 35.028240, 28.520184>,  <34.232723, 34.932796, 28.383972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.405746, 35.028240, 28.520184>,  <34.694118, 35.187313, 28.747202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405746, 35.028240, 28.520184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589999, -0.077403, 0.803685,
		-0.363543, 0.914251, -0.178831,
		-0.720928, -0.397684, -0.567547,
		34.189468, 34.908936, 28.349920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.129009, 35.581638, 28.854174>,  <34.694118, 35.187313, 28.747202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.129009, 35.581638, 28.854174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.939945, 35.263802, 28.701744>,  <33.826508, 35.073101, 28.610287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.939945, 35.263802, 28.701744>,  <34.129009, 35.581638, 28.854174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.939945, 35.263802, 28.701744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455802, -0.149657, 0.877409,
		-0.754212, 0.588410, -0.291439,
		-0.472661, -0.794592, -0.381072,
		33.798145, 35.025425, 28.587423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.303825, 35.620880, 28.955509>,  <34.129009, 35.581638, 28.854174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.303825, 35.620880, 28.955509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.444786, 35.248619, 28.916119>,  <33.529362, 35.025261, 28.892485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.444786, 35.248619, 28.916119>,  <33.303825, 35.620880, 28.955509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.444786, 35.248619, 28.916119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408755, -0.247722, 0.878381,
		-0.841863, -0.269290, -0.467707,
		0.352400, -0.930654, -0.098475,
		33.550507, 34.969421, 28.886576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771809, 35.203354, 29.333689>,  <33.303825, 35.620880, 28.955509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771809, 35.203354, 29.333689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063942, 34.939629, 29.262228>,  <33.239223, 34.781395, 29.219351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063942, 34.939629, 29.262228>,  <32.771809, 35.203354, 29.333689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063942, 34.939629, 29.262228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269446, -0.518388, 0.811586,
		-0.627701, -0.544593, -0.556247,
		0.730336, -0.659312, -0.178654,
		33.283043, 34.741837, 29.208632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.451382, 34.592487, 29.326387>,  <32.771809, 35.203354, 29.333689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.451382, 34.592487, 29.326387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.836651, 34.537014, 29.418530>,  <33.067814, 34.503731, 29.473814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.836651, 34.537014, 29.418530>,  <32.451382, 34.592487, 29.326387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.836651, 34.537014, 29.418530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268818, -0.514539, 0.814240,
		0.005608, -0.846178, -0.532870,
		0.963174, -0.138679, 0.230354,
		33.125603, 34.495411, 29.487637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.570244, 33.869633, 29.477140>,  <32.451382, 34.592487, 29.326387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.570244, 33.869633, 29.477140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.856148, 34.065804, 29.676579>,  <33.027691, 34.183506, 29.796242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.856148, 34.065804, 29.676579>,  <32.570244, 33.869633, 29.477140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.856148, 34.065804, 29.676579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333143, -0.388090, 0.859303,
		0.614922, -0.780302, -0.114011,
		0.714763, 0.490423, 0.498597,
		33.070576, 34.212929, 29.826159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.862724, 33.286083, 29.869677>,  <32.570244, 33.869633, 29.477140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.862724, 33.286083, 29.869677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972275, 33.620380, 30.060057>,  <33.038006, 33.820957, 30.174284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972275, 33.620380, 30.060057>,  <32.862724, 33.286083, 29.869677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972275, 33.620380, 30.060057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255397, -0.413905, 0.873759,
		0.927236, -0.360853, 0.100089,
		0.273871, 0.835743, 0.475949,
		33.054436, 33.871105, 30.202841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.052677, 33.052711, 30.511347>,  <32.862724, 33.286083, 29.869677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.052677, 33.052711, 30.511347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017540, 33.443661, 30.588314>,  <32.996460, 33.678230, 30.634495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017540, 33.443661, 30.588314>,  <33.052677, 33.052711, 30.511347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.017540, 33.443661, 30.588314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313971, -0.210485, 0.925807,
		0.945360, 0.020910, 0.325356,
		-0.087841, 0.977373, 0.192419,
		32.991188, 33.736874, 30.646040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.226891, 33.068192, 31.235392>,  <33.052677, 33.052711, 30.511347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.226891, 33.068192, 31.235392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.011211, 33.389500, 31.134186>,  <32.881805, 33.582287, 31.073462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.011211, 33.389500, 31.134186>,  <33.226891, 33.068192, 31.235392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.011211, 33.389500, 31.134186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315964, 0.085536, 0.944908,
		0.780661, 0.589437, 0.207684,
		-0.539199, 0.803273, -0.253015,
		32.849453, 33.630482, 31.058281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.376656, 33.589516, 31.724800>,  <33.226891, 33.068192, 31.235392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.376656, 33.589516, 31.724800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.024872, 33.689648, 31.562870>,  <32.813801, 33.749725, 31.465712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.024872, 33.689648, 31.562870>,  <33.376656, 33.589516, 31.724800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.024872, 33.689648, 31.562870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401224, 0.067666, 0.913477,
		0.256062, 0.965794, 0.040928,
		-0.879461, 0.250328, -0.404826,
		32.761032, 33.764748, 31.441422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157410, 34.029694, 32.115833>,  <33.376656, 33.589516, 31.724800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157410, 34.029694, 32.115833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.819466, 33.894497, 31.949957>,  <32.616699, 33.813381, 31.850430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.819466, 33.894497, 31.949957>,  <33.157410, 34.029694, 32.115833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.819466, 33.894497, 31.949957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458326, 0.057456, 0.886925,
		-0.275944, 0.939395, -0.203452,
		-0.844862, -0.337989, -0.414694,
		32.566006, 33.793098, 31.825548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.912968, 34.181896, 32.231079>,  <33.157410, 34.029694, 32.115833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.912968, 34.181896, 32.231079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127964, 34.233810, 32.564369>,  <34.256962, 34.264957, 32.764343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127964, 34.233810, 32.564369>,  <33.912968, 34.181896, 32.231079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127964, 34.233810, 32.564369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469016, 0.775145, -0.423290,
		-0.700803, 0.618309, 0.355764,
		0.537493, 0.129784, 0.833221,
		34.289211, 34.272747, 32.814335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.925167, 34.876160, 32.354134>,  <33.912968, 34.181896, 32.231079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.925167, 34.876160, 32.354134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.250275, 34.693436, 32.498760>,  <34.445339, 34.583801, 32.585537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.250275, 34.693436, 32.498760>,  <33.925167, 34.876160, 32.354134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.250275, 34.693436, 32.498760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577003, 0.716933, -0.391246,
		-0.080495, 0.526618, 0.846282,
		0.812765, -0.456815, 0.361570,
		34.494102, 34.556393, 32.607231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357121, 35.499504, 32.573143>,  <33.925167, 34.876160, 32.354134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357121, 35.499504, 32.573143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586781, 35.176140, 32.521255>,  <34.724575, 34.982121, 32.490124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586781, 35.176140, 32.521255>,  <34.357121, 35.499504, 32.573143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586781, 35.176140, 32.521255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696920, 0.565691, -0.440790,
		0.429718, 0.162678, 0.888188,
		0.574147, -0.808412, -0.129714,
		34.759026, 34.933617, 32.482342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086525, 35.809216, 32.551678>,  <34.357121, 35.499504, 32.573143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086525, 35.809216, 32.551678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.138023, 35.441067, 32.403984>,  <35.168922, 35.220177, 32.315369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.138023, 35.441067, 32.403984>,  <35.086525, 35.809216, 32.551678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.138023, 35.441067, 32.403984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690253, 0.350502, -0.633007,
		0.712022, -0.173370, 0.680417,
		0.128743, -0.920375, -0.369235,
		35.176647, 35.164955, 32.293213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.715012, 35.802444, 32.444180>,  <35.086525, 35.809216, 32.551678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.715012, 35.802444, 32.444180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.597649, 35.493347, 32.219048>,  <35.527229, 35.307888, 32.083969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.597649, 35.493347, 32.219048>,  <35.715012, 35.802444, 32.444180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.597649, 35.493347, 32.219048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558223, 0.339461, -0.757069,
		0.776079, -0.536317, 0.331762,
		-0.293409, -0.772742, -0.562833,
		35.509624, 35.261524, 32.050198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286423, 35.425755, 32.317883>,  <35.715012, 35.802444, 32.444180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286423, 35.425755, 32.317883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.028381, 35.331154, 32.027252>,  <35.873558, 35.274395, 31.852875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.028381, 35.331154, 32.027252>,  <36.286423, 35.425755, 32.317883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.028381, 35.331154, 32.027252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704927, 0.182683, -0.685350,
		0.294818, -0.954303, 0.048866,
		-0.645105, -0.236501, -0.726572,
		35.834850, 35.260204, 31.809280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549183, 34.796307, 31.860056>,  <36.286423, 35.425755, 32.317883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549183, 34.796307, 31.860056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297104, 35.020828, 31.645472>,  <36.145859, 35.155540, 31.516720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297104, 35.020828, 31.645472>,  <36.549183, 34.796307, 31.860056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297104, 35.020828, 31.645472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706581, 0.128173, -0.695928,
		-0.321867, -0.817624, -0.477380,
		-0.630194, 0.561304, -0.536463,
		36.108047, 35.189220, 31.484533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714333, 34.550282, 31.262306>,  <36.549183, 34.796307, 31.860056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.714333, 34.550282, 31.262306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.519924, 34.884392, 31.159473>,  <36.403278, 35.084858, 31.097775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.519924, 34.884392, 31.159473>,  <36.714333, 34.550282, 31.262306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.519924, 34.884392, 31.159473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589670, 0.096310, -0.801882,
		-0.645036, -0.541325, -0.539348,
		-0.486023, 0.835280, -0.257080,
		36.374119, 35.134975, 31.082350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565296, 34.530327, 30.476357>,  <36.714333, 34.550282, 31.262306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565296, 34.530327, 30.476357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.547443, 34.916344, 30.579660>,  <36.536732, 35.147953, 30.641644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.547443, 34.916344, 30.579660>,  <36.565296, 34.530327, 30.476357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547443, 34.916344, 30.579660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394408, 0.254540, -0.882979,
		-0.917851, 0.062446, -0.391983,
		-0.044636, 0.965044, 0.258259,
		36.534054, 35.205856, 30.657139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198780, 34.878323, 29.896563>,  <36.565296, 34.530327, 30.476357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198780, 34.878323, 29.896563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.366535, 35.175312, 30.105503>,  <36.467190, 35.353504, 30.230867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.366535, 35.175312, 30.105503>,  <36.198780, 34.878323, 29.896563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366535, 35.175312, 30.105503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396267, 0.367958, -0.841177,
		-0.816753, 0.559771, -0.139900,
		0.419389, 0.742472, 0.522349,
		36.492352, 35.398052, 30.262207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.982288, 35.396282, 29.557302>,  <36.198780, 34.878323, 29.896563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.982288, 35.396282, 29.557302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.298431, 35.534058, 29.759964>,  <36.488117, 35.616722, 29.881561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.298431, 35.534058, 29.759964>,  <35.982288, 35.396282, 29.557302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298431, 35.534058, 29.759964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350475, 0.424104, -0.835047,
		-0.502494, 0.837555, 0.214478,
		0.790359, 0.344437, 0.506652,
		36.535538, 35.637390, 29.911959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013474, 36.179485, 29.515823>,  <35.982288, 35.396282, 29.557302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013474, 36.179485, 29.515823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.383980, 36.048813, 29.590992>,  <36.606281, 35.970409, 29.636093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.383980, 36.048813, 29.590992>,  <36.013474, 36.179485, 29.515823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383980, 36.048813, 29.590992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296192, 0.322683, -0.898969,
		0.233039, 0.888343, 0.395650,
		0.926263, -0.326683, 0.187922,
		36.661858, 35.950809, 29.647369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516842, 36.742279, 29.402039>,  <36.013474, 36.179485, 29.515823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516842, 36.742279, 29.402039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.723499, 36.402977, 29.355492>,  <36.847496, 36.199394, 29.327564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.723499, 36.402977, 29.355492>,  <36.516842, 36.742279, 29.402039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723499, 36.402977, 29.355492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360211, 0.338637, -0.869237,
		0.776740, 0.407172, 0.480506,
		0.516646, -0.848255, -0.116366,
		36.878494, 36.148502, 29.320581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137539, 37.020576, 29.000267>,  <36.516842, 36.742279, 29.402039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137539, 37.020576, 29.000267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.155319, 36.621048, 28.992559>,  <37.165985, 36.381329, 28.987934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.155319, 36.621048, 28.992559>,  <37.137539, 37.020576, 29.000267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155319, 36.621048, 28.992559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453778, 0.037370, -0.890331,
		0.890006, 0.030830, 0.454906,
		0.044448, -0.998826, -0.019269,
		37.168655, 36.321400, 28.986778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845963, 36.776531, 28.905521>,  <37.137539, 37.020576, 29.000267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845963, 36.776531, 28.905521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.587360, 36.505642, 28.765005>,  <37.432201, 36.343109, 28.680695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.587360, 36.505642, 28.765005>,  <37.845963, 36.776531, 28.905521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587360, 36.505642, 28.765005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401211, 0.089840, -0.911569,
		0.648894, -0.730274, 0.213627,
		-0.646503, -0.677221, -0.351291,
		37.393410, 36.302475, 28.659618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210796, 36.373825, 28.444216>,  <37.845963, 36.776531, 28.905521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210796, 36.373825, 28.444216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.835037, 36.269081, 28.355707>,  <37.609581, 36.206234, 28.302603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.835037, 36.269081, 28.355707>,  <38.210796, 36.373825, 28.444216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.835037, 36.269081, 28.355707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280752, -0.217207, -0.934880,
		0.196745, -0.940346, 0.277561,
		-0.939399, -0.261859, -0.221270,
		37.553219, 36.190525, 28.289326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234154, 35.668949, 28.167366>,  <38.210796, 36.373825, 28.444216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234154, 35.668949, 28.167366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.902233, 35.846920, 28.032625>,  <37.703079, 35.953701, 27.951780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.902233, 35.846920, 28.032625>,  <38.234154, 35.668949, 28.167366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902233, 35.846920, 28.032625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300877, -0.151682, -0.941523,
		-0.470001, -0.882630, -0.008002,
		-0.829803, 0.444924, -0.336854,
		37.653294, 35.980396, 27.931568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911537, 35.161560, 27.676064>,  <38.234154, 35.668949, 28.167366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.911537, 35.161560, 27.676064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802914, 35.537388, 27.592678>,  <37.737740, 35.762886, 27.542646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802914, 35.537388, 27.592678>,  <37.911537, 35.161560, 27.676064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802914, 35.537388, 27.592678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231447, -0.146490, -0.961755,
		-0.934177, -0.309425, -0.177680,
		-0.271562, 0.939573, -0.208463,
		37.721443, 35.819260, 27.530140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525089, 35.045525, 27.083277>,  <37.911537, 35.161560, 27.676064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525089, 35.045525, 27.083277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.601116, 35.438232, 27.082918>,  <37.646732, 35.673859, 27.082703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.601116, 35.438232, 27.082918>,  <37.525089, 35.045525, 27.083277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.601116, 35.438232, 27.082918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158920, -0.031668, -0.986784,
		-0.968823, 0.187414, -0.162042,
		0.190069, 0.981771, -0.000897,
		37.658138, 35.732765, 27.082649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059731, 35.373875, 26.538570>,  <37.525089, 35.045525, 27.083277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059731, 35.373875, 26.538570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.386658, 35.595360, 26.602325>,  <37.582813, 35.728249, 26.640579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.386658, 35.595360, 26.602325>,  <37.059731, 35.373875, 26.538570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386658, 35.595360, 26.602325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189515, 0.002903, -0.981873,
		-0.544135, 0.832705, -0.102564,
		0.817314, 0.553709, 0.159390,
		37.631851, 35.761471, 26.650143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107521, 35.659721, 25.930723>,  <37.059731, 35.373875, 26.538570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.107521, 35.659721, 25.930723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.467823, 35.746265, 26.081364>,  <37.684006, 35.798191, 26.171747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.467823, 35.746265, 26.081364>,  <37.107521, 35.659721, 25.930723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467823, 35.746265, 26.081364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389915, -0.020862, -0.920614,
		-0.191331, 0.976090, -0.103155,
		0.900754, 0.216364, 0.376601,
		37.738049, 35.811176, 26.194344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408836, 36.138367, 25.583553>,  <37.107521, 35.659721, 25.930723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.408836, 36.138367, 25.583553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.720646, 35.959854, 25.759363>,  <37.907730, 35.852749, 25.864849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.720646, 35.959854, 25.759363>,  <37.408836, 36.138367, 25.583553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720646, 35.959854, 25.759363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497442, 0.014641, -0.867374,
		0.380654, 0.894775, 0.233410,
		0.779522, -0.446278, 0.439525,
		37.954502, 35.825970, 25.891220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965046, 36.499157, 25.337990>,  <37.408836, 36.138367, 25.583553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965046, 36.499157, 25.337990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.140629, 36.164936, 25.470154>,  <38.245979, 35.964405, 25.549452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.140629, 36.164936, 25.470154>,  <37.965046, 36.499157, 25.337990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140629, 36.164936, 25.470154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512699, -0.069068, -0.855786,
		0.737874, 0.545054, 0.398068,
		0.438956, -0.835551, 0.330412,
		38.272316, 35.914272, 25.569277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657970, 36.641800, 25.407547>,  <37.965046, 36.499157, 25.337990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.657970, 36.641800, 25.407547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.601189, 36.248425, 25.362488>,  <38.567120, 36.012398, 25.335451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.601189, 36.248425, 25.362488>,  <38.657970, 36.641800, 25.407547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601189, 36.248425, 25.362488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716760, -0.023629, -0.696919,
		0.682718, -0.179673, 0.708247,
		-0.141953, -0.983442, -0.112650,
		38.558601, 35.953392, 25.328693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.374729, 36.329891, 25.371998>,  <38.657970, 36.641800, 25.407547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.374729, 36.329891, 25.371998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.143185, 36.045071, 25.213049>,  <39.004257, 35.874180, 25.117680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.143185, 36.045071, 25.213049>,  <39.374729, 36.329891, 25.371998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.143185, 36.045071, 25.213049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707629, -0.196498, -0.678712,
		0.405195, -0.674070, 0.617613,
		-0.578859, -0.712052, -0.397372,
		38.969528, 35.831455, 25.093838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.795200, 35.679615, 25.422064>,  <39.374729, 36.329891, 25.371998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.795200, 35.679615, 25.422064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.513203, 35.633152, 25.142208>,  <39.344006, 35.605274, 24.974295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.513203, 35.633152, 25.142208>,  <39.795200, 35.679615, 25.422064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.513203, 35.633152, 25.142208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672973, -0.420886, -0.608245,
		-0.223814, -0.899645, 0.374894,
		-0.704992, -0.116160, -0.699638,
		39.301704, 35.598305, 24.932316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723267, 34.877087, 25.293921>,  <39.795200, 35.679615, 25.422064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723267, 34.877087, 25.293921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.609455, 35.105339, 24.985785>,  <39.541168, 35.242290, 24.800903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.609455, 35.105339, 24.985785>,  <39.723267, 34.877087, 25.293921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.609455, 35.105339, 24.985785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714588, -0.409427, -0.567216,
		-0.639069, -0.711864, -0.291273,
		-0.284526, 0.570630, -0.770342,
		39.524097, 35.276527, 24.754683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693729, 34.411579, 24.777439>,  <39.723267, 34.877087, 25.293921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.693729, 34.411579, 24.777439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.684235, 34.757610, 24.577007>,  <39.678539, 34.965229, 24.456749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.684235, 34.757610, 24.577007>,  <39.693729, 34.411579, 24.777439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.684235, 34.757610, 24.577007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622247, -0.379511, -0.684675,
		-0.782461, -0.328046, -0.529283,
		-0.023736, 0.865077, -0.501078,
		39.677113, 35.017132, 24.426683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758762, 34.184696, 24.124975>,  <39.693729, 34.411579, 24.777439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.758762, 34.184696, 24.124975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.839451, 34.573273, 24.074987>,  <39.887863, 34.806419, 24.044994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.839451, 34.573273, 24.074987>,  <39.758762, 34.184696, 24.124975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.839451, 34.573273, 24.074987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493871, -0.211066, -0.843530,
		-0.845814, 0.108439, -0.522341,
		0.201720, 0.971438, -0.124967,
		39.899967, 34.864704, 24.037497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.557724, 34.313118, 23.448683>,  <39.758762, 34.184696, 24.124975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.557724, 34.313118, 23.448683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.824356, 34.595318, 23.544964>,  <39.984337, 34.764637, 23.602734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.824356, 34.595318, 23.544964>,  <39.557724, 34.313118, 23.448683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.824356, 34.595318, 23.544964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495433, -0.178025, -0.850208,
		-0.556972, 0.685984, -0.468197,
		0.666579, 0.705503, 0.240705,
		40.024330, 34.806969, 23.617176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646664, 34.679066, 22.777954>,  <39.557724, 34.313118, 23.448683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646664, 34.679066, 22.777954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.956177, 34.772293, 23.013559>,  <40.141884, 34.828228, 23.154922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.956177, 34.772293, 23.013559>,  <39.646664, 34.679066, 22.777954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.956177, 34.772293, 23.013559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625875, -0.137953, -0.767626,
		-0.097655, 0.962625, -0.252618,
		0.773786, 0.233070, 0.589011,
		40.188313, 34.842213, 23.190262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.029900, 35.409985, 22.482643>,  <39.646664, 34.679066, 22.777954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.029900, 35.409985, 22.482643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.298653, 35.217289, 22.707678>,  <40.459904, 35.101669, 22.842699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.298653, 35.217289, 22.707678>,  <40.029900, 35.409985, 22.482643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.298653, 35.217289, 22.707678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711105, 0.207139, -0.671880,
		0.207139, 0.851480, 0.481741,
		0.671880, -0.481741, 0.562585,
		40.500217, 35.072765, 22.876453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.639694, 35.780106, 22.473999>,  <40.029900, 35.409985, 22.482643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.639694, 35.780106, 22.473999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.754211, 35.405964, 22.557081>,  <40.822922, 35.181477, 22.606932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.754211, 35.405964, 22.557081>,  <40.639694, 35.780106, 22.473999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.754211, 35.405964, 22.557081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689102, 0.050391, -0.722910,
		0.665712, 0.350097, 0.658984,
		0.286295, -0.935357, 0.207707,
		40.840099, 35.125359, 22.619392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.366787, 35.811520, 22.346586>,  <40.639694, 35.780106, 22.473999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.366787, 35.811520, 22.346586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.315041, 35.415184, 22.362114>,  <41.283993, 35.177383, 22.371431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.315041, 35.415184, 22.362114>,  <41.366787, 35.811520, 22.346586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.315041, 35.415184, 22.362114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670588, -0.116258, -0.732664,
		0.730464, -0.068748, 0.679483,
		-0.129364, -0.990837, 0.038821,
		41.276230, 35.117931, 22.373760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.973965, 35.564594, 22.183149>,  <41.366787, 35.811520, 22.346586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.973965, 35.564594, 22.183149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.740013, 35.242798, 22.141756>,  <41.599644, 35.049721, 22.116920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.740013, 35.242798, 22.141756>,  <41.973965, 35.564594, 22.183149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.740013, 35.242798, 22.141756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631280, -0.371370, -0.680860,
		0.509315, -0.463548, 0.725066,
		-0.584879, -0.804492, -0.103484,
		41.564548, 35.001450, 22.110710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.441875, 34.920475, 22.306660>,  <41.973965, 35.564594, 22.183149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.441875, 34.920475, 22.306660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.107601, 34.836407, 22.103699>,  <41.907036, 34.785965, 21.981922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.107601, 34.836407, 22.103699>,  <42.441875, 34.920475, 22.306660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.107601, 34.836407, 22.103699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546653, -0.407345, -0.731601,
		-0.052928, -0.888762, 0.455302,
		-0.835685, -0.210170, -0.507404,
		41.856895, 34.773357, 21.951477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.523804, 34.230824, 22.110004>,  <42.441875, 34.920475, 22.306660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.523804, 34.230824, 22.110004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.254219, 34.392113, 21.862394>,  <42.092468, 34.488888, 21.713829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.254219, 34.392113, 21.862394>,  <42.523804, 34.230824, 22.110004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.254219, 34.392113, 21.862394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548421, -0.288344, -0.784915,
		-0.494991, -0.868484, -0.026807,
		-0.673957, 0.403228, -0.619023,
		42.052032, 34.513081, 21.676687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.431953, 33.692837, 21.531860>,  <42.523804, 34.230824, 22.110004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.431953, 33.692837, 21.531860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.283413, 34.032211, 21.380995>,  <42.194290, 34.235836, 21.290476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.283413, 34.032211, 21.380995>,  <42.431953, 33.692837, 21.531860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.283413, 34.032211, 21.380995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411782, -0.213583, -0.885899,
		-0.832186, -0.484288, -0.270057,
		-0.371350, 0.848438, -0.377162,
		42.172009, 34.286743, 21.267845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.789398, 33.329334, 22.026878>,  <42.431953, 33.692837, 21.531860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.789398, 33.329334, 22.026878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.073433, 33.049732, 22.060762>,  <43.243855, 32.881973, 22.081093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.073433, 33.049732, 22.060762>,  <42.789398, 33.329334, 22.026878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.073433, 33.049732, 22.060762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287356, -0.177854, 0.941167,
		-0.642812, -0.692649, -0.327154,
		0.710084, -0.699003, 0.084711,
		43.286457, 32.840031, 22.086176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.452450, 32.768803, 22.208950>,  <42.789398, 33.329334, 22.026878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.452450, 32.768803, 22.208950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.828873, 32.709698, 22.330658>,  <43.054726, 32.674232, 22.403683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.828873, 32.709698, 22.330658>,  <42.452450, 32.768803, 22.208950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.828873, 32.709698, 22.330658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314116, -0.048048, 0.948168,
		-0.125488, -0.987855, -0.091631,
		0.941055, -0.147766, 0.304272,
		43.111191, 32.665367, 22.421940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.550430, 32.121071, 22.626612>,  <42.452450, 32.768803, 22.208950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.550430, 32.121071, 22.626612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.817822, 32.401875, 22.724854>,  <42.978256, 32.570354, 22.783798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.817822, 32.401875, 22.724854>,  <42.550430, 32.121071, 22.626612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.817822, 32.401875, 22.724854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281970, -0.066355, 0.957126,
		0.688207, -0.709071, 0.153588,
		0.668479, 0.702008, 0.245602,
		43.018364, 32.612476, 22.798534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.873653, 31.836040, 23.174892>,  <42.550430, 32.121071, 22.626612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.873653, 31.836040, 23.174892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.006245, 32.210716, 23.220034>,  <43.085800, 32.435520, 23.247118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.006245, 32.210716, 23.220034>,  <42.873653, 31.836040, 23.174892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.006245, 32.210716, 23.220034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263457, -0.022960, 0.964398,
		0.905933, -0.349406, 0.239167,
		0.331475, 0.936690, 0.112854,
		43.105686, 32.491722, 23.253889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.297241, 31.772352, 23.687155>,  <42.873653, 31.836040, 23.174892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.297241, 31.772352, 23.687155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.188660, 32.156906, 23.669058>,  <43.123508, 32.387638, 23.658199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.188660, 32.156906, 23.669058>,  <43.297241, 31.772352, 23.687155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.188660, 32.156906, 23.669058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194711, -0.008823, 0.980821,
		0.942549, 0.275059, 0.189587,
		-0.271457, 0.961387, -0.045241,
		43.107224, 32.445324, 23.655485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.695007, 32.116344, 24.151581>,  <43.297241, 31.772352, 23.687155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.695007, 32.116344, 24.151581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.381554, 32.360676, 24.106323>,  <43.193481, 32.507275, 24.079168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.381554, 32.360676, 24.106323>,  <43.695007, 32.116344, 24.151581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.381554, 32.360676, 24.106323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030139, 0.219303, 0.975191,
		0.620485, 0.760788, -0.190264,
		-0.783639, 0.610826, -0.113145,
		43.146461, 32.543922, 24.072380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.898392, 32.775219, 24.541542>,  <43.695007, 32.116344, 24.151581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.898392, 32.775219, 24.541542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.505299, 32.790009, 24.469032>,  <43.269444, 32.798882, 24.425526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.505299, 32.790009, 24.469032>,  <43.898392, 32.775219, 24.541542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.505299, 32.790009, 24.469032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154491, 0.375069, 0.914033,
		0.101788, 0.926259, -0.362882,
		-0.982737, 0.036976, -0.181276,
		43.210476, 32.801102, 24.414650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.606342, 33.430428, 24.715971>,  <43.898392, 32.775219, 24.541542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.606342, 33.430428, 24.715971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.266342, 33.219727, 24.718266>,  <43.062344, 33.093307, 24.719643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.266342, 33.219727, 24.718266>,  <43.606342, 33.430428, 24.715971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.266342, 33.219727, 24.718266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226989, 0.376064, 0.898361,
		-0.475372, 0.762304, -0.439221,
		-0.849999, -0.526754, 0.005735,
		43.011341, 33.061699, 24.719986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.957367, 33.962513, 24.859392>,  <43.606342, 33.430428, 24.715971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.957367, 33.962513, 24.859392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.865654, 33.583885, 24.950104>,  <42.810627, 33.356709, 25.004530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.865654, 33.583885, 24.950104>,  <42.957367, 33.962513, 24.859392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.865654, 33.583885, 24.950104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362877, 0.299315, 0.882457,
		-0.903189, 0.120037, -0.412117,
		-0.229280, -0.946574, 0.226779,
		42.796871, 33.299911, 25.018137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.187141, 33.962132, 25.013098>,  <42.957367, 33.962513, 24.859392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.187141, 33.962132, 25.013098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.353481, 33.636013, 25.174276>,  <42.453285, 33.440342, 25.270985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.353481, 33.636013, 25.174276>,  <42.187141, 33.962132, 25.013098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.353481, 33.636013, 25.174276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535720, 0.138437, 0.832970,
		-0.734899, -0.562254, -0.379202,
		0.415846, -0.815295, 0.402948,
		42.478233, 33.391426, 25.295160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.702461, 33.484970, 25.265259>,  <42.187141, 33.962132, 25.013098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.702461, 33.484970, 25.265259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.027012, 33.393784, 25.480556>,  <42.221741, 33.339069, 25.609735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.027012, 33.393784, 25.480556>,  <41.702461, 33.484970, 25.265259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.027012, 33.393784, 25.480556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516956, 0.149917, 0.842782,
		-0.272819, -0.962058, 0.003789,
		0.811373, -0.227968, 0.538242,
		42.270424, 33.325394, 25.642029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.524139, 32.846676, 25.702858>,  <41.702461, 33.484970, 25.265259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.524139, 32.846676, 25.702858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.855679, 32.998516, 25.867252>,  <42.054604, 33.089619, 25.965889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.855679, 32.998516, 25.867252>,  <41.524139, 32.846676, 25.702858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.855679, 32.998516, 25.867252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478459, 0.100208, 0.872373,
		0.289967, -0.919708, 0.264680,
		0.828852, 0.379598, 0.410986,
		42.104336, 33.112396, 25.990549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.489544, 32.545486, 26.291466>,  <41.524139, 32.846676, 25.702858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.489544, 32.545486, 26.291466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.735615, 32.856861, 26.341408>,  <41.883255, 33.043686, 26.371374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.735615, 32.856861, 26.341408>,  <41.489544, 32.545486, 26.291466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.735615, 32.856861, 26.341408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457838, 0.223811, 0.860403,
		0.641828, -0.586462, 0.494083,
		0.615175, 0.778441, 0.124857,
		41.920166, 33.090393, 26.378864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.700024, 32.487759, 27.026884>,  <41.489544, 32.545486, 26.291466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.700024, 32.487759, 27.026884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.738537, 32.862888, 26.893490>,  <41.761646, 33.087967, 26.813454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.738537, 32.862888, 26.893490>,  <41.700024, 32.487759, 27.026884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.738537, 32.862888, 26.893490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522851, 0.332748, 0.784797,
		0.846969, 0.098798, 0.522382,
		0.096285, 0.937826, -0.333484,
		41.767422, 33.144238, 26.793444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.864872, 32.785118, 27.576839>,  <41.700024, 32.487759, 27.026884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.864872, 32.785118, 27.576839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.739330, 33.085388, 27.344294>,  <41.664005, 33.265549, 27.204765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.739330, 33.085388, 27.344294>,  <41.864872, 32.785118, 27.576839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.739330, 33.085388, 27.344294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465926, 0.411744, 0.783186,
		0.827290, 0.516679, 0.220531,
		-0.313853, 0.750673, -0.581366,
		41.645176, 33.310589, 27.169884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.904419, 33.397686, 28.002462>,  <41.864872, 32.785118, 27.576839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.904419, 33.397686, 28.002462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.652081, 33.450123, 27.696560>,  <41.500679, 33.481583, 27.513018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.652081, 33.450123, 27.696560>,  <41.904419, 33.397686, 28.002462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.652081, 33.450123, 27.696560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664116, 0.418457, 0.619552,
		0.401234, 0.898727, -0.176923,
		-0.630842, 0.131087, -0.764757,
		41.462830, 33.489449, 27.467133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.595474, 34.095707, 28.042820>,  <41.904419, 33.397686, 28.002462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.595474, 34.095707, 28.042820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.338295, 33.896240, 27.810286>,  <41.183987, 33.776562, 27.670765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.338295, 33.896240, 27.810286>,  <41.595474, 34.095707, 28.042820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.338295, 33.896240, 27.810286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758671, 0.310527, 0.572706,
		-0.105069, 0.809262, -0.577976,
		-0.642946, -0.498667, -0.581337,
		41.145412, 33.746639, 27.635885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.989479, 34.580357, 27.865957>,  <41.595474, 34.095707, 28.042820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.989479, 34.580357, 27.865957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.857338, 34.208012, 27.803513>,  <40.778053, 33.984604, 27.766047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.857338, 34.208012, 27.803513>,  <40.989479, 34.580357, 27.865957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.857338, 34.208012, 27.803513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891516, 0.253423, 0.375469,
		-0.309946, 0.263212, -0.913593,
		-0.330353, -0.930858, -0.156111,
		40.758232, 33.928753, 27.756680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.291916, 34.652061, 27.568531>,  <40.989479, 34.580357, 27.865957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.291916, 34.652061, 27.568531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.324650, 34.280582, 27.713207>,  <40.344288, 34.057693, 27.800013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.324650, 34.280582, 27.713207>,  <40.291916, 34.652061, 27.568531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.324650, 34.280582, 27.713207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838374, 0.132092, 0.528849,
		-0.538918, -0.346510, -0.767788,
		0.081833, -0.928699, 0.361692,
		40.349201, 34.001972, 27.821714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645351, 34.489494, 27.765970>,  <40.291916, 34.652061, 27.568531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.645351, 34.489494, 27.765970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.824841, 34.190094, 27.961277>,  <39.932533, 34.010456, 28.078461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.824841, 34.190094, 27.961277>,  <39.645351, 34.489494, 27.765970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.824841, 34.190094, 27.961277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733098, 0.004168, 0.680110,
		-0.511095, -0.663126, -0.546851,
		0.448719, -0.748497, 0.488266,
		39.959457, 33.965546, 28.107758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.095871, 33.910053, 27.831217>,  <39.645351, 34.489494, 27.765970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.095871, 33.910053, 27.831217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.394638, 33.926918, 28.096649>,  <39.573898, 33.937038, 28.255909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.394638, 33.926918, 28.096649>,  <39.095871, 33.910053, 27.831217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.394638, 33.926918, 28.096649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648861, -0.171768, 0.741266,
		0.145236, -0.984235, -0.100938,
		0.746917, 0.042164, 0.663579,
		39.618713, 33.939568, 28.295723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763638, 33.783432, 28.515921>,  <39.095871, 33.910053, 27.831217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.763638, 33.783432, 28.515921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.147190, 33.842236, 28.613028>,  <39.377323, 33.877518, 28.671291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.147190, 33.842236, 28.613028>,  <38.763638, 33.783432, 28.515921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147190, 33.842236, 28.613028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261122, 0.121861, 0.957583,
		0.111155, -0.981605, 0.155229,
		0.958885, 0.146974, 0.242773,
		39.434853, 33.886337, 28.685858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.918243, 33.327393, 29.073141>,  <38.763638, 33.783432, 28.515921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.918243, 33.327393, 29.073141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.188828, 33.621635, 29.087496>,  <39.351177, 33.798180, 29.096107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.188828, 33.621635, 29.087496>,  <38.918243, 33.327393, 29.073141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.188828, 33.621635, 29.087496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360845, 0.288567, 0.886859,
		0.642023, -0.612873, 0.460644,
		0.676459, 0.735605, 0.035885,
		39.391766, 33.842316, 29.098261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214119, 33.263378, 29.696098>,  <38.918243, 33.327393, 29.073141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214119, 33.263378, 29.696098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.255421, 33.635254, 29.554667>,  <39.280201, 33.858379, 29.469809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.255421, 33.635254, 29.554667>,  <39.214119, 33.263378, 29.696098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.255421, 33.635254, 29.554667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327925, 0.367421, 0.870326,
		0.939044, 0.026083, 0.342805,
		0.103253, 0.929689, -0.353578,
		39.286396, 33.914162, 29.448593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.792755, 33.689861, 30.074989>,  <39.214119, 33.263378, 29.696098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.792755, 33.689861, 30.074989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.526337, 33.952549, 29.933508>,  <39.366486, 34.110161, 29.848619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.526337, 33.952549, 29.933508>,  <39.792755, 33.689861, 30.074989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.526337, 33.952549, 29.933508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072833, 0.414663, 0.907056,
		0.742350, 0.629898, -0.228352,
		-0.666042, 0.656722, -0.353702,
		39.326523, 34.149567, 29.827396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.994560, 34.368889, 30.476725>,  <39.792755, 33.689861, 30.074989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.994560, 34.368889, 30.476725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.645462, 34.432869, 30.292236>,  <39.436001, 34.471256, 30.181543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.645462, 34.432869, 30.292236>,  <39.994560, 34.368889, 30.476725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.645462, 34.432869, 30.292236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262260, 0.643252, 0.719337,
		0.411737, 0.748762, -0.519450,
		-0.872750, 0.159946, -0.461221,
		39.383636, 34.480854, 30.153870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.023602, 35.077663, 30.529984>,  <39.994560, 34.368889, 30.476725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.023602, 35.077663, 30.529984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.637119, 34.997334, 30.465347>,  <39.405228, 34.949135, 30.426565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.637119, 34.997334, 30.465347>,  <40.023602, 35.077663, 30.529984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.637119, 34.997334, 30.465347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252476, 0.610965, 0.750319,
		-0.051957, 0.765761, -0.641023,
		-0.966207, -0.200827, -0.161593,
		39.347256, 34.937084, 30.416870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.745232, 35.749622, 30.563490>,  <40.023602, 35.077663, 30.529984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.745232, 35.749622, 30.563490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.450993, 35.493206, 30.651094>,  <39.274448, 35.339355, 30.703657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.450993, 35.493206, 30.651094>,  <39.745232, 35.749622, 30.563490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.450993, 35.493206, 30.651094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157207, 0.476017, 0.865271,
		-0.658926, 0.602060, -0.450932,
		-0.735596, -0.641040, 0.219012,
		39.230312, 35.300896, 30.716799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277248, 36.125771, 30.872156>,  <39.745232, 35.749622, 30.563490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.277248, 36.125771, 30.872156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.168797, 35.749214, 30.952429>,  <39.103725, 35.523281, 31.000593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.168797, 35.749214, 30.952429>,  <39.277248, 36.125771, 30.872156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.168797, 35.749214, 30.952429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169335, 0.251890, 0.952826,
		-0.947530, 0.224359, -0.227706,
		-0.271131, -0.941390, 0.200682,
		39.087456, 35.466797, 31.012634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549274, 36.157707, 31.086607>,  <39.277248, 36.125771, 30.872156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549274, 36.157707, 31.086607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.680386, 35.820305, 31.256809>,  <38.759052, 35.617863, 31.358931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.680386, 35.820305, 31.256809>,  <38.549274, 36.157707, 31.086607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.680386, 35.820305, 31.256809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228438, 0.366260, 0.902036,
		-0.916722, -0.392866, -0.072639,
		0.327774, -0.843511, 0.425504,
		38.778717, 35.567253, 31.384460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236599, 36.004845, 31.726086>,  <38.549274, 36.157707, 31.086607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.236599, 36.004845, 31.726086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.547016, 35.757526, 31.775833>,  <38.733269, 35.609135, 31.805681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.547016, 35.757526, 31.775833>,  <38.236599, 36.004845, 31.726086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547016, 35.757526, 31.775833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136613, 0.027716, 0.990237,
		-0.615704, -0.785459, -0.062958,
		0.776045, -0.618293, 0.124368,
		38.779831, 35.572037, 31.813143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105999, 35.556946, 32.257240>,  <38.236599, 36.004845, 31.726086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.105999, 35.556946, 32.257240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.498886, 35.481846, 32.257801>,  <38.734619, 35.436787, 32.258137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.498886, 35.481846, 32.257801>,  <38.105999, 35.556946, 32.257240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498886, 35.481846, 32.257801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001934, -0.002664, 0.999995,
		-0.187745, -0.982214, -0.002980,
		0.982216, -0.187750, 0.001399,
		38.793552, 35.425522, 32.258221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246330, 35.065014, 32.798641>,  <38.105999, 35.556946, 32.257240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246330, 35.065014, 32.798641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.618698, 35.199600, 32.741810>,  <38.842117, 35.280350, 32.707710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.618698, 35.199600, 32.741810>,  <38.246330, 35.065014, 32.798641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.618698, 35.199600, 32.741810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215955, -0.193343, 0.957069,
		0.294548, -0.921635, -0.252647,
		0.930916, 0.336463, -0.142083,
		38.897972, 35.300541, 32.699184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664742, 34.593201, 33.126472>,  <38.246330, 35.065014, 32.798641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664742, 34.593201, 33.126472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.848579, 34.947987, 33.108299>,  <38.958881, 35.160858, 33.097393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.848579, 34.947987, 33.108299>,  <38.664742, 34.593201, 33.126472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.848579, 34.947987, 33.108299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149053, -0.026599, 0.988471,
		0.875533, -0.461065, -0.144430,
		0.459592, 0.886967, -0.045435,
		38.986458, 35.214077, 33.094669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.247894, 34.484318, 33.410179>,  <38.664742, 34.593201, 33.126472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.247894, 34.484318, 33.410179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.218815, 34.882999, 33.424595>,  <39.201366, 35.122208, 33.433243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.218815, 34.882999, 33.424595>,  <39.247894, 34.484318, 33.410179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.218815, 34.882999, 33.424595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252236, -0.016585, 0.967524,
		0.964931, 0.079432, -0.250198,
		-0.072702, 0.996702, 0.036039,
		39.197002, 35.182011, 33.435406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.902794, 34.728333, 33.758865>,  <39.247894, 34.484318, 33.410179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.902794, 34.728333, 33.758865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.600548, 34.987988, 33.793880>,  <39.419201, 35.143780, 33.814888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.600548, 34.987988, 33.793880>,  <39.902794, 34.728333, 33.758865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600548, 34.987988, 33.793880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219092, 0.124533, 0.967724,
		0.617284, 0.750409, -0.236320,
		-0.755619, 0.649136, 0.087536,
		39.373863, 35.182728, 33.820141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098106, 35.164589, 34.255901>,  <39.902794, 34.728333, 33.758865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.098106, 35.164589, 34.255901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.710381, 35.262474, 34.246632>,  <39.477745, 35.321205, 34.241070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.710381, 35.262474, 34.246632>,  <40.098106, 35.164589, 34.255901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.710381, 35.262474, 34.246632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019620, 0.171002, 0.985075,
		0.245021, 0.954398, -0.170557,
		-0.969319, 0.244710, -0.023174,
		39.419586, 35.335888, 34.239681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.116955, 35.837582, 34.635288>,  <40.098106, 35.164589, 34.255901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.116955, 35.837582, 34.635288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.757698, 35.663158, 34.657894>,  <39.542145, 35.558506, 34.671459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.757698, 35.663158, 34.657894>,  <40.116955, 35.837582, 34.635288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757698, 35.663158, 34.657894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019331, 0.089249, 0.995822,
		-0.439280, 0.895482, -0.071729,
		-0.898142, -0.436058, 0.056516,
		39.488255, 35.532341, 34.674850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.820198, 36.213417, 35.159107>,  <40.116955, 35.837582, 34.635288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.820198, 36.213417, 35.159107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.565361, 35.905926, 35.136566>,  <39.412460, 35.721432, 35.123039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.565361, 35.905926, 35.136566>,  <39.820198, 36.213417, 35.159107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.565361, 35.905926, 35.136566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213344, 0.105606, 0.971253,
		-0.740676, 0.630799, -0.231284,
		-0.637090, -0.768726, -0.056357,
		39.374233, 35.675308, 35.119659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.245159, 36.433495, 35.585743>,  <39.820198, 36.213417, 35.159107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.245159, 36.433495, 35.585743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.266369, 36.034817, 35.561146>,  <39.279095, 35.795609, 35.546387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.266369, 36.034817, 35.561146>,  <39.245159, 36.433495, 35.585743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.266369, 36.034817, 35.561146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130082, -0.067950, 0.989172,
		-0.990084, -0.044452, -0.133256,
		0.053026, -0.996698, -0.061494,
		39.282276, 35.735806, 35.542698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686386, 36.262665, 35.938980>,  <39.245159, 36.433495, 35.585743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.686386, 36.262665, 35.938980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.959301, 35.970734, 35.956120>,  <39.123051, 35.795574, 35.966404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.959301, 35.970734, 35.956120>,  <38.686386, 36.262665, 35.938980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.959301, 35.970734, 35.956120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100681, 0.151855, 0.983262,
		-0.724121, -0.666550, 0.177088,
		0.682284, -0.729830, 0.042852,
		39.163986, 35.751785, 35.968975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442364, 35.883560, 36.486607>,  <38.686386, 36.262665, 35.938980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.442364, 35.883560, 36.486607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.816647, 35.749264, 36.443291>,  <39.041218, 35.668686, 36.417301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.816647, 35.749264, 36.443291>,  <38.442364, 35.883560, 36.486607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.816647, 35.749264, 36.443291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133872, 0.053924, 0.989530,
		-0.326391, -0.940408, 0.095404,
		0.935707, -0.335746, -0.108294,
		39.097359, 35.648540, 36.410801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508492, 35.486553, 37.030205>,  <38.442364, 35.883560, 36.486607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.508492, 35.486553, 37.030205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884640, 35.574215, 36.926144>,  <39.110329, 35.626812, 36.863708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884640, 35.574215, 36.926144>,  <38.508492, 35.486553, 37.030205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884640, 35.574215, 36.926144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263388, 0.014859, 0.964576,
		0.215258, -0.975577, -0.043750,
		0.940367, 0.219156, -0.260153,
		39.166752, 35.639961, 36.848099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022095, 34.939541, 37.325596>,  <38.508492, 35.486553, 37.030205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.022095, 34.939541, 37.325596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.223000, 35.283478, 37.288933>,  <39.343540, 35.489841, 37.266933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.223000, 35.283478, 37.288933>,  <39.022095, 34.939541, 37.325596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223000, 35.283478, 37.288933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377824, -0.122870, 0.917689,
		0.777809, -0.495547, -0.386583,
		0.502257, 0.859847, -0.091660,
		39.373676, 35.541431, 37.261436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563988, 34.705799, 37.834763>,  <39.022095, 34.939541, 37.325596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.563988, 34.705799, 37.834763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.662613, 35.073772, 37.712822>,  <39.721790, 35.294556, 37.639656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.662613, 35.073772, 37.712822>,  <39.563988, 34.705799, 37.834763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.662613, 35.073772, 37.712822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284720, 0.231921, 0.930133,
		0.926358, -0.316136, -0.204739,
		0.246565, 0.919930, -0.304852,
		39.736584, 35.349751, 37.621365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.286037, 34.756660, 37.980194>,  <39.563988, 34.705799, 37.834763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.286037, 34.756660, 37.980194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.101772, 35.110115, 37.946793>,  <39.991215, 35.322189, 37.926750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.101772, 35.110115, 37.946793>,  <40.286037, 34.756660, 37.980194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.101772, 35.110115, 37.946793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254055, 0.221419, 0.941504,
		0.850440, 0.412498, -0.326492,
		-0.460660, 0.883640, -0.083506,
		39.963573, 35.375206, 37.921741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.651917, 35.243298, 38.398270>,  <40.286037, 34.756660, 37.980194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.651917, 35.243298, 38.398270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.282108, 35.391834, 38.363945>,  <40.060223, 35.480957, 38.343349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.282108, 35.391834, 38.363945>,  <40.651917, 35.243298, 38.398270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.282108, 35.391834, 38.363945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092401, 0.436826, 0.894788,
		0.369759, 0.819321, -0.438168,
		-0.924522, 0.371343, -0.085815,
		40.004753, 35.503239, 38.338200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.682961, 35.923161, 38.576866>,  <40.651917, 35.243298, 38.398270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.682961, 35.923161, 38.576866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.293880, 35.846046, 38.628536>,  <40.060432, 35.799778, 38.659538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.293880, 35.846046, 38.628536>,  <40.682961, 35.923161, 38.576866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.293880, 35.846046, 38.628536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038036, 0.416690, 0.908253,
		-0.228921, 0.888372, -0.397982,
		-0.972702, -0.192781, 0.129179,
		40.002071, 35.788212, 38.667290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.270943, 36.541058, 38.773037>,  <40.682961, 35.923161, 38.576866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.270943, 36.541058, 38.773037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.077099, 36.223450, 38.919834>,  <39.960793, 36.032883, 39.007912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.077099, 36.223450, 38.919834>,  <40.270943, 36.541058, 38.773037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.077099, 36.223450, 38.919834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101950, 0.467958, 0.877850,
		-0.868771, 0.387997, -0.307726,
		-0.484606, -0.794024, 0.366993,
		39.931717, 35.985241, 39.029930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.747673, 36.759647, 39.118935>,  <40.270943, 36.541058, 38.773037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.747673, 36.759647, 39.118935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.850414, 36.416145, 39.296276>,  <39.912060, 36.210045, 39.402679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.850414, 36.416145, 39.296276>,  <39.747673, 36.759647, 39.118935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850414, 36.416145, 39.296276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075086, 0.475090, 0.876728,
		-0.963529, -0.191903, 0.186510,
		0.256855, -0.858756, 0.443354,
		39.927471, 36.158520, 39.429283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296959, 36.681911, 39.650097>,  <39.747673, 36.759647, 39.118935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296959, 36.681911, 39.650097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.623108, 36.474495, 39.753082>,  <39.818798, 36.350044, 39.814873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.623108, 36.474495, 39.753082>,  <39.296959, 36.681911, 39.650097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623108, 36.474495, 39.753082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033301, 0.485985, 0.873332,
		-0.577981, -0.703516, 0.413526,
		0.815370, -0.518541, 0.257463,
		39.867718, 36.318932, 39.830322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.304607, 36.696621, 40.370251>,  <39.296959, 36.681911, 39.650097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.304607, 36.696621, 40.370251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.674477, 36.568806, 40.287418>,  <39.896397, 36.492119, 40.237717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.674477, 36.568806, 40.287418>,  <39.304607, 36.696621, 40.370251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.674477, 36.568806, 40.287418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356965, 0.538169, 0.763511,
		-0.132523, -0.779917, 0.611692,
		0.924669, -0.319536, -0.207083,
		39.951878, 36.472946, 40.225292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.588932, 36.930897, 40.850792>,  <39.304607, 36.696621, 40.370251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.588932, 36.930897, 40.850792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.922012, 36.769966, 40.698612>,  <40.121861, 36.673409, 40.607304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.922012, 36.769966, 40.698612>,  <39.588932, 36.930897, 40.850792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.922012, 36.769966, 40.698612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544880, 0.473041, 0.692342,
		-0.098581, -0.783813, 0.613122,
		0.832698, -0.402330, -0.380452,
		40.171822, 36.649265, 40.584476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.019909, 36.629574, 41.355980>,  <39.588932, 36.930897, 40.850792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.019909, 36.629574, 41.355980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.277077, 36.724918, 41.064819>,  <40.431377, 36.782124, 40.890121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.277077, 36.724918, 41.064819>,  <40.019909, 36.629574, 41.355980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.277077, 36.724918, 41.064819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588425, 0.454660, 0.668611,
		0.490319, -0.858177, 0.152050,
		0.642918, 0.238363, -0.727902,
		40.469952, 36.796429, 40.846447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.641273, 36.515434, 41.664070>,  <40.019909, 36.629574, 41.355980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.641273, 36.515434, 41.664070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.706081, 36.768661, 41.361290>,  <40.744965, 36.920597, 41.179623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.706081, 36.768661, 41.361290>,  <40.641273, 36.515434, 41.664070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.706081, 36.768661, 41.361290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547453, 0.580548, 0.602711,
		0.821003, -0.512043, -0.252518,
		0.162015, 0.633069, -0.756951,
		40.754684, 36.958584, 41.134205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.267086, 36.769917, 41.906376>,  <40.641273, 36.515434, 41.664070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.267086, 36.769917, 41.906376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.192513, 36.971584, 41.569080>,  <41.147770, 37.092587, 41.366703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.192513, 36.971584, 41.569080>,  <41.267086, 36.769917, 41.906376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.192513, 36.971584, 41.569080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510991, 0.782823, 0.355072,
		0.839125, -0.364691, -0.403570,
		-0.186432, 0.504171, -0.843241,
		41.136581, 37.122837, 41.316109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.893803, 36.961983, 41.555054>,  <41.267086, 36.769917, 41.906376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.893803, 36.961983, 41.555054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.602970, 37.220211, 41.461605>,  <41.428471, 37.375149, 41.405537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.602970, 37.220211, 41.461605>,  <41.893803, 36.961983, 41.555054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.602970, 37.220211, 41.461605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528577, 0.743537, 0.409583,
		0.438124, 0.174313, -0.881851,
		-0.727085, 0.645575, -0.233623,
		41.384846, 37.413883, 41.391518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.176220, 37.563454, 41.257210>,  <41.893803, 36.961983, 41.555054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.176220, 37.563454, 41.257210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.831581, 37.667919, 41.431313>,  <41.624798, 37.730598, 41.535774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.831581, 37.667919, 41.431313>,  <42.176220, 37.563454, 41.257210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.831581, 37.667919, 41.431313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451869, 0.785262, 0.423294,
		-0.231242, 0.561387, -0.794589,
		-0.861592, 0.261168, 0.435259,
		41.573105, 37.746269, 41.561890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.193249, 38.251072, 41.314842>,  <42.176220, 37.563454, 41.257210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.193249, 38.251072, 41.314842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.878677, 38.204224, 41.557430>,  <41.689934, 38.176117, 41.702984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.878677, 38.204224, 41.557430>,  <42.193249, 38.251072, 41.314842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.878677, 38.204224, 41.557430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240273, 0.846525, 0.475042,
		-0.569031, 0.519306, -0.637593,
		-0.786430, -0.117117, 0.606474,
		41.642750, 38.169090, 41.739372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.800377, 38.848179, 41.358166>,  <42.193249, 38.251072, 41.314842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.800377, 38.848179, 41.358166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.744232, 38.646072, 41.698757>,  <41.710545, 38.524811, 41.903111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.744232, 38.646072, 41.698757>,  <41.800377, 38.848179, 41.358166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.744232, 38.646072, 41.698757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479832, 0.717536, 0.504880,
		-0.866061, 0.479430, 0.141727,
		-0.140360, -0.505262, 0.851475,
		41.702126, 38.494495, 41.954201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.551666, 39.339390, 41.869167>,  <41.800377, 38.848179, 41.358166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.551666, 39.339390, 41.869167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.706593, 39.034592, 42.076763>,  <41.799549, 38.851711, 42.201321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.706593, 39.034592, 42.076763>,  <41.551666, 39.339390, 41.869167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.706593, 39.034592, 42.076763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422277, 0.647029, 0.634850,
		-0.819556, -0.026727, 0.572376,
		0.387312, -0.761996, 0.518990,
		41.822784, 38.805992, 42.232460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.306648, 39.389187, 42.506611>,  <41.551666, 39.339390, 41.869167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.306648, 39.389187, 42.506611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.641159, 39.178131, 42.566254>,  <41.841866, 39.051498, 42.602039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.641159, 39.178131, 42.566254>,  <41.306648, 39.389187, 42.506611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.641159, 39.178131, 42.566254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328780, 0.700193, 0.633746,
		-0.438796, -0.480963, 0.759034,
		0.836278, -0.527641, 0.149111,
		41.892044, 39.019840, 42.610989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.466488, 39.325146, 43.239807>,  <41.306648, 39.389187, 42.506611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.466488, 39.325146, 43.239807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.776230, 39.328182, 42.986725>,  <41.962074, 39.330006, 42.834877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.776230, 39.328182, 42.986725>,  <41.466488, 39.325146, 43.239807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.776230, 39.328182, 42.986725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483034, 0.638805, 0.598837,
		0.408722, -0.769331, 0.490994,
		0.774354, 0.007591, -0.632707,
		42.008537, 39.330460, 42.796913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.180172, 39.007030, 43.471767>,  <41.466488, 39.325146, 43.239807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.180172, 39.007030, 43.471767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.237728, 39.309006, 43.215843>,  <42.272263, 39.490192, 43.062286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.237728, 39.309006, 43.215843>,  <42.180172, 39.007030, 43.471767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.237728, 39.309006, 43.215843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496240, 0.504331, 0.706680,
		0.856179, -0.419182, -0.302065,
		0.143887, 0.754942, -0.639813,
		42.280895, 39.535488, 43.023899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.917171, 38.388664, 43.008823>,  <42.180172, 39.007030, 43.471767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.917171, 38.388664, 43.008823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.738197, 38.608406, 42.726543>,  <41.630814, 38.740253, 42.557175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.738197, 38.608406, 42.726543>,  <41.917171, 38.388664, 43.008823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.738197, 38.608406, 42.726543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520882, -0.801515, -0.293692,
		-0.726970, 0.236178, 0.644775,
		-0.447433, 0.549357, -0.705698,
		41.603966, 38.773212, 42.514835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.237846, 38.297012, 43.006824>,  <41.917171, 38.388664, 43.008823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.237846, 38.297012, 43.006824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.327099, 38.374607, 42.624710>,  <41.380650, 38.421165, 42.395439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.327099, 38.374607, 42.624710>,  <41.237846, 38.297012, 43.006824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.327099, 38.374607, 42.624710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471423, -0.836298, -0.279938,
		-0.853212, 0.512810, -0.095158,
		0.223136, 0.193987, -0.955290,
		41.394039, 38.432804, 42.338123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.712032, 37.865234, 42.597748>,  <41.237846, 38.297012, 43.006824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.712032, 37.865234, 42.597748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.989235, 37.972485, 42.330063>,  <41.155556, 38.036835, 42.169453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.989235, 37.972485, 42.330063>,  <40.712032, 37.865234, 42.597748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.989235, 37.972485, 42.330063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351678, -0.684599, -0.638472,
		-0.629337, 0.677813, -0.380136,
		0.693006, 0.268129, -0.669216,
		41.197136, 38.052925, 42.129299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.317455, 37.947559, 41.970524>,  <40.712032, 37.865234, 42.597748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.317455, 37.947559, 41.970524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.690453, 37.916061, 41.829521>,  <40.914249, 37.897163, 41.744919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.690453, 37.916061, 41.829521>,  <40.317455, 37.947559, 41.970524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.690453, 37.916061, 41.829521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306099, -0.690364, -0.655515,
		-0.191739, 0.719164, -0.667862,
		0.932491, -0.078744, -0.352505,
		40.970200, 37.892437, 41.723770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.364307, 38.260288, 41.315784>,  <40.317455, 37.947559, 41.970524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.364307, 38.260288, 41.315784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.669071, 38.002457, 41.341125>,  <40.851929, 37.847755, 41.356331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.669071, 38.002457, 41.341125>,  <40.364307, 38.260288, 41.315784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.669071, 38.002457, 41.341125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300868, -0.438842, -0.846697,
		0.573566, 0.626044, -0.528291,
		0.761906, -0.644583, 0.063348,
		40.897644, 37.809082, 41.360130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.648159, 38.106400, 40.697823>,  <40.364307, 38.260288, 41.315784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.648159, 38.106400, 40.697823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.815559, 37.797920, 40.889698>,  <40.916000, 37.612831, 41.004826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.815559, 37.797920, 40.889698>,  <40.648159, 38.106400, 40.697823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.815559, 37.797920, 40.889698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431500, -0.633589, -0.642162,
		0.799163, 0.061761, -0.597934,
		0.418505, -0.771201, 0.479691,
		40.941113, 37.566559, 41.033604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.118607, 37.721725, 40.205444>,  <40.648159, 38.106400, 40.697823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.118607, 37.721725, 40.205444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.999573, 37.472672, 40.494930>,  <40.928154, 37.323238, 40.668621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.999573, 37.472672, 40.494930>,  <41.118607, 37.721725, 40.205444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.999573, 37.472672, 40.494930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294980, -0.661000, -0.689975,
		0.907981, -0.418808, 0.013038,
		-0.297586, -0.622639, 0.723716,
		40.910297, 37.285881, 40.712044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.263195, 37.148678, 39.909836>,  <41.118607, 37.721725, 40.205444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.263195, 37.148678, 39.909836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.012318, 37.050282, 40.205433>,  <40.861790, 36.991245, 40.382793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.012318, 37.050282, 40.205433>,  <41.263195, 37.148678, 39.909836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.012318, 37.050282, 40.205433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375738, -0.735543, -0.563735,
		0.682236, -0.631241, 0.368902,
		-0.627196, -0.245989, 0.738995,
		40.824158, 36.976486, 40.427132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.284176, 36.452351, 40.118309>,  <41.263195, 37.148678, 39.909836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.284176, 36.452351, 40.118309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.910503, 36.577549, 40.186825>,  <40.686298, 36.652668, 40.227936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.910503, 36.577549, 40.186825>,  <41.284176, 36.452351, 40.118309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.910503, 36.577549, 40.186825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356792, -0.822571, -0.442805,
		0.002305, -0.474775, 0.880104,
		-0.934181, 0.312994, 0.171292,
		40.630249, 36.671448, 40.238213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.001656, 36.058884, 40.599365>,  <41.284176, 36.452351, 40.118309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.001656, 36.058884, 40.599365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.714420, 36.178154, 40.347828>,  <40.542080, 36.249714, 40.196907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.714420, 36.178154, 40.347828>,  <41.001656, 36.058884, 40.599365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.714420, 36.178154, 40.347828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113633, -0.941678, -0.316748,
		-0.686609, -0.155997, 0.710094,
		-0.718092, 0.298172, -0.628839,
		40.498993, 36.267605, 40.159176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.896324, 35.449619, 40.186081>,  <41.001656, 36.058884, 40.599365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.896324, 35.449619, 40.186081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.608963, 35.693481, 40.052090>,  <40.436546, 35.839798, 39.971695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.608963, 35.693481, 40.052090>,  <40.896324, 35.449619, 40.186081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.608963, 35.693481, 40.052090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232168, -0.664081, -0.710700,
		-0.655733, -0.432803, 0.618624,
		-0.718410, 0.609654, -0.334977,
		40.393440, 35.876377, 39.951595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.422295, 35.086143, 39.847866>,  <40.896324, 35.449619, 40.186081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.422295, 35.086143, 39.847866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.268307, 35.430622, 39.715122>,  <40.175915, 35.637310, 39.635475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.268307, 35.430622, 39.715122>,  <40.422295, 35.086143, 39.847866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.268307, 35.430622, 39.715122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417321, -0.483146, -0.769684,
		-0.823190, -0.157812, 0.545394,
		-0.384970, 0.861200, -0.331863,
		40.152817, 35.688984, 39.615562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670010, 35.025707, 39.694725>,  <40.422295, 35.086143, 39.847866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.670010, 35.025707, 39.694725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.849972, 35.293068, 39.457802>,  <39.957951, 35.453484, 39.315647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.849972, 35.293068, 39.457802>,  <39.670010, 35.025707, 39.694725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.849972, 35.293068, 39.457802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319469, -0.498883, -0.805640,
		-0.833979, 0.551688, -0.010920,
		0.449910, 0.668398, -0.592305,
		39.984943, 35.493587, 39.280109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048309, 35.136593, 39.270428>,  <39.670010, 35.025707, 39.694725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.048309, 35.136593, 39.270428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.273499, 35.460655, 39.205059>,  <39.408611, 35.655094, 39.165836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.273499, 35.460655, 39.205059>,  <39.048309, 35.136593, 39.270428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.273499, 35.460655, 39.205059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035847, -0.221485, -0.974505,
		-0.825697, 0.542763, -0.153731,
		0.562974, 0.810156, -0.163423,
		39.442390, 35.703701, 39.156033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700825, 35.592926, 38.727005>,  <39.048309, 35.136593, 39.270428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.700825, 35.592926, 38.727005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.092850, 35.672150, 38.720745>,  <39.328064, 35.719685, 38.716991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.092850, 35.672150, 38.720745>,  <38.700825, 35.592926, 38.727005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092850, 35.672150, 38.720745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047370, -0.309443, -0.949737,
		-0.192943, 0.930064, -0.312657,
		0.980066, 0.198056, -0.015648,
		39.386871, 35.731567, 38.716049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840195, 36.046741, 38.236847>,  <38.700825, 35.592926, 38.727005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.840195, 36.046741, 38.236847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.197395, 35.869652, 38.269211>,  <39.411716, 35.763397, 38.288631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.197395, 35.869652, 38.269211>,  <38.840195, 36.046741, 38.236847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197395, 35.869652, 38.269211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086995, -0.006590, -0.996187,
		0.441568, 0.896634, 0.032630,
		0.893000, -0.442723, 0.080912,
		39.465294, 35.736835, 38.293484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.284508, 36.475246, 37.951683>,  <38.840195, 36.046741, 38.236847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.284508, 36.475246, 37.951683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.529869, 36.159576, 37.939472>,  <39.677086, 35.970173, 37.932144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.529869, 36.159576, 37.939472>,  <39.284508, 36.475246, 37.951683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529869, 36.159576, 37.939472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254975, 0.234474, -0.938088,
		0.747477, 0.567644, 0.345048,
		0.613405, -0.789178, -0.030529,
		39.713890, 35.922821, 37.930313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.745548, 36.653294, 37.425468>,  <39.284508, 36.475246, 37.951683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.745548, 36.653294, 37.425468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.748726, 36.257198, 37.481129>,  <39.750633, 36.019543, 37.514526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.748726, 36.257198, 37.481129>,  <39.745548, 36.653294, 37.425468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.748726, 36.257198, 37.481129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133569, -0.136857, -0.981544,
		0.991008, 0.026383, 0.131178,
		0.007944, -0.990239, 0.139150,
		39.751110, 35.960125, 37.522873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.376263, 36.268459, 37.140568>,  <39.745548, 36.653294, 37.425468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.376263, 36.268459, 37.140568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.034126, 36.061600, 37.128242>,  <39.828846, 35.937485, 37.120846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.034126, 36.061600, 37.128242>,  <40.376263, 36.268459, 37.140568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.034126, 36.061600, 37.128242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164365, -0.214487, -0.962798,
		0.491304, -0.828582, 0.268461,
		-0.855339, -0.517152, -0.030812,
		39.777523, 35.906452, 37.118999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.461327, 35.812363, 36.596527>,  <40.376263, 36.268459, 37.140568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.461327, 35.812363, 36.596527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.073814, 35.748589, 36.672474>,  <39.841309, 35.710323, 36.718040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.073814, 35.748589, 36.672474>,  <40.461327, 35.812363, 36.596527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.073814, 35.748589, 36.672474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092663, -0.477455, -0.873756,
		0.229962, -0.864069, 0.447774,
		-0.968778, -0.159438, 0.189864,
		39.783180, 35.700756, 36.729435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.317932, 35.260799, 36.207481>,  <40.461327, 35.812363, 36.596527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.317932, 35.260799, 36.207481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.955158, 35.403725, 36.296741>,  <39.737495, 35.489479, 36.350296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.955158, 35.403725, 36.296741>,  <40.317932, 35.260799, 36.207481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.955158, 35.403725, 36.296741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323354, -0.250929, -0.912402,
		-0.270018, -0.899646, 0.343115,
		-0.906936, 0.357313, 0.223148,
		39.683079, 35.510918, 36.363686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948063, 34.709988, 36.002960>,  <40.317932, 35.260799, 36.207481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.948063, 34.709988, 36.002960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.712326, 35.032806, 35.988266>,  <39.570885, 35.226498, 35.979450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.712326, 35.032806, 35.988266>,  <39.948063, 34.709988, 36.002960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.712326, 35.032806, 35.988266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325668, -0.278938, -0.903401,
		-0.739332, -0.520453, 0.427220,
		-0.589346, 0.807045, -0.036733,
		39.535522, 35.274921, 35.977245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821968, 34.322968, 36.623089>,  <39.948063, 34.709988, 36.002960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.821968, 34.322968, 36.623089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.740616, 34.219810, 36.245277>,  <39.691803, 34.157917, 36.018593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.740616, 34.219810, 36.245277>,  <39.821968, 34.322968, 36.623089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.740616, 34.219810, 36.245277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957978, 0.146880, -0.246383,
		0.202273, -0.954943, 0.217185,
		-0.203381, -0.257895, -0.944524,
		39.679600, 34.142441, 35.961922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.165966, 33.619869, 36.512314>,  <39.821968, 34.322968, 36.623089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.165966, 33.619869, 36.512314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.105419, 33.895397, 36.228729>,  <40.069092, 34.060715, 36.058578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.105419, 33.895397, 36.228729>,  <40.165966, 33.619869, 36.512314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.105419, 33.895397, 36.228729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983158, 0.030601, -0.180176,
		-0.102414, -0.724289, -0.681848,
		-0.151364, 0.688817, -0.708957,
		40.060009, 34.102043, 36.016041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.515453, 33.489510, 35.795692>,  <40.165966, 33.619869, 36.512314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.515453, 33.489510, 35.795692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.493996, 33.880001, 35.879700>,  <40.481121, 34.114296, 35.930103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.493996, 33.880001, 35.879700>,  <40.515453, 33.489510, 35.795692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.493996, 33.880001, 35.879700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997983, 0.059562, -0.021947,
		-0.033935, 0.208421, -0.977450,
		-0.053645, 0.976224, 0.210021,
		40.477901, 34.172867, 35.942707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.047306, 33.936012, 35.357849>,  <40.515453, 33.489510, 35.795692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.047306, 33.936012, 35.357849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.948139, 34.017086, 35.736786>,  <40.888638, 34.065731, 35.964149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.948139, 34.017086, 35.736786>,  <41.047306, 33.936012, 35.357849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.948139, 34.017086, 35.736786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952679, -0.126542, 0.276386,
		0.175897, 0.971034, -0.161717,
		-0.247916, 0.202680, 0.947343,
		40.873764, 34.077888, 36.020988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.716385, 34.267612, 35.642311>,  <41.047306, 33.936012, 35.357849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.716385, 34.267612, 35.642311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.483562, 34.136562, 35.940002>,  <41.343868, 34.057934, 36.118618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.483562, 34.136562, 35.940002>,  <41.716385, 34.267612, 35.642311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.483562, 34.136562, 35.940002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799277, -0.398851, 0.449527,
		0.149562, 0.856495, 0.494013,
		-0.582055, -0.327621, 0.744229,
		41.308945, 34.038277, 36.163273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.617027, 34.643475, 36.242287>,  <41.716385, 34.267612, 35.642311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.617027, 34.643475, 36.242287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.594383, 34.251247, 36.317410>,  <41.580795, 34.015911, 36.362484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.594383, 34.251247, 36.317410>,  <41.617027, 34.643475, 36.242287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.594383, 34.251247, 36.317410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993193, -0.036129, 0.110732,
		-0.101795, 0.192801, 0.975943,
		-0.056609, -0.980573, 0.187811,
		41.577400, 33.957077, 36.373753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.835686, 34.356434, 36.954468>,  <41.617027, 34.643475, 36.242287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.835686, 34.356434, 36.954468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.892769, 34.117142, 36.639061>,  <41.927017, 33.973568, 36.449818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.892769, 34.117142, 36.639061>,  <41.835686, 34.356434, 36.954468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.892769, 34.117142, 36.639061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944028, 0.321644, -0.073177,
		0.297398, -0.733937, 0.610647,
		0.142704, -0.598231, -0.788514,
		41.935581, 33.937672, 36.402508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.545578, 34.301998, 37.018330>,  <41.835686, 34.356434, 36.954468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.545578, 34.301998, 37.018330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.490009, 34.137146, 36.658138>,  <42.456669, 34.038235, 36.442024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.490009, 34.137146, 36.658138>,  <42.545578, 34.301998, 37.018330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.490009, 34.137146, 36.658138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981037, 0.066829, -0.181932,
		0.135157, -0.908672, 0.395028,
		-0.138917, -0.412126, -0.900474,
		42.448334, 34.013508, 36.387997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.972519, 33.630508, 36.850365>,  <42.545578, 34.301998, 37.018330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.972519, 33.630508, 36.850365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.896366, 33.809647, 36.500923>,  <42.850674, 33.917130, 36.291260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.896366, 33.809647, 36.500923>,  <42.972519, 33.630508, 36.850365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.896366, 33.809647, 36.500923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981622, 0.074954, -0.175501,
		-0.013117, -0.890963, -0.453887,
		-0.190386, 0.447848, -0.873605,
		42.839249, 33.944000, 36.238842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.373833, 33.261974, 36.403194>,  <42.972519, 33.630508, 36.850365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.373833, 33.261974, 36.403194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.310822, 33.626553, 36.251167>,  <43.273014, 33.845299, 36.159950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.310822, 33.626553, 36.251167>,  <43.373833, 33.261974, 36.403194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.310822, 33.626553, 36.251167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985621, 0.168935, -0.003383,
		0.061123, -0.375132, -0.924954,
		-0.157526, 0.911448, -0.380063,
		43.263565, 33.899986, 36.137150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.749146, 33.324699, 35.831673>,  <43.373833, 33.261974, 36.403194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.749146, 33.324699, 35.831673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.682842, 33.700237, 35.952400>,  <43.643059, 33.925560, 36.024837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.682842, 33.700237, 35.952400>,  <43.749146, 33.324699, 35.831673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.682842, 33.700237, 35.952400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968114, 0.213210, -0.131518,
		-0.187826, 0.270394, -0.944250,
		-0.165762, 0.938844, 0.301819,
		43.633114, 33.981892, 36.042946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.961174, 33.826126, 35.332279>,  <43.749146, 33.324699, 35.831673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.961174, 33.826126, 35.332279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.968258, 34.037640, 35.671707>,  <43.972507, 34.164547, 35.875362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.968258, 34.037640, 35.671707>,  <43.961174, 33.826126, 35.332279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.968258, 34.037640, 35.671707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901994, 0.357727, -0.241740,
		-0.431385, 0.769685, -0.470629,
		0.017707, 0.528787, 0.848570,
		43.973572, 34.196278, 35.926277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.338142, 34.351620, 35.183807>,  <43.961174, 33.826126, 35.332279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.338142, 34.351620, 35.183807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.372074, 34.283508, 35.576504>,  <44.392433, 34.242641, 35.812122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.372074, 34.283508, 35.576504>,  <44.338142, 34.351620, 35.183807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.372074, 34.283508, 35.576504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988260, -0.111269, -0.104695,
		0.127065, 0.979093, 0.158844,
		0.084832, -0.170283, 0.981737,
		44.397522, 34.232422, 35.871025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.431183, 34.972588, 35.410210>,  <44.338142, 34.351620, 35.183807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.431183, 34.972588, 35.410210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.231934, 34.862091, 35.738979>,  <44.112385, 34.795795, 35.936241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.231934, 34.862091, 35.738979>,  <44.431183, 34.972588, 35.410210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.231934, 34.862091, 35.738979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830652, 0.119931, 0.543723,
		-0.248771, 0.953577, 0.169716,
		-0.498127, -0.276237, 0.821926,
		44.082497, 34.779221, 35.985558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.940346, 34.736629, 35.928375>,  <44.431183, 34.972588, 35.410210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.940346, 34.736629, 35.928375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.995590, 34.956738, 35.598980>,  <45.028736, 35.088802, 35.401344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.995590, 34.956738, 35.598980>,  <44.940346, 34.736629, 35.928375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.995590, 34.956738, 35.598980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988222, -0.021249, 0.151546,
		0.065893, -0.834718, -0.546722,
		0.138115, 0.550268, -0.823486,
		45.037025, 35.121819, 35.351933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.280701, 34.360695, 35.389671>,  <44.940346, 34.736629, 35.928375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.280701, 34.360695, 35.389671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.344257, 34.755013, 35.411438>,  <45.382393, 34.991604, 35.424496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.344257, 34.755013, 35.411438>,  <45.280701, 34.360695, 35.389671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.344257, 34.755013, 35.411438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978390, -0.164606, 0.125133,
		0.132312, 0.033354, -0.990647,
		0.158893, 0.985795, 0.054413,
		45.391926, 35.050751, 35.427761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.775417, 34.659748, 34.786934>,  <45.280701, 34.360695, 35.389671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.775417, 34.659748, 34.786934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.797939, 34.826115, 35.149998>,  <45.811455, 34.925934, 35.367836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.797939, 34.826115, 35.149998>,  <45.775417, 34.659748, 34.786934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.797939, 34.826115, 35.149998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889960, -0.432976, 0.143189,
		0.452549, 0.799718, -0.394527,
		0.056309, 0.415913, 0.907659,
		45.814831, 34.950890, 35.422295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.422844, 34.886723, 34.814068>,  <45.775417, 34.659748, 34.786934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.422844, 34.886723, 34.814068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.290585, 34.817741, 35.185215>,  <46.211231, 34.776352, 35.407902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.290585, 34.817741, 35.185215>,  <46.422844, 34.886723, 34.814068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.290585, 34.817741, 35.185215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907397, -0.328355, 0.262324,
		0.259431, 0.928678, 0.265052,
		-0.330646, -0.172453, 0.927865,
		46.191391, 34.766006, 35.463573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.853874, 35.298691, 35.281071>,  <46.422844, 34.886723, 34.814068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.853874, 35.298691, 35.281071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.730145, 34.958755, 35.451759>,  <46.655907, 34.754795, 35.554173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.730145, 34.958755, 35.451759>,  <46.853874, 35.298691, 35.281071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.730145, 34.958755, 35.451759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945778, -0.228166, 0.231180,
		-0.099101, 0.475097, 0.874335,
		-0.309326, -0.849837, 0.426725,
		46.637348, 34.703804, 35.579777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.567936, 34.995865, 35.378723>,  <46.853874, 35.298691, 35.281071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.567936, 34.995865, 35.378723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.453541, 34.939137, 35.757797>,  <47.384903, 34.905102, 35.985241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.453541, 34.939137, 35.757797>,  <47.567936, 34.995865, 35.378723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.453541, 34.939137, 35.757797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223651, 0.971551, 0.077899,
		-0.931768, -0.189672, -0.309568,
		-0.285986, -0.141819, 0.947681,
		47.367744, 34.896591, 36.042103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.186745, 34.799057, 34.913319>,  <47.567936, 34.995865, 35.378723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.186745, 34.799057, 34.913319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.887997, 34.589642, 35.077316>,  <47.708748, 34.463993, 35.175716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.887997, 34.589642, 35.077316>,  <48.186745, 34.799057, 34.913319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.887997, 34.589642, 35.077316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627195, 0.759467, -0.172733,
		-0.220946, -0.386156, -0.895582,
		-0.746866, -0.523540, 0.409996,
		47.663937, 34.432579, 35.200314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.990067, 28.985376, 27.020773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.651806, 29.054640, 26.818829>,  <39.448849, 29.096199, 26.697662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.651806, 29.054640, 26.818829>,  <39.990067, 28.985376, 27.020773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.651806, 29.054640, 26.818829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493134, 0.108358, 0.863178,
		0.204174, 0.978915, -0.006242,
		-0.845654, 0.173161, -0.504860,
		39.398109, 29.106588, 26.667370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627125, 29.626692, 27.243378>,  <39.990067, 28.985376, 27.020773>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.627125, 29.626692, 27.243378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.341572, 29.462046, 27.016769>,  <39.170238, 29.363258, 26.880804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.341572, 29.462046, 27.016769>,  <39.627125, 29.626692, 27.243378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.341572, 29.462046, 27.016769> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683220, 0.231985, 0.692383,
		-0.153570, 0.881338, -0.446833,
		-0.713882, -0.411614, -0.566522,
		39.127407, 29.338562, 26.846813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057255, 30.056610, 27.167896>,  <39.627125, 29.626692, 27.243378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057255, 30.056610, 27.167896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.873226, 29.703773, 27.127405>,  <38.762810, 29.492071, 27.103109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.873226, 29.703773, 27.127405>,  <39.057255, 30.056610, 27.167896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873226, 29.703773, 27.127405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606344, 0.228855, 0.761559,
		-0.648598, 0.411752, -0.640141,
		-0.460073, -0.882092, -0.101229,
		38.735203, 29.439146, 27.097036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414417, 30.132406, 27.067421>,  <39.057255, 30.056610, 27.167896>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414417, 30.132406, 27.067421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.391941, 29.749800, 27.181904>,  <38.378456, 29.520235, 27.250593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.391941, 29.749800, 27.181904>,  <38.414417, 30.132406, 27.067421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391941, 29.749800, 27.181904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569872, 0.266107, 0.777453,
		-0.819810, -0.119416, -0.560046,
		-0.056191, -0.956518, 0.286209,
		38.375084, 29.462845, 27.267767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710018, 30.085794, 27.234158>,  <38.414417, 30.132406, 27.067421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710018, 30.085794, 27.234158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.882191, 29.772615, 27.413809>,  <37.985497, 29.584707, 27.521601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.882191, 29.772615, 27.413809>,  <37.710018, 30.085794, 27.234158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.882191, 29.772615, 27.413809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538664, 0.176448, 0.823837,
		-0.724270, -0.596538, -0.345796,
		0.430435, -0.782948, 0.449130,
		38.011322, 29.537731, 27.548548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.141747, 29.662098, 27.475061>,  <37.710018, 30.085794, 27.234158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.141747, 29.662098, 27.475061> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.480476, 29.581985, 27.672153>,  <37.683712, 29.533918, 27.790409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.480476, 29.581985, 27.672153>,  <37.141747, 29.662098, 27.475061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.480476, 29.581985, 27.672153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490350, 0.064883, 0.869107,
		-0.206036, -0.977588, -0.043264,
		0.846821, -0.200282, 0.492728,
		37.734524, 29.521902, 27.819971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948071, 29.201178, 27.938118>,  <37.141747, 29.662098, 27.475061>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.948071, 29.201178, 27.938118> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.280579, 29.312372, 28.130667>,  <37.480083, 29.379089, 28.246195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.280579, 29.312372, 28.130667>,  <36.948071, 29.201178, 27.938118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280579, 29.312372, 28.130667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515045, 0.059430, 0.855101,
		0.209104, -0.958743, 0.192581,
		0.831267, 0.277993, 0.481369,
		37.529961, 29.395769, 28.275078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064911, 28.783401, 28.516741>,  <36.948071, 29.201178, 27.938118>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064911, 28.783401, 28.516741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.304798, 29.091236, 28.604446>,  <37.448730, 29.275936, 28.657070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.304798, 29.091236, 28.604446>,  <37.064911, 28.783401, 28.516741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.304798, 29.091236, 28.604446> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397367, 0.048570, 0.916373,
		0.694580, -0.636692, 0.334937,
		0.599715, 0.769587, 0.219265,
		37.484715, 29.322113, 28.670225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327499, 28.721249, 29.202526>,  <37.064911, 28.783401, 28.516741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327499, 28.721249, 29.202526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.390419, 29.112957, 29.151476>,  <37.428173, 29.347982, 29.120846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.390419, 29.112957, 29.151476>,  <37.327499, 28.721249, 29.202526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.390419, 29.112957, 29.151476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406215, 0.181957, 0.895478,
		0.900136, -0.089016, 0.426416,
		0.157301, 0.979269, -0.127626,
		37.437611, 29.406738, 29.113188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870888, 29.004040, 29.728954>,  <37.327499, 28.721249, 29.202526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870888, 29.004040, 29.728954> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.622890, 29.299404, 29.622854>,  <37.474091, 29.476624, 29.559195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.622890, 29.299404, 29.622854>,  <37.870888, 29.004040, 29.728954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622890, 29.299404, 29.622854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176164, 0.198430, 0.964153,
		0.764575, 0.644496, 0.007056,
		-0.619993, 0.738410, -0.265252,
		37.436893, 29.520927, 29.543278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947128, 29.432341, 30.190647>,  <37.870888, 29.004040, 29.728954>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947128, 29.432341, 30.190647> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.599514, 29.582289, 30.061491>,  <37.390945, 29.672256, 29.983997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.599514, 29.582289, 30.061491>,  <37.947128, 29.432341, 30.190647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.599514, 29.582289, 30.061491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183053, 0.362692, 0.913754,
		0.459647, 0.853187, -0.246570,
		-0.869032, 0.374869, -0.322889,
		37.338806, 29.694750, 29.964624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987370, 30.124502, 30.212389>,  <37.947128, 29.432341, 30.190647>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.987370, 30.124502, 30.212389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.591557, 30.067366, 30.204233>,  <37.354069, 30.033083, 30.199341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.591557, 30.067366, 30.204233>,  <37.987370, 30.124502, 30.212389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591557, 30.067366, 30.204233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101950, 0.592172, 0.799336,
		-0.102105, 0.793051, -0.600538,
		-0.989536, -0.142841, -0.020388,
		37.294697, 30.024513, 30.198116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771015, 30.800583, 30.344221>,  <37.987370, 30.124502, 30.212389>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771015, 30.800583, 30.344221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.444256, 30.574856, 30.391941>,  <37.248199, 30.439421, 30.420574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.444256, 30.574856, 30.391941>,  <37.771015, 30.800583, 30.344221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.444256, 30.574856, 30.391941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178093, 0.443506, 0.878399,
		-0.548605, 0.696312, -0.462798,
		-0.816894, -0.564315, 0.119301,
		37.199188, 30.405561, 30.427731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213013, 31.244299, 30.500143>,  <37.771015, 30.800583, 30.344221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213013, 31.244299, 30.500143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.114727, 30.885715, 30.647648>,  <37.055756, 30.670565, 30.736151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.114727, 30.885715, 30.647648>,  <37.213013, 31.244299, 30.500143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114727, 30.885715, 30.647648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310774, 0.433195, 0.846027,
		-0.918175, 0.093276, -0.385037,
		-0.245710, -0.896461, 0.368761,
		37.041016, 30.616777, 30.758276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526730, 31.261246, 30.776535>,  <37.213013, 31.244299, 30.500143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.526730, 31.261246, 30.776535> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.685722, 30.950294, 30.971548>,  <36.781116, 30.763723, 31.088556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.685722, 30.950294, 30.971548>,  <36.526730, 31.261246, 30.776535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685722, 30.950294, 30.971548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442859, 0.302815, 0.843907,
		-0.803668, -0.551346, -0.223906,
		0.397483, -0.777380, 0.487531,
		36.804966, 30.717081, 31.117807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975945, 30.957302, 31.293959>,  <36.526730, 31.261246, 30.776535>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975945, 30.957302, 31.293959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.342289, 30.840578, 31.404261>,  <36.562096, 30.770544, 31.470442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.342289, 30.840578, 31.404261>,  <35.975945, 30.957302, 31.293959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342289, 30.840578, 31.404261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207165, 0.244855, 0.947169,
		-0.343915, -0.924604, 0.163801,
		0.915863, -0.291812, 0.275755,
		36.617046, 30.753035, 31.486986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786129, 30.618946, 31.937048>,  <35.975945, 30.957302, 31.293959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.786129, 30.618946, 31.937048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.184254, 30.656469, 31.946419>,  <36.423130, 30.678984, 31.952042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.184254, 30.656469, 31.946419>,  <35.786129, 30.618946, 31.937048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184254, 30.656469, 31.946419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045333, 0.238730, 0.970027,
		0.085404, -0.966544, 0.241865,
		0.995314, 0.093808, 0.023428,
		36.482849, 30.684612, 31.953447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086807, 30.145443, 32.398911>,  <35.786129, 30.618946, 31.937048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086807, 30.145443, 32.398911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.360050, 30.436796, 32.377647>,  <36.523994, 30.611609, 32.364891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.360050, 30.436796, 32.377647>,  <36.086807, 30.145443, 32.398911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360050, 30.436796, 32.377647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041899, 0.111751, 0.992853,
		0.729117, -0.675996, 0.106856,
		0.683106, 0.728382, -0.053156,
		36.564983, 30.655312, 32.361702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573288, 30.037390, 32.901642>,  <36.086807, 30.145443, 32.398911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573288, 30.037390, 32.901642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.646255, 30.424391, 32.831604>,  <36.690037, 30.656591, 32.789581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.646255, 30.424391, 32.831604>,  <36.573288, 30.037390, 32.901642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646255, 30.424391, 32.831604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042314, 0.185644, 0.981706,
		0.982310, -0.171672, 0.074804,
		0.182418, 0.967505, -0.175096,
		36.700981, 30.714642, 32.779076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052082, 30.227503, 33.421246>,  <36.573288, 30.037390, 32.901642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.052082, 30.227503, 33.421246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.930553, 30.585836, 33.291523>,  <36.857635, 30.800837, 33.213688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.930553, 30.585836, 33.291523>,  <37.052082, 30.227503, 33.421246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930553, 30.585836, 33.291523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207439, 0.270033, 0.940240,
		0.929872, 0.352939, 0.103789,
		-0.303821, 0.895833, -0.324309,
		36.839409, 30.854586, 33.194229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.423298, 30.745510, 33.727863>,  <37.052082, 30.227503, 33.421246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.423298, 30.745510, 33.727863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.103733, 30.961063, 33.621017>,  <36.911995, 31.090395, 33.556908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.103733, 30.961063, 33.621017>,  <37.423298, 30.745510, 33.727863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103733, 30.961063, 33.621017> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048486, 0.384973, 0.921653,
		0.599495, 0.749268, -0.281430,
		-0.798908, 0.538881, -0.267119,
		36.864059, 31.122728, 33.540882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553856, 31.463913, 34.049736>,  <37.423298, 30.745510, 33.727863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.553856, 31.463913, 34.049736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.173191, 31.379461, 33.960506>,  <36.944794, 31.328791, 33.906967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.173191, 31.379461, 33.960506>,  <37.553856, 31.463913, 34.049736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173191, 31.379461, 33.960506> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295193, 0.428075, 0.854174,
		-0.084849, 0.878735, -0.469707,
		-0.951663, -0.211130, -0.223075,
		36.887691, 31.316122, 33.893585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752251, 32.146767, 34.387875>,  <37.553856, 31.463913, 34.049736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752251, 32.146767, 34.387875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.072968, 32.382587, 34.426975>,  <38.265400, 32.524078, 34.450436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.072968, 32.382587, 34.426975>,  <37.752251, 32.146767, 34.387875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072968, 32.382587, 34.426975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267034, -0.207115, -0.941167,
		-0.534618, 0.780728, -0.323494,
		0.801796, 0.589548, 0.097753,
		38.313507, 32.559452, 34.456303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881840, 32.581581, 33.788563>,  <37.752251, 32.146767, 34.387875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.881840, 32.581581, 33.788563> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.236423, 32.490776, 33.949886>,  <38.449173, 32.436295, 34.046680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.236423, 32.490776, 33.949886>,  <37.881840, 32.581581, 33.788563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.236423, 32.490776, 33.949886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351451, -0.236785, -0.905768,
		0.301118, 0.944668, -0.130117,
		0.886459, -0.227014, 0.403304,
		38.502361, 32.422672, 34.070877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439514, 32.992664, 33.499226>,  <37.881840, 32.581581, 33.788563>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439514, 32.992664, 33.499226> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.564980, 32.633732, 33.623425>,  <38.640259, 32.418373, 33.697945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.564980, 32.633732, 33.623425>,  <38.439514, 32.992664, 33.499226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564980, 32.633732, 33.623425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292194, -0.219918, -0.930730,
		0.903460, 0.382658, 0.193216,
		0.313660, -0.897334, 0.310498,
		38.659077, 32.364532, 33.716576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946125, 32.908176, 33.012760>,  <38.439514, 32.992664, 33.499226>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946125, 32.908176, 33.012760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.916443, 32.548309, 33.184849>,  <38.898632, 32.332390, 33.288101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.916443, 32.548309, 33.184849>,  <38.946125, 32.908176, 33.012760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916443, 32.548309, 33.184849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314499, -0.430506, -0.846023,
		0.946353, 0.072524, 0.314891,
		-0.074205, -0.899669, 0.430219,
		38.894180, 32.278408, 33.313915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.592468, 32.560638, 32.968163>,  <38.946125, 32.908176, 33.012760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.592468, 32.560638, 32.968163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.335194, 32.260517, 33.029282>,  <39.180828, 32.080444, 33.065952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.335194, 32.260517, 33.029282>,  <39.592468, 32.560638, 32.968163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.335194, 32.260517, 33.029282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364776, -0.475698, -0.800406,
		0.673236, -0.459076, 0.579658,
		-0.643189, -0.750308, 0.152797,
		39.142239, 32.035423, 33.075119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028069, 32.060848, 32.966568>,  <39.592468, 32.560638, 32.968163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.028069, 32.060848, 32.966568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.682636, 31.867756, 32.908333>,  <39.475376, 31.751900, 32.873394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.682636, 31.867756, 32.908333>,  <40.028069, 32.060848, 32.966568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.682636, 31.867756, 32.908333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391961, -0.461115, -0.796077,
		0.317160, -0.744543, 0.587423,
		-0.863583, -0.482731, -0.145585,
		39.423561, 31.722937, 32.864658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.235149, 31.381554, 32.850800>,  <40.028069, 32.060848, 32.966568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.235149, 31.381554, 32.850800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.865562, 31.419983, 32.702721>,  <39.643810, 31.443041, 32.613873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.865562, 31.419983, 32.702721>,  <40.235149, 31.381554, 32.850800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865562, 31.419983, 32.702721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279389, -0.491459, -0.824869,
		-0.261184, -0.865585, 0.427253,
		-0.923972, 0.096073, -0.370197,
		39.588371, 31.448805, 32.591663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874413, 30.621548, 32.661755>,  <40.235149, 31.381554, 32.850800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.874413, 30.621548, 32.661755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.732208, 30.933653, 32.455917>,  <39.646885, 31.120916, 32.332417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.732208, 30.933653, 32.455917>,  <39.874413, 30.621548, 32.661755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732208, 30.933653, 32.455917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056177, -0.531726, -0.845052,
		-0.932983, -0.329332, 0.145201,
		-0.355509, 0.780262, -0.514592,
		39.625557, 31.167732, 32.301540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.633545, 30.319134, 32.206375>,  <39.874413, 30.621548, 32.661755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.633545, 30.319134, 32.206375> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.642044, 30.688480, 32.053043>,  <39.647144, 30.910088, 31.961042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.642044, 30.688480, 32.053043>,  <39.633545, 30.319134, 32.206375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.642044, 30.688480, 32.053043> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038248, -0.383891, -0.922586,
		-0.999042, 0.004943, -0.043475,
		0.021250, 0.923365, -0.383334,
		39.648418, 30.965490, 31.938044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313080, 30.210125, 31.572395>,  <39.633545, 30.319134, 32.206375>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.313080, 30.210125, 31.572395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.507412, 30.556015, 31.521452>,  <39.624012, 30.763550, 31.490887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.507412, 30.556015, 31.521452>,  <39.313080, 30.210125, 31.572395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.507412, 30.556015, 31.521452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102391, -0.201009, -0.974223,
		-0.868038, 0.460263, -0.186196,
		0.485826, 0.864727, -0.127357,
		39.653160, 30.815434, 31.483246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215359, 30.456919, 30.878090>,  <39.313080, 30.210125, 31.572395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.215359, 30.456919, 30.878090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.555805, 30.643122, 30.975174>,  <39.760071, 30.754845, 31.033424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.555805, 30.643122, 30.975174>,  <39.215359, 30.456919, 30.878090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555805, 30.643122, 30.975174> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332243, -0.119659, -0.935573,
		-0.406475, 0.876917, -0.256505,
		0.851113, 0.465509, 0.242711,
		39.811138, 30.782774, 31.047987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254128, 30.934868, 30.304182>,  <39.215359, 30.456919, 30.878090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.254128, 30.934868, 30.304182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.604542, 30.909666, 30.495426>,  <39.814793, 30.894545, 30.610172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.604542, 30.909666, 30.495426>,  <39.254128, 30.934868, 30.304182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.604542, 30.909666, 30.495426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466801, -0.138094, -0.873514,
		0.121059, 0.988413, -0.091565,
		0.876038, -0.063004, 0.478109,
		39.867352, 30.890764, 30.638859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.721390, 31.447124, 30.027552>,  <39.254128, 30.934868, 30.304182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.721390, 31.447124, 30.027552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.969635, 31.183332, 30.197222>,  <40.118580, 31.025057, 30.299025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.969635, 31.183332, 30.197222>,  <39.721390, 31.447124, 30.027552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.969635, 31.183332, 30.197222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586989, 0.032069, -0.808960,
		0.519892, 0.751036, 0.407011,
		0.620610, -0.659482, 0.424177,
		40.155819, 30.985487, 30.324474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.396706, 31.726871, 29.936775>,  <39.721390, 31.447124, 30.027552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.396706, 31.726871, 29.936775> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.447357, 31.336126, 30.005713>,  <40.477749, 31.101679, 30.047075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.447357, 31.336126, 30.005713>,  <40.396706, 31.726871, 29.936775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.447357, 31.336126, 30.005713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703741, -0.033974, -0.709644,
		0.699080, 0.211150, 0.683156,
		0.126631, -0.976863, 0.172345,
		40.485348, 31.043068, 30.057417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.142593, 31.627007, 29.952763>,  <40.396706, 31.726871, 29.936775>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.142593, 31.627007, 29.952763> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.979980, 31.267187, 29.888838>,  <40.882412, 31.051294, 29.850483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.979980, 31.267187, 29.888838>,  <41.142593, 31.627007, 29.952763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.979980, 31.267187, 29.888838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660975, -0.168816, -0.731172,
		0.630747, -0.402879, 0.663210,
		-0.406534, -0.899550, -0.159813,
		40.858021, 30.997322, 29.840895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.671066, 31.336828, 29.760780>,  <41.142593, 31.627007, 29.952763>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.671066, 31.336828, 29.760780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.375954, 31.086058, 29.660666>,  <41.198887, 30.935595, 29.600595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.375954, 31.086058, 29.660666>,  <41.671066, 31.336828, 29.760780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.375954, 31.086058, 29.660666> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476907, -0.221672, -0.850542,
		0.477745, -0.746876, 0.462531,
		-0.737780, -0.626927, -0.250288,
		41.154621, 30.897980, 29.585579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.953674, 30.655865, 29.648676>,  <41.671066, 31.336828, 29.760780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.953674, 30.655865, 29.648676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.622135, 30.682398, 29.426464>,  <41.423210, 30.698318, 29.293137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.622135, 30.682398, 29.426464>,  <41.953674, 30.655865, 29.648676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.622135, 30.682398, 29.426464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513603, -0.303545, -0.802541,
		-0.221862, -0.950506, 0.217524,
		-0.828848, 0.066332, -0.555528,
		41.373482, 30.702297, 29.259806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.005283, 30.094393, 29.085093>,  <41.953674, 30.655865, 29.648676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.005283, 30.094393, 29.085093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.734676, 30.365700, 28.970358>,  <41.572311, 30.528484, 28.901516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.734676, 30.365700, 28.970358>,  <42.005283, 30.094393, 29.085093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.734676, 30.365700, 28.970358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461248, 0.086626, -0.883033,
		-0.574084, -0.729692, -0.371453,
		-0.676519, 0.678266, -0.286838,
		41.531719, 30.569180, 28.884306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.776836, 29.665989, 28.425959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.619446, 30.032284, 28.393461>,  <41.525013, 30.252062, 28.373962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.619446, 30.032284, 28.393461>,  <41.776836, 29.665989, 28.425959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.619446, 30.032284, 28.393461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050849, -0.066559, -0.996486,
		-0.917928, -0.396224, -0.020375,
		-0.393476, 0.915738, -0.081244,
		41.501404, 30.307005, 28.369087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.156395, 29.640062, 28.015894>,  <41.776836, 29.665989, 28.425959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.156395, 29.640062, 28.015894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.271992, 30.021923, 27.987261>,  <41.341351, 30.251040, 27.970081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.271992, 30.021923, 27.987261>,  <41.156395, 29.640062, 28.015894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.271992, 30.021923, 27.987261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023138, -0.067784, -0.997432,
		-0.957051, 0.289908, 0.002500,
		0.288994, 0.954651, -0.071580,
		41.358688, 30.308319, 27.965786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.907494, 29.797812, 27.367815>,  <41.156395, 29.640062, 28.015894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.907494, 29.797812, 27.367815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.178516, 30.081223, 27.446716>,  <41.341129, 30.251268, 27.494057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.178516, 30.081223, 27.446716>,  <40.907494, 29.797812, 27.367815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.178516, 30.081223, 27.446716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244494, 0.035960, -0.968984,
		-0.693644, 0.704768, -0.148865,
		0.677555, 0.708526, 0.197255,
		41.381783, 30.293781, 27.505894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.849010, 30.226974, 26.795618>,  <40.907494, 29.797812, 27.367815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.849010, 30.226974, 26.795618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.194149, 30.297802, 26.984991>,  <41.401234, 30.340300, 27.098614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.194149, 30.297802, 26.984991>,  <40.849010, 30.226974, 26.795618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.194149, 30.297802, 26.984991> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500408, -0.167150, -0.849501,
		-0.071288, 0.969900, -0.232833,
		0.862850, 0.177071, 0.473430,
		41.453003, 30.350924, 27.127020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.135559, 30.763020, 26.398724>,  <40.849010, 30.226974, 26.795618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.135559, 30.763020, 26.398724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.442966, 30.575718, 26.573130>,  <41.627411, 30.463337, 26.677774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.442966, 30.575718, 26.573130>,  <41.135559, 30.763020, 26.398724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.442966, 30.575718, 26.573130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368670, -0.232881, -0.899916,
		0.522930, 0.852352, -0.006343,
		0.768523, -0.468255, 0.436017,
		41.673523, 30.435242, 26.703936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.834805, 31.101910, 26.170361>,  <41.135559, 30.763020, 26.398724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.834805, 31.101910, 26.170361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.904869, 30.731781, 26.304878>,  <41.946907, 30.509703, 26.385590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.904869, 30.731781, 26.304878>,  <41.834805, 31.101910, 26.170361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.904869, 30.731781, 26.304878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528738, -0.199728, -0.824951,
		0.830515, 0.322311, 0.454270,
		0.175160, -0.925324, 0.336295,
		41.957417, 30.454184, 26.405767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.575195, 30.955904, 26.004913>,  <41.834805, 31.101910, 26.170361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.575195, 30.955904, 26.004913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.402931, 30.600351, 26.067415>,  <42.299572, 30.387020, 26.104918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.402931, 30.600351, 26.067415>,  <42.575195, 30.955904, 26.004913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.402931, 30.600351, 26.067415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391176, -0.339870, -0.855260,
		0.813333, -0.307206, 0.494079,
		-0.430664, -0.888883, 0.156256,
		42.273731, 30.333687, 26.114292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.187553, 30.529552, 25.932135>,  <42.575195, 30.955904, 26.004913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.187553, 30.529552, 25.932135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.854038, 30.315710, 25.877016>,  <42.653927, 30.187405, 25.843945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.854038, 30.315710, 25.877016>,  <43.187553, 30.529552, 25.932135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.854038, 30.315710, 25.877016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343510, -0.306977, -0.887562,
		0.432198, -0.787375, 0.439598,
		-0.833790, -0.534609, -0.137797,
		42.603901, 30.155327, 25.835676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.450169, 29.836979, 25.861561>,  <43.187553, 30.529552, 25.932135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.450169, 29.836979, 25.861561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.089439, 29.853764, 25.689533>,  <42.873001, 29.863834, 25.586317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.089439, 29.853764, 25.689533>,  <43.450169, 29.836979, 25.861561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.089439, 29.853764, 25.689533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378162, -0.404915, -0.832489,
		-0.209073, -0.913391, 0.349292,
		-0.901821, 0.041962, -0.430067,
		42.818893, 29.866352, 25.560513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.325859, 29.092115, 25.625631>,  <43.450169, 29.836979, 25.861561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.325859, 29.092115, 25.625631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.075356, 29.336229, 25.431578>,  <42.925053, 29.482698, 25.315145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.075356, 29.336229, 25.431578>,  <43.325859, 29.092115, 25.625631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.075356, 29.336229, 25.431578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270642, -0.413391, -0.869403,
		-0.731133, -0.675767, 0.093720,
		-0.626257, 0.610284, -0.485135,
		42.887478, 29.519314, 25.286037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.063206, 28.672270, 25.038328>,  <43.325859, 29.092115, 25.625631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.063206, 28.672270, 25.038328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.953857, 29.027874, 24.891397>,  <42.888248, 29.241236, 24.803238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.953857, 29.027874, 24.891397>,  <43.063206, 28.672270, 25.038328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.953857, 29.027874, 24.891397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275117, -0.293660, -0.915464,
		-0.921727, -0.351317, -0.164305,
		-0.273369, 0.889011, -0.367328,
		42.871845, 29.294577, 24.781199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.818340, 28.568792, 24.316849>,  <43.063206, 28.672270, 25.038328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.818340, 28.568792, 24.316849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.900139, 28.960102, 24.330500>,  <42.949219, 29.194887, 24.338690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.900139, 28.960102, 24.330500>,  <42.818340, 28.568792, 24.316849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.900139, 28.960102, 24.330500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473489, -0.068342, -0.878144,
		-0.856733, 0.195731, -0.477177,
		0.204492, 0.978273, 0.034126,
		42.961487, 29.253584, 24.340738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.691513, 28.805155, 23.677290>,  <42.818340, 28.568792, 24.316849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.691513, 28.805155, 23.677290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.909863, 29.098789, 23.838854>,  <43.040871, 29.274971, 23.935793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.909863, 29.098789, 23.838854>,  <42.691513, 28.805155, 23.677290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.909863, 29.098789, 23.838854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494742, 0.106657, -0.862470,
		-0.676208, 0.670627, -0.304963,
		0.545869, 0.734087, 0.403909,
		43.073624, 29.319016, 23.960026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.607876, 29.317406, 23.224697>,  <42.691513, 28.805155, 23.677290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.607876, 29.317406, 23.224697> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.935913, 29.409395, 23.434290>,  <43.132736, 29.464590, 23.560045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.935913, 29.409395, 23.434290>,  <42.607876, 29.317406, 23.224697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.935913, 29.409395, 23.434290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480473, 0.220596, -0.848812,
		-0.310795, 0.947865, 0.070412,
		0.820093, 0.229975, 0.523984,
		43.181942, 29.478388, 23.591486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.853901, 29.999477, 23.105947>,  <42.607876, 29.317406, 23.224697>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.853901, 29.999477, 23.105947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.186077, 29.815454, 23.231627>,  <43.385384, 29.705040, 23.307034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.186077, 29.815454, 23.231627>,  <42.853901, 29.999477, 23.105947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.186077, 29.815454, 23.231627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441307, 0.198999, -0.875013,
		0.340033, 0.865300, 0.368284,
		0.830437, -0.460059, 0.314197,
		43.435207, 29.677437, 23.325886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.312489, 30.434858, 23.082338>,  <42.853901, 29.999477, 23.105947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.312489, 30.434858, 23.082338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.521976, 30.094612, 23.063702>,  <43.647671, 29.890465, 23.052521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.521976, 30.094612, 23.063702>,  <43.312489, 30.434858, 23.082338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.521976, 30.094612, 23.063702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379768, 0.282077, -0.881028,
		0.762558, 0.443718, 0.470765,
		0.523720, -0.850616, -0.046590,
		43.679092, 29.839428, 23.049725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.977226, 30.615725, 23.021112>,  <43.312489, 30.434858, 23.082338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.977226, 30.615725, 23.021112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.958767, 30.236443, 22.895395>,  <43.947689, 30.008873, 22.819965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.958767, 30.236443, 22.895395>,  <43.977226, 30.615725, 23.021112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.958767, 30.236443, 22.895395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557490, 0.236624, -0.795747,
		0.828900, -0.211938, 0.517695,
		-0.046150, -0.948204, -0.314291,
		43.944923, 29.951981, 22.801107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.551136, 30.658388, 22.569464>,  <43.977226, 30.615725, 23.021112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.551136, 30.658388, 22.569464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.368851, 30.318691, 22.462797>,  <44.259480, 30.114874, 22.398796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.368851, 30.318691, 22.462797>,  <44.551136, 30.658388, 22.569464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.368851, 30.318691, 22.462797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299608, 0.135760, -0.944354,
		0.838187, -0.510254, 0.192571,
		-0.455717, -0.849241, -0.266669,
		44.232136, 30.063919, 22.382797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.005413, 30.217861, 22.215473>,  <44.551136, 30.658388, 22.569464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.005413, 30.217861, 22.215473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.644302, 30.101814, 22.088455>,  <44.427635, 30.032187, 22.012245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.644302, 30.101814, 22.088455>,  <45.005413, 30.217861, 22.215473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.644302, 30.101814, 22.088455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285070, 0.149258, -0.946814,
		0.322082, -0.945280, -0.052043,
		-0.902773, -0.290116, -0.317544,
		44.373470, 30.014780, 21.993193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.098679, 29.883894, 21.562550>,  <45.005413, 30.217861, 22.215473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.098679, 29.883894, 21.562550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.701191, 29.924322, 21.543344>,  <44.462700, 29.948580, 21.531822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.701191, 29.924322, 21.543344>,  <45.098679, 29.883894, 21.562550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.701191, 29.924322, 21.543344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068970, 0.215398, -0.974088,
		-0.088112, -0.971281, -0.221016,
		-0.993720, 0.101072, -0.048010,
		44.403076, 29.954643, 21.528942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.891815, 29.527052, 20.998926>,  <45.098679, 29.883894, 21.562550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.891815, 29.527052, 20.998926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.587536, 29.778807, 21.062439>,  <44.404968, 29.929859, 21.100546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.587536, 29.778807, 21.062439>,  <44.891815, 29.527052, 20.998926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.587536, 29.778807, 21.062439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035562, 0.284656, -0.957970,
		-0.648133, -0.723077, -0.238919,
		-0.760696, 0.629388, 0.158781,
		44.359325, 29.967623, 21.110073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.307644, 29.384953, 20.474567>,  <44.891815, 29.527052, 20.998926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.307644, 29.384953, 20.474567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.293037, 29.764252, 20.600735>,  <44.284275, 29.991831, 20.676435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.293037, 29.764252, 20.600735>,  <44.307644, 29.384953, 20.474567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.293037, 29.764252, 20.600735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103829, 0.310322, -0.944944,
		-0.993925, -0.067252, 0.087125,
		-0.036513, 0.948250, 0.315419,
		44.282085, 30.048727, 20.695360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.688705, 29.796171, 20.285913>,  <44.307644, 29.384953, 20.474567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.688705, 29.796171, 20.285913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.022602, 30.015135, 20.262083>,  <44.222939, 30.146513, 20.247786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.022602, 30.015135, 20.262083>,  <43.688705, 29.796171, 20.285913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.022602, 30.015135, 20.262083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217005, 0.227597, -0.949267,
		-0.506080, 0.805320, 0.308775,
		0.834741, 0.547411, -0.059576,
		44.273026, 30.179358, 20.244209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.408051, 30.379734, 19.882917>,  <43.688705, 29.796171, 20.285913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.408051, 30.379734, 19.882917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.799763, 30.310255, 19.841290>,  <44.034790, 30.268568, 19.816313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.799763, 30.310255, 19.841290>,  <43.408051, 30.379734, 19.882917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.799763, 30.310255, 19.841290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083652, 0.120998, -0.989122,
		0.184400, 0.977338, 0.103961,
		0.979285, -0.173697, -0.104068,
		44.093548, 30.258146, 19.810070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.718925, 30.616837, 19.782589>,  <43.408051, 30.379734, 19.882917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.718925, 30.616837, 19.782589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.389957, 30.506393, 19.583633>,  <42.192577, 30.440128, 19.464260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.389957, 30.506393, 19.583633>,  <42.718925, 30.616837, 19.782589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.389957, 30.506393, 19.583633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563743, 0.278256, 0.777668,
		-0.076318, 0.919967, -0.384495,
		-0.822417, -0.276106, -0.497389,
		42.143234, 30.423561, 19.434416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.177143, 31.058817, 20.034105>,  <42.718925, 30.616837, 19.782589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.177143, 31.058817, 20.034105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.993095, 30.742744, 19.872164>,  <41.882668, 30.553101, 19.775000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.993095, 30.742744, 19.872164>,  <42.177143, 31.058817, 20.034105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.993095, 30.742744, 19.872164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605433, -0.054292, 0.794042,
		-0.649419, 0.610461, -0.453423,
		-0.460115, -0.790183, -0.404852,
		41.855061, 30.505690, 19.750708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.457405, 31.112700, 20.180450>,  <42.177143, 31.058817, 20.034105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.457405, 31.112700, 20.180450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.498070, 30.723682, 20.096716>,  <41.522469, 30.490273, 20.046474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.498070, 30.723682, 20.096716>,  <41.457405, 31.112700, 20.180450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.498070, 30.723682, 20.096716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681431, -0.221384, 0.697597,
		-0.724788, 0.071733, -0.685227,
		0.101658, -0.972545, -0.209337,
		41.528568, 30.431919, 20.033915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.855766, 30.859470, 20.212940>,  <41.457405, 31.112700, 20.180450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.855766, 30.859470, 20.212940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.028339, 30.499943, 20.243887>,  <41.131886, 30.284225, 20.262455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.028339, 30.499943, 20.243887>,  <40.855766, 30.859470, 20.212940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.028339, 30.499943, 20.243887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652889, -0.251903, 0.714339,
		-0.622573, -0.358703, -0.695510,
		0.431437, -0.898820, 0.077365,
		41.157772, 30.230297, 20.267096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300575, 30.339470, 20.267641>,  <40.855766, 30.859470, 20.212940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.300575, 30.339470, 20.267641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.614540, 30.132669, 20.404243>,  <40.802917, 30.008589, 20.486204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.614540, 30.132669, 20.404243>,  <40.300575, 30.339470, 20.267641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.614540, 30.132669, 20.404243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579073, -0.415994, 0.701159,
		-0.220436, -0.748103, -0.625899,
		0.784910, -0.517002, 0.341506,
		40.850014, 29.977570, 20.506695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026054, 29.629513, 20.642796>,  <40.300575, 30.339470, 20.267641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026054, 29.629513, 20.642796> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.398254, 29.684845, 20.778467>,  <40.621574, 29.718044, 20.859869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.398254, 29.684845, 20.778467>,  <40.026054, 29.629513, 20.642796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.398254, 29.684845, 20.778467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262790, -0.392963, 0.881205,
		0.255181, -0.909090, -0.329299,
		0.930497, 0.138330, 0.339177,
		40.677402, 29.726343, 20.880220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273388, 28.936586, 21.070570>,  <40.026054, 29.629513, 20.642796>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.273388, 28.936586, 21.070570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.471413, 29.265682, 21.182289>,  <40.590229, 29.463140, 21.249321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.471413, 29.265682, 21.182289>,  <40.273388, 28.936586, 21.070570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.471413, 29.265682, 21.182289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151366, -0.234869, 0.960169,
		0.855569, -0.517623, 0.008260,
		0.495065, 0.822742, 0.279297,
		40.619934, 29.512505, 21.266079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.621944, 28.676514, 21.698898>,  <40.273388, 28.936586, 21.070570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.621944, 28.676514, 21.698898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.668007, 29.073753, 21.707777>,  <40.695644, 29.312098, 21.713104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.668007, 29.073753, 21.707777>,  <40.621944, 28.676514, 21.698898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.668007, 29.073753, 21.707777> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059585, -0.015399, 0.998105,
		0.991558, -0.116264, 0.057400,
		0.115159, 0.993099, 0.022197,
		40.702557, 29.371683, 21.714436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.119751, 28.837683, 22.262661>,  <40.621944, 28.676514, 21.698898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.119751, 28.837683, 22.262661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.923588, 29.181145, 22.203041>,  <40.805889, 29.387222, 22.167269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.923588, 29.181145, 22.203041>,  <41.119751, 28.837683, 22.262661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.923588, 29.181145, 22.203041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162960, 0.077661, 0.983571,
		0.856124, 0.506636, 0.101841,
		-0.490404, 0.858655, -0.149049,
		40.776466, 29.438742, 22.158327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.337997, 29.209635, 22.817455>,  <41.119751, 28.837683, 22.262661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.337997, 29.209635, 22.817455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.000549, 29.379045, 22.685442>,  <40.798080, 29.480692, 22.606234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.000549, 29.379045, 22.685442>,  <41.337997, 29.209635, 22.817455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.000549, 29.379045, 22.685442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293740, 0.150479, 0.943967,
		0.449460, 0.893297, -0.002540,
		-0.843625, 0.423529, -0.330031,
		40.747463, 29.506104, 22.586433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.323608, 29.793875, 23.184935>,  <41.337997, 29.209635, 22.817455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.323608, 29.793875, 23.184935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.950813, 29.708612, 23.067659>,  <40.727135, 29.657455, 22.997295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.950813, 29.708612, 23.067659>,  <41.323608, 29.793875, 23.184935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.950813, 29.708612, 23.067659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322784, 0.119999, 0.938835,
		-0.164938, 0.969620, -0.180642,
		-0.931990, -0.213158, -0.293186,
		40.671215, 29.644665, 22.979704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.884766, 30.324177, 23.421629>,  <41.323608, 29.793875, 23.184935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.884766, 30.324177, 23.421629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.645508, 30.009939, 23.358299>,  <40.501953, 29.821396, 23.320301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.645508, 30.009939, 23.358299>,  <40.884766, 30.324177, 23.421629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.645508, 30.009939, 23.358299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418143, 0.137405, 0.897929,
		-0.683655, 0.603290, -0.410679,
		-0.598141, -0.785596, -0.158324,
		40.466064, 29.774260, 23.310802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370087, 30.580885, 23.739777>,  <40.884766, 30.324177, 23.421629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.370087, 30.580885, 23.739777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.322983, 30.186377, 23.693474>,  <40.294720, 29.949671, 23.665693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.322983, 30.186377, 23.693474>,  <40.370087, 30.580885, 23.739777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.322983, 30.186377, 23.693474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377852, -0.063295, 0.923700,
		-0.918346, 0.152516, -0.365211,
		-0.117763, -0.986272, -0.115756,
		40.287655, 29.890495, 23.658747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844364, 30.493635, 24.194750>,  <40.370087, 30.580885, 23.739777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.844364, 30.493635, 24.194750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.009224, 30.132694, 24.144318>,  <40.108139, 29.916130, 24.114059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.009224, 30.132694, 24.144318>,  <39.844364, 30.493635, 24.194750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.009224, 30.132694, 24.144318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073869, -0.171017, 0.982495,
		-0.908117, -0.395621, -0.137140,
		0.412149, -0.902351, -0.126079,
		40.132870, 29.861988, 24.106495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.418999, 30.086981, 24.555544>,  <39.844364, 30.493635, 24.194750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.418999, 30.086981, 24.555544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.728153, 29.839077, 24.501085>,  <39.913647, 29.690334, 24.468410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.728153, 29.839077, 24.501085>,  <39.418999, 30.086981, 24.555544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.728153, 29.839077, 24.501085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042657, -0.264825, 0.963352,
		-0.633104, -0.738758, -0.231118,
		0.772891, -0.619761, -0.136149,
		39.960022, 29.653149, 24.460241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230961, 29.458889, 24.878843>,  <39.418999, 30.086981, 24.555544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.230961, 29.458889, 24.878843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.630817, 29.463659, 24.869240>,  <39.870731, 29.466522, 24.863478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.630817, 29.463659, 24.869240>,  <39.230961, 29.458889, 24.878843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.630817, 29.463659, 24.869240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026751, -0.385296, 0.922405,
		0.001753, -0.922716, -0.385477,
		0.999640, 0.011929, -0.024008,
		39.930710, 29.467237, 24.862038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424034, 28.842358, 24.950075>,  <39.230961, 29.458889, 24.878843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.424034, 28.842358, 24.950075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.717144, 29.079931, 25.082916>,  <39.893009, 29.222475, 25.162621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.717144, 29.079931, 25.082916>,  <39.424034, 28.842358, 24.950075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.717144, 29.079931, 25.082916> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126301, -0.360856, 0.924030,
		0.668652, -0.719047, -0.189411,
		0.732771, 0.593932, 0.332103,
		39.936974, 29.258110, 25.182547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742081, 28.406212, 25.290106>,  <39.424034, 28.842358, 24.950075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.742081, 28.406212, 25.290106> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.821224, 28.775824, 25.420963>,  <39.868710, 28.997591, 25.499477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.821224, 28.775824, 25.420963>,  <39.742081, 28.406212, 25.290106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.821224, 28.775824, 25.420963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267368, -0.270215, 0.924932,
		0.943063, -0.270472, 0.193591,
		0.197857, 0.924029, 0.327145,
		39.880581, 29.053032, 25.519106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935188, 28.248016, 25.901041>,  <39.742081, 28.406212, 25.290106>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.935188, 28.248016, 25.901041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.871655, 28.642725, 25.914005>,  <39.833534, 28.879551, 25.921783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.871655, 28.642725, 25.914005>,  <39.935188, 28.248016, 25.901041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871655, 28.642725, 25.914005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526556, -0.112436, 0.842672,
		0.835171, 0.116780, 0.537450,
		-0.158836, 0.986773, 0.032412,
		39.824005, 28.938757, 25.923729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944012, 28.385691, 26.609694>,  <39.935188, 28.248016, 25.901041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.944012, 28.385691, 26.609694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.755196, 28.699688, 26.449211>,  <39.641907, 28.888086, 26.352922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.755196, 28.699688, 26.449211>,  <39.944012, 28.385691, 26.609694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.755196, 28.699688, 26.449211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597103, 0.050123, 0.800598,
		0.648572, 0.617476, 0.445060,
		-0.472042, 0.784992, -0.401205,
		39.613583, 28.935184, 26.328850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.975300, 30.584646, 31.313002> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.660568, 30.690193, 31.089834>,  <40.471729, 30.753521, 30.955933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.660568, 30.690193, 31.089834>,  <40.975300, 30.584646, 31.313002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.660568, 30.690193, 31.089834> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337062, 0.573548, 0.746613,
		0.517001, 0.775511, -0.362345,
		-0.786829, 0.263867, -0.557920,
		40.424519, 30.769354, 30.922459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.816204, 31.401482, 31.473499>,  <40.975300, 30.584646, 31.313002>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.816204, 31.401482, 31.473499> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.492760, 31.215263, 31.329597>,  <40.298695, 31.103533, 31.243258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.492760, 31.215263, 31.329597>,  <40.816204, 31.401482, 31.473499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.492760, 31.215263, 31.329597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565989, 0.448543, 0.691711,
		-0.160659, 0.762939, -0.626189,
		-0.808607, -0.465546, -0.359753,
		40.250179, 31.075600, 31.221672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.243496, 31.909510, 31.228790>,  <40.816204, 31.401482, 31.473499>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.243496, 31.909510, 31.228790> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.065262, 31.563181, 31.319841>,  <39.958321, 31.355385, 31.374472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.065262, 31.563181, 31.319841>,  <40.243496, 31.909510, 31.228790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.065262, 31.563181, 31.319841> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625713, 0.483042, 0.612498,
		-0.640266, 0.130488, -0.756989,
		-0.445581, -0.865819, 0.227627,
		39.931587, 31.303434, 31.388130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.498123, 32.015793, 31.237898>,  <40.243496, 31.909510, 31.228790>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.498123, 32.015793, 31.237898> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.548355, 31.696001, 31.472866>,  <39.578495, 31.504126, 31.613848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.548355, 31.696001, 31.472866>,  <39.498123, 32.015793, 31.237898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548355, 31.696001, 31.472866> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502433, 0.459309, 0.732527,
		-0.855448, -0.387131, -0.344004,
		0.125579, -0.799478, 0.587422,
		39.586029, 31.456158, 31.649094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927761, 32.102459, 31.650986>,  <39.498123, 32.015793, 31.237898>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.927761, 32.102459, 31.650986> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.133945, 31.811640, 31.832401>,  <39.257656, 31.637148, 31.941252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.133945, 31.811640, 31.832401>,  <38.927761, 32.102459, 31.650986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.133945, 31.811640, 31.832401> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381540, 0.279188, 0.881182,
		-0.767288, -0.627256, -0.133489,
		0.515459, -0.727052, 0.453540,
		39.288582, 31.593525, 31.968464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370594, 31.603033, 32.052887>,  <38.927761, 32.102459, 31.650986>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370594, 31.603033, 32.052887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.734646, 31.547796, 32.209141>,  <38.953075, 31.514654, 32.302891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.734646, 31.547796, 32.209141>,  <38.370594, 31.603033, 32.052887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734646, 31.547796, 32.209141> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382069, 0.084975, 0.920219,
		-0.160267, -0.986768, 0.024578,
		0.910131, -0.138091, 0.390632,
		39.007687, 31.506369, 32.326332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288380, 31.110502, 32.576241>,  <38.370594, 31.603033, 32.052887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288380, 31.110502, 32.576241> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.615833, 31.315815, 32.679298>,  <38.812305, 31.439003, 32.741135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.615833, 31.315815, 32.679298>,  <38.288380, 31.110502, 32.576241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.615833, 31.315815, 32.679298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365246, 0.119089, 0.923262,
		0.443213, -0.849916, 0.284965,
		0.818631, 0.513285, 0.257647,
		38.861423, 31.469799, 32.756592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334549, 30.935698, 33.274178>,  <38.288380, 31.110502, 32.576241>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334549, 30.935698, 33.274178> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.560589, 31.260563, 33.216145>,  <38.696213, 31.455482, 33.181324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.560589, 31.260563, 33.216145>,  <38.334549, 30.935698, 33.274178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560589, 31.260563, 33.216145> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126997, 0.259392, 0.957386,
		0.815187, -0.522597, 0.249725,
		0.565104, 0.812163, -0.145085,
		38.730122, 31.504211, 33.172619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700832, 31.116291, 33.912479>,  <38.334549, 30.935698, 33.274178>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.700832, 31.116291, 33.912479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.780777, 31.468149, 33.739838>,  <38.828743, 31.679264, 33.636253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.780777, 31.468149, 33.739838>,  <38.700832, 31.116291, 33.912479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780777, 31.468149, 33.739838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040164, 0.432764, 0.900612,
		0.979000, -0.197336, 0.051164,
		0.199865, 0.879644, -0.431602,
		38.840736, 31.732042, 33.610355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336922, 31.393644, 34.271557>,  <38.700832, 31.116291, 33.912479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.336922, 31.393644, 34.271557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.115807, 31.691042, 34.121017>,  <38.983135, 31.869480, 34.030693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.115807, 31.691042, 34.121017>,  <39.336922, 31.393644, 34.271557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.115807, 31.691042, 34.121017> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013101, 0.443819, 0.896021,
		0.833218, 0.500242, -0.235598,
		-0.552790, 0.743494, -0.376351,
		38.949970, 31.914089, 34.008114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.586090, 31.929634, 34.560093>,  <39.336922, 31.393644, 34.271557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.586090, 31.929634, 34.560093> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.246746, 32.083313, 34.414394>,  <39.043140, 32.175522, 34.326977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.246746, 32.083313, 34.414394>,  <39.586090, 31.929634, 34.560093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246746, 32.083313, 34.414394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212047, 0.383824, 0.898730,
		0.485095, 0.839685, -0.244154,
		-0.848362, 0.384197, -0.364244,
		38.992237, 32.198570, 34.305122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.589081, 32.626587, 34.820320>,  <39.586090, 31.929634, 34.560093>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.589081, 32.626587, 34.820320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.202648, 32.554512, 34.746330>,  <38.970787, 32.511269, 34.701939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.202648, 32.554512, 34.746330>,  <39.589081, 32.626587, 34.820320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202648, 32.554512, 34.746330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225806, 0.241971, 0.943643,
		-0.125273, 0.953406, -0.274451,
		-0.966084, -0.180186, -0.184972,
		38.912823, 32.500458, 34.690838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100559, 33.243019, 34.904861>,  <39.589081, 32.626587, 34.820320>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100559, 33.243019, 34.904861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.864281, 32.925880, 34.964828>,  <38.722515, 32.735596, 35.000809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.864281, 32.925880, 34.964828>,  <39.100559, 33.243019, 34.904861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864281, 32.925880, 34.964828> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268995, 0.368654, 0.889795,
		-0.760737, 0.485272, -0.431034,
		-0.590695, -0.792846, 0.149913,
		38.687073, 32.688026, 35.009804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482674, 33.712887, 35.451736>,  <39.100559, 33.243019, 34.904861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482674, 33.712887, 35.451736> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.338421, 33.947441, 35.161606>,  <39.251869, 34.088173, 34.987526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.338421, 33.947441, 35.161606>,  <39.482674, 33.712887, 35.451736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338421, 33.947441, 35.161606> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420091, 0.592195, 0.687625,
		0.832746, 0.552685, 0.032767,
		-0.360636, 0.586382, -0.725326,
		39.230228, 34.123356, 34.944008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222919, 34.481407, 35.606544>,  <39.482674, 33.712887, 35.451736>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.222919, 34.481407, 35.606544> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.263851, 34.878044, 35.574863>,  <39.288410, 35.116028, 35.555855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.263851, 34.878044, 35.574863>,  <39.222919, 34.481407, 35.606544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263851, 34.878044, 35.574863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121929, -0.066516, -0.990308,
		-0.987250, 0.110990, 0.114097,
		0.102325, 0.991593, -0.079201,
		39.294548, 35.175522, 35.551102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718079, 34.602783, 35.106525>,  <39.222919, 34.481407, 35.606544>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718079, 34.602783, 35.106525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.898762, 34.959465, 35.117973>,  <39.007172, 35.173473, 35.124844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.898762, 34.959465, 35.117973>,  <38.718079, 34.602783, 35.106525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.898762, 34.959465, 35.117973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176740, 0.120881, -0.976806,
		-0.874483, 0.436176, 0.212204,
		0.451711, 0.891705, 0.028619,
		39.034275, 35.226978, 35.126560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293507, 35.092632, 34.831459>,  <38.718079, 34.602783, 35.106525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293507, 35.092632, 34.831459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.672703, 35.208504, 34.778702>,  <38.900223, 35.278027, 34.747047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.672703, 35.208504, 34.778702>,  <38.293507, 35.092632, 34.831459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.672703, 35.208504, 34.778702> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176024, 0.131907, -0.975508,
		-0.265182, 0.947992, 0.176036,
		0.947995, 0.289674, -0.131891,
		38.957100, 35.295406, 34.739136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169769, 35.589943, 34.383625>,  <38.293507, 35.092632, 34.831459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.169769, 35.589943, 34.383625> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.560066, 35.522846, 34.327351>,  <38.794243, 35.482590, 34.293587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.560066, 35.522846, 34.327351>,  <38.169769, 35.589943, 34.383625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560066, 35.522846, 34.327351> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079342, 0.327988, -0.941344,
		0.204044, 0.929671, 0.306722,
		0.975741, -0.167739, -0.140686,
		38.852787, 35.472523, 34.285145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468552, 36.085815, 33.963043>,  <38.169769, 35.589943, 34.383625>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468552, 36.085815, 33.963043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.755253, 35.810863, 33.916119>,  <38.927273, 35.645893, 33.887962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.755253, 35.810863, 33.916119>,  <38.468552, 36.085815, 33.963043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755253, 35.810863, 33.916119> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073737, 0.242001, -0.967470,
		0.693413, 0.684791, 0.224142,
		0.716758, -0.687384, -0.117312,
		38.970280, 35.604649, 33.880924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090427, 36.476669, 33.611942>,  <38.468552, 36.085815, 33.963043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090427, 36.476669, 33.611942> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.107872, 36.081882, 33.549984>,  <39.118340, 35.845009, 33.512810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.107872, 36.081882, 33.549984>,  <39.090427, 36.476669, 33.611942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107872, 36.081882, 33.549984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113423, 0.158929, -0.980753,
		0.992589, 0.025205, 0.118876,
		0.043613, -0.986968, -0.154892,
		39.120956, 35.785793, 33.503517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513573, 36.422775, 33.038689>,  <39.090427, 36.476669, 33.611942>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.513573, 36.422775, 33.038689> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.357521, 36.055313, 33.063572>,  <39.263889, 35.834835, 33.078503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.357521, 36.055313, 33.063572>,  <39.513573, 36.422775, 33.038689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.357521, 36.055313, 33.063572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064389, -0.094621, -0.993429,
		0.918504, -0.383564, 0.096066,
		-0.390133, -0.918654, 0.062212,
		39.240482, 35.779716, 33.082237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.963387, 35.993515, 32.604889>,  <39.513573, 36.422775, 33.038689>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.963387, 35.993515, 32.604889> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.636837, 35.763844, 32.629730>,  <39.440907, 35.626041, 32.644634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.636837, 35.763844, 32.629730>,  <39.963387, 35.993515, 32.604889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.636837, 35.763844, 32.629730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185779, -0.362907, -0.913118,
		0.546829, -0.733907, 0.402937,
		-0.816373, -0.574177, 0.062104,
		39.391926, 35.591591, 32.648361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.124409, 35.324108, 32.323025>,  <39.963387, 35.993515, 32.604889>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.124409, 35.324108, 32.323025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.725563, 35.343853, 32.299934>,  <39.486256, 35.355701, 32.286079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.725563, 35.343853, 32.299934>,  <40.124409, 35.324108, 32.323025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.725563, 35.343853, 32.299934> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038812, -0.322121, -0.945903,
		-0.065289, -0.945411, 0.319274,
		-0.997112, 0.049365, -0.057724,
		39.426430, 35.358662, 32.282616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.947018, 34.973991, 31.847595>,  <40.124409, 35.324108, 32.323025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.947018, 34.973991, 31.847595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.577099, 35.125320, 31.863718>,  <39.355148, 35.216118, 31.873392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.577099, 35.125320, 31.863718>,  <39.947018, 34.973991, 31.847595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.577099, 35.125320, 31.863718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149481, -0.263876, -0.952904,
		-0.349868, -0.887267, 0.300583,
		-0.924796, 0.378322, 0.040307,
		39.299660, 35.238815, 31.875811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.383198, 34.454269, 31.690918>,  <39.947018, 34.973991, 31.847595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.383198, 34.454269, 31.690918> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.231030, 34.810448, 31.591007>,  <39.139729, 35.024155, 31.531061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.231030, 34.810448, 31.591007>,  <39.383198, 34.454269, 31.690918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231030, 34.810448, 31.591007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085926, -0.302944, -0.949126,
		-0.920814, -0.339604, 0.191759,
		-0.380419, 0.890446, -0.249774,
		39.116905, 35.077583, 31.516075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737984, 34.301712, 31.501366>,  <39.383198, 34.454269, 31.690918>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737984, 34.301712, 31.501366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.868553, 34.638527, 31.329594>,  <38.946896, 34.840618, 31.226530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.868553, 34.638527, 31.329594>,  <38.737984, 34.301712, 31.501366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868553, 34.638527, 31.329594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157841, -0.399379, -0.903096,
		-0.931951, 0.362577, 0.002541,
		0.326427, 0.842042, -0.429431,
		38.966480, 34.891140, 31.200764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290218, 34.421818, 30.955637>,  <38.737984, 34.301712, 31.501366>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.290218, 34.421818, 30.955637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.583500, 34.680691, 30.872143>,  <38.759468, 34.836014, 30.822046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.583500, 34.680691, 30.872143>,  <38.290218, 34.421818, 30.955637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.583500, 34.680691, 30.872143> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085443, -0.216845, -0.972459,
		-0.674620, 0.730845, -0.103695,
		0.733203, 0.647181, -0.208734,
		38.803459, 34.874844, 30.809523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076229, 34.675465, 30.260967>,  <38.290218, 34.421818, 30.955637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076229, 34.675465, 30.260967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.469776, 34.740597, 30.290590>,  <38.705906, 34.779675, 30.308363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.469776, 34.740597, 30.290590>,  <38.076229, 34.675465, 30.260967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469776, 34.740597, 30.290590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119660, -0.291374, -0.949096,
		-0.132961, 0.942650, -0.306158,
		0.983871, 0.162828, 0.074056,
		38.764938, 34.789444, 30.312807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726105, 35.368561, 30.031765>,  <38.076229, 34.675465, 30.260967>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.726105, 35.368561, 30.031765> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.418644, 35.597466, 29.917439>,  <37.234169, 35.734810, 29.848843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.418644, 35.597466, 29.917439>,  <37.726105, 35.368561, 30.031765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.418644, 35.597466, 29.917439> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461058, -0.185922, 0.867674,
		0.443398, 0.798717, 0.406755,
		-0.768651, 0.572262, -0.285817,
		37.188049, 35.769146, 29.831694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590805, 35.931980, 30.572666>,  <37.726105, 35.368561, 30.031765>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590805, 35.931980, 30.572666> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.251171, 35.862518, 30.373104>,  <37.047390, 35.820843, 30.253366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.251171, 35.862518, 30.373104>,  <37.590805, 35.931980, 30.572666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251171, 35.862518, 30.373104> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480988, -0.136381, 0.866055,
		-0.218434, 0.975318, 0.032274,
		-0.849080, -0.173653, -0.498906,
		36.996449, 35.810421, 30.223433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.070724, 36.501465, 30.695749>,  <37.590805, 35.931980, 30.572666>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.070724, 36.501465, 30.695749> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.911472, 36.149944, 30.590519>,  <36.815922, 35.939034, 30.527380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.911472, 36.149944, 30.590519>,  <37.070724, 36.501465, 30.695749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911472, 36.149944, 30.590519> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444201, -0.066233, 0.893476,
		-0.802608, 0.472576, -0.363994,
		-0.398127, -0.878798, -0.263078,
		36.792034, 35.886307, 30.511595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441040, 36.475899, 30.986475>,  <37.070724, 36.501465, 30.695749>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441040, 36.475899, 30.986475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.474308, 36.088100, 30.894247>,  <36.494270, 35.855423, 30.838909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.474308, 36.088100, 30.894247>,  <36.441040, 36.475899, 30.986475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474308, 36.088100, 30.894247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603796, -0.233091, 0.762298,
		-0.792789, 0.075819, -0.604763,
		0.083169, -0.969495, -0.230571,
		36.499260, 35.797253, 30.825075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.748989, 36.227497, 30.928715>,  <36.441040, 36.475899, 30.986475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.748989, 36.227497, 30.928715> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.951340, 35.884193, 30.963322>,  <36.072750, 35.678211, 30.984087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.951340, 35.884193, 30.963322>,  <35.748989, 36.227497, 30.928715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951340, 35.884193, 30.963322> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702089, -0.351390, 0.619351,
		-0.501161, -0.374058, -0.780332,
		0.505874, -0.858257, 0.086519,
		36.103104, 35.626717, 30.989277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.200123, 35.803928, 30.804115>,  <35.748989, 36.227497, 30.928715>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.200123, 35.803928, 30.804115> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.491161, 35.615772, 31.003851>,  <35.665783, 35.502876, 31.123692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.491161, 35.615772, 31.003851>,  <35.200123, 35.803928, 30.804115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491161, 35.615772, 31.003851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680822, -0.405791, 0.609767,
		-0.084203, -0.783622, -0.615505,
		0.727593, -0.470393, 0.499338,
		35.709438, 35.474655, 31.153652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960407, 35.089886, 30.840799>,  <35.200123, 35.803928, 30.804115>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960407, 35.089886, 30.840799> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.229336, 35.126301, 31.134655>,  <35.390694, 35.148151, 31.310968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.229336, 35.126301, 31.134655>,  <34.960407, 35.089886, 30.840799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229336, 35.126301, 31.134655> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579087, -0.553520, 0.598560,
		0.461131, -0.827845, -0.319423,
		0.672322, 0.091040, 0.734640,
		35.431034, 35.153614, 31.355047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969700, 34.407925, 31.196604>,  <34.960407, 35.089886, 30.840799>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969700, 34.407925, 31.196604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.130875, 34.673134, 31.448965>,  <35.227581, 34.832260, 31.600382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.130875, 34.673134, 31.448965>,  <34.969700, 34.407925, 31.196604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.130875, 34.673134, 31.448965> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388104, -0.500513, 0.773862,
		0.828865, -0.556674, 0.055647,
		0.402937, 0.663024, 0.630905,
		35.251755, 34.872040, 31.638237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230541, 33.985054, 31.710007>,  <34.969700, 34.407925, 31.196604>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.230541, 33.985054, 31.710007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.228561, 34.337425, 31.899294>,  <35.227375, 34.548847, 32.012867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.228561, 34.337425, 31.899294>,  <35.230541, 33.985054, 31.710007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228561, 34.337425, 31.899294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403452, -0.434755, 0.805117,
		0.914987, -0.186938, 0.357564,
		-0.004946, 0.880933, 0.473216,
		35.227077, 34.601704, 32.041260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514923, 33.835522, 32.328888>,  <35.230541, 33.985054, 31.710007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514923, 33.835522, 32.328888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.285294, 34.159996, 32.373459>,  <35.147518, 34.354683, 32.400200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.285294, 34.159996, 32.373459>,  <35.514923, 33.835522, 32.328888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.285294, 34.159996, 32.373459> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516451, -0.464319, 0.719504,
		0.635390, 0.355501, 0.685492,
		-0.574072, 0.811188, 0.111425,
		35.113071, 34.403351, 32.406887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597130, 34.010742, 33.022732>,  <35.514923, 33.835522, 32.328888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597130, 34.010742, 33.022732> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.255657, 34.176319, 32.896317>,  <35.050774, 34.275665, 32.820465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.255657, 34.176319, 32.896317>,  <35.597130, 34.010742, 33.022732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.255657, 34.176319, 32.896317> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500326, -0.483405, 0.718327,
		0.144567, 0.771347, 0.619778,
		-0.853683, 0.413938, -0.316040,
		34.999554, 34.300499, 32.801506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283142, 34.121235, 33.659542>,  <35.597130, 34.010742, 33.022732>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.283142, 34.121235, 33.659542> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.984779, 34.153347, 33.395065>,  <34.805759, 34.172615, 33.236378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.984779, 34.153347, 33.395065>,  <35.283142, 34.121235, 33.659542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984779, 34.153347, 33.395065> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561654, -0.609400, 0.559622,
		-0.358001, 0.788788, 0.499649,
		-0.745909, 0.080285, -0.661192,
		34.761005, 34.177433, 33.196709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.889957, 36.053341, 26.777544> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540169, 35.991047, 26.593784>,  <38.330296, 35.953671, 26.483528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540169, 35.991047, 26.593784>,  <38.889957, 36.053341, 26.777544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.540169, 35.991047, 26.593784> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479227, 0.424011, 0.768477,
		0.075111, 0.892166, -0.445418,
		-0.874471, -0.155735, -0.459398,
		38.277828, 35.944324, 26.455965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.455505, 36.738731, 26.940298>,  <38.889957, 36.053341, 26.777544>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.455505, 36.738731, 26.940298> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178070, 36.470272, 26.835606>,  <38.011608, 36.309196, 26.772789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178070, 36.470272, 26.835606>,  <38.455505, 36.738731, 26.940298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178070, 36.470272, 26.835606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547641, 0.255199, 0.796845,
		-0.468004, 0.696016, -0.544549,
		-0.693586, -0.671144, -0.261733,
		37.969994, 36.268929, 26.757086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740585, 37.075756, 27.014637>,  <38.455505, 36.738731, 26.940298>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.740585, 37.075756, 27.014637> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716564, 36.677666, 27.045401>,  <37.702152, 36.438812, 27.063858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716564, 36.677666, 27.045401>,  <37.740585, 37.075756, 27.014637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.716564, 36.677666, 27.045401> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446836, 0.095699, 0.889483,
		-0.892598, 0.019053, -0.450450,
		-0.060055, -0.995228, 0.076907,
		37.698547, 36.379097, 27.068472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046867, 36.874554, 27.113396>,  <37.740585, 37.075756, 27.014637>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046867, 36.874554, 27.113396> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263416, 36.565365, 27.245714>,  <37.393345, 36.379852, 27.325106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263416, 36.565365, 27.245714>,  <37.046867, 36.874554, 27.113396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.263416, 36.565365, 27.245714> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524602, -0.003084, 0.851342,
		-0.657045, -0.634431, -0.407173,
		0.541373, -0.772973, 0.330797,
		37.425827, 36.333473, 27.344954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.592041, 36.380306, 27.338295>,  <37.046867, 36.874554, 27.113396>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.592041, 36.380306, 27.338295> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926529, 36.300442, 27.542599>,  <37.127220, 36.252522, 27.665182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926529, 36.300442, 27.542599>,  <36.592041, 36.380306, 27.338295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926529, 36.300442, 27.542599> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535906, -0.099846, 0.838353,
		-0.116402, -0.974761, -0.190501,
		0.836215, -0.199677, 0.510759,
		37.177395, 36.240543, 27.695827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344425, 35.867477, 27.891247>,  <36.592041, 36.380306, 27.338295>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344425, 35.867477, 27.891247> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712788, 35.956005, 28.019587>,  <36.933807, 36.009121, 28.096590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712788, 35.956005, 28.019587>,  <36.344425, 35.867477, 27.891247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.712788, 35.956005, 28.019587> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232104, -0.349920, 0.907570,
		0.313137, -0.910259, -0.270875,
		0.920909, 0.221322, 0.320848,
		36.989059, 36.022404, 28.115841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473476, 35.379486, 28.370295>,  <36.344425, 35.867477, 27.891247>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473476, 35.379486, 28.370295> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736401, 35.671688, 28.444382>,  <36.894154, 35.847008, 28.488834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736401, 35.671688, 28.444382>,  <36.473476, 35.379486, 28.370295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736401, 35.671688, 28.444382> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067905, -0.187363, 0.979941,
		0.750556, -0.656700, -0.073551,
		0.657308, 0.730506, 0.185220,
		36.933594, 35.890839, 28.499949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.086220, 35.025246, 28.730917>,  <36.473476, 35.379486, 28.370295>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.086220, 35.025246, 28.730917> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127121, 35.410522, 28.830357>,  <37.151661, 35.641689, 28.890020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127121, 35.410522, 28.830357>,  <37.086220, 35.025246, 28.730917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127121, 35.410522, 28.830357> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091046, -0.239798, 0.966544,
		0.990583, -0.121466, 0.063175,
		0.102253, 0.963194, 0.248599,
		37.157795, 35.699482, 28.904936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465412, 34.958641, 29.357811>,  <37.086220, 35.025246, 28.730917>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465412, 34.958641, 29.357811> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.315983, 35.329674, 29.355335>,  <37.226326, 35.552292, 29.353849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.315983, 35.329674, 29.355335>,  <37.465412, 34.958641, 29.357811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.315983, 35.329674, 29.355335> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060935, -0.017879, 0.997982,
		0.925598, 0.373194, 0.063201,
		-0.373571, 0.927581, -0.006191,
		37.203911, 35.607948, 29.353477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275715, 34.839672, 29.557806>,  <37.465412, 34.958641, 29.357811>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275715, 34.839672, 29.557806> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605110, 34.720592, 29.750988>,  <38.802746, 34.649143, 29.866898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605110, 34.720592, 29.750988>,  <38.275715, 34.839672, 29.557806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.605110, 34.720592, 29.750988> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458278, -0.152780, -0.875580,
		0.334446, 0.942355, 0.010617,
		0.823485, -0.297700, 0.482957,
		38.852154, 34.631283, 29.895876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.736195, 35.111515, 29.159090>,  <38.275715, 34.839672, 29.557806>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.736195, 35.111515, 29.159090> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.918041, 34.824200, 29.369762>,  <39.027149, 34.651810, 29.496166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.918041, 34.824200, 29.369762>,  <38.736195, 35.111515, 29.159090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918041, 34.824200, 29.369762> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508124, -0.276506, -0.815692,
		0.731530, 0.638444, 0.239274,
		0.454613, -0.718285, 0.526682,
		39.054424, 34.608715, 29.527767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496391, 35.187164, 29.033113>,  <38.736195, 35.111515, 29.159090>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496391, 35.187164, 29.033113> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412621, 34.815876, 29.156111>,  <39.362358, 34.593105, 29.229910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412621, 34.815876, 29.156111>,  <39.496391, 35.187164, 29.033113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.412621, 34.815876, 29.156111> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610431, -0.369770, -0.700460,
		0.763881, 0.041008, 0.644053,
		-0.209427, -0.928218, 0.307493,
		39.349792, 34.537411, 29.248358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.164051, 34.874603, 29.095789>,  <39.496391, 35.187164, 29.033113>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.164051, 34.874603, 29.095789> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.896622, 34.577633, 29.078756>,  <39.736164, 34.399452, 29.068537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.896622, 34.577633, 29.078756>,  <40.164051, 34.874603, 29.095789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.896622, 34.577633, 29.078756> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516376, -0.422285, -0.745004,
		0.535126, -0.520081, 0.665700,
		-0.668577, -0.742423, -0.042582,
		39.696049, 34.354908, 29.065981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.584419, 34.366280, 29.032190>,  <40.164051, 34.874603, 29.095789>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.584419, 34.366280, 29.032190> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.217693, 34.250835, 28.921814>,  <39.997658, 34.181568, 28.855589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.217693, 34.250835, 28.921814>,  <40.584419, 34.366280, 29.032190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.217693, 34.250835, 28.921814> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391483, -0.513615, -0.763506,
		0.078631, -0.808023, 0.583880,
		-0.916820, -0.288615, -0.275942,
		39.942646, 34.164249, 28.839031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.640057, 33.595848, 29.082737>,  <40.584419, 34.366280, 29.032190>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.640057, 33.595848, 29.082737> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.336411, 33.726147, 28.857300>,  <40.154224, 33.804325, 28.722038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.336411, 33.726147, 28.857300>,  <40.640057, 33.595848, 29.082737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336411, 33.726147, 28.857300> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349935, -0.525846, -0.775262,
		-0.548904, -0.785732, 0.285185,
		-0.759111, 0.325748, -0.563594,
		40.108677, 33.823872, 28.688223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.498447, 33.006351, 28.663891>,  <40.640057, 33.595848, 29.082737>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.498447, 33.006351, 28.663891> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.337704, 33.311852, 28.461821>,  <40.241257, 33.495152, 28.340578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.337704, 33.311852, 28.461821>,  <40.498447, 33.006351, 28.663891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.337704, 33.311852, 28.461821> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487523, -0.288544, -0.824053,
		-0.775134, -0.577435, -0.256391,
		-0.401857, 0.763748, -0.505173,
		40.217148, 33.540977, 28.310268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.412468, 32.741890, 27.948465>,  <40.498447, 33.006351, 28.663891>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.412468, 32.741890, 27.948465> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.373737, 33.138699, 27.916151>,  <40.350498, 33.376781, 27.896763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.373737, 33.138699, 27.916151>,  <40.412468, 32.741890, 27.948465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.373737, 33.138699, 27.916151> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432907, -0.031109, -0.900902,
		-0.896223, -0.122205, -0.426439,
		-0.096828, 0.992017, -0.080784,
		40.344688, 33.436302, 27.891916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.410862, 32.755020, 27.340586>,  <40.412468, 32.741890, 27.948465>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.410862, 32.755020, 27.340586> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.490654, 33.126587, 27.465370>,  <40.538528, 33.349529, 27.540241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.490654, 33.126587, 27.465370>,  <40.410862, 32.755020, 27.340586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.490654, 33.126587, 27.465370> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699927, 0.087736, -0.708805,
		-0.685793, 0.359739, -0.632674,
		0.199477, 0.928919, 0.311959,
		40.550495, 33.405262, 27.558958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.367138, 33.200310, 26.746637>,  <40.410862, 32.755020, 27.340586>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.367138, 33.200310, 26.746637> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.606358, 33.343994, 27.033220>,  <40.749889, 33.430202, 27.205170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.606358, 33.343994, 27.033220>,  <40.367138, 33.200310, 26.746637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.606358, 33.343994, 27.033220> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780283, -0.056818, -0.622840,
		-0.183021, 0.931526, -0.314264,
		0.598048, 0.359208, 0.716455,
		40.785770, 33.451756, 27.248158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.829758, 33.770344, 26.399372>,  <40.367138, 33.200310, 26.746637>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.829758, 33.770344, 26.399372> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.018185, 33.640896, 26.727608>,  <41.131241, 33.563229, 26.924549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.018185, 33.640896, 26.727608>,  <40.829758, 33.770344, 26.399372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.018185, 33.640896, 26.727608> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881726, 0.145795, -0.448668,
		0.025560, 0.934887, 0.354023,
		0.471068, -0.323620, 0.820588,
		41.159504, 33.543812, 26.973783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.256100, 34.338680, 26.495090>,  <40.829758, 33.770344, 26.399372>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.256100, 34.338680, 26.495090> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.380890, 34.010513, 26.686752>,  <41.455765, 33.813614, 26.801750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.380890, 34.010513, 26.686752>,  <41.256100, 34.338680, 26.495090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.380890, 34.010513, 26.686752> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860973, 0.030872, -0.507713,
		0.401744, 0.570931, 0.715988,
		0.311973, -0.820417, 0.479154,
		41.474483, 33.764389, 26.830498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.908642, 34.359783, 26.370991>,  <41.256100, 34.338680, 26.495090>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.908642, 34.359783, 26.370991> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.881454, 33.985718, 26.510046>,  <41.865143, 33.761280, 26.593479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.881454, 33.985718, 26.510046>,  <41.908642, 34.359783, 26.370991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.881454, 33.985718, 26.510046> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791126, -0.262813, -0.552312,
		0.607866, 0.237489, 0.757693,
		-0.067964, -0.935162, 0.347639,
		41.861065, 33.705170, 26.614338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.659657, 34.171570, 26.473431>,  <41.908642, 34.359783, 26.370991>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.659657, 34.171570, 26.473431> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.444050, 33.835854, 26.445009>,  <42.314686, 33.634422, 26.427958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.444050, 33.835854, 26.445009>,  <42.659657, 34.171570, 26.473431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.444050, 33.835854, 26.445009> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669061, -0.375384, -0.641439,
		0.511685, -0.393282, 0.763877,
		-0.539013, -0.839296, -0.071051,
		42.282345, 33.584064, 26.423695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.828293, 30.213434, 23.885643> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.994663, 30.573433, 23.937811>,  <37.094486, 30.789433, 23.969110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.994663, 30.573433, 23.937811>,  <36.828293, 30.213434, 23.885643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.994663, 30.573433, 23.937811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293806, -0.002733, 0.955861,
		0.860630, -0.435886, 0.263288,
		0.415927, 0.899998, 0.130418,
		37.119442, 30.843431, 23.976936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119553, 30.108896, 24.415010>,  <36.828293, 30.213434, 23.885643>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119553, 30.108896, 24.415010> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.082977, 30.507015, 24.402225>,  <37.061031, 30.745886, 24.394554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.082977, 30.507015, 24.402225>,  <37.119553, 30.108896, 24.415010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082977, 30.507015, 24.402225> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289091, 0.004182, 0.957292,
		0.952924, 0.096775, 0.287349,
		-0.091441, 0.995297, -0.031962,
		37.055546, 30.805605, 24.392637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188831, 30.332619, 25.090942>,  <37.119553, 30.108896, 24.415010>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188831, 30.332619, 25.090942> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.048893, 30.673634, 24.935617>,  <36.964928, 30.878242, 24.842422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.048893, 30.673634, 24.935617>,  <37.188831, 30.332619, 25.090942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048893, 30.673634, 24.935617> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252391, 0.313403, 0.915466,
		0.902167, 0.418281, 0.105529,
		-0.349849, 0.852537, -0.388312,
		36.943939, 30.929394, 24.819124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466602, 30.966532, 25.424171>,  <37.188831, 30.332619, 25.090942>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.466602, 30.966532, 25.424171> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.112247, 31.074043, 25.272928>,  <36.899635, 31.138550, 25.182182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.112247, 31.074043, 25.272928>,  <37.466602, 30.966532, 25.424171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.112247, 31.074043, 25.272928> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338126, 0.183917, 0.922954,
		0.317612, 0.945479, -0.072048,
		-0.885885, 0.268780, -0.378106,
		36.846481, 31.154676, 25.159496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245567, 31.486839, 25.786182>,  <37.466602, 30.966532, 25.424171>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245567, 31.486839, 25.786182> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.905842, 31.362766, 25.615322>,  <36.702007, 31.288322, 25.512806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.905842, 31.362766, 25.615322>,  <37.245567, 31.486839, 25.786182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.905842, 31.362766, 25.615322> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491300, 0.168430, 0.854550,
		-0.193122, 0.935638, -0.295442,
		-0.849310, -0.310183, -0.427151,
		36.651051, 31.269711, 25.487177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864475, 31.807386, 26.163921>,  <37.245567, 31.486839, 25.786182>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.864475, 31.807386, 26.163921> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.611271, 31.537188, 26.012659>,  <36.459347, 31.375069, 25.921902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.611271, 31.537188, 26.012659>,  <36.864475, 31.807386, 26.163921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611271, 31.537188, 26.012659> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595366, 0.112566, 0.795530,
		-0.494809, 0.728721, -0.473423,
		-0.633011, -0.675495, -0.378157,
		36.421368, 31.334539, 25.899212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128227, 32.130890, 26.166821>,  <36.864475, 31.807386, 26.163921>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128227, 32.130890, 26.166821> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.090569, 31.732780, 26.157230>,  <36.067974, 31.493916, 26.151476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.090569, 31.732780, 26.157230>,  <36.128227, 32.130890, 26.166821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.090569, 31.732780, 26.157230> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660071, 0.044374, 0.749892,
		-0.745281, 0.086422, -0.661126,
		-0.094144, -0.995270, -0.023974,
		36.062325, 31.434200, 26.150038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461655, 31.995453, 26.403481>,  <36.128227, 32.130890, 26.166821>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.461655, 31.995453, 26.403481> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.644188, 31.639780, 26.416817>,  <35.753708, 31.426376, 26.424818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.644188, 31.639780, 26.416817>,  <35.461655, 31.995453, 26.403481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644188, 31.639780, 26.416817> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475481, -0.212005, 0.853799,
		-0.752115, -0.405472, -0.519534,
		0.456335, -0.889183, 0.033342,
		35.781090, 31.373026, 26.426819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979931, 31.660521, 26.562826>,  <35.461655, 31.995453, 26.403481>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.979931, 31.660521, 26.562826> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.300701, 31.450855, 26.677483>,  <35.493164, 31.325056, 26.746277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.300701, 31.450855, 26.677483>,  <34.979931, 31.660521, 26.562826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300701, 31.450855, 26.677483> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408772, -0.131518, 0.903110,
		-0.435679, -0.841401, -0.319732,
		0.801928, -0.524164, 0.286642,
		35.541279, 31.293606, 26.763475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706078, 31.072342, 26.882311>,  <34.979931, 31.660521, 26.562826>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706078, 31.072342, 26.882311> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.080330, 31.107624, 27.019020>,  <35.304882, 31.128794, 27.101046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.080330, 31.107624, 27.019020>,  <34.706078, 31.072342, 26.882311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.080330, 31.107624, 27.019020> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340305, -0.031659, 0.939782,
		0.093715, -0.995599, 0.000395,
		0.935633, 0.088206, 0.341774,
		35.361019, 31.134087, 27.121552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744789, 30.562862, 27.470131>,  <34.706078, 31.072342, 26.882311>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744789, 30.562862, 27.470131> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.075867, 30.782621, 27.515881>,  <35.274513, 30.914476, 27.543331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.075867, 30.782621, 27.515881>,  <34.744789, 30.562862, 27.470131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075867, 30.782621, 27.515881> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061687, -0.291650, 0.954534,
		0.557776, -0.783009, -0.275288,
		0.827696, 0.549398, 0.114374,
		35.324177, 30.947441, 27.550192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300850, 30.150475, 27.735237>,  <34.744789, 30.562862, 27.470131>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300850, 30.150475, 27.735237> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.341591, 30.535036, 27.837477>,  <35.366035, 30.765772, 27.898821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.341591, 30.535036, 27.837477>,  <35.300850, 30.150475, 27.735237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.341591, 30.535036, 27.837477> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043491, -0.252386, 0.966649,
		0.993848, -0.109570, 0.016107,
		0.101851, 0.961403, 0.255599,
		35.372147, 30.823458, 27.914156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693516, 30.089216, 28.361343>,  <35.300850, 30.150475, 27.735237>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693516, 30.089216, 28.361343> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.569988, 30.469645, 28.365288>,  <35.495872, 30.697901, 28.367655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.569988, 30.469645, 28.365288>,  <35.693516, 30.089216, 28.361343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569988, 30.469645, 28.365288> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029567, -0.019960, 0.999364,
		0.950661, 0.308332, 0.034284,
		-0.308820, 0.951069, 0.009859,
		35.477341, 30.754965, 28.368246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084064, 30.468340, 28.848167>,  <35.693516, 30.089216, 28.361343>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084064, 30.468340, 28.848167> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.734833, 30.658113, 28.803181>,  <35.525295, 30.771978, 28.776188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.734833, 30.658113, 28.803181>,  <36.084064, 30.468340, 28.848167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734833, 30.658113, 28.803181> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045262, 0.150806, 0.987527,
		0.485476, 0.867278, -0.110191,
		-0.873078, 0.474433, -0.112467,
		35.472908, 30.800444, 28.769440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762436, 30.586535, 29.143942>,  <36.084064, 30.468340, 28.848167>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762436, 30.586535, 29.143942> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.952106, 30.259510, 29.274635>,  <37.065907, 30.063295, 29.353052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.952106, 30.259510, 29.274635>,  <36.762436, 30.586535, 29.143942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.952106, 30.259510, 29.274635> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341286, -0.171410, -0.924198,
		0.811594, 0.549739, 0.197744,
		0.474172, -0.817561, 0.326734,
		37.094357, 30.014242, 29.372656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.351734, 30.640429, 28.789965>,  <36.762436, 30.586535, 29.143942>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.351734, 30.640429, 28.789965> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.379982, 30.256187, 28.897484>,  <37.396931, 30.025642, 28.961996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.379982, 30.256187, 28.897484>,  <37.351734, 30.640429, 28.789965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.379982, 30.256187, 28.897484> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638246, -0.163578, -0.752252,
		0.766587, 0.224680, 0.601551,
		0.070616, -0.960604, 0.268798,
		37.401165, 29.968006, 28.978123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134167, 30.400766, 28.898495>,  <37.351734, 30.640429, 28.789965>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134167, 30.400766, 28.898495> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.946186, 30.056593, 28.819708>,  <37.833397, 29.850088, 28.772436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.946186, 30.056593, 28.819708>,  <38.134167, 30.400766, 28.898495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946186, 30.056593, 28.819708> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723465, -0.247624, -0.644423,
		0.505711, -0.445347, 0.738866,
		-0.469953, -0.860435, -0.196967,
		37.805199, 29.798462, 28.760618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688362, 29.872938, 28.727247>,  <38.134167, 30.400766, 28.898495>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.688362, 29.872938, 28.727247> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.341225, 29.708580, 28.615528>,  <38.132942, 29.609964, 28.548496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.341225, 29.708580, 28.615528>,  <38.688362, 29.872938, 28.727247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.341225, 29.708580, 28.615528> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478099, -0.537758, -0.694433,
		0.135147, -0.736193, 0.663141,
		-0.867846, -0.410897, -0.279297,
		38.080872, 29.585310, 28.531738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721279, 29.197386, 28.603004>,  <38.688362, 29.872938, 28.727247>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.721279, 29.197386, 28.603004> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.408447, 29.282362, 28.368664>,  <38.220749, 29.333347, 28.228060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.408447, 29.282362, 28.368664>,  <38.721279, 29.197386, 28.603004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408447, 29.282362, 28.368664> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487584, -0.376866, -0.787550,
		-0.388092, -0.901578, 0.191158,
		-0.782078, 0.212436, -0.585853,
		38.173824, 29.346094, 28.192907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688770, 28.606106, 28.136642>,  <38.721279, 29.197386, 28.603004>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.688770, 28.606106, 28.136642> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.471558, 28.888832, 27.955303>,  <38.341228, 29.058468, 27.846498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.471558, 28.888832, 27.955303>,  <38.688770, 28.606106, 28.136642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.471558, 28.888832, 27.955303> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310386, -0.332695, -0.890491,
		-0.780240, -0.624281, -0.038721,
		-0.543034, 0.706815, -0.453350,
		38.308647, 29.100876, 27.819298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400421, 28.227648, 27.585205>,  <38.688770, 28.606106, 28.136642>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400421, 28.227648, 27.585205> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.385342, 28.617435, 27.496672>,  <38.376293, 28.851309, 27.443552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.385342, 28.617435, 27.496672>,  <38.400421, 28.227648, 27.585205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385342, 28.617435, 27.496672> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327306, -0.197233, -0.924105,
		-0.944166, -0.107281, -0.311514,
		-0.037698, 0.974469, -0.221335,
		38.374031, 28.909777, 27.430271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253891, 28.265751, 26.880850>,  <38.400421, 28.227648, 27.585205>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253891, 28.265751, 26.880850> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.406231, 28.631407, 26.936415>,  <38.497635, 28.850801, 26.969753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.406231, 28.631407, 26.936415>,  <38.253891, 28.265751, 26.880850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.406231, 28.631407, 26.936415> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566246, -0.111819, -0.816617,
		-0.730970, 0.389670, -0.560215,
		0.380853, 0.914141, 0.138912,
		38.520489, 28.905649, 26.978088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300114, 28.594139, 26.246979>,  <38.253891, 28.265751, 26.880850>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300114, 28.594139, 26.246979> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.536327, 28.826874, 26.470671>,  <38.678055, 28.966515, 26.604885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.536327, 28.826874, 26.470671>,  <38.300114, 28.594139, 26.246979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.536327, 28.826874, 26.470671> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564553, 0.197331, -0.801462,
		-0.576672, 0.789004, -0.211947,
		0.590533, 0.581836, 0.559230,
		38.713486, 29.001425, 26.638439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399544, 29.177214, 25.836718>,  <38.300114, 28.594139, 26.246979>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399544, 29.177214, 25.836718> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.693966, 29.152205, 26.106327>,  <38.870621, 29.137199, 26.268093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.693966, 29.152205, 26.106327>,  <38.399544, 29.177214, 25.836718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.693966, 29.152205, 26.106327> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666508, 0.240902, -0.705502,
		-0.118264, 0.968533, 0.218990,
		0.736058, -0.062523, 0.674025,
		38.914783, 29.133448, 26.308535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847931, 29.818655, 25.729740>,  <38.399544, 29.177214, 25.836718>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847931, 29.818655, 25.729740> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.078884, 29.555902, 25.923706>,  <39.217457, 29.398251, 26.040085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.078884, 29.555902, 25.923706>,  <38.847931, 29.818655, 25.729740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.078884, 29.555902, 25.923706> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743805, 0.178237, -0.644194,
		0.336729, 0.732626, 0.591501,
		0.577380, -0.656880, 0.484913,
		39.252098, 29.358839, 26.069180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.535809, 30.200541, 25.765247>,  <38.847931, 29.818655, 25.729740>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.535809, 30.200541, 25.765247> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.587875, 29.804667, 25.789179>,  <39.619114, 29.567142, 25.803537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.587875, 29.804667, 25.789179>,  <39.535809, 30.200541, 25.765247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.587875, 29.804667, 25.789179> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850821, 0.080511, -0.519250,
		0.509077, 0.118494, 0.852526,
		0.130166, -0.989685, 0.059831,
		39.626926, 29.507761, 25.807129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.240437, 30.239195, 25.952427>,  <39.535809, 30.200541, 25.765247>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.240437, 30.239195, 25.952427> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.116470, 29.893732, 25.793406>,  <40.042091, 29.686455, 25.697992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.116470, 29.893732, 25.793406>,  <40.240437, 30.239195, 25.952427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.116470, 29.893732, 25.793406> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803286, -0.014166, -0.595425,
		0.508613, -0.503878, 0.698155,
		-0.309911, -0.863659, -0.397553,
		40.023499, 29.634634, 25.674139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.900536, 29.754034, 25.861092>,  <40.240437, 30.239195, 25.952427>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.900536, 29.754034, 25.861092> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.615929, 29.631786, 25.608000>,  <40.445164, 29.558437, 25.456144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.615929, 29.631786, 25.608000>,  <40.900536, 29.754034, 25.861092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.615929, 29.631786, 25.608000> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688968, -0.126451, -0.713676,
		0.138105, -0.943719, 0.300534,
		-0.711513, -0.305620, -0.632728,
		40.402473, 29.540100, 25.418180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.501019, 29.447388, 25.723034>,  <40.900536, 29.754034, 25.861092>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.501019, 29.447388, 25.723034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.845135, 29.650242, 25.743843>,  <42.051605, 29.771954, 25.756329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.845135, 29.650242, 25.743843>,  <41.501019, 29.447388, 25.723034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.845135, 29.650242, 25.743843> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050966, -0.187090, 0.981020,
		0.507243, -0.841315, -0.186799,
		0.860295, 0.507136, 0.052021,
		42.103222, 29.802383, 25.759449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.737377, 29.177265, 26.324383>,  <41.501019, 29.447388, 25.723034>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.737377, 29.177265, 26.324383> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.909977, 29.531164, 26.253920>,  <42.013538, 29.743504, 26.211641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.909977, 29.531164, 26.253920>,  <41.737377, 29.177265, 26.324383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.909977, 29.531164, 26.253920> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009291, 0.199619, 0.979830,
		0.902065, -0.421161, 0.094356,
		0.431501, 0.884746, -0.176157,
		42.039429, 29.796589, 26.201073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.175915, 29.283787, 26.873304>,  <41.737377, 29.177265, 26.324383>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.175915, 29.283787, 26.873304> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.115135, 29.648951, 26.721773>,  <42.078667, 29.868050, 26.630856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.115135, 29.648951, 26.721773>,  <42.175915, 29.283787, 26.873304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.115135, 29.648951, 26.721773> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336342, 0.312646, 0.888328,
		0.929401, 0.262393, 0.259545,
		-0.151945, 0.912909, -0.378827,
		42.069553, 29.922823, 26.608126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.600639, 29.767036, 27.328217>,  <42.175915, 29.283787, 26.873304>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.600639, 29.767036, 27.328217> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.295162, 29.945301, 27.141386>,  <42.111877, 30.052259, 27.029287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.295162, 29.945301, 27.141386>,  <42.600639, 29.767036, 27.328217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.295162, 29.945301, 27.141386> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306015, 0.387155, 0.869750,
		0.568444, 0.807155, -0.159289,
		-0.763693, 0.445659, -0.467077,
		42.066055, 30.078999, 27.001263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.654503, 30.499439, 27.611263>,  <42.600639, 29.767036, 27.328217>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.654503, 30.499439, 27.611263> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.288399, 30.463470, 27.454182>,  <42.068737, 30.441889, 27.359932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.288399, 30.463470, 27.454182>,  <42.654503, 30.499439, 27.611263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.288399, 30.463470, 27.454182> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399173, 0.334145, 0.853819,
		0.054446, 0.938222, -0.341722,
		-0.915258, -0.089920, -0.392706,
		42.013821, 30.436495, 27.336370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.375267, 31.107906, 27.725224>,  <42.654503, 30.499439, 27.611263>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.375267, 31.107906, 27.725224> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.059990, 30.868614, 27.667440>,  <41.870823, 30.725039, 27.632771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.059990, 30.868614, 27.667440>,  <42.375267, 31.107906, 27.725224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.059990, 30.868614, 27.667440> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348790, 0.240832, 0.905729,
		-0.507043, 0.764278, -0.398479,
		-0.788196, -0.598230, -0.144460,
		41.823532, 30.689146, 27.624102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.859051, 31.477131, 27.979248>,  <42.375267, 31.107906, 27.725224>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.859051, 31.477131, 27.979248> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.703247, 31.109657, 27.953026>,  <41.609764, 30.889174, 27.937292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.703247, 31.109657, 27.953026>,  <41.859051, 31.477131, 27.979248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.703247, 31.109657, 27.953026> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479959, 0.141719, 0.865769,
		-0.786079, 0.368689, -0.496132,
		-0.389511, -0.918686, -0.065554,
		41.586395, 30.834051, 27.933359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.185856, 31.566626, 28.287746>,  <41.859051, 31.477131, 27.979248>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.185856, 31.566626, 28.287746> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.279263, 31.177687, 28.286745>,  <41.335308, 30.944323, 28.286144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.279263, 31.177687, 28.286745>,  <41.185856, 31.566626, 28.287746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.279263, 31.177687, 28.286745> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503076, -0.123021, 0.855442,
		-0.832096, -0.198505, -0.517893,
		0.233521, -0.972349, -0.002502,
		41.349319, 30.885983, 28.285994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.606441, 31.321636, 28.449619>,  <41.185856, 31.566626, 28.287746>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.606441, 31.321636, 28.449619> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.874779, 31.045063, 28.556873>,  <41.035782, 30.879120, 28.621225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.874779, 31.045063, 28.556873>,  <40.606441, 31.321636, 28.449619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.874779, 31.045063, 28.556873> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557271, -0.231439, 0.797424,
		-0.489308, -0.684366, -0.540574,
		0.670840, -0.691432, 0.268133,
		41.076031, 30.837633, 28.637314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.249084, 30.743723, 28.579899>,  <40.606441, 31.321636, 28.449619>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.249084, 30.743723, 28.579899> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.580036, 30.699621, 28.800184>,  <40.778606, 30.673161, 28.932356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.580036, 30.699621, 28.800184>,  <40.249084, 30.743723, 28.579899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.580036, 30.699621, 28.800184> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557842, -0.047450, 0.828589,
		-0.065240, -0.992768, -0.100775,
		0.827379, -0.110273, 0.550713,
		40.828251, 30.666546, 28.965399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.063732, 30.318110, 29.132250>,  <40.249084, 30.743723, 28.579899>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.063732, 30.318110, 29.132250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.410248, 30.468321, 29.264021>,  <40.618156, 30.558447, 29.343082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.410248, 30.468321, 29.264021>,  <40.063732, 30.318110, 29.132250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.410248, 30.468321, 29.264021> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315446, -0.100110, 0.943648,
		0.387346, -0.921388, 0.031735,
		0.866289, 0.375529, 0.329426,
		40.670135, 30.580978, 29.362848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.263485, 29.858912, 29.609173>,  <40.063732, 30.318110, 29.132250>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.263485, 29.858912, 29.609173> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.448227, 30.207794, 29.673597>,  <40.559071, 30.417124, 29.712252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.448227, 30.207794, 29.673597>,  <40.263485, 29.858912, 29.609173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.448227, 30.207794, 29.673597> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310297, -0.011219, 0.950573,
		0.830906, -0.489004, 0.265462,
		0.461856, 0.872209, 0.161059,
		40.586784, 30.469458, 29.721914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.451698, 29.775944, 30.218420>,  <40.263485, 29.858912, 29.609173>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.451698, 29.775944, 30.218420> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.482723, 30.170959, 30.163641>,  <40.501339, 30.407969, 30.130774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.482723, 30.170959, 30.163641>,  <40.451698, 29.775944, 30.218420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.482723, 30.170959, 30.163641> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371997, 0.156107, 0.915013,
		0.924988, -0.020027, 0.379469,
		0.077562, 0.987537, -0.136947,
		40.505993, 30.467220, 30.122557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.918308, 30.002169, 30.799126>,  <40.451698, 29.775944, 30.218420>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.918308, 30.002169, 30.799126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.694954, 30.303692, 30.660574>,  <40.560940, 30.484606, 30.577444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.694954, 30.303692, 30.660574>,  <40.918308, 30.002169, 30.799126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.694954, 30.303692, 30.660574> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270196, 0.229511, 0.935050,
		0.784344, 0.615712, 0.075519,
		-0.558389, 0.753806, -0.346378,
		40.527435, 30.529833, 30.556660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.185623, 33.565838, 26.470982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.845089, 33.422050, 26.318142>,  <42.640766, 33.335777, 26.226439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.845089, 33.422050, 26.318142>,  <43.185623, 33.565838, 26.470982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.845089, 33.422050, 26.318142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510389, -0.399075, -0.761736,
		0.121338, -0.843515, 0.523220,
		-0.851340, -0.359473, -0.382098,
		42.589687, 33.314209, 26.203512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.344181, 32.845718, 26.161255>,  <43.185623, 33.565838, 26.470982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.344181, 32.845718, 26.161255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.008392, 33.003918, 26.012196>,  <42.806919, 33.098839, 25.922760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.008392, 33.003918, 26.012196>,  <43.344181, 32.845718, 26.161255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.008392, 33.003918, 26.012196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242425, -0.341170, -0.908203,
		-0.486333, -0.852749, 0.190522,
		-0.839470, 0.395502, -0.372650,
		42.756550, 33.122570, 25.900400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.880684, 32.284401, 25.873283>,  <43.344181, 32.845718, 26.161255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.880684, 32.284401, 25.873283> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.775352, 32.620907, 25.684423>,  <42.712154, 32.822811, 25.571108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.775352, 32.620907, 25.684423>,  <42.880684, 32.284401, 25.873283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.775352, 32.620907, 25.684423> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033965, -0.497206, -0.866968,
		-0.964107, -0.212264, 0.159504,
		-0.263332, 0.841267, -0.472150,
		42.696354, 32.873287, 25.542778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.362030, 32.111645, 25.392115>,  <42.880684, 32.284401, 25.873283>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.362030, 32.111645, 25.392115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.505566, 32.463970, 25.268570>,  <42.591686, 32.675365, 25.194443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.505566, 32.463970, 25.268570>,  <42.362030, 32.111645, 25.392115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.505566, 32.463970, 25.268570> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040161, -0.345164, -0.937683,
		-0.932533, 0.324077, -0.159235,
		0.358844, 0.880815, -0.308861,
		42.613220, 32.728214, 25.175911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.898273, 32.417015, 24.796513>,  <42.362030, 32.111645, 25.392115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.898273, 32.417015, 24.796513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.255703, 32.595409, 24.776045>,  <42.470161, 32.702446, 24.763765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.255703, 32.595409, 24.776045>,  <41.898273, 32.417015, 24.796513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.255703, 32.595409, 24.776045> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001745, -0.110529, -0.993871,
		-0.448908, 0.888189, -0.097988,
		0.893576, 0.445986, -0.051167,
		42.523777, 32.729206, 24.760695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.883102, 32.733143, 24.127087>,  <41.898273, 32.417015, 24.796513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.883102, 32.733143, 24.127087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.266739, 32.771175, 24.233749>,  <42.496922, 32.793995, 24.297747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.266739, 32.771175, 24.233749>,  <41.883102, 32.733143, 24.127087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.266739, 32.771175, 24.233749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277092, -0.122218, -0.953039,
		-0.058025, 0.987938, -0.143564,
		0.959090, 0.095080, 0.266658,
		42.554466, 32.799698, 24.313747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.116333, 33.375736, 23.901867>,  <41.883102, 32.733143, 24.127087>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.116333, 33.375736, 23.901867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.418285, 33.116276, 23.940660>,  <42.599457, 32.960602, 23.963936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.418285, 33.116276, 23.940660>,  <42.116333, 33.375736, 23.901867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.418285, 33.116276, 23.940660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325891, 0.242646, -0.913738,
		0.569162, 0.721372, 0.394559,
		0.754883, -0.648649, 0.096984,
		42.644749, 32.921680, 23.969755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.779312, 33.707920, 23.622602>,  <42.116333, 33.375736, 23.901867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.779312, 33.707920, 23.622602> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.869659, 33.318256, 23.622709>,  <42.923870, 33.084457, 23.622772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.869659, 33.318256, 23.622709>,  <42.779312, 33.707920, 23.622602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.869659, 33.318256, 23.622709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386546, 0.089375, -0.917930,
		0.894184, 0.207436, 0.396744,
		0.225871, -0.974157, 0.000266,
		42.937420, 33.026009, 23.622789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.419193, 33.705173, 23.277245>,  <42.779312, 33.707920, 23.622602>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.419193, 33.705173, 23.277245> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.294907, 33.325069, 23.268612>,  <43.220333, 33.097008, 23.263432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.294907, 33.325069, 23.268612>,  <43.419193, 33.705173, 23.277245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.294907, 33.325069, 23.268612> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431667, -0.120847, -0.893901,
		0.846828, -0.287067, 0.447744,
		-0.310718, -0.950257, -0.021581,
		43.201691, 33.039993, 23.262138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.935101, 33.352169, 23.123941>,  <43.419193, 33.705173, 23.277245>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.935101, 33.352169, 23.123941> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.663582, 33.069469, 23.044191>,  <43.500671, 32.899849, 22.996342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.663582, 33.069469, 23.044191>,  <43.935101, 33.352169, 23.123941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.663582, 33.069469, 23.044191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490682, -0.234538, -0.839180,
		0.546326, -0.667459, 0.505991,
		-0.678792, -0.706746, -0.199376,
		43.459946, 32.857445, 22.984379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.298306, 32.762119, 22.897160>,  <43.935101, 33.352169, 23.123941>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.298306, 32.762119, 22.897160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.936554, 32.699680, 22.738297>,  <43.719501, 32.662216, 22.642979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.936554, 32.699680, 22.738297>,  <44.298306, 32.762119, 22.897160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.936554, 32.699680, 22.738297> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416542, -0.120762, -0.901060,
		0.092694, -0.980331, 0.174236,
		-0.904379, -0.156100, -0.397155,
		43.665241, 32.652851, 22.619150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.453976, 32.279438, 22.322056>,  <44.298306, 32.762119, 22.897160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.453976, 32.279438, 22.322056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.091896, 32.429596, 22.242359>,  <43.874649, 32.519691, 22.194542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.091896, 32.429596, 22.242359>,  <44.453976, 32.279438, 22.322056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.091896, 32.429596, 22.242359> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257391, 0.111195, -0.959888,
		-0.338181, -0.920171, -0.197276,
		-0.905198, 0.375393, -0.199240,
		43.820335, 32.542213, 22.182587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.186405, 31.884295, 21.682339>,  <44.453976, 32.279438, 22.322056>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.186405, 31.884295, 21.682339> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.983734, 32.226536, 21.724710>,  <43.862133, 32.431881, 21.750134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.983734, 32.226536, 21.724710>,  <44.186405, 31.884295, 21.682339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.983734, 32.226536, 21.724710> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008838, 0.117707, -0.993009,
		-0.862093, -0.504068, -0.052077,
		-0.506674, 0.855605, 0.105929,
		43.831734, 32.483219, 21.756489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.728687, 31.823698, 21.216627>,  <44.186405, 31.884295, 21.682339>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.728687, 31.823698, 21.216627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.725803, 32.221046, 21.262522>,  <43.724072, 32.459454, 21.290058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.725803, 32.221046, 21.262522>,  <43.728687, 31.823698, 21.216627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.725803, 32.221046, 21.262522> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070271, 0.113955, -0.990998,
		-0.997502, -0.015207, 0.068984,
		-0.007209, 0.993369, 0.114739,
		43.723640, 32.519058, 21.296944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.052948, 31.261553, 21.072485>,  <43.728687, 31.823698, 21.216627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.052948, 31.261553, 21.072485> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.099571, 30.885244, 20.945135>,  <44.127544, 30.659460, 20.868725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.099571, 30.885244, 20.945135>,  <44.052948, 31.261553, 21.072485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.099571, 30.885244, 20.945135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203424, -0.336379, 0.919493,
		-0.972128, -0.042408, -0.230583,
		0.116557, -0.940771, -0.318377,
		44.134537, 30.603012, 20.849623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.438107, 30.862305, 21.290846>,  <44.052948, 31.261553, 21.072485>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.438107, 30.862305, 21.290846> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.725582, 30.589693, 21.235697>,  <43.898067, 30.426126, 21.202608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.725582, 30.589693, 21.235697>,  <43.438107, 30.862305, 21.290846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.725582, 30.589693, 21.235697> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279992, -0.465144, 0.839789,
		-0.636469, -0.564943, -0.525116,
		0.718687, -0.681528, -0.137871,
		43.941189, 30.385235, 21.194336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.161255, 30.183441, 21.505751>,  <43.438107, 30.862305, 21.290846>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.161255, 30.183441, 21.505751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.551430, 30.095459, 21.500937>,  <43.785534, 30.042669, 21.498047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.551430, 30.095459, 21.500937>,  <43.161255, 30.183441, 21.505751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.551430, 30.095459, 21.500937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095463, -0.471327, 0.876777,
		-0.198524, -0.854091, -0.480746,
		0.975436, -0.219954, -0.012036,
		43.844059, 30.029472, 21.497326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.213356, 29.522991, 21.646860>,  <43.161255, 30.183441, 21.505751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.213356, 29.522991, 21.646860> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.572918, 29.667253, 21.746382>,  <43.788654, 29.753811, 21.806095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.572918, 29.667253, 21.746382>,  <43.213356, 29.522991, 21.646860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.572918, 29.667253, 21.746382> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079453, -0.424263, 0.902046,
		0.430886, -0.830619, -0.352716,
		0.898902, 0.360655, 0.248804,
		43.842590, 29.775450, 21.821024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.497570, 29.041029, 21.986404>,  <43.213356, 29.522991, 21.646860>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.497570, 29.041029, 21.986404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.723919, 29.343924, 22.116871>,  <43.859726, 29.525661, 22.195150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.723919, 29.343924, 22.116871>,  <43.497570, 29.041029, 21.986404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.723919, 29.343924, 22.116871> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213426, -0.247579, 0.945068,
		0.796393, -0.604396, 0.021517,
		0.565869, 0.757238, 0.326164,
		43.893681, 29.571095, 22.214720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.991989, 28.727310, 22.445946>,  <43.497570, 29.041029, 21.986404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.991989, 28.727310, 22.445946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.955208, 29.109823, 22.556990>,  <43.933140, 29.339331, 22.623617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.955208, 29.109823, 22.556990>,  <43.991989, 28.727310, 22.445946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.955208, 29.109823, 22.556990> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105863, -0.286602, 0.952183,
		0.990120, 0.058169, 0.127590,
		-0.091955, 0.956283, 0.277612,
		43.927620, 29.396708, 22.640274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.272137, 28.694014, 23.104362>,  <43.991989, 28.727310, 22.445946>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.272137, 28.694014, 23.104362> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.084831, 29.046577, 23.079578>,  <43.972446, 29.258116, 23.064707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.084831, 29.046577, 23.079578>,  <44.272137, 28.694014, 23.104362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.084831, 29.046577, 23.079578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140552, -0.005072, 0.990060,
		0.872336, 0.472323, 0.126260,
		-0.468268, 0.881411, -0.061962,
		43.944351, 29.311001, 23.060989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.492813, 29.074648, 23.755356>,  <44.272137, 28.694014, 23.104362>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.492813, 29.074648, 23.755356> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.172375, 29.265371, 23.610638>,  <43.980110, 29.379805, 23.523808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.172375, 29.265371, 23.610638>,  <44.492813, 29.074648, 23.755356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.172375, 29.265371, 23.610638> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414637, -0.006173, 0.909966,
		0.431646, 0.878986, 0.202647,
		-0.801098, 0.476808, -0.361795,
		43.932045, 29.408413, 23.502100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.278748, 29.724627, 24.253653>,  <44.492813, 29.074648, 23.755356>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.278748, 29.724627, 24.253653> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.940289, 29.681356, 24.044910>,  <43.737213, 29.655394, 23.919664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.940289, 29.681356, 24.044910>,  <44.278748, 29.724627, 24.253653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.940289, 29.681356, 24.044910> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525851, 0.010173, 0.850516,
		-0.086697, 0.994080, -0.065493,
		-0.846146, -0.108177, -0.521856,
		43.686443, 29.648903, 23.888353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.856167, 30.218969, 24.410492>,  <44.278748, 29.724627, 24.253653>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.856167, 30.218969, 24.410492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.608551, 29.944954, 24.256866>,  <43.459980, 29.780544, 24.164690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.608551, 29.944954, 24.256866>,  <43.856167, 30.218969, 24.410492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.608551, 29.944954, 24.256866> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704286, 0.267838, 0.657452,
		-0.347514, 0.677483, -0.648267,
		-0.619043, -0.685040, -0.384065,
		43.422836, 29.739443, 24.141647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.149864, 30.542553, 24.276407>,  <43.856167, 30.218969, 24.410492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.149864, 30.542553, 24.276407> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.103638, 30.148916, 24.330387>,  <43.075901, 29.912735, 24.362774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.103638, 30.148916, 24.330387>,  <43.149864, 30.542553, 24.276407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.103638, 30.148916, 24.330387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705335, 0.176962, 0.686430,
		-0.699390, -0.015854, -0.714564,
		-0.115568, -0.984090, 0.134948,
		43.068966, 29.853689, 24.370872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.472511, 30.492275, 24.461025>,  <43.149864, 30.542553, 24.276407>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.472511, 30.492275, 24.461025> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.632847, 30.136112, 24.547281>,  <42.729050, 29.922415, 24.599035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.632847, 30.136112, 24.547281>,  <42.472511, 30.492275, 24.461025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.632847, 30.136112, 24.547281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503348, -0.017373, 0.863909,
		-0.765486, -0.454832, -0.455148,
		0.400841, -0.890408, 0.215640,
		42.753098, 29.868990, 24.611973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.957951, 30.251032, 24.692036>,  <42.472511, 30.492275, 24.461025>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.957951, 30.251032, 24.692036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.247852, 30.029961, 24.856609>,  <42.421795, 29.897318, 24.955353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.247852, 30.029961, 24.856609>,  <41.957951, 30.251032, 24.692036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.247852, 30.029961, 24.856609> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416780, 0.123841, 0.900532,
		-0.548658, -0.824141, -0.140591,
		0.724754, -0.552680, 0.411432,
		42.465279, 29.864157, 24.980040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.596607, 29.921341, 25.154715>,  <41.957951, 30.251032, 24.692036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.596607, 29.921341, 25.154715> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.976448, 29.887669, 25.275492>,  <42.204353, 29.867464, 25.347958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.976448, 29.887669, 25.275492>,  <41.596607, 29.921341, 25.154715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.976448, 29.887669, 25.275492> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291604, 0.116121, 0.949465,
		-0.114992, -0.989661, 0.085720,
		0.949602, -0.084184, 0.301942,
		42.261330, 29.862413, 25.366074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.203518, 29.565046, 24.802649>,  <41.596607, 29.921341, 25.154715>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.203518, 29.565046, 24.802649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.806858, 29.517672, 24.823048>,  <40.568863, 29.489246, 24.835287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.806858, 29.517672, 24.823048>,  <41.203518, 29.565046, 24.802649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.806858, 29.517672, 24.823048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060806, 0.080725, -0.994880,
		0.113722, -0.989674, -0.087253,
		-0.991650, -0.118446, 0.050998,
		40.509361, 29.482141, 24.838346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.030502, 28.984392, 24.302086>,  <41.203518, 29.565046, 24.802649>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.030502, 28.984392, 24.302086> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.702236, 29.207802, 24.350355>,  <40.505276, 29.341848, 24.379316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.702236, 29.207802, 24.350355>,  <41.030502, 28.984392, 24.302086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.702236, 29.207802, 24.350355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062494, 0.122188, -0.990538,
		-0.567985, -0.820439, -0.065371,
		-0.820663, 0.558525, 0.120674,
		40.456036, 29.375359, 24.386557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.614689, 28.634670, 23.923136>,  <41.030502, 28.984392, 24.302086>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.614689, 28.634670, 23.923136> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.493240, 29.013212, 23.967360>,  <40.420372, 29.240337, 23.993895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.493240, 29.013212, 23.967360>,  <40.614689, 28.634670, 23.923136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.493240, 29.013212, 23.967360> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054760, 0.133180, -0.989578,
		-0.951218, -0.294401, -0.092259,
		-0.303619, 0.946357, 0.110561,
		40.402153, 29.297119, 24.000528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.147915, 28.596714, 23.408869>,  <40.614689, 28.634670, 23.923136>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.147915, 28.596714, 23.408869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.183155, 28.985693, 23.495207>,  <40.204300, 29.219080, 23.547010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.183155, 28.985693, 23.495207>,  <40.147915, 28.596714, 23.408869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.183155, 28.985693, 23.495207> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101463, 0.206801, -0.973108,
		-0.990931, 0.107629, -0.080449,
		0.088098, 0.972445, 0.215845,
		40.209583, 29.277426, 23.559961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641171, 28.851730, 23.008430>,  <40.147915, 28.596714, 23.408869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.641171, 28.851730, 23.008430> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.884888, 29.154396, 23.103281>,  <40.031116, 29.335995, 23.160191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.884888, 29.154396, 23.103281>,  <39.641171, 28.851730, 23.008430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.884888, 29.154396, 23.103281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142832, 0.189423, -0.971451,
		-0.779978, 0.625764, 0.007338,
		0.609289, 0.756663, 0.237125,
		40.067673, 29.381395, 23.174419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446846, 29.330936, 22.562931>,  <39.641171, 28.851730, 23.008430>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.446846, 29.330936, 22.562931> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.807701, 29.448523, 22.689255>,  <40.024216, 29.519073, 22.765049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.807701, 29.448523, 22.689255>,  <39.446846, 29.330936, 22.562931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.807701, 29.448523, 22.689255> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266679, 0.195478, -0.943753,
		-0.339164, 0.935614, 0.097953,
		0.902136, 0.293965, 0.315808,
		40.078342, 29.536713, 22.783997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.572651, 29.993065, 22.291084>,  <39.446846, 29.330936, 22.562931>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.572651, 29.993065, 22.291084> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.935162, 29.848091, 22.378077>,  <40.152668, 29.761106, 22.430271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.935162, 29.848091, 22.378077>,  <39.572651, 29.993065, 22.291084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.935162, 29.848091, 22.378077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340464, 0.321048, -0.883749,
		0.250478, 0.874969, 0.414355,
		0.906281, -0.362433, 0.217480,
		40.207047, 29.739361, 22.443321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326359, 30.721571, 22.063177>,  <39.572651, 29.993065, 22.291084>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.326359, 30.721571, 22.063177> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.024696, 30.876604, 21.851126>,  <38.843700, 30.969624, 21.723896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.024696, 30.876604, 21.851126>,  <39.326359, 30.721571, 22.063177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024696, 30.876604, 21.851126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564012, 0.031214, 0.825176,
		0.336370, 0.921307, 0.195060,
		-0.754152, 0.387581, -0.530128,
		38.798450, 30.992878, 21.692087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.202408, 31.396393, 22.290796>,  <39.326359, 30.721571, 22.063177>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.202408, 31.396393, 22.290796> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.882942, 31.209896, 22.138611>,  <38.691261, 31.097998, 22.047300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.882942, 31.209896, 22.138611>,  <39.202408, 31.396393, 22.290796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882942, 31.209896, 22.138611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490167, 0.137255, 0.860754,
		-0.349098, 0.873945, -0.338156,
		-0.798666, -0.466241, -0.380464,
		38.643341, 31.070024, 22.024471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.658215, 31.812466, 22.451744>,  <39.202408, 31.396393, 22.290796>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.658215, 31.812466, 22.451744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.436089, 31.507248, 22.319443>,  <38.302814, 31.324118, 22.240063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.436089, 31.507248, 22.319443>,  <38.658215, 31.812466, 22.451744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.436089, 31.507248, 22.319443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673509, 0.179315, 0.717100,
		-0.487869, 0.620977, -0.613491,
		-0.555311, -0.763042, -0.330751,
		38.269497, 31.278336, 22.220217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981682, 32.061871, 22.485987>,  <38.658215, 31.812466, 22.451744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.981682, 32.061871, 22.485987> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.972733, 31.663242, 22.517830>,  <37.967361, 31.424065, 22.536936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.972733, 31.663242, 22.517830>,  <37.981682, 32.061871, 22.485987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972733, 31.663242, 22.517830> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564142, 0.078323, 0.821955,
		-0.825375, -0.026521, -0.563962,
		-0.022372, -0.996575, 0.079608,
		37.966022, 31.364269, 22.541712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.341187, 31.883522, 22.775913>,  <37.981682, 32.061871, 22.485987>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.341187, 31.883522, 22.775913> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.541492, 31.540958, 22.826197>,  <37.661674, 31.335421, 22.856367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.541492, 31.540958, 22.826197>,  <37.341187, 31.883522, 22.775913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541492, 31.540958, 22.826197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576976, -0.221996, 0.786013,
		-0.645241, -0.466137, -0.605294,
		0.500762, -0.856408, 0.125709,
		37.691723, 31.284037, 22.863909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804630, 31.496548, 22.853556>,  <37.341187, 31.883522, 22.775913>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804630, 31.496548, 22.853556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.129631, 31.344782, 23.030588>,  <37.324631, 31.253723, 23.136808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.129631, 31.344782, 23.030588>,  <36.804630, 31.496548, 22.853556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.129631, 31.344782, 23.030588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525474, -0.147950, 0.837847,
		-0.252412, -0.913321, -0.319583,
		0.812505, -0.379415, 0.442582,
		37.373383, 31.230957, 23.163363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634571, 30.831646, 23.261999>,  <36.804630, 31.496548, 22.853556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634571, 30.831646, 23.261999> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.959839, 30.982296, 23.439493>,  <37.154999, 31.072687, 23.545990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.959839, 30.982296, 23.439493>,  <36.634571, 30.831646, 23.261999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959839, 30.982296, 23.439493> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476328, -0.007459, 0.879236,
		0.334454, -0.926335, 0.173333,
		0.813174, 0.376628, 0.443734,
		37.203793, 31.095284, 23.572613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<41.819138, 35.452419, 20.880058> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.921894, 35.079689, 20.982590>,  <41.983547, 34.856052, 21.044109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.921894, 35.079689, 20.982590>,  <41.819138, 35.452419, 20.880058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.921894, 35.079689, 20.982590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634335, 0.037524, 0.772147,
		-0.729125, -0.360959, -0.581451,
		0.256895, -0.931827, 0.256328,
		41.998962, 34.800140, 21.059488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.170986, 35.053810, 20.965549>,  <41.819138, 35.452419, 20.880058>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.170986, 35.053810, 20.965549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.478176, 34.908237, 21.176365>,  <41.662491, 34.820892, 21.302855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.478176, 34.908237, 21.176365>,  <41.170986, 35.053810, 20.965549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.478176, 34.908237, 21.176365> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608371, -0.157221, 0.777925,
		-0.200255, -0.918059, -0.342150,
		0.767973, -0.363937, 0.527036,
		41.708569, 34.799057, 21.334476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.864803, 34.512642, 21.195013>,  <41.170986, 35.053810, 20.965549>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.864803, 34.512642, 21.195013> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.179932, 34.598705, 21.425852>,  <41.369011, 34.650345, 21.564356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.179932, 34.598705, 21.425852>,  <40.864803, 34.512642, 21.195013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.179932, 34.598705, 21.425852> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588875, -0.011377, 0.808144,
		0.180447, -0.976512, 0.117740,
		0.787823, 0.215162, 0.577096,
		41.416279, 34.663254, 21.598980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.879799, 34.021473, 21.676050>,  <40.864803, 34.512642, 21.195013>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.879799, 34.021473, 21.676050> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.104134, 34.310165, 21.838318>,  <41.238735, 34.483379, 21.935678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.104134, 34.310165, 21.838318>,  <40.879799, 34.021473, 21.676050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.104134, 34.310165, 21.838318> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527441, -0.066223, 0.847007,
		0.638174, -0.689000, 0.343530,
		0.560838, 0.721729, 0.405669,
		41.272385, 34.526684, 21.960018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.978004, 33.844971, 22.407927>,  <40.879799, 34.021473, 21.676050>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.978004, 33.844971, 22.407927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.052898, 34.237694, 22.395252>,  <41.097836, 34.473328, 22.387648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.052898, 34.237694, 22.395252>,  <40.978004, 33.844971, 22.407927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.052898, 34.237694, 22.395252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380920, 0.102300, 0.918931,
		0.905452, -0.159988, 0.393142,
		0.187236, 0.981804, -0.031685,
		41.109070, 34.532234, 22.385746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.184620, 33.946926, 23.111755>,  <40.978004, 33.844971, 22.407927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.184620, 33.946926, 23.111755> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.083771, 34.301071, 22.955513>,  <41.023262, 34.513557, 22.861769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.083771, 34.301071, 22.955513>,  <41.184620, 33.946926, 23.111755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.083771, 34.301071, 22.955513> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334793, 0.298911, 0.893625,
		0.907936, 0.356076, 0.221049,
		-0.252124, 0.885360, -0.390604,
		41.008133, 34.566681, 22.838331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.377647, 34.455593, 23.623901>,  <41.184620, 33.946926, 23.111755>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.377647, 34.455593, 23.623901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.083611, 34.591244, 23.389080>,  <40.907188, 34.672634, 23.248188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.083611, 34.591244, 23.389080>,  <41.377647, 34.455593, 23.623901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.083611, 34.591244, 23.389080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474396, 0.361312, 0.802747,
		0.484339, 0.868590, -0.104720,
		-0.735095, 0.339123, -0.587053,
		40.863083, 34.692982, 23.212965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.268326, 35.020428, 23.914904>,  <41.377647, 34.455593, 23.623901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.268326, 35.020428, 23.914904> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.932079, 34.957161, 23.707695>,  <40.730331, 34.919201, 23.583370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.932079, 34.957161, 23.707695>,  <41.268326, 35.020428, 23.914904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.932079, 34.957161, 23.707695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539236, 0.334277, 0.772970,
		0.050902, 0.929107, -0.366290,
		-0.840615, -0.158172, -0.518024,
		40.679893, 34.909710, 23.552288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.930096, 35.671139, 23.862503>,  <41.268326, 35.020428, 23.914904>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.930096, 35.671139, 23.862503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.648090, 35.392494, 23.809286>,  <40.478889, 35.225307, 23.777355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.648090, 35.392494, 23.809286>,  <40.930096, 35.671139, 23.862503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.648090, 35.392494, 23.809286> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596135, 0.480473, 0.643248,
		-0.384168, 0.532807, -0.754010,
		-0.705009, -0.696608, -0.133042,
		40.436588, 35.183514, 23.769373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.299763, 36.085140, 23.934286>,  <40.930096, 35.671139, 23.862503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.299763, 36.085140, 23.934286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.169369, 35.707397, 23.951794>,  <40.091133, 35.480751, 23.962299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.169369, 35.707397, 23.951794>,  <40.299763, 36.085140, 23.934286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.169369, 35.707397, 23.951794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736573, 0.282740, 0.614425,
		-0.592614, 0.168055, -0.787760,
		-0.325989, -0.944360, 0.043771,
		40.071571, 35.424091, 23.964926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.656933, 36.044430, 23.615589>,  <40.299763, 36.085140, 23.934286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.656933, 36.044430, 23.615589> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.667107, 35.736042, 23.870134>,  <39.673210, 35.551010, 24.022861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.667107, 35.736042, 23.870134>,  <39.656933, 36.044430, 23.615589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.667107, 35.736042, 23.870134> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784614, 0.379061, 0.490605,
		-0.619462, -0.511781, -0.595271,
		0.025438, -0.770970, 0.636364,
		39.674740, 35.504753, 24.061043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976948, 35.743591, 23.652100>,  <39.656933, 36.044430, 23.615589>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976948, 35.743591, 23.652100> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.158333, 35.609344, 23.982367>,  <39.267166, 35.528797, 24.180527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.158333, 35.609344, 23.982367>,  <38.976948, 35.743591, 23.652100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.158333, 35.609344, 23.982367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839313, 0.150884, 0.522291,
		-0.299869, -0.929837, -0.213265,
		0.453467, -0.335615, 0.825670,
		39.294373, 35.508659, 24.230068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.488556, 35.214413, 23.304811>,  <38.976948, 35.743591, 23.652100>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.488556, 35.214413, 23.304811> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.154549, 35.053131, 23.155056>,  <37.954144, 34.956360, 23.065203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.154549, 35.053131, 23.155056>,  <38.488556, 35.214413, 23.304811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.154549, 35.053131, 23.155056> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530695, -0.410541, -0.741498,
		0.145274, -0.817852, 0.556789,
		-0.835020, -0.403206, -0.374389,
		37.904041, 34.932171, 23.042740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777161, 34.711464, 22.881599>,  <38.488556, 35.214413, 23.304811>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.777161, 34.711464, 22.881599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.404427, 34.764565, 22.746510>,  <38.180786, 34.796425, 22.665457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.404427, 34.764565, 22.746510>,  <38.777161, 34.711464, 22.881599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.404427, 34.764565, 22.746510> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270494, -0.366289, -0.890318,
		-0.241890, -0.920984, 0.305415,
		-0.931838, 0.132746, -0.337722,
		38.124874, 34.804390, 22.645193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517563, 34.084923, 22.567360>,  <38.777161, 34.711464, 22.881599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517563, 34.084923, 22.567360> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.319557, 34.397583, 22.415581>,  <38.200752, 34.585178, 22.324514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.319557, 34.397583, 22.415581>,  <38.517563, 34.084923, 22.567360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.319557, 34.397583, 22.415581> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273612, -0.274256, -0.921911,
		-0.824678, -0.560184, -0.078107,
		-0.495018, 0.781651, -0.379447,
		38.171051, 34.632076, 22.301746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246300, 33.856422, 21.958363>,  <38.517563, 34.084923, 22.567360>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246300, 33.856422, 21.958363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.199665, 34.250828, 21.910715>,  <38.171684, 34.487469, 21.882128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.199665, 34.250828, 21.910715>,  <38.246300, 33.856422, 21.958363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.199665, 34.250828, 21.910715> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275188, -0.083170, -0.957786,
		-0.954295, -0.144443, -0.261642,
		-0.116585, 0.986012, -0.119118,
		38.164688, 34.546631, 21.874979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692333, 33.994431, 21.391273>,  <38.246300, 33.856422, 21.958363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692333, 33.994431, 21.391273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.934795, 34.309093, 21.438164>,  <38.080273, 34.497890, 21.466297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.934795, 34.309093, 21.438164>,  <37.692333, 33.994431, 21.391273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934795, 34.309093, 21.438164> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225499, -0.028641, -0.973822,
		-0.762708, 0.616724, -0.194752,
		0.606157, 0.786659, 0.117225,
		38.116642, 34.545090, 21.473331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625656, 34.385052, 20.762743>,  <37.692333, 33.994431, 21.391273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.625656, 34.385052, 20.762743> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.981644, 34.509991, 20.895647>,  <38.195236, 34.584953, 20.975389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.981644, 34.509991, 20.895647>,  <37.625656, 34.385052, 20.762743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.981644, 34.509991, 20.895647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378423, -0.099281, -0.920293,
		-0.254460, 0.944767, -0.206556,
		0.889969, 0.312343, 0.332259,
		38.248634, 34.603695, 20.995325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.816799, 34.682529, 20.179285>,  <37.625656, 34.385052, 20.762743>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.816799, 34.682529, 20.179285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.127110, 34.628315, 20.425798>,  <38.313297, 34.595787, 20.573706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.127110, 34.628315, 20.425798>,  <37.816799, 34.682529, 20.179285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.127110, 34.628315, 20.425798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558767, -0.306216, -0.770721,
		0.293176, 0.942264, -0.161822,
		0.775775, -0.135536, 0.616281,
		38.359840, 34.587654, 20.610683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387177, 35.131218, 19.849997>,  <37.816799, 34.682529, 20.179285>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.387177, 35.131218, 19.849997> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.526127, 34.840549, 20.087074>,  <38.609497, 34.666149, 20.229321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.526127, 34.840549, 20.087074>,  <38.387177, 35.131218, 19.849997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526127, 34.840549, 20.087074> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561171, -0.345288, -0.752239,
		0.751277, 0.593912, 0.287839,
		0.347376, -0.726667, 0.592693,
		38.630341, 34.622551, 20.264883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063751, 35.132591, 19.769808>,  <38.387177, 35.131218, 19.849997>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.063751, 35.132591, 19.769808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.006321, 34.764053, 19.914309>,  <38.971863, 34.542931, 20.001009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.006321, 34.764053, 19.914309>,  <39.063751, 35.132591, 19.769808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.006321, 34.764053, 19.914309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656960, -0.361735, -0.661477,
		0.740128, 0.142357, 0.657225,
		-0.143575, -0.921348, 0.361253,
		38.963249, 34.487648, 20.022684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660881, 34.872398, 19.796841>,  <39.063751, 35.132591, 19.769808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.660881, 34.872398, 19.796841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.439667, 34.539352, 19.808893>,  <39.306938, 34.339527, 19.816124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.439667, 34.539352, 19.808893>,  <39.660881, 34.872398, 19.796841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.439667, 34.539352, 19.808893> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655539, -0.457171, -0.601052,
		0.514217, -0.312652, 0.798642,
		-0.553036, -0.832612, 0.030130,
		39.273754, 34.289570, 19.817932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136612, 34.310524, 19.918142>,  <39.660881, 34.872398, 19.796841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.136612, 34.310524, 19.918142> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.802429, 34.148102, 19.770020>,  <39.601921, 34.050648, 19.681145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.802429, 34.148102, 19.770020>,  <40.136612, 34.310524, 19.918142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.802429, 34.148102, 19.770020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526831, -0.400015, -0.749958,
		0.156398, -0.821648, 0.548119,
		-0.835457, -0.406058, -0.370308,
		39.551792, 34.026283, 19.658928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.328716, 33.664845, 19.729053>,  <40.136612, 34.310524, 19.918142>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.328716, 33.664845, 19.729053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.994007, 33.731037, 19.520275>,  <39.793182, 33.770752, 19.395008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.994007, 33.731037, 19.520275>,  <40.328716, 33.664845, 19.729053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.994007, 33.731037, 19.520275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414023, -0.432589, -0.800906,
		-0.358326, -0.886274, 0.293464,
		-0.836772, 0.165485, -0.521946,
		39.742977, 33.780682, 19.363691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285183, 33.087833, 19.379126>,  <40.328716, 33.664845, 19.729053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.285183, 33.087833, 19.379126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.039982, 33.328041, 19.173758>,  <39.892860, 33.472164, 19.050537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.039982, 33.328041, 19.173758>,  <40.285183, 33.087833, 19.379126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039982, 33.328041, 19.173758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282249, -0.440503, -0.852228,
		-0.737942, -0.667333, 0.100535,
		-0.613006, 0.600520, -0.513420,
		39.856079, 33.508198, 19.019732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.810337, 32.581459, 18.920273>,  <40.285183, 33.087833, 19.379126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.810337, 32.581459, 18.920273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.851646, 32.954735, 18.782579>,  <39.876431, 33.178699, 18.699965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.851646, 32.954735, 18.782579>,  <39.810337, 32.581459, 18.920273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.851646, 32.954735, 18.782579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265006, -0.359389, -0.894769,
		-0.958700, 0.001183, -0.284416,
		0.103274, 0.933187, -0.344233,
		39.882629, 33.234692, 18.679310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971031, 32.451508, 18.884455>,  <39.810337, 32.581459, 18.920273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971031, 32.451508, 18.884455> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.243572, 32.158890, 18.874609>,  <39.407097, 31.983320, 18.868702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.243572, 32.158890, 18.874609>,  <38.971031, 32.451508, 18.884455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.243572, 32.158890, 18.874609> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317962, -0.326103, 0.890257,
		-0.659287, -0.598751, -0.454794,
		0.681352, -0.731542, -0.024615,
		39.447979, 31.939426, 18.867224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537136, 31.858149, 18.860004>,  <38.971031, 32.451508, 18.884455>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.537136, 31.858149, 18.860004> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.895412, 31.760622, 19.008751>,  <39.110378, 31.702106, 19.098000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.895412, 31.760622, 19.008751>,  <38.537136, 31.858149, 18.860004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.895412, 31.760622, 19.008751> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438410, -0.344390, 0.830176,
		-0.074343, -0.906614, -0.415359,
		0.895695, -0.243816, 0.371866,
		39.164120, 31.687477, 19.120310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389774, 31.284883, 19.126671>,  <38.537136, 31.858149, 18.860004>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389774, 31.284883, 19.126671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.731167, 31.369465, 19.317188>,  <38.936005, 31.420214, 19.431498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.731167, 31.369465, 19.317188>,  <38.389774, 31.284883, 19.126671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731167, 31.369465, 19.317188> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336282, -0.474732, 0.813353,
		0.398096, -0.854352, -0.334069,
		0.853483, 0.211452, 0.476293,
		38.987213, 31.432899, 19.460075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378277, 30.787897, 19.630131>,  <38.389774, 31.284883, 19.126671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378277, 30.787897, 19.630131> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.668152, 31.024246, 19.771946>,  <38.842079, 31.166056, 19.857035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.668152, 31.024246, 19.771946>,  <38.378277, 30.787897, 19.630131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.668152, 31.024246, 19.771946> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268144, -0.232145, 0.934991,
		0.634764, -0.772644, -0.009794,
		0.724689, 0.590872, 0.354537,
		38.885559, 31.201508, 19.878307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.813629, 30.355755, 20.139484>,  <38.378277, 30.787897, 19.630131>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.813629, 30.355755, 20.139484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.881184, 30.740166, 20.227036>,  <38.921719, 30.970812, 20.279566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.881184, 30.740166, 20.227036>,  <38.813629, 30.355755, 20.139484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881184, 30.740166, 20.227036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181510, -0.187946, 0.965262,
		0.968778, -0.202750, 0.142693,
		0.168889, 0.961025, 0.218879,
		38.931850, 31.028473, 20.292700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.304218, 30.345562, 20.732283>,  <38.813629, 30.355755, 20.139484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.304218, 30.345562, 20.732283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.125298, 30.703314, 20.732298>,  <39.017944, 30.917965, 20.732307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.125298, 30.703314, 20.732298>,  <39.304218, 30.345562, 20.732283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125298, 30.703314, 20.732298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067840, -0.033970, 0.997118,
		0.891805, 0.446013, 0.075870,
		-0.447304, 0.894382, 0.000037,
		38.991108, 30.971628, 20.732309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596195, 30.604626, 21.383253>,  <39.304218, 30.345562, 20.732283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.596195, 30.604626, 21.383253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.264126, 30.810329, 21.297136>,  <39.064884, 30.933752, 21.245466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.264126, 30.810329, 21.297136>,  <39.596195, 30.604626, 21.383253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.264126, 30.810329, 21.297136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258097, -0.012219, 0.966042,
		0.494167, 0.857546, 0.142873,
		-0.830171, 0.514261, -0.215292,
		39.015076, 30.964607, 21.232548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.159584, 30.555290, 21.984552>,  <39.596195, 30.604626, 21.383253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.159584, 30.555290, 21.984552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.373917, 30.222843, 22.044046>,  <40.502518, 30.023375, 22.079742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.373917, 30.222843, 22.044046>,  <40.159584, 30.555290, 21.984552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.373917, 30.222843, 22.044046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354771, 0.061777, -0.932910,
		0.766171, 0.552653, 0.327959,
		0.535836, -0.831119, 0.148733,
		40.534668, 29.973507, 22.088667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.783142, 30.744080, 21.755777>,  <40.159584, 30.555290, 21.984552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.783142, 30.744080, 21.755777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.765518, 30.344538, 21.748299>,  <40.754944, 30.104813, 21.743811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.765518, 30.344538, 21.748299>,  <40.783142, 30.744080, 21.755777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.765518, 30.344538, 21.748299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461824, -0.003766, -0.886964,
		0.885877, -0.047710, 0.461461,
		-0.044055, -0.998854, -0.018697,
		40.752300, 30.044882, 21.742689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.443436, 30.483141, 21.609385>,  <40.783142, 30.744080, 21.755777>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.443436, 30.483141, 21.609385> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.198616, 30.183546, 21.507866>,  <41.051723, 30.003790, 21.446955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.198616, 30.183546, 21.507866>,  <41.443436, 30.483141, 21.609385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.198616, 30.183546, 21.507866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432893, -0.048741, -0.900127,
		0.661812, -0.660790, 0.354063,
		-0.612052, -0.748986, -0.253795,
		41.014999, 29.958851, 21.431728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.820312, 29.924112, 21.526972>,  <41.443436, 30.483141, 21.609385>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.820312, 29.924112, 21.526972> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.484379, 29.881170, 21.314121>,  <41.282818, 29.855406, 21.186411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.484379, 29.881170, 21.314121>,  <41.820312, 29.924112, 21.526972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.484379, 29.881170, 21.314121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540852, -0.081483, -0.837161,
		0.046513, -0.990876, 0.126495,
		-0.839831, -0.107354, -0.532128,
		41.232430, 29.848965, 21.154484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.828220, 29.314581, 21.041445>,  <41.820312, 29.924112, 21.526972>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.828220, 29.314581, 21.041445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.545963, 29.536585, 20.865248>,  <41.376610, 29.669786, 20.759529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.545963, 29.536585, 20.865248>,  <41.828220, 29.314581, 21.041445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.545963, 29.536585, 20.865248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480158, -0.082622, -0.873282,
		-0.521073, -0.827731, -0.208190,
		-0.705642, 0.555009, -0.440494,
		41.334270, 29.703087, 20.733099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.763424, 29.086349, 20.370081>,  <41.828220, 29.314581, 21.041445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.763424, 29.086349, 20.370081> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.575638, 29.436083, 20.320858>,  <41.462967, 29.645924, 20.291325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.575638, 29.436083, 20.320858>,  <41.763424, 29.086349, 20.370081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.575638, 29.436083, 20.320858> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454194, 0.119621, -0.882835,
		-0.757174, -0.470350, -0.453276,
		-0.469463, 0.874335, -0.123056,
		41.434799, 29.698383, 20.283941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.501286, 29.106922, 19.735794>,  <41.763424, 29.086349, 20.370081>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.501286, 29.106922, 19.735794> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.535656, 29.496380, 19.820301>,  <41.556278, 29.730055, 19.871006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.535656, 29.496380, 19.820301>,  <41.501286, 29.106922, 19.735794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.535656, 29.496380, 19.820301> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355959, 0.168056, -0.919266,
		-0.930543, 0.154188, -0.332138,
		0.085922, 0.973644, 0.211268,
		41.561432, 29.788473, 19.883682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.330086, 29.457020, 19.193157>,  <41.501286, 29.106922, 19.735794>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.330086, 29.457020, 19.193157> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.508984, 29.764433, 19.376165>,  <41.616322, 29.948881, 19.485970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.508984, 29.764433, 19.376165>,  <41.330086, 29.457020, 19.193157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.508984, 29.764433, 19.376165> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390032, 0.292748, -0.873026,
		-0.804888, 0.568906, -0.168822,
		0.447247, 0.768534, 0.457521,
		41.643158, 29.994993, 19.513422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.213696, 29.906628, 18.706242>,  <41.330086, 29.457020, 19.193157>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.213696, 29.906628, 18.706242> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.494141, 30.068907, 18.940796>,  <41.662407, 30.166273, 19.081530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.494141, 30.068907, 18.940796>,  <41.213696, 29.906628, 18.706242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.494141, 30.068907, 18.940796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430066, 0.415355, -0.801575,
		-0.568755, 0.814181, 0.116734,
		0.701114, 0.405697, 0.586387,
		41.704475, 30.190617, 19.116713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.627460, 31.298279, 33.750961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.021053, 31.363550, 33.779682>,  <36.257210, 31.402714, 33.796913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.021053, 31.363550, 33.779682>,  <35.627460, 31.298279, 33.750961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.021053, 31.363550, 33.779682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078783, -0.036737, -0.996215,
		-0.159924, 0.985912, -0.049005,
		0.983980, 0.163179, 0.071798,
		36.316246, 31.412504, 33.801220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.791756, 31.757450, 33.155018>,  <35.627460, 31.298279, 33.750961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.791756, 31.757450, 33.155018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.128036, 31.577011, 33.274845>,  <36.329803, 31.468748, 33.346741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.128036, 31.577011, 33.274845>,  <35.791756, 31.757450, 33.155018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128036, 31.577011, 33.274845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316933, -0.038669, -0.947659,
		0.439069, 0.891638, 0.110458,
		0.840698, -0.451095, 0.299568,
		36.380245, 31.441683, 33.364716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377598, 31.999483, 32.819309>,  <35.791756, 31.757450, 33.155018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377598, 31.999483, 32.819309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.531269, 31.643274, 32.916782>,  <36.623470, 31.429550, 32.975266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.531269, 31.643274, 32.916782>,  <36.377598, 31.999483, 32.819309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531269, 31.643274, 32.916782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197098, -0.178743, -0.963952,
		0.901975, 0.418359, 0.106851,
		0.384179, -0.890520, 0.243679,
		36.646523, 31.376118, 32.989887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775616, 31.924942, 32.315838>,  <36.377598, 31.999483, 32.819309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775616, 31.924942, 32.315838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.762100, 31.554527, 32.466206>,  <36.753990, 31.332277, 32.556427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.762100, 31.554527, 32.466206>,  <36.775616, 31.924942, 32.315838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.762100, 31.554527, 32.466206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331112, -0.365260, -0.870029,
		0.942987, 0.095073, 0.318964,
		-0.033789, -0.926038, 0.375915,
		36.751965, 31.276716, 32.578979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372482, 31.599157, 32.075283>,  <36.775616, 31.924942, 32.315838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372482, 31.599157, 32.075283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.129135, 31.300545, 32.183044>,  <36.983128, 31.121376, 32.247704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.129135, 31.300545, 32.183044>,  <37.372482, 31.599157, 32.075283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.129135, 31.300545, 32.183044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146096, -0.438985, -0.886537,
		0.780095, -0.499979, 0.376129,
		-0.608365, -0.746534, 0.269405,
		36.946625, 31.076584, 32.263866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769135, 30.973959, 31.930521>,  <37.372482, 31.599157, 32.075283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769135, 30.973959, 31.930521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.376858, 30.897013, 31.944576>,  <37.141491, 30.850845, 31.953011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.376858, 30.897013, 31.944576>,  <37.769135, 30.973959, 31.930521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376858, 30.897013, 31.944576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058801, -0.461467, -0.885207,
		0.186501, -0.866050, 0.463869,
		-0.980694, -0.192367, 0.035139,
		37.082649, 30.839302, 31.955118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690941, 30.129442, 31.941389>,  <37.769135, 30.973959, 31.930521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.690941, 30.129442, 31.941389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.365040, 30.317863, 31.806164>,  <37.169498, 30.430916, 31.725029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.365040, 30.317863, 31.806164>,  <37.690941, 30.129442, 31.941389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365040, 30.317863, 31.806164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047423, -0.526966, -0.848562,
		-0.577866, -0.707401, 0.407008,
		-0.814753, 0.471053, -0.338063,
		37.120613, 30.459179, 31.704744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333832, 29.615059, 31.699017>,  <37.690941, 30.129442, 31.941389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.333832, 29.615059, 31.699017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.198151, 29.940546, 31.510206>,  <37.116741, 30.135838, 31.396919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.198151, 29.940546, 31.510206>,  <37.333832, 29.615059, 31.699017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.198151, 29.940546, 31.510206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054161, -0.484049, -0.873363,
		-0.939153, -0.321813, 0.120119,
		-0.339204, 0.813716, -0.472025,
		37.096390, 30.184660, 31.368599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825985, 29.385050, 31.190041>,  <37.333832, 29.615059, 31.699017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825985, 29.385050, 31.190041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.877281, 29.762072, 31.066658>,  <36.908058, 29.988285, 30.992628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.877281, 29.762072, 31.066658>,  <36.825985, 29.385050, 31.190041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.877281, 29.762072, 31.066658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128200, -0.292658, -0.947585,
		-0.983422, 0.161062, 0.083305,
		0.128240, 0.942555, -0.308454,
		36.915752, 30.044838, 30.974121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.324772, 29.483320, 30.679478>,  <36.825985, 29.385050, 31.190041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.324772, 29.483320, 30.679478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.611538, 29.755966, 30.620907>,  <36.783596, 29.919554, 30.585764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.611538, 29.755966, 30.620907>,  <36.324772, 29.483320, 30.679478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611538, 29.755966, 30.620907> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117809, -0.088566, -0.989079,
		-0.687139, 0.726331, 0.016807,
		0.716911, 0.681615, -0.146425,
		36.826611, 29.960451, 30.576979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043823, 29.755743, 30.172884>,  <36.324772, 29.483320, 30.679478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043823, 29.755743, 30.172884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.430431, 29.858288, 30.168688>,  <36.662395, 29.919815, 30.166170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.430431, 29.858288, 30.168688>,  <36.043823, 29.755743, 30.172884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430431, 29.858288, 30.168688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059371, -0.263248, -0.962900,
		-0.249612, 0.930043, -0.269656,
		0.966524, 0.256361, -0.010493,
		36.720390, 29.935196, 30.165541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244823, 30.210693, 29.513723>,  <36.043823, 29.755743, 30.172884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244823, 30.210693, 29.513723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.586575, 30.049847, 29.645380>,  <36.791626, 29.953339, 29.724375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.586575, 30.049847, 29.645380>,  <36.244823, 30.210693, 29.513723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.586575, 30.049847, 29.645380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327025, -0.076168, -0.941941,
		0.403842, 0.912414, 0.066426,
		0.854381, -0.402119, 0.329142,
		36.842888, 29.929211, 29.744123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097271, 30.963968, 29.353638>,  <36.244823, 30.210693, 29.513723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097271, 30.963968, 29.353638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.711056, 30.905525, 29.267483>,  <35.479328, 30.870459, 29.215790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.711056, 30.905525, 29.267483>,  <36.097271, 30.963968, 29.353638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.711056, 30.905525, 29.267483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246097, 0.243178, 0.938243,
		-0.084709, 0.958914, -0.270754,
		-0.965536, -0.146109, -0.215387,
		35.421394, 30.861692, 29.202868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.783150, 31.482647, 29.706572>,  <36.097271, 30.963968, 29.353638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.783150, 31.482647, 29.706572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.471741, 31.240282, 29.641123>,  <35.284893, 31.094864, 29.601854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.471741, 31.240282, 29.641123>,  <35.783150, 31.482647, 29.706572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.471741, 31.240282, 29.641123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380496, 0.248339, 0.890815,
		-0.499120, 0.755779, -0.423884,
		-0.778525, -0.605910, -0.163620,
		35.238182, 31.058510, 29.592037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181839, 31.819424, 29.944471>,  <35.783150, 31.482647, 29.706572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181839, 31.819424, 29.944471> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.063961, 31.441229, 29.889029>,  <34.993233, 31.214312, 29.855762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.063961, 31.441229, 29.889029>,  <35.181839, 31.819424, 29.944471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063961, 31.441229, 29.889029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618928, 0.078343, 0.781531,
		-0.728067, 0.316102, -0.608275,
		-0.294698, -0.945485, -0.138605,
		34.975552, 31.157583, 29.847446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471371, 31.846453, 29.978045>,  <35.181839, 31.819424, 29.944471>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471371, 31.846453, 29.978045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.536671, 31.459766, 30.056849>,  <34.575851, 31.227755, 30.104130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.536671, 31.459766, 30.056849>,  <34.471371, 31.846453, 29.978045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536671, 31.459766, 30.056849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578204, 0.068054, 0.813049,
		-0.799394, -0.246637, -0.547849,
		0.163245, -0.966715, 0.197008,
		34.585644, 31.169752, 30.115952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.845936, 31.522915, 30.092550>,  <34.471371, 31.846453, 29.978045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.845936, 31.522915, 30.092550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.099152, 31.282621, 30.287848>,  <34.251080, 31.138445, 30.405025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.099152, 31.282621, 30.287848>,  <33.845936, 31.522915, 30.092550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099152, 31.282621, 30.287848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554008, 0.088948, 0.827746,
		-0.540685, -0.794484, -0.276505,
		0.633036, -0.600736, 0.488244,
		34.289062, 31.102402, 30.434320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436569, 30.919912, 30.322760>,  <33.845936, 31.522915, 30.092550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436569, 30.919912, 30.322760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.774502, 30.926489, 30.536673>,  <33.977261, 30.930435, 30.665020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.774502, 30.926489, 30.536673>,  <33.436569, 30.919912, 30.322760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.774502, 30.926489, 30.536673> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533608, 0.098906, 0.839929,
		-0.039085, -0.994961, 0.092331,
		0.844829, 0.016440, 0.534785,
		34.027950, 30.931421, 30.697107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252380, 30.496428, 30.929258>,  <33.436569, 30.919912, 30.322760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252380, 30.496428, 30.929258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.551960, 30.745960, 31.018618>,  <33.731709, 30.895679, 31.072233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.551960, 30.745960, 31.018618>,  <33.252380, 30.496428, 30.929258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551960, 30.745960, 31.018618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483553, 0.284038, 0.827949,
		0.453049, -0.728116, 0.514387,
		0.748948, 0.623835, 0.223399,
		33.776646, 30.933111, 31.085638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.275784, 30.447626, 31.600843>,  <33.252380, 30.496428, 30.929258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.275784, 30.447626, 31.600843> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.492516, 30.782476, 31.570805>,  <33.622555, 30.983387, 31.552782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.492516, 30.782476, 31.570805>,  <33.275784, 30.447626, 31.600843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.492516, 30.782476, 31.570805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371755, 0.318831, 0.871863,
		0.753804, -0.444481, 0.483958,
		0.541827, 0.837128, -0.075098,
		33.655064, 31.033615, 31.548275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370041, 30.546375, 32.259609>,  <33.275784, 30.447626, 31.600843>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370041, 30.546375, 32.259609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.459541, 30.885839, 32.067898>,  <33.513241, 31.089518, 31.952871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.459541, 30.885839, 32.067898>,  <33.370041, 30.546375, 32.259609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.459541, 30.885839, 32.067898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478844, 0.524025, 0.704348,
		0.848907, 0.071899, 0.523628,
		0.223752, 0.848663, -0.479277,
		33.526669, 31.140438, 31.924114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785442, 31.018375, 32.760010>,  <33.370041, 30.546375, 32.259609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.785442, 31.018375, 32.760010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.617100, 31.238697, 32.471706>,  <33.516094, 31.370890, 32.298725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.617100, 31.238697, 32.471706>,  <33.785442, 31.018375, 32.760010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.617100, 31.238697, 32.471706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451710, 0.561787, 0.693076,
		0.786661, 0.617261, 0.012370,
		-0.420859, 0.550803, -0.720759,
		33.490841, 31.403938, 32.255478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.888012, 31.671383, 32.974754>,  <33.785442, 31.018375, 32.760010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.888012, 31.671383, 32.974754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.575428, 31.694063, 32.726208>,  <33.387878, 31.707672, 32.577080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.575428, 31.694063, 32.726208>,  <33.888012, 31.671383, 32.974754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.575428, 31.694063, 32.726208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441621, 0.653245, 0.615014,
		0.440777, 0.755020, -0.485447,
		-0.781464, 0.056700, -0.621368,
		33.340988, 31.711073, 32.539799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768906, 32.392193, 32.908951>,  <33.888012, 31.671383, 32.974754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.768906, 32.392193, 32.908951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.421600, 32.229408, 32.795456>,  <33.213219, 32.131737, 32.727360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.421600, 32.229408, 32.795456>,  <33.768906, 32.392193, 32.908951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.421600, 32.229408, 32.795456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495176, 0.745885, 0.445484,
		0.030338, 0.527295, -0.849140,
		-0.868263, -0.406959, -0.283732,
		33.161121, 32.107319, 32.710335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.343536, 32.985279, 32.740814>,  <33.768906, 32.392193, 32.908951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.343536, 32.985279, 32.740814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.071892, 32.692421, 32.761864>,  <32.908905, 32.516705, 32.774494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.071892, 32.692421, 32.761864>,  <33.343536, 32.985279, 32.740814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071892, 32.692421, 32.761864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688410, 0.660143, 0.300503,
		-0.254753, 0.167846, -0.952328,
		-0.679111, -0.732146, 0.052626,
		32.868160, 32.472778, 32.777653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740788, 33.189213, 32.348980>,  <33.343536, 32.985279, 32.740814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740788, 33.189213, 32.348980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.669624, 32.945023, 32.657700>,  <32.626926, 32.798508, 32.842930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.669624, 32.945023, 32.657700>,  <32.740788, 33.189213, 32.348980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.669624, 32.945023, 32.657700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650490, 0.661468, 0.373261,
		-0.738386, -0.435643, -0.514783,
		-0.177904, -0.610472, 0.771799,
		32.616253, 32.761883, 32.889240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.007660, 32.743992, 32.415672>,  <32.740788, 33.189213, 32.348980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.007660, 32.743992, 32.415672> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.808668, 33.087776, 32.368618>,  <31.689272, 33.294048, 32.340385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.808668, 33.087776, 32.368618>,  <32.007660, 32.743992, 32.415672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.808668, 33.087776, 32.368618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702187, 0.319346, -0.636358,
		-0.509358, -0.399179, -0.762371,
		-0.497481, 0.859461, -0.117637,
		31.659424, 33.345615, 32.333328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.707851, 32.856655, 31.682795>,  <32.007660, 32.743992, 32.415672>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.707851, 32.856655, 31.682795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.793673, 33.223965, 31.815910>,  <31.845165, 33.444351, 31.895781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.793673, 33.223965, 31.815910>,  <31.707851, 32.856655, 31.682795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.793673, 33.223965, 31.815910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509905, 0.185300, -0.840036,
		-0.833046, 0.349922, -0.428474,
		0.214551, 0.918269, 0.332790,
		31.858038, 33.499447, 31.915747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.492790, 33.394085, 31.185911>,  <31.707851, 32.856655, 31.682795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.492790, 33.394085, 31.185911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.812580, 33.515831, 31.393063>,  <32.004456, 33.588879, 31.517353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.812580, 33.515831, 31.393063>,  <31.492790, 33.394085, 31.185911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.812580, 33.515831, 31.393063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366845, 0.435305, -0.822152,
		-0.475674, 0.847272, 0.236359,
		0.799474, 0.304369, 0.517880,
		32.052422, 33.607143, 31.548428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.670429, 34.019161, 30.878502>,  <31.492790, 33.394085, 31.185911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.670429, 34.019161, 30.878502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.006302, 33.934948, 31.078747>,  <32.207825, 33.884422, 31.198895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.006302, 33.934948, 31.078747>,  <31.670429, 34.019161, 30.878502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.006302, 33.934948, 31.078747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542308, 0.374129, -0.752283,
		-0.028916, 0.903164, 0.428321,
		0.839682, -0.210528, 0.500612,
		32.258205, 33.871788, 31.228930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.016544, 34.628696, 30.889320>,  <31.670429, 34.019161, 30.878502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.016544, 34.628696, 30.889320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.264591, 34.316952, 30.925209>,  <32.413418, 34.129906, 30.946743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.264591, 34.316952, 30.925209>,  <32.016544, 34.628696, 30.889320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.264591, 34.316952, 30.925209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543663, 0.344464, -0.765360,
		0.565588, 0.523388, 0.637318,
		0.620114, -0.779364, 0.089722,
		32.450626, 34.083141, 30.952126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.651108, 34.980377, 30.864471>,  <32.016544, 34.628696, 30.889320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.651108, 34.980377, 30.864471> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.760262, 34.599785, 30.807583>,  <32.825752, 34.371429, 30.773449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.760262, 34.599785, 30.807583>,  <32.651108, 34.980377, 30.864471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760262, 34.599785, 30.807583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567366, 0.278553, -0.774923,
		0.776937, 0.130770, 0.615847,
		0.272883, -0.951477, -0.142224,
		32.842125, 34.314342, 30.764915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.381584, 35.014343, 30.750425>,  <32.651108, 34.980377, 30.864471>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.381584, 35.014343, 30.750425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.272209, 34.673702, 30.571539>,  <33.206585, 34.469318, 30.464207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.272209, 34.673702, 30.571539>,  <33.381584, 35.014343, 30.750425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.272209, 34.673702, 30.571539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519021, 0.260815, -0.813998,
		0.809845, -0.454691, 0.370684,
		-0.273438, -0.851605, -0.447214,
		33.190178, 34.418221, 30.437374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.991756, 34.907585, 30.363400>,  <33.381584, 35.014343, 30.750425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.991756, 34.907585, 30.363400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.709709, 34.678577, 30.196054>,  <33.540482, 34.541172, 30.095648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.709709, 34.678577, 30.196054>,  <33.991756, 34.907585, 30.363400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709709, 34.678577, 30.196054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460114, 0.079506, -0.884293,
		0.539537, -0.816028, 0.207363,
		-0.705121, -0.572519, -0.418362,
		33.498173, 34.506821, 30.070545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.344994, 34.396755, 29.845060>,  <33.991756, 34.907585, 30.363400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.344994, 34.396755, 29.845060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.957344, 34.425804, 29.750801>,  <33.724754, 34.443233, 29.694244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.957344, 34.425804, 29.750801>,  <34.344994, 34.396755, 29.845060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957344, 34.425804, 29.750801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239630, 0.051964, -0.969473,
		-0.058165, -0.996004, -0.067763,
		-0.969121, 0.072627, -0.235650,
		33.666607, 34.447594, 29.680105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.304626, 33.994133, 29.222105>,  <34.344994, 34.396755, 29.845060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.304626, 33.994133, 29.222105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.986759, 34.236580, 29.208750>,  <33.796040, 34.382050, 29.200737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.986759, 34.236580, 29.208750>,  <34.304626, 33.994133, 29.222105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986759, 34.236580, 29.208750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136370, 0.124654, -0.982784,
		-0.591525, -0.785543, -0.181716,
		-0.794671, 0.606121, -0.033388,
		33.748360, 34.418415, 29.198732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890102, 33.714901, 28.605957>,  <34.304626, 33.994133, 29.222105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890102, 33.714901, 28.605957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.807652, 34.095078, 28.699055>,  <33.758183, 34.323185, 28.754913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.807652, 34.095078, 28.699055>,  <33.890102, 33.714901, 28.605957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807652, 34.095078, 28.699055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129125, 0.262194, -0.956337,
		-0.969969, -0.167072, -0.176770,
		-0.206125, 0.950443, 0.232746,
		33.745815, 34.380211, 28.768879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264034, 33.910938, 28.151829>,  <33.890102, 33.714901, 28.605957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264034, 33.910938, 28.151829> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.447094, 34.239407, 28.288198>,  <33.556931, 34.436489, 28.370020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.447094, 34.239407, 28.288198>,  <33.264034, 33.910938, 28.151829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.447094, 34.239407, 28.288198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185833, 0.286628, -0.939846,
		-0.869494, 0.493478, -0.021425,
		0.457652, 0.821172, 0.340926,
		33.584389, 34.485760, 28.390476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.178650, 34.400322, 27.642097>,  <33.264034, 33.910938, 28.151829>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.178650, 34.400322, 27.642097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.479488, 34.554356, 27.856033>,  <33.659992, 34.646778, 27.984394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.479488, 34.554356, 27.856033>,  <33.178650, 34.400322, 27.642097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.479488, 34.554356, 27.856033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418491, 0.347871, -0.838958,
		-0.509128, 0.854806, 0.100478,
		0.752100, 0.385088, 0.534840,
		33.705120, 34.669884, 28.016485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234848, 35.055878, 27.387201>,  <33.178650, 34.400322, 27.642097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234848, 35.055878, 27.387201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.580910, 34.972626, 27.569712>,  <33.788548, 34.922676, 27.679218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.580910, 34.972626, 27.569712>,  <33.234848, 35.055878, 27.387201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.580910, 34.972626, 27.569712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501492, 0.352904, -0.789914,
		0.003385, 0.912217, 0.409693,
		0.865156, -0.208131, 0.456275,
		33.840458, 34.910187, 27.706594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.583763, 35.609386, 27.249792>,  <33.234848, 35.055878, 27.387201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.583763, 35.609386, 27.249792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.843277, 35.315105, 27.327581>,  <33.998985, 35.138538, 27.374254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.843277, 35.315105, 27.327581>,  <33.583763, 35.609386, 27.249792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843277, 35.315105, 27.327581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485032, 0.202876, -0.850638,
		0.586363, 0.646207, 0.488462,
		0.648786, -0.735702, 0.194472,
		34.037914, 35.094395, 27.385923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.287067, 35.856472, 27.057983>,  <33.583763, 35.609386, 27.249792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.287067, 35.856472, 27.057983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.363480, 35.465622, 27.095369>,  <34.409328, 35.231113, 27.117802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.363480, 35.465622, 27.095369>,  <34.287067, 35.856472, 27.057983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.363480, 35.465622, 27.095369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656427, 0.056375, -0.752280,
		0.729802, 0.205060, 0.652181,
		0.191029, -0.977124, 0.093464,
		34.420788, 35.172485, 27.123409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012047, 35.747528, 27.249126>,  <34.287067, 35.856472, 27.057983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012047, 35.747528, 27.249126> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.901478, 35.396080, 27.093372>,  <34.835136, 35.185211, 26.999920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.901478, 35.396080, 27.093372>,  <35.012047, 35.747528, 27.249126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.901478, 35.396080, 27.093372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763971, 0.044918, -0.643685,
		0.583044, -0.475407, 0.658823,
		-0.276420, -0.878619, -0.389386,
		34.818550, 35.132496, 26.976557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.622402, 35.404736, 27.202890>,  <35.012047, 35.747528, 27.249126>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.622402, 35.404736, 27.202890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.370941, 35.235382, 26.941957>,  <35.220062, 35.133770, 26.785397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.370941, 35.235382, 26.941957>,  <35.622402, 35.404736, 27.202890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.370941, 35.235382, 26.941957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737834, -0.059645, -0.672342,
		0.245749, -0.903986, 0.349882,
		-0.628656, -0.423382, -0.652334,
		35.182343, 35.108368, 26.746258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015289, 34.914886, 26.745173>,  <35.622402, 35.404736, 27.202890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.015289, 34.914886, 26.745173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.676060, 34.950291, 26.536198>,  <35.472523, 34.971535, 26.410812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.676060, 34.950291, 26.536198>,  <36.015289, 34.914886, 26.745173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.676060, 34.950291, 26.536198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494637, -0.221330, -0.840445,
		-0.190015, -0.971174, 0.143926,
		-0.848073, 0.088506, -0.522435,
		35.421638, 34.976845, 26.379467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.140572, 34.538910, 26.268875>,  <36.015289, 34.914886, 26.745173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.140572, 34.538910, 26.268875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.835995, 34.752186, 26.121410>,  <35.653248, 34.880154, 26.032930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.835995, 34.752186, 26.121410>,  <36.140572, 34.538910, 26.268875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.835995, 34.752186, 26.121410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523558, 0.170514, -0.834753,
		-0.382223, -0.828631, -0.408994,
		-0.761441, 0.533193, -0.368663,
		35.607563, 34.912144, 26.010811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952908, 34.239468, 25.610340>,  <36.140572, 34.538910, 26.268875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952908, 34.239468, 25.610340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.800045, 34.607071, 25.571608>,  <35.708328, 34.827633, 25.548368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.800045, 34.607071, 25.571608>,  <35.952908, 34.239468, 25.610340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.800045, 34.607071, 25.571608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496622, 0.115878, -0.860197,
		-0.779308, -0.376823, -0.500684,
		-0.382160, 0.919009, -0.096833,
		35.685398, 34.882774, 25.542557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809700, 34.152752, 24.950596>,  <35.952908, 34.239468, 25.610340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809700, 34.152752, 24.950596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.827774, 34.542923, 25.036852>,  <35.838619, 34.777027, 25.088606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.827774, 34.542923, 25.036852>,  <35.809700, 34.152752, 24.950596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827774, 34.542923, 25.036852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508571, 0.163334, -0.845386,
		-0.859833, 0.147870, -0.488693,
		0.045187, 0.975426, 0.215642,
		35.841331, 34.835552, 25.101545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587009, 34.450512, 24.330662>,  <35.809700, 34.152752, 24.950596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587009, 34.450512, 24.330662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.815792, 34.710964, 24.530220>,  <35.953060, 34.867233, 24.649956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.815792, 34.710964, 24.530220>,  <35.587009, 34.450512, 24.330662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815792, 34.710964, 24.530220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587824, 0.098857, -0.802926,
		-0.572128, 0.752501, -0.326207,
		0.571955, 0.651129, 0.498897,
		35.987377, 34.906303, 24.679890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704109, 34.788448, 23.807142>,  <35.587009, 34.450512, 24.330662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704109, 34.788448, 23.807142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.973026, 34.907700, 24.078184>,  <36.134377, 34.979252, 24.240808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.973026, 34.907700, 24.078184>,  <35.704109, 34.788448, 23.807142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.973026, 34.907700, 24.078184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690869, 0.076163, -0.718957,
		-0.265949, 0.951483, -0.154763,
		0.672288, 0.298127, 0.677605,
		36.174713, 34.997139, 24.281466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991161, 35.468727, 23.609783>,  <35.704109, 34.788448, 23.807142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.991161, 35.468727, 23.609783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.265720, 35.291153, 23.840183>,  <36.430458, 35.184608, 23.978424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.265720, 35.291153, 23.840183>,  <35.991161, 35.468727, 23.609783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.265720, 35.291153, 23.840183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693228, 0.160081, -0.702716,
		0.219752, 0.881645, 0.417626,
		0.686400, -0.443933, 0.576002,
		36.471642, 35.157974, 24.012983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615902, 35.949837, 23.478073>,  <35.991161, 35.468727, 23.609783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615902, 35.949837, 23.478073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.749481, 35.603630, 23.627399>,  <36.829628, 35.395908, 23.716995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.749481, 35.603630, 23.627399>,  <36.615902, 35.949837, 23.478073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749481, 35.603630, 23.627399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730847, -0.012358, -0.682430,
		0.595265, 0.500736, 0.628430,
		0.333951, -0.865512, 0.373318,
		36.849667, 35.343975, 23.739395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228535, 35.964386, 23.228498>,  <36.615902, 35.949837, 23.478073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.228535, 35.964386, 23.228498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.215851, 35.592709, 23.375795>,  <37.208241, 35.369701, 23.464172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.215851, 35.592709, 23.375795>,  <37.228535, 35.964386, 23.228498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215851, 35.592709, 23.375795> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729049, -0.273532, -0.627430,
		0.683727, 0.248570, 0.686098,
		-0.031710, -0.929189, 0.368241,
		37.206337, 35.313953, 23.486267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854275, 35.803574, 23.357510>,  <37.228535, 35.964386, 23.228498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.854275, 35.803574, 23.357510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.674400, 35.450703, 23.301600>,  <37.566475, 35.238979, 23.268053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.674400, 35.450703, 23.301600>,  <37.854275, 35.803574, 23.357510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674400, 35.450703, 23.301600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653000, -0.217941, -0.725323,
		0.609403, -0.417442, 0.674069,
		-0.449688, -0.882181, -0.139776,
		37.539494, 35.186047, 23.259666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.287731, 35.480270, 24.038370>,  <37.854275, 35.803574, 23.357510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.287731, 35.480270, 24.038370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.598583, 35.496510, 24.289583>,  <38.785095, 35.506252, 24.440311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.598583, 35.496510, 24.289583>,  <38.287731, 35.480270, 24.038370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598583, 35.496510, 24.289583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626735, 0.140713, 0.766422,
		-0.057257, -0.989218, 0.134796,
		0.777126, 0.040599, 0.628034,
		38.831722, 35.508690, 24.477993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284996, 34.911095, 24.510523>,  <38.287731, 35.480270, 24.038370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.284996, 34.911095, 24.510523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.486134, 35.205219, 24.692278>,  <38.606815, 35.381695, 24.801331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.486134, 35.205219, 24.692278>,  <38.284996, 34.911095, 24.510523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.486134, 35.205219, 24.692278> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584253, -0.098279, 0.805599,
		0.637021, -0.670569, 0.380187,
		0.502845, 0.735308, 0.454388,
		38.636986, 35.425812, 24.828594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389858, 34.622860, 25.233517>,  <38.284996, 34.911095, 24.510523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389858, 34.622860, 25.233517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.435925, 35.020088, 25.242868>,  <38.463566, 35.258427, 25.248480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.435925, 35.020088, 25.242868>,  <38.389858, 34.622860, 25.233517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.435925, 35.020088, 25.242868> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418546, 0.027166, 0.907789,
		0.900864, -0.114331, 0.418774,
		0.115165, 0.993071, 0.023380,
		38.470474, 35.318008, 25.249882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766754, 34.806683, 25.993755>,  <38.389858, 34.622860, 25.233517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766754, 34.806683, 25.993755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.599052, 35.143738, 25.858589>,  <38.498432, 35.345970, 25.777491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.599052, 35.143738, 25.858589>,  <38.766754, 34.806683, 25.993755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.599052, 35.143738, 25.858589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320808, 0.210689, 0.923414,
		0.849301, 0.495546, 0.181995,
		-0.419250, 0.842641, -0.337914,
		38.473278, 35.396530, 25.757215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984764, 35.393143, 26.488400>,  <38.766754, 34.806683, 25.993755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.984764, 35.393143, 26.488400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.660904, 35.517925, 26.289541>,  <38.466587, 35.592793, 26.170227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.660904, 35.517925, 26.289541>,  <38.984764, 35.393143, 26.488400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.660904, 35.517925, 26.289541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441039, 0.235489, 0.866042,
		0.387236, 0.920452, -0.053080,
		-0.809650, 0.311952, -0.497145,
		38.418011, 35.611511, 26.140398>
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
